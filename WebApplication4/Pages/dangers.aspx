<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="dangers.aspx.cs" Inherits="WebApplication4.dangers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link href="/Styles/StyleSheet2.css" rel="stylesheet" />

        <link href="../Styles/StyleSheet3.css" rel="stylesheet" />
    <link href="../Styles/StyleSheet4.css" rel="stylesheet" />
    <link href="../Styles/ContentDesign.css" rel="stylesheet" />


</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="font center">Night City 
       have a lot of dangers, such as gangs. the most notorious one is the 6th Street.
    </h1>

    <footer>
            <div id="randTxt">
                Founded by veterans of the fourth Corporate War tired of the helplessness of the NCPD, members of 6th Street in 2045 are generally well-armed and heavily cybered-up with armament from their days in the field. Recently, they have been forced to move into extortion and smuggling in efforts to pay their bills. While they operate all throughout the city, the 6th Street all are welcome protectors of the Holy Angels Church in Little Europe.[2] 6th Street was meant to serve and protect the community of Vista del Rey. Today their interpretation of the law and "bringing justice to the city" is questionable and self-serving.[3]

The 6th Street gang was founded by old-fashioned American patriots who came together to act as an ad hoc police force. They have since forgone their original goal of serving public trust and are no different than any other gang who abuse their power and position in local communities. They regularly force smaller neighborhood businesses to pay tribute and "protection money," and are known to engage in outright criminal activities such as vehicle theft, illicit drug manufacturing and distribution, and murder.

The uniforms of 6th Street gangers are heavily influenced by military and patriotic accents: military boots, tactical vests and knee pads, cargo pants, baseball caps with old USA flags, stars, stripes, and eagles. Cyberware used by the gang include cyberoptics, pain editors, and health monitors.[1]

By 2077, 6th Street was supplied by Militech and Kendachi. That same year, the gang underwent a sudden change in leadership, the culmination of a schism between members who were fine with dealing with corporations and members who considered such activities to be a betrayal of the gang's founding principles. The anti-corpo faction, led by Will Gunner, seized power in a coup when Gunner brazenly killed the gang's leader at the time, "General" Rick Morton. What followed was a bloody purge of Morton's lieutenants, loyalists, and other associates as Gunner's people consolidated their grip over 6th Street. Despite Gunner's anti-corpo stance, 6th Street continued to work with some corporations, and even secretly cooperated with Kendachi to design new line of weapons.
            </div>
            <img src="../Pictures/ezgif.com-webp-to-jpg.jpg" />

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
