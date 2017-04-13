<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="{$css|urlsafe}" media="all">
<title>{$LANG.invoice|htmlsafe} {$LANG.number_short}: {$invoice.index_id|htmlsafe}</title>
</head>
<body>
<br />
<div id="container">
	<div id="header">
	</div>
	<table class="" width="100%" align="center">
		<tr>
			<th align="left"><span class="font1">{$LANG.invoice|htmlsafe}</span>
		</tr>
    <table width=100% border=0px align="left">
		<!-- Show the Invoice Custom Fields if valid -->
		
		{ if $invoice.custom_field1 != null}
		<tr colspan=6> <br /> <br /> </tr>
		
		<tr>
            <td>
				<div nowrap class="tablecontent">{$customFieldLabels.invoice_cf1|htmlsafe} <i>{$invoice.custom_field1|htmlsafe}</i></div>
			</td>
		</tr>
		{/if}
		{ if $invoice.custom_field2 != null}
		<tr>
            <td>
				<div nowrap class="tablecontent">{$LANG.project|htmlsafe}: <i>{$invoice.custom_field2|htmlsafe}</i></div>
			</td>
		</tr>
		{/if}
		{ if $invoice.custom_field3 != null}
		<tr>
            <td>
				<div nowrap class="tablecontent">{$LANG.timespan|htmlsafe}: <i>{$invoice.custom_field3|htmlsafe}</i></div>
			</td>
		</tr>
		{/if}
		{ if $invoice.custom_field4 != null}
		<tr>
            <td>
				<div nowrap class="tablecontent">{$customFieldLabels.invoice_cf4|htmlsafe}: <i>{$invoice.custom_field4|htmlsafe}</i></div>
			</td>
		</tr>
		{/if}
        {*
      <tr>
            <td class="tablecontent">{$LANG.invoice|htmlsafe} {$LANG.number_short}: {$invoice.index_id}</td>
        </tr>
        <tr>
            <td class="tablecontent">{$LANG.date}: {$invoice.date}</td>
        </tr>
        *}
		</table>
			
		
			
	
		<!-- LOGO -->
			<td colspan="5"><img src="{$logo|urlsafe}" border=0px hspace="4" align="right"></td>
		</tr>

	</table>
	
    <!-- Add some space-->
    
    <table width=100% border=0px>
        <tr>
			<td colspan="1"><br /></td>
		</tr>
        <tr>
			<td colspan="1"><br /></td>
		</tr>
        <tr>
			<td colspan="1"><br /></td>
		</tr>
        

    </table>
    
    
	<!-- Summary - start da wo Rechnungssumme etc steht -->

	<table class="right">
		<tr>
				<td class="col1 tbl1-bottom round" colspan="4" ><b> {$LANG.summary}</b></td>
		</tr>
		<tr>
				<td class="tablecontent">{$LANG.invoice|htmlsafe} {$LANG.number_short}:</td>
				<td class="tablecontent" align="right" colspan="3">{$invoice.index_id} </td>				
		</tr>
		<tr>
				<td nowrap class="tablecontent">{$LANG.invoice_date|htmlsafe}:</td>
				<td class="tablecontent" align="right" colspan="3">{$invoice.date}</td>
		</tr>
		

<!--
		<tr>
				<td class="tablecontent" >{$LANG.total}: </td>
				<td class="tablecontent" align="right" colspan="3">{$preference.pref_currency_sign|htmlsafe}{$invoice.total|siLocal_number}</td>
		</tr>
-->
        
		<tr>
				<td class="tablecontent">{$LANG.paid}:</td>
				<td class="" align="right" colspan="3" >{$preference.pref_currency_sign|htmlsafe}{$invoice.paid|siLocal_number}</td>
		</tr>
<!--

		<tr>
				<td nowrap class="">{$LANG.owing}:</td>
				<td class="" align="right" colspan="3" >{$preference.pref_currency_sign|htmlsafe}{$invoice.owing|siLocal_number}</td>
		</tr>
	-->
	</table>
	<!-- Summary - end -->
	
	
	<table class="left">
<!-- Customer section - start -->
<tr>
    <td class="tbl1-bottom col1 round" ><b>{$LANG.customer}:</b></td>
