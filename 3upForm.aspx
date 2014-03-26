<%@ Page Language="C#" AutoEventWireup="true" CodeFile="3upForm.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html>
<head>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="-1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>3up! Demo Coaching Program </title>
    <link href="Content/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/bootstrap-dialog.css" rel="stylesheet" type="text/css" />
    <link href="Content/bootstrap-multiselect.css" rel="stylesheet" type="text/css" />
    <link href="Content/bootstrap-datetimepicker.min.css" rel="stylesheet" type="text/css" />
    <link href="Content/prettyLoader.css" rel="stylesheet" type="text/css" />

</head>
<body>
    <div class="container">


        <div class="rowfluid">
            <div class="span12">
                <br />
                <img src="assets/img/avaya.jpg" alt="">
            </div>
        </div>

        <br />
        <br />

        <div class="rowfluid">
            <div class="span12 imgheader">
                <img src="assets/img/3up.jpg" alt="">
            </div>
        </div>
        <br />
        <p align="justify"><span style="font-weight: bold">Welcome to the 3Up! Demo Coaching Program!</span> Since you are here, you are already seeing the benefit of using the 3Up! method and checklists. The final step in your success is practicing your demo and focusing your presentation to win the deal. That’s where demo coaching comes in…</p>
        <p align="justify">Fill in the form below and press the submit button. We will take it from there and contact you to set up a Scopia meeting to do our demo coaching session. Based on your needs for the opportunity, we will engage appropriate experts within Avaya to participate on our end and give you the feedback you need to improve your demo presentation and win!</p>

        <br />
        <h5>
            <p><font color="#CC0000">*</font>Mandatoy Fields</p>
        </h5>
        <br />
        <h4>Tell us about your company: </h4>
        <br />
        <div class="form-horizontal">

            <div class="row clearfix">
                <div class="col-md-6 column">
                    <!-- aqui empieza la primera columna -->
                    <div class="form-group">
                        <label class="col-lg-5 control-label" for="companyName1"><font color="#CC0000">*</font>Partner Company Name </label>
                        <div class="col-lg-5">
                            <input id="companyName" name="companyName1" type="text" placeholder="Partner Company Name" class="form-control" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-5 control-label" for="companyCity1"><font color="#CC0000">*</font>Partner Company City </label>
                        <div class="col-lg-5">
                            <input id="companyCity" name="companyCity1" type="text" placeholder="Partner Company City" class="form-control" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-5 control-label" for="companyCountry1">Partner Company Country </label>
                        <div class="col-lg-5">
                            <input id="companyCountry" name="companyCountry1" type="text" placeholder="Partner Company Country" class="form-control" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-5 control-label" for="CAMName1"><font color="#CC0000">*</font>Partner CAM Name </label>
                        <div class="col-lg-5">
                            <input id="CAMName" name="CAMName1" type="text" placeholder="Partner CAM Name " class="form-control" />
                        </div>
                    </div>

                    <h4>Tell us about you:</h4>
                    <br />

                    <div class="form-group">
                        <label class="col-lg-5 control-label" for="firstName1"><font color="#CC0000">*</font>Partner First Name  </label>
                        <div class="col-lg-5">
                            <input id="firstName" name="firstName1" type="text" placeholder="Partner First Name " class="form-control" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-5 control-label" for="lastName1"><font color="#CC0000">*</font>Partner Last Name  </label>
                        <div class="col-lg-5">
                            <input id="lastName" name="lastName1" type="text" placeholder="Partner Last Name " class="form-control" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-5 control-label" for="certifications1"><font color="#CC0000">*</font>Certifications </label>
                        <div class="col-lg-5">
                            <select name="certifications1" id="certifications" class="multiselect form-control" multiple="multiple">
                                <option value="APSS">APSS</option>
                                <option value="APDS">APDS</option>
                                <option value="ACDS">ACDS</option>
                                <option value="AIPS">AIPS</option>
                                <option value="ASPS">ASPS</option>
                                <option value="ACIS">ACIS</option>
                                <option value="ACSS">ACSS</option>
                                <option value="ACSE">ACSE</option>
                            </select>
                            <%--<input id="certifications" name="certifications1" type="text" placeholder="Certifications" class="form-control" />--%>
                        </div>
                    </div>



                </div>
                <!-- aqui termina la primera columna -->

                <!-- aqui empieza la segunda columna -->
                <div class="col-md-6 column">
                    <div class="form-group">
                        <label class="col-lg-5 control-label" for="linkID1"><font color="#CC0000">*</font>Partner Company LinkID </label>
                        <div class="col-lg-5">
                            <input id="linkID" name="linkID1" type="text" placeholder="Partner Company LinkID" class="form-control" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-5 control-label" for="companyState1"><font color="#CC0000">*</font>Partner Company State</label>
                        <div class="col-lg-5">
                            <input id="companyState" name="companyState1" type="text" placeholder="Partner Company State" class="form-control" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-5 control-label" for="companyRegion1"><font color="#CC0000">*</font>Partner Company Region </label>
                        <div class="col-lg-5">
                            <input id="companyRegion" name="companyRegion1" type="text" placeholder="Partner Company Region" class="form-control" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-5 control-label" for="CSENumber1"><font color="#CC0000">*</font>Partner CSE Number</label>
                        <div class="col-lg-5">
                            <input id="CSENumber" name="CSENumber1" type="text" placeholder="Partner CSE Number " class="form-control" />
                        </div>
                    </div>

                    <h2 style="visibility: hidden">Tell us about you:</h2>
                    <div class="form-group">
                        <label class="col-lg-5 control-label" for="email1"><font color="#CC0000">*</font>Partner Email  </label>
                        <div class="col-lg-5">
                            <input id="email" name="email1" type="text" placeholder="user@example.com" class="form-control" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-5 control-label" for="phone1"><font color="#CC0000">*</font>Partner Phone Number </label>
                        <div class="col-lg-5">
                            <input id="phone" name="phone1" type="text" placeholder="Partner Phone Number" class="form-control" />
                        </div>
                    </div>

                    <div class="form-group">
                        <div><a href="https://fedsso-helper.avaya.com/FMLogin.jsp?TYPE=33554433&REALMOID=06-e6e3e8b2-0ff2-113e-bdf9-85343f360000&GUID=&SMAUTHREASON=0&METHOD=GET&SMAGENTNAME=-SM-7HSIVmC5bO2WByLX8OgBaZupMbR1a8r%2fRObXUKPQgX0nv5ESNVBgxnBwp1H0S5mg&TARGET=-SM-HTTPS%3a%2f%2ffedsso--helper%2eavaya%2ecom%2fsaml--sfdc--project%2fuserType--sfdc%2ejsp%3fSMASSERTIONREF%3dQUERY%26SPID%3dhttps%3a%2f%2fwithorgid%2esalesforce%2ecom%26RelayState%3d-%2Fapex-%2Fsp_ViewDetailPage-%3Fc-%3Da3da0000000LL9zAAG-%26Id-%3Da3ja0000000LS4DAAW" target="_blank">Click here to access Checklist ítems </a>. If Yes, please fill box. If No, please leave in blank </div>
                        <label class="col-lg-5 control-label"><font color="#CC0000">*</font>3Up! Checklists Completed?</label>
                        <div class="col-lg-5" id="completed">
                            <div>
                                <label>
                                    <input type="checkbox" name="opciones" value="Sign Up" />
                                    Sign Up!
                                </label>
                            </div>
                            <div>
                                <label>
                                    <input type="checkbox" name="opciones" value="Set Up" />
                                    Set Up!
                                </label>
                            </div>
                        </div>
                    </div>

                </div>

                <hr />
                <!-- fin de la segunda columna -->

                <h4>Please tell us about this opportunity:</h4>
                <br />

                <div class="form-group">
                    <label class="col-lg-5 control-label" for="opportunity1"><font color="#CC0000">*</font>Opportunity description: </label>
                    <div class="col-lg-5">
                        <textarea id="opportunity" name="opportunity1" rows="3" class="form-control"></textarea>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-lg-5 control-label" for="presentationDate1"><font color="#CC0000">*</font>Demo/Presentation Date: </label>
                    <div class="col-lg-5">
                        <div class="well">
                            <div class="input-group date" id="time1">
                                <input type='text' class="form-control" data-format="yyyy-MM-dd" id="presentationDate"/>
                                <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span>
                                </span>
                            </div>
                        </div>

                    </div>
                </div>

                <div class="form-group">
                    <label class="col-lg-5 control-label" for="sales1"><font color="#CC0000">*</font>What stage of the sales cycle are you at? </label>
                    <div class="col-lg-5">
                        <select class="form-control" id="sales" name="sales1">
                            <option value="Phase 1 – Introduction">Phase 1 – Introduction</option>
                            <option value="Phase 2 – Qualification">Phase 2 – Qualification</option>
                            <option value="Phase 3 – Closing">Phase 3 – Closing</option>
                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-lg-5 control-label" for="customerAudience"><font color="#CC0000">*</font>Who will be in the customer audience?  </label>
                    <div class="col-lg-5">
                        <select name="customerAudience" id="customerAudience" class="multiselect form-control" multiple="multiple">
                                <option value="IT Admin">IT Admin</option>
                                <option value="IT Manager">IT Manager</option>
                                <option value="IT Director">IT Director</option>
                                <option value="LOB Manager">LOB Manager</option>
                                <option value="LOB Director">LOB Director</option>
                                <option value="LOB VP">LOB VP</option>
                                <option value="CEO">CEO</option>
                                <option value="CFO">CFO</option>
                                <option value="COO">COO</option>
                                <option value="CIO">CIO</option>
                                <option value="Customer End-users">Customer End-users</option>
                                <option value="Customer Consultant">Customer Consultant</option>
                                <option value="Other">Other</option>
                            </select>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-lg-5 control-label" for="contactCustomer"><font color="#CC0000">*</font>Who is your advocate or key contact with this customer?: </label>
                    <div class="col-lg-5">
                        <input type="text" id="contactCustomer" name="contactCustomer" class="form-control" />
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-lg-5 control-label" for="competiting1"><font color="#CC0000">*</font>Who are you competiting against?: </label>
                    <div class="col-lg-5">
                        <textarea id="competiting" name="competiting1" rows="3" class="form-control"></textarea>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-lg-5 control-label" for="solution1"><font color="#CC0000">*</font>What solution category are you going to show?:</label>
                    <div class="col-lg-5">
                        <select name="solution1" id="solution" class="form-control">
                            <option value="Unified Communications">Unified Communications</option>
                            <option value="Collaboration">Collaboration</option>
                            <option value="Contact Center">Contact Center</option>
                            <option value="Video">Video</option>
                            <option value="Networking">Networking</option>
                            <option value="MidMarket">MidMarket</option>
                            <option value="SME">SME</option>
                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-lg-5 control-label" for="demoResource"><font color="#CC0000">*</font>What demo resource will you use?:</label>
                    <div class="col-lg-5">
                        <select name="demoResource" id="demoResource" class="form-control">
                            <option value="Production System">Production System</option>
                            <option value="Lab System">Lab System</option>
                            <option value="Partner-built Demo Kit">Partner-built Demo Kit</option>
                            <option value="ASK Demo Kit">ASK Demo Kit</option>
                            <option value="IPO Power Demo Kit">IPO Power Demo Kit</option>
                            <option value="IPOA Demo Kit">IPOA Demo Kit</option>
                            <option value="iConnect Demo Kit">iConnect Demo Kit</option>
                            <option value="Demo Avaya">Demo Avaya</option>
                            <option value="Other Demo Kit">Other Demo Kit</option>
                        </select>
                    </div>
                </div>


                <div class="form-group">
                    <label class="col-lg-5 control-label" for="resource1"><font color="#CC0000">*</font>What demo are you planning to show?: </label>
                    <div class="col-lg-5">
                        <input type="text" id="resource" class="form-control" name="resource1" placeholder="What demo are you planning to show? " />
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-lg-5 control-label" for="session1"><font color="#CC0000">*</font>When do you want to do the coaching session?</label>
                    <div class="col-lg-5">
                        <div class="well">
                            <div class="input-group date" id="time2" >
                                <input type='text' class="form-control" data-format="yyyy-MM-dd" id="session" />
                                <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
                <div align="center">
                    <button type="button" class="btn btn-danger" id="submit">Submit</button>
                </div>
            </div>



        </div>
    </div>
    <hr>
    <div class="container">
        <div class="rowfluid">
            <div class="span12 legal">
                <br>
                <br>

                <p>
                    <font size="1" face="arial" color="#999999">&copy;2014 Avaya Inc. All Rights Reserved, Avaya, the Avaya Logo, and all trademarks identified by ®,   TM or SM are registered trademarks, trademarks, or service marks of Avaya Inc,   and may be registered in certain jurisdictions. All other trademarks are the   property of their respective owners.</font><font size="1" face="arial" color="#999999"><br />
              <br />
    <a href="http://www.avaya.com/gcm/master-usa/en-us/includedcontent/termsofuse.htm" target="_blank"><font color="#999999" size="1" face="arial">Terms of Use</font></a> | <a href="http://www.avaya.com/gcm/master-usa/en-us/includedcontent/privacy.htm" target="_blank"><font color="#999999" size="1" face="arial">Privacy Statement</font></a></font>
                </p>
            </div>
        </div>
    </div>
    <script type="text/javascript" src="Scripts/jquery-2.1.0.min.js"></script>
    <script type="text/javascript" src="Scripts/moment.min.js"></script>
    <script type="text/javascript" src="Scripts/bootstrap.min.js"></script>
    <script type="text/javascript" src="Scripts/bootstrap-dialog.js"></script>
    <script type="text/javascript" src="Scripts/bootstrap-multiselect.js"></script>
    <script type="text/javascript" src="Scripts/bootstrap-datetimepicker.min.js"></script>
    <script type="text/javascript" src="Scripts/json2.js"></script>
    <script type="text/javascript" src="Scripts/register.js"></script>
    <script type="text/javascript" src="Scripts/prettyLoader.js"></script>

</body>
</html>
