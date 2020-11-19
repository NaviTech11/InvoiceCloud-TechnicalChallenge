<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Task1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <!-----------------------------TOP SECTION -------------------------------->
        <div class="top__section row">
            <!--------------- LEFT CONTAINER -------------------->
            <div class="col-6 left__container">
                <!----LEFT TOP BLOCK ------>
                <div class="row leftTop__block">
                   <img class="logo col-5 d-flex flex-start" src="./Assets/logo.png" alt="Logo" />
                    <div class="col-7 d-flex flex-end">
                        <p>
                           01010001110001<br />
                           Service Account<br />
                          <asp:Label runat ="server" ID ="lblBillName"></asp:Label><br /> 
                        </p> 
                        
                    </div>
                </div>
                <!----LEFT BOTTOM BLOCK ----->
                <div class="leftBottom__block">
                    <div class="d-flex justify-content-center">
                        <p>Please Return This Portion With Your Payment</p>
                    </div>
                    <div class="label col-12">
                        <p>ADDRESSEE:</p>
                    </div>
                    <div class="ml-5">
                        <p>
                          John Ashbun<br />
                          <asp:Label runat ="server" ID ="lblAddress1"></asp:Label><br />
                          <asp:Label runat ="server" ID ="lblCity"></asp:Label>, <asp:Label runat ="server" ID ="lblState"></asp:Label> <asp:Label runat ="server" ID ="lblZipCode"></asp:Label>33<br />
                        </p>
                       
                    </div>

                </div>
            </div>
            <!-----------------RIGHT CONTAINER ----------------------->
            <div class="col-6 right__container">
                <!----RIGHT TOP BLOCK ----->
                <div class="rightTop__block" >
                    <table class="table table-bordered top__table col-12">
                      <thead class="thead-dark">
                        <tr>
                        <th>CUSTOMER NUMBER</th>
                        <th>ACCOUNT NUMBER</th>
                        <th>PAY ON OR BEFORE</th>
                        </tr>
                      </thead>
                      <tr>
                        <td>8856</td>
                        <td><asp:Label runat ="server" ID ="lblAccountNumber"></asp:Label></td>
                        <td>11/15/2020</td>
                      </tr>
                    </table>
                    <div class="row ml-1 mr-1">
                        <div class="arrow__pointer label">
                            <p>AMOUNT DUE</p>
                        </div>
                        <div class=" amount__tag">
                            <p><asp:Label runat ="server" ID ="lblDueNow"></asp:Label></p>
                        </div>
                    </div>
                </div>
                <!------RIGHT BOTTOM BLOCK -------->
                <div class="rightBottom__block">
                    <div>
                        <p></p>
                    </div>
                    <div class="gray__container">
                        <div class="label col-10 ml-5">
                            <p>REMIT AND MAKE CHECKS PAYABLE TO:</p>
                        </div>
                        <div class="remit" >
                            <p>CITY OF COON RAPIDS <br />
                                375 Summer Place Blvd. <br />
                                Pittsburg, PA - 56594 <br />
                                Service Department <br />
                            </p>
                           
                        </div>
                        <div class="d-flex justify-content-end mr-5">
                            <p>SERVICE ADDRESS : 500 Conneticut ste. 4C</p>
                        </div>
                    </div>

                </div>

            </div>
        </div>
        <!------------------MIDDLE SECTION ----------------------------->
        <div class="middle__section mr-1 ml-1">
            <div class="row ml-4 mb-4" >
                <p>BILLING DATE: 11/05/2020</p>
            </div>

            <div class="row label">
                <div class="col-2 pt-1 mb-0">
                    <p>Customer Number</p>
                    <div class="label__inverted">
                        <p>8856</p>
                    </div>
                </div>
                <div class="col-2 pt-1 mb-0">
                   <p>Account Number</p>
                     <div class="label__inverted">
                        <p><asp:Label runat ="server" ID ="lblAccountNumber2"></asp:Label></p>
                    </div>
                </div>
                <div class="col-4 pt-1 mb-0">
                    <p>Billing Period</p>
                     <div class="label__inverted">
                        <p>10/07 - 11/07</p>
                    </div>
                </div>
                <div class="col-2 pt-1 mb-0">
                    <p>Total Due</p>
                    <div class="label__inverted">
                        <p><asp:Label runat ="server" ID ="lblBilled"></asp:Label></p>
                    </div>
                </div>
                <div class="col-2 pt-1 mb-0">
                    <p>Due Date</p>
                     <div class="label__inverted">
                        <p>11/15/05</p>
                    </div>
                </div>
            </div>

            <div class="row ml-4 mt-2" >
                <p>SERVICE ADDRESS: ########</p>
            </div>

        </div>
        <!-----------------BOTTOM SECTION ---------------->
        <div class="d-flex bottom__section">
            <!--------LEFT SIDE ------->
                <div class="col bottomLeft__side p-0 mr-1">
                    <table class="table bottom__table" >
                      <thead class="thead-dark">
                        <tr>
                          <th colspan="5" class="p-0">
                              Current Water Use <br /> (Hundreds of Gallons)
                          </th>
                        </tr>
                      </thead>
                      <tbody class="gray__container">
                        <tr>
                          <th scope="row">Meter #</th>
                          <td>Read Date</td>
                          <td>Previous Reading</td>
                          <td>Current Reading</td>
                          <td>Usage</td>
                        </tr>
                          <tr>
                           <th scope="row">#####</th>
                          <td>#######</td>
                          <td>4350</td>
                          <td>4350</td>
                          <td>0</td>
                        </tr>
                      </tbody>
                    </table>

                    <div class="rates">
                        <div class="d-flex justify-content-center">
                            <p><strong>Residential Quaterly Services Rates</strong></p>
                        </div>
                        <div>
                            <p>
                                Water:<br />
                                MN State Testing Fee: Flart rate of $1.59 per account<br />
                                Base Fee Flat rate of $16.00 per account
                            </p>
                        </div>
                        <div>
                            <p>
                                Tier 1: First 20,000 gallons - $2.00 per 1,000 gallons<br />
                                Tier 2: 20,000 gallons to 80,000 - $2.45 per 1,000 gallons<br />
                                Tier 3: 80,000 gallons - $2.65 per 1,000 gallons<br />
                            </p>
                        </div>
                        <div>
                            <p>
                                Sewer:<br />
                                Base fee plus winter quarter (or less) consumption @ $3.00/1,000<br />
                                gallons
                            </p>
                        </div>
                        <div>
                            <table class="ratesTable">
                                  <thead>
                                    <tr>
                                      <th scope="col"></th>
                                      <th scope="col"><strong>Base fee</strong></th>
                                      <th scope="col"><strong>Min.</strong></th>
                                      <th scope="col"><strong>Max.</strong></th>
                                    </tr>
                                  </thead>
                                  <tbody>
                                    <tr>
                                      <th scope="row">Single Family (SF)</th>
                                      <td>$24.00</td>
                                      <td>$46.50</td>
                                      <td>$100.50</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">SF Seniors eligible prior 1997</th>
                                      <td>24.00</td>
                                      <td>41.00</td>
                                      <td>95.25</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">Duplex per unit</th>
                                      <td>18.75</td>
                                      <td>41.25</td>
                                      <td>95.25</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">Townhomes/condos, mobile homes<br /> per unit</th>
                                      <td>11.50</td>
                                      <td>33.90</td>
                                      <td>87.90</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">Apartments - sewer only</th>
                                      <td>43.60</td>
                                      <td>n/a</td>
                                      <td>n/a</td>
                                    </tr>
                                     <tr>
                                      <th scope="row">Townhomes/condos, apartments<br /> common meter</th>
                                      <td>8.00</td>
                                      <td>n/a</td>
                                      <td>n/a</td>
                                    </tr>
                                  </tbody>
                            </table>
                        </div>
                        <div class="mt-4">
                            <p style="line-height: 0;"><strong>Storm Drainage-Flat rate per quarter per unit:</strong></p>
                            <table class="stormTable">
                                <tr>
                                    <td>Single family:</td>
                                    <td>$10.40</td>
                                </tr>
                                <tr>
                                    <td>Medium density:</td>
                                    <td>7.60</td>
                                </tr>
                                <tr>
                                    <td>High density:</td>
                                    <td>4.00</td>
                                </tr>
                            </table>
                        </div>
                        <div class="mt-3 mb-4">
                            <p>
                              Automatic withdrawal is available from your checking or savings account.<br />
                              See reverse side of bill for automatic withdrawal form and ther information
                            </p>
                        </div>
                    </div>
                </div>
                <!--------RIGHT SIDE ------->
                <div class="col bottomRight__Side p-0 ml-1">
                    <div class="account__summary">
                        <div class="label">
                            <p>Account Summary</p>
                        </div>
                        <div class="d-flex justify-content-between line__height">
                            <p class="ml-4">BILLING</p>
                            <p class="mr-4">$179.20</p>
                        </div>
                        <div class="d-flex justify-content-between line__height">
                            <p class="ml-4">PENALTY</p>
                            <p class="mr-4">$0.00</p>
                        </div>
                        <div class="d-flex justify-content-between line__height">
                            <p class="ml-4">PAYMENT - THANK YOU</p>
                            <p class="mr-4">$59.36</p>
                        </div>
                        <div class="d-flex justify-content-end mr-4">
                            <p class="ml-5"><strong>BALANCE FORWARD:</strong></p>
                            <p style="margin-left:9rem">0.00</p>
                        </div>
                        <div class="d-flex justify-content-between line__height">
                            <p class="ml-4">MN STATE TESTING FEE</p>
                            <p class="mr-4">0.00</p>
                        </div>
                        <div class="d-flex justify-content-between line__height">
                            <p class="ml-4">BASE FEE</p>
                            <p class="mr-4">0.00</p>
                        </div>
                        <div class="d-flex justify-content-between line__height">
                            <p class="ml-4">SEWER-BASE SURCHARGE</p>
                            <p class="mr-4">0.00</p>
                        </div>
                        <div class="d-flex justify-content-between line__height">
                            <p class="ml-4">SEWER MINIMUM CHARGE</p>
                            <p class="mr-4">0.00</p>
                        </div>
                        <div class="d-flex justify-content-between line__height">
                            <p class="ml-4">STORM DRAINAGE</p>
                            <p class="mr-4">0.00</p>
                        </div>
                         <div class="d-flex justify-content-end line__height">
                            <p class="mr-5">TOTAL CURRENT CHARGES:</p>
                            <p class="mr-4">$179.20</p>
                        </div>
                         <div class="d-flex justify-content-end line__height">
                            <p class="mr-5">TOTAL AMOUNT DUE:</p>
                            <p class="mr-4">89.60</p>
                        </div>
                        <div class="d-flex justify-content-center mt-4">
                            <p><strong><em>A 10% PENALTY IS APPLIED IF PAYMENT IS NOT RECEIVED ON <br />
                                OR BEFORE THE 20TH OF THE MONTH IN WHICH IT IS DUE
                               </em></strong></p>
                        </div>
                        <div class="white__space"></div>

                        <div class="label messages">
                            <p>Messages</p>
                        </div>
                        <div class="white__space"></div>
                    </div>
                 </div>       
            </div>
             <!--------FOOTER ------->
             <div class="footer mt-2">
                 <div class="row">
                     <div class="col-2">
                        <p>City of Coon Rapids</p>
                     </div>
                     <div class="row">
                          <p>375 Summer Place Blvd.</p>
                          <p>Pittsburg, PA - 56594</p>
                          <p>---</p>
                          <p>11000111001000001110101110</p>
                          <p>0101011</p>
                     </div>
                   
                 </div>
             </div>
    </div>

</asp:Content>
