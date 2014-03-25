<%@ Page Language="C#" AutoEventWireup="true" CodeFile="3upForm.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html >
<head >
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>3up! Form </title>
    <link rel="stylesheet" href="Content/bootstrap.min.css" />
    <%--<link rel="stylesheet" href="Content/bootstrap-theme.min.css" />--%>
    <link href="Content/bootstrap-dialog.css" rel="stylesheet" type="text/css" />
    <link href="Content/prettyLoader.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <div class="container">
        <h2>Tell us about your company </h2>
        <div class="form-horizontal">

            <div class="row clearfix">
                <div class="col-md-6 column">
                    <!-- aqui empieza la primera columna -->
                    <div class="form-group">
                        <label class="col-lg-5 control-label" for="companyName1">Partner Company Name </label>
                        <div class="col-lg-5">
                            <input id="companyName" name="companyName1" type="text" placeholder="Partner Company Name" class="form-control" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-5 control-label" for="companyCity1">Partner Company City </label>
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
                        <label class="col-lg-5 control-label" for="CAMName1">Partner CAM Name </label>
                        <div class="col-lg-5">
                            <input id="CAMName" name="CAMName1" type="text" placeholder="Partner CAM Name " class="form-control" />
                        </div>
                    </div>

                    <h2>Tell us about you:</h2>

                    <div class="form-group">
                        <label class="col-lg-5 control-label" for="firstName1">Partner First Name  </label>
                        <div class="col-lg-5">
                            <input id="firstName" name="firstName1" type="text" placeholder="Partner First Name " class="form-control" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-5 control-label" for="lastName1">Partner Last Name  </label>
                        <div class="col-lg-5">
                            <input id="lastName" name="lastName1" type="text" placeholder="Partner Last Name " class="form-control" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-5 control-label" for="certifications1">Certifications </label>
                        <div class="col-lg-5">
                            <input id="certifications" name="certifications1" type="text" placeholder="Certifications" class="form-control" />
                        </div>
                    </div>



                </div>
                <!-- aqui termina la primera columna -->

                <!-- aqui empieza la segunda columna -->
                <div class="col-md-6 column">
                    <div class="form-group">
                        <label class="col-lg-5 control-label" for="linkID1">Partner Company LinkID </label>
                        <div class="col-lg-5">
                            <input id="linkID" name="linkID1" type="text" placeholder="Partner Company LinkID" class="form-control" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-5 control-label" for="companyState1">Partner Company State</label>
                        <div class="col-lg-5">
                            <input id="companyState" name="companyState1" type="text" placeholder="Partner Company State" class="form-control" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-5 control-label" for="companyRegion1">Partner Company Region </label>
                        <div class="col-lg-5">
                            <input id="companyRegion" name="companyRegion1" type="text" placeholder="Partner Company Region" class="form-control" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-5 control-label" for="CSENumber1">Partner CSE Number</label>
                        <div class="col-lg-5">
                            <input id="CSENumber" name="CSENumber1" type="text" placeholder="Partner CSE Number " class="form-control" />
                        </div>
                    </div>

                    <h2 style="visibility: hidden">Tell us about you:</h2>
                    <div class="form-group">
                        <label class="col-lg-5 control-label" for="email1">Partner Email  </label>
                        <div class="col-lg-5">
                            <input id="email" name="email1" type="text" placeholder="Partner Email" class="form-control" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-5 control-label" for="phone1">Partner Phone Number </label>
                        <div class="col-lg-5">
                            <input id="phone" name="phone1" type="text" placeholder="Partner Phone Number" class="form-control" />
                        </div>
                    </div>

                    <div class="form-group"  >
                        <div><a href="https://fedsso-helper.avaya.com/FMLogin.jsp?TYPE=33554433&REALMOID=06-e6e3e8b2-0ff2-113e-bdf9-85343f360000&GUID=&SMAUTHREASON=0&METHOD=GET&SMAGENTNAME=-SM-7HSIVmC5bO2WByLX8OgBaZupMbR1a8r%2fRObXUKPQgX0nv5ESNVBgxnBwp1H0S5mg&TARGET=-SM-HTTPS%3a%2f%2ffedsso--helper%2eavaya%2ecom%2fsaml--sfdc--project%2fuserType--sfdc%2ejsp%3fSMASSERTIONREF%3dQUERY%26SPID%3dhttps%3a%2f%2fwithorgid%2esalesforce%2ecom%26RelayState%3d-%2Fapex-%2Fsp_ViewDetailPage-%3Fc-%3Da3da0000000LL9zAAG-%26Id-%3Da3ja0000000LS4DAAW" target="_blank">Click here to access Checklist ítems </a> </div>
                        <label class="col-lg-5 control-label">3Up! Checklists Completed?</label>
                        <div class="col-lg-5" id="completed">
                            <div  >
                                <label>
                                    <input type="checkbox" name="opciones" value="Sign Up" />
                                    Sign Up!
                                </label>
                            </div>
                            <div >
                                <label>
                                    <input type="checkbox" name="opciones" value="Set Up" />
                                    Set Up!
                                </label>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- fin de la segunda columna -->

                  <h2>Please tell us about this opportunity:</h2>
                
                  <div class="form-group">
                        <label class="col-lg-5 control-label" for="opportunity1">Opportunity description: </label>
                        <div class="col-lg-5">
                            <textarea id="opportunity" name="opportunity1" rows="3" class="form-control" ></textarea>
                        </div>
                    </div>

                <div class="form-group">
                        <label class="col-lg-5 control-label" for="presentationDate1">Demo/Presentation Date: </label>
                        <div class="col-lg-5">
                           <input type="datetime" id="presentationDate" class="form-control" name="presentationDate1" />
                        </div>
                    </div>

                 <div class="form-group">
                        <label class="col-lg-5 control-label" for="sales1">Stage of Sales Cycle </label>
                        <div class="col-lg-5">
                           <input type="text" id="sales" class="form-control" name="sales1" placeholder="Stage of Sales Cycle"/>
                        </div>
                    </div>

                 <div class="form-group">
                        <label class="col-lg-5 control-label" for="competiting1">Who are you competitingagainst?: </label>
                        <div class="col-lg-5">
                            <textarea id="competiting" name="competiting1" rows="3" class="form-control" ></textarea>
                        </div>
                    </div>

                 <div class="form-group">
                        <label class="col-lg-5 control-label" for="solution1">Solution category to show?</label>
                        <div class="col-lg-5">
                           <input type="text" id="solution" class="form-control" name="solution1" placeholder="Solution category to show?"/>
                        </div>
                    </div>

                
                 <div class="form-group">
                        <label class="col-lg-5 control-label" for="resource1">Demo resources you plan to use?</label>
                        <div class="col-lg-5">
                           <input type="text" id="resource" class="form-control" name="resource1" placeholder="Demo resources you plan to use?"/>
                        </div>
                    </div>

                <div class="form-group">
                        <label class="col-lg-5 control-label" for="session1">When do you want to do the coaching session?</label>
                        <div class="col-lg-5">
                           <input type="text" id="session" class="form-control" name="session1" placeholder="When do you want to do the coaching session?"/>
                        </div>
                    </div>
               <div align="center">
                   <button type="button" class="btn btn-danger" id="submit">Submit</button>
               </div>
            </div>

            

        </div>
    </div>

    <script type="text/javascript" src="Scripts/jquery.js"></script>
    <script type="text/javascript" src="Scripts/bootstrap.min.js"></script>
    <script type="text/javascript" src="Scripts/bootstrap-dialog.js"></script>
    <script type="text/javascript" src="Scripts/json2.js"></script>
    <script type="text/javascript" src="Scripts/register.js"></script>
    <script type="text/javascript" src="Scripts/prettyLoader.js"></script> 


</body>
</html>