</tr>
    <tr>
        
			<td class="tablecontent" colspan="3">{$customer.name|htmlsafe}</td>
	</tr>

        {if $customer.attention != null }
    <tr>
        {*   <td class="tablecontent">{$LANG.attention_short}:</td> *}
 			<td align=left class="tablecontent" colspan="3" >{$customer.attention|htmlsafe}</td>
                </tr>
       {/if}
        {if $customer.street_address != null }
    <tr>
        {*  <td class="tablecontent">{$LANG.address}:</td> *}
			<td class="tablecontent" align=left colspan="3">{$customer.street_address|htmlsafe}</td>
    </tr>
	{/if}
        {if $customer.street_address2 != null}
    <tr>
			<td class="tablecontent" align=left colspan="3">{$customer.street_address2|htmlsafe}</td>
    </tr>   

        {/if}
     
     <tr>
         <td class="tablecontent">
             {if $customer.zip_code != null}{$customer.zip_code}{/if} {if $customer.city != null}{$customer.city}{/if}
        
        {*
		{merge_address field2=$customer.city field3=$customer.state field1=$customer.zip_code street1=$customer.street_address street2=$customer.street_addtess2 class1="" class2="tablecontent" colspan="3"}
        *}
         </td>
      </tr>
        {if $customer.country != null}
    <tr>
        {*<td class="tablecontent"></td>*}
			<td class="tablecontent" colspan="3">{$customer.country|htmlsafe}</td>
    </tr>
        {/if}

	{print_if_not_null label=$LANG.phone_short field=$customer.phone class1="tablecontent" class2='tablecontent' colspan="3"}
	{print_if_not_null label=$LANG.fax field=$customer.fax class1="tablecontent" class2='tablecontent' colspan="3"}
	{print_if_not_null label=$LANG.mobile_short field=$customer.mobile_phone class1="tablecontent" class2='tablecontent' colspan="3"}
    {*	{print_if_not_null label=$LANG.email field=$customer.email class1='tablecontent' class2='tablecontent' colspan="3"} *}
	
    {print_if_not_null label=$customFieldLabels.customer_cf1 field=$customer.custom_field1 class1="tablecontent" class2='tablecontent' colspan="3"}
    {print_if_not_null label=$customFieldLabels.customer_cf2 field=$customer.custom_field2 class1="tablecontent" class2='tablecontent' colspan="3"}
	{print_if_not_null label=$customFieldLabels.customer_cf3 field=$customer.custom_field3 class1="tablecontent" class2='tablecontent' colspan="3"}
	 {print_if_not_null label=$customFieldLabels.customer_cf4 field=$customer.custom_field4 class1="tablecontent" class2='tablecontent' colspan="3"}
   	<tr>
			<td class="" colspan="4"></td>
		</tr>
	
	<!-- Customer section - end -->

   
		<tr>
			<td colspan="4"><br /></td>
		</tr>

 



	</table>
	<!-- Itemization -->
	<table border=0px class="left" width="100%">
		<tr>
			<td colspan="6"><br /></td>
		</tr>

	{if $invoice.type_id == 2 }
					<tr>
				<td class="tbl1-bottom col1 round "><b>{$LANG.quantity_short}</b></td>
				<td class="tbl1-bottom col1 round " colspan="3"><b>{$LANG.item}</b></td>
				<td class="tbl1-bottom col1 round " align="right"><b>{$LANG.Unit_Cost}</b></td>
				<td class="tbl1-bottom col1 round " align="right"><b>{$LANG.Price}</b></td>
			</tr>
			
				{foreach from=$invoiceItems item=invoiceItem}

			<tr class="tablecontent" >
				<td class="tablecontent">{$invoiceItem.quantity|siLocal_number_trim}</td>
				<td class="tablecontent" colspan="3">{$invoiceItem.product.description|htmlsafe}</td>
				<td class="tablecontent" align="right">{$preference.pref_currency_sign|htmlsafe}{$invoiceItem.unit_price|siLocal_number}</td>
				<td class="tablecontent" align="right">{$preference.pref_currency_sign|htmlsafe}{$invoiceItem.gross_total|siLocal_number}</td>
			</tr>
			{if $invoiceItem.description != null}
			<tr class="tablecontent">
				<td class="tablecontent"></td>
				<td class="tablecontent invoice_details" colspan="5">{$LANG.description}: {$invoiceItem.description|htmlsafe}</td>
			</tr>
			{/if}
			
            <tr class="tbl1-bottom">
                <td class=""></td>
				<td class="" colspan="5">
					<table width="100%">
						<tr>

					{inv_itemised_cf label=$customFieldLabels.product_cf1 field=$invoiceItem.product.custom_field1}
					{do_tr number=1 class="blank-class"}
					{inv_itemised_cf label=$customFieldLabels.product_cf2 field=$invoiceItem.product.custom_field2}
					{do_tr number=2 class="blank-class"}
					{inv_itemised_cf label=$customFieldLabels.product_cf3 field=$invoiceItem.product.custom_field3}
					{do_tr number=3 class="blank-class"}
					{inv_itemised_cf label=$customFieldLabels.product_cf4 field=$invoiceItem.product.custom_field4}
					{do_tr number=4 class="blank-class"}
 
						</tr>
					</table>
                </td>
            </tr>
             	{/foreach}
	{/if}
	
	{if $invoice.type_id == 3 }
			<tr class="tbl1-bottom col1">
				<td class="tbl1-bottom "><b>{$LANG.quantity_short}</b></td>
				<td colspan="3" class=" tbl1-bottom round"><b>{$LANG.item}</b></td>
				<td align="right" class="tbl1-bottom round"><b>{$LANG.Unit_Cost}</b></td>
				<td align="right" class="tbl1-bottom round"><b>{$LANG.Price}</b></td>
			</tr>
		
			{foreach from=$invoiceItems item=invoiceItem}
	
			<tr class="tablecontent">
				<td class="tablecontent" >{$invoiceItem.quantity|siLocal_number}</td>
				<td>{$invoiceItem.product.description|htmlsafe}</td>
				<td class="tablecontent" colspan="4"></td>
			</tr>
			
						
            <tr>       
                <td class=""></td>
				<td class="" colspan="5">
                    <table width="100%">
                        <tr>

					{inv_itemised_cf label=$customFieldLabels.product_cf1 field=$invoiceItem.product.custom_field1}
					{do_tr number=1 class="blank-class"}
					{inv_itemised_cf label=$customFieldLabels.product_cf2 field=$invoiceItem.product.custom_field2}
					{do_tr number=2 class="blank-class"}
					{inv_itemised_cf label=$customFieldLabels.product_cf3 field=$invoiceItem.product.custom_field3}
					{do_tr number=3 class="blank-class"}
					{inv_itemised_cf label=$customFieldLabels.product_cf4 field=$invoiceItem.product.custom_field4}
					{do_tr number=4 class="blank-class"}

                        </tr>
                    </table>
                </td>
            </tr>
	
			<tr class="">
				<td class=""></td>
				<td class="" colspan="5"><i>{$LANG.description}: </i>{$invoiceItem.description|htmlsafe}</td>
			</tr>
			<tr class="">
				<td class="" ></td>
				<td class=""></td>
				<td class=""></td>
				<td class=""></td>
				<td align="right" class="">{$preference.pref_currency_sign}{$invoiceItem.unit_price|siLocal_number}</td>
				<td align="right" class="">{$preference.pref_currency_sign}{$invoiceItem.total|siLocal_number}</td>
			</tr>
			{/foreach}
	{/if}
	
	{if $invoice.type_id == 1 }
		    <table class="left" width="100%">

                <tr class="col1" >
                    <td class="tbl1-bottom col1" colspan="6"><b>{$LANG.description}</b></td>
                </tr>
                
          {foreach from=$invoiceItems item= invoiceItem}

			    <tr class="">
                    <td class="t" colspan="6">{$invoiceItem.description|outhtml}</td>
                </tr>

		{/foreach}
	{/if}


