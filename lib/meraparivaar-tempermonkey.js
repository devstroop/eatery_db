// ==UserScript==
// @name         Mera Parivaar
// @namespace    http://tampermonkey.net/
// @version      0.1
// @description  try to take over the world!
// @author       You
// @match        https://meraparivar.haryana.gov.in/*
// @icon         https://www.google.com/s2/favicons?sz=64&domain=gov.in
// @grant        none
// ==/UserScript==

(function () {
    "use strict";
  
    // instead of assigning phone number take input from user
    let mobile = prompt("Please enter alternate override mobile number");


  
    // Override the original function
    window.fnGetHOFMobileNoForSearchFamily = function () {
      // Your custom code here
      console.log("Override successful!");
  
      // Extracted relevant code from the original function
      if (mobile != null && mobile != "" && mobile.length == 10) {
        $("#hdnMobileNo").val(mobile);
        let strMNo = "XXXXXX" + mobile.substring(mobile.length - 4);
        $("#txtMobileNo").val(strMNo);
        $("#SendOTPtoMember_DIV").show();
      } else {
        alert("HOF mobile not found.");
        return false;
      }
    };
  
    window.ShowOTPDiv = function () {
      try {
        NewFamilyId = $("#hdnNewFamilyId").val();
        NewMemberId = $("#hdnNewMemberId").val();
  
        NewMemberId = atob(NewMemberId);
  
        NewFamilyId = encryptAES(NewFamilyId, AESKey);
        NewMemberId = encryptAES(NewMemberId, AESKey);
  
        // Using the 'mobile' variable directly since there's no encryption/decryption needed
        $("#hdnMobileNo").val(encryptAES(mobile, AESKey));
        let strMNo = "XXXXXX" + mobile.substring(mobile.length - 4);
        $("#txtMobileNoOccupation").val(strMNo);
        $("#SendOTPtoMemberOccupation_DIV").show();
      } catch (e) {
        alert(e);
      }
    };
  
    window.SendOtpOccupation = function () {
      NewFamilyId = $("#hdnNewFamilyId").val();
      NewMemberId = $("#hdnNewMemberId").val();
  
      NewMemberId = atob(NewMemberId);
  
      NewFamilyId = encryptAES(NewFamilyId, AESKey);
      NewMemberId = encryptAES(NewMemberId, AESKey);
  
      $.ajax({
        type: "POST",
        url: "/DeleteUnwantedMember/GenerateOTPForMobile",
        datatype: "Json",
        data: { mobile: mobile, MemberId: NewMemberId, FamilyId: NewFamilyId },
        success: function (result) {
          if (result == "1") {
            $("#ValidateSectionOccupation_DIV").css("display", "block");
            $("#SendOTPOccupation_DIV").hide();
            $("#ResendOtpOccupation_Div").css("display", "block");
  
            alert("OTP sent to HOF Mobile No");
          } else if (result == "2") {
            alert("Mobile No is Incorrect");
          } else if (result == "3") {
            alert("Some error occurred, please try again later.");
          }
        },
      });
    };
  
    window.VerifyOTPOccupation = function () {
      let OTPButtonVerify = $("#hdnOTPButtonVerify").val();
      let OTP = $("#txtInputOTPOccupation").val();
      let aesKey = "r0P84hd3yz94cx2";
  
      if (mobile.length !== 10) {
        alert("Please enter a valid mobile number.");
        return false;
      } else if (OTP.length !== 4) {
        alert("Please enter a valid OTP.");
        return false;
      } else {
        OTP = encryptAES(OTP, AESKey);
        let encryptedMobile = encryptAES(mobile, AESKey);
  
        $.ajax({
          type: "POST",
          url: "/Family/ValidateOTPForAddNewMember",
          datatype: "Json",
          data: { MobileNo: encryptedMobile, OTP: OTP, OTPButtonVerify: OTPButtonVerify },
          success: function (result) {
            alert("OTP Verified Successfully.");
            $("#txtInputOTPOccupation").val("");
            $("#ValidateSectionOccupation_DIV").css("display", "none");
            $("#SendOTPOccupation_Div").hide();
            $("#ResendOtpOccupation_Div").css("display", "none");
            $("#SendOTPtoMemberOccupation_DIV").css("display", "none");
  
            if (OTPButtonVerify == "1") {
              HOFtoBeSplitVerified = "Verified";
              $("#btnOTPHOFtoBeSplit").attr("disabled", "disabled");
            } else if (OTPButtonVerify == "2") {
              HOFtoBeAddedVerified = "Verified";
              $("#btnOTPHOFtoBeAdded").attr("disabled", "disabled");
  
              let memberAge = $("#hdnMemberAge").val();
              if (memberAge >= 18) {
                $("#btnOTPMember").show();
              }
            } else if (OTPButtonVerify == "3") {
              MemberVerified = "Verified";
              $("#btnOTPMember").attr("disabled", "disabled");
            }
  
            $("#btnOTPHOFtoBeSplit").show();
            $("#btnOTPHOFtoBeAdded").show();
            $("#btnOTPMember").show();
          },
        });
      }
    };
  
    // Rest of the code remains unchanged
  })();
  