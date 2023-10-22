<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="randomizer.aspx.cs" Inherits="WebApplication4.randomizer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link href="/Styles/StyleSheet2.css" rel="stylesheet" />

        <link href="../Styles/StyleSheet3.css" rel="stylesheet" />
    <link href="../Styles/StyleSheet4.css" rel="stylesheet" />
    <link href="../Styles/ContentDesign.css" rel="stylesheet" />


</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="font center">Random Item <br />
        generates a description for a random item in Night City.
    </h1>

    <footer">
            <div id="randTxt"> </div>
                            <input id="button" type="submit" name="button" onclick="getRandomText()" style="text-align:center" />

    </footer>
    <script>
        TxtArray = new Array();
        TxtArray[0] = 'The Neural Nexus Enhancement Chip is a revolutionary cyberware implant that enhances neural connectivity and information processing. This cutting-edge technology seamlessly integrates with your brain neural pathways, boosting cognitive abilities, memory retention, and multitasking capabilities.Experience a new level of mental acuity and unlock your full intellectual potential with the Neural Nexus Enhancement Chip.';;
        TxtArray[1] = 'The Reflex Accelerator Module is a coveted cyberware upgrade designed to push your reflexes beyond human limits. This implant augments your central nervous system, dramatically enhancing your reaction speed, agility, and hand-eye coordination. Whether you are a street samurai engaged in high - stakes combat or a stealthy infiltrator navigating precarious situations, the Reflex Accelerator Module gives you the edge you need to outmaneuver your opponents with lightning - fast precision.';;
        TxtArray[2] = 'The Photon Gaze Optical Implant revolutionizes your visual perception, granting you superhuman sight capabilities. This state-of-the-art ocular implant enhances your vision by providing enhanced clarity, low-light amplification, and infrared spectrum detection. See through darkness, analyze data overlays, and gain a tactical advantage in any environment. With the Photon Gaze Optical Implant, your eyes become the ultimate tool for reconnaissance and surveillance.';;
        TxtArray[3] = 'The Dermal Shield Weave is a formidable cyberware enhancement that transforms your skin into a durable armor plating. Composed of advanced composite materials and micro-reinforced fibers, this implant provides exceptional resistance against physical impacts, projectile penetration, and thermal attacks. Deflect bullets, absorb blows, and withstand extreme temperatures with confidence. The Dermal Shield Weave ensures your safety and grants you an extra layer of protection in the face of danger.';;
        TxtArray[4] = 'Unleash the power of sound with the Sonic Resonance Vocal Modulator. This cyberware implant enhances your vocal cords, granting you the ability to manipulate sound waves with precision. Emit devastating sonic blasts, shatter glass, or incapacitate opponents with debilitating frequencies. The Sonic Resonance Vocal Modulator gives you the power to control and weaponize sound, turning your voice into a formidable tool in combat or covert operations.';;
        TxtArray[5] = 'The Bionic Limb Prosthesis is the pinnacle of cybernetic engineering, replacing a lost limb with a highly advanced robotic substitute. This cyberware implant seamlessly integrates with your nervous system, restoring full motor control and providing superhuman strength and precision. With the Bionic Limb Prosthesis, you regain your mobility and excel in physical endeavors, surpassing the limitations of mere flesh and bone.';;

        function getRandomText() {
            var num = Math.floor(Math.random() * 6);
            var img = TxtArray[num];
            document.getElementById("randTxt").innerHTML = (img);
            console.log("mewwwwwwwwwww");


        }
    </script>
</asp:Content>