{if ($invoice.type_id == 2 && $invoice.note != "") || ($invoice.type_id == 3 && $invoice.note != "" )  }
		<tr>
			<td class="" colspan="6"><br /></td>
		</tr>
		<tr>
			<td class="col1" align="left"><b>{$LANG.notes}:</b></td>
		</tr>
		<tr>
			<td class="invoice_details tablecontent" >{$invoice.note|outhtml}</td>
		</tr>
{/if}


	<tr class="">
		<td class="" colspan="6" ><br /></td>
	</tr>

    {* tax section - start *}
	{if $invoice_number_of_taxes > 0}
	<tr>
        <td colspan="2"></td>
		<td colspan="3" align="right">{$LANG.sub_total}&nbsp;</td>
		<td colspan="1" align="right">{if $invoice_number_of_taxes > 1}<u>{/if}{$preference.pref_currency_sign|htmlsafe}{$invoice.gross|siLocal_number}{if $invoice_number_of_taxes > 1}</u>{/if}</td>
    </tr>
    {/if}
	{if $invoice_number_of_taxes > 1 }
	        <tr>
        	        <td colspan="6"><br /></td>
	        </tr>
    {/if}
    {section name=line start=0 loop=$invoice.tax_grouped step=1}
    	{if ($invoice.tax_grouped[line].tax_amount != "0") }
    	
    	<tr>
	        <td colspan="2"></td>
			<td colspan="3" align="right">{$invoice.tax_grouped[line].tax_name|htmlsafe}&nbsp;</td>
			<td colspan="1" align="right">{$preference.pref_currency_sign|htmlsafe}{$invoice.tax_grouped[line].tax_amount|siLocal_number}</td>
	    </tr>
	    {/if}
	    
	{/section}
	{if $invoice_number_of_taxes > 1}
	<tr>
        <td colspan="2"></td>
		<td colspan="3" align="right">{$LANG.tax_total}&nbsp;</td>
		<td colspan="1" align="right"><u>{$preference.pref_currency_sign|htmlsafe}{$invoice.total_tax|siLocal_number}</u></td>
    </tr>
    {/if}
	{if $invoice_number_of_taxes > 1}
	<tr>
		<td colspan="6"><br /></td>
	</tr>
    {/if}
    <tr>
        <td colspan="2"></td>
		<td colspan="3" align="right"><b>{$LANG.total_amount|htmlsafe}</b></td>
		<td colspan="1" align="right"><span class="double_underline"><u>{$preference.pref_currency_sign|htmlsafe}{$invoice.total|siLocal_number}</u></span></td>
    </tr>
    {* tax section - end *}
{*
		<tr>
			<td class="" colspan="2"></td>
			<td align="right" colspan="3">{$LANG.sub_total}</td>
			<td align="right" class="">{$preference.pref_currency_sign|htmlsafe}{$invoice.gross|siLocal_number}</td>
		</tr>
    {section name=line start=0 loop=$invoice.tax_grouped step=1}

		{if ($invoice.tax_grouped[line].tax_amount != "0") }  
		
		<tr class=''>
	        <td colspan="2"></td>
			<td colspan="3" align="right">{$invoice.tax_grouped[line].tax_name|htmlsafe}</td>
			<td colspan="1" align="right">{$preference.pref_currency_sign|htmlsafe}{$invoice.tax_grouped[line].tax_amount|siLocal_number}</td>
	    </tr>
	    
	    {/if}
	    
	{/section}
	
	<tr class=''>
        <td colspan="2"></td>
		<td colspan="3" align="right">{$LANG.tax_total}</td>
		<td colspan="1" align="right"><u>{$preference.pref_currency_sign|htmlsafe}{$invoice.total_tax|siLocal_number}</u></td>
    </tr>
	<tr class="">
		<td class="" colspan="6" ><br /></td>
	</tr>
	<tr class="">
		<td class="" colspan="2"></td>
		<td class="" align="right" colspan="3"><b>{$LANG.invoice|htmlsafe} {$LANG.amount}</b></td>
		<td  class="" align="right"><span class="double_underline" >{$preference.pref_currency_sign|htmlsafe}{$invoice.total|siLocal_number}</span></td>
	</tr>
*}

	<!-- Put in some spacing into table -->
	<tr>
		<td colspan="6"><br /><br /> <br /></td>
	</tr>
    
    <!-- Add some space-->
    
    <table width=100% border=0px>
        <tr>
			<td colspan="1"><br /></td>
		</tr>
        <tr>
			<td colspan="1"><br /></td>
		</tr>
        <tr>
			<td colspan="1"><br /></td>
		</tr>
        
        
    </table>


</table>
<table width=100% border = 0px>
    <colgroup>
        <col width="33%">
        <col width="77%">
    </colgroup>
    
	<!-- invoice details section - start -->
<!-- Create nested table -->


<td align="left"  valign="top">
<table border=0px width=100%>
   
	<tr>
		<td class="tbl1-bottom col1 round" colspan="2"><b>{$preference.pref_inv_detail_heading|htmlsafe}</b></td>
	</tr>
    <tr>
        <td class="invoice_details tablecontent" colspan="2">{$LANG.transfer_please|htmlsafe}</td>
    </tr>
    <tr>
        <td class="invoice_details tablecontent" colspan="2">{$LANG.thanks|htmlsafe}</td>
    </tr>


<!--
	<tr>
		<td class="invoice_details tablecontent" colspan="2">{$preference.pref_inv_detail_line|outhtml}</td>
	</tr>
	<tr>
		<td class="invoice_details tablecontent" colspan="2">{$preference.pref_inv_payment_method|htmlsafe}</td>
	</tr>
	<tr>
		<td class="invoice_details tablecontent" colspan="2">{$preference.pref_inv_payment_line1_name|htmlsafe} {$preference.pref_inv_payment_line1_value|htmlsafe}</td>
	</tr>
	<tr>
		<td class="invoice_details tablecontent" colspan="2">{$preference.pref_inv_payment_line2_name|htmlsafe} {$preference.pref_inv_payment_line2_value|htmlsafe}</td>
	</tr>
	<tr>
		<td><br /></td>
	</tr>

	<tr>
		<td class="tablecontent">
			{	
				online_payment_link 
				type=$preference.include_online_payment business=$biller.paypal_business_name 
				item_name=$invoice.index_name invoice=$invoice.id 
				amount=$invoice.total currency_code=$preference.currency_code
				link_wording=$LANG.paypal_link
				notify_url=$biller.paypal_notify_url return_url=$biller.paypal_return_url
				domain_id = $invoice.domain_id include_image=true
			}
		</td>
	</tr>
	<!-- invoice details section - end -->
</table>
</td>

<!-- Create Biller section as table -->
<td align="left"  valign="top">
<table border=0px width=100%>
    <tr>
        <td class="tbl1-bottom col1 round"  colspan="3"><b>{$LANG.biller}</b></td>
    </tr>
    <tr>
    <td>
    <table border=0px width=100%>
      <tr>
        </tr>
        <tr>
            		<td class="invoice_details tablecontent">{$biller.name|htmlsafe}</td>
        </tr>
        {if $biller.street_address != null}
		<tr>
            {*   <td class="invoice_details tablecontent">{$LANG.address}:</td> *}
				<td class="invoice_details tablecontent" align=left colspan="3">{$biller.street_address|htmlsafe}</td>
		</tr>
        {/if}
        {if $biller.street_address2 != null }
			{if $biller.street_address == null }
		<tr>
            {*  <td class="invoice_details tablecontent">{$LANG.address}:</td> *}
				<td class="invoice_details tablecontent" align=left colspan="3">{$biller.street_address2|htmlsafe}</td>
		</tr>   
			{/if}
			{if $biller.street_address != null }
		<tr>
            {*  <td class="invoice_details tablecontent"></td> *}
				<td class="invoice_details tablecontent" align=left colspan="3">{$biller.street_address2|htmlsafe}</td>
        </tr>   
			{/if}
        {/if}
        
        <tr>
        
        <td class="invoice_details tablecontent"> {if $biller.zip_code != null}{$biller.zip_code}{/if} {if $biller.city != null}{$biller.city}{/if} </td>
        </tr>
{*
		{merge_address field1=$biller.city field2=$biller.state field3=$biller.zip_code street1=$biller.street_address street2=$biller.street_address2 class1="invoice_details tablecontent" class2="invoice_details tablecontent" colspan="3"}
        *}
		{if $biller.country != null }
		<tr>
            {* <td class="invoice_details tablecontent"></td> *}
				<td class="invoice_details tablecontent" colspan="3">{$biller.country|htmlsafe}</td>
		</tr>
       	{/if}
    </table>
    </td>
    <td>
    <table border=0px width=100%>
    
	{print_if_not_null label=$LANG.phone_short field=$biller.phone class1="invoice_details tablecontent" class2="invoice_details tablecontent" colspan="3"}
	{print_if_not_null label=$LANG.fax field=$biller.fax class1="invoice_details tablecontent" class2="invoice_details tablecontent" colspan="3"}
	{print_if_not_null label=$LANG.mobile_short field=$biller.mobile_phone class1="invoice_details tablecontent" class2="invoice_details tablecontent" colspan="3"}
	{print_if_not_null label=$LANG.email field=$biller.email class1="invoice_details tablecontent" class2="invoice_details tablecontent" colspan="3"}
	
	{print_if_not_null label=$customFieldLabels.biller_cf1 field=$biller.custom_field1 class1="invoice_details tablecontent" class2="invoice_details tablecontent" colspan="3"}
	{print_if_not_null label=$customFieldLabels.biller_cf2 field=$biller.custom_field2 class1="invoice_details tablecontent" class2="invoice_details tablecontent" colspan="3"}
	{print_if_not_null label=$customFieldLabels.biller_cf3 field=$biller.custom_field3 class1="invoice_details tablecontent" class2="invoice_details tablecontent" colspan="3"}
	{print_if_not_null label=$customFieldLabels.biller_cf4 field=$biller.custom_field4 class1="invoice_details tablecontent" class2="invoice_details tablecontent" colspan="3"}
    </table>
    </td>
    </tr>
    	<tr>
				<td class="" colspan="4"> </td>
		</tr>


</table>

</td>

<tr>
		<td colspan="6"><div style="font-size:8pt;" align="center">{$biller.footer|outhtml}</div></td>
</tr>


</table>
<div id="footer"></div>
</div>

</body>
</html>
