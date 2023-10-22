<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="forecast.aspx.cs" Inherits="WebApplication4.forecast" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link href="/Styles/StyleSheet2.css" rel="stylesheet" />

        <link href="../Styles/StyleSheet3.css" rel="stylesheet" />
    <link href="../Styles/StyleSheet4.css" rel="stylesheet" />
    <link href="../Styles/ContentDesign.css" rel="stylesheet" />


</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="font center">Weather Forecast <br />
        detailed forecast for this week.
    </h1>

    <footer">
            <div id="randTxt">
                Host: "Good evening, Night City! Welcome to your CyberDuck Weather Forecast, where we bring you the latest updates on the ever-changing climate in this neon-lit metropolis. I'm your host, ready to navigate you through the atmospheric fluctuations of our cyberpunk world. Let's dive in!"
                <br />
                <br />

[Transition to weather map displaying Night City]
                <br />

Host: "Tonight, Night City finds itself amidst a blend of technological marvels and atmospheric dynamics. Here's what you can expect in the next 24 hours."
                <br />

[First weather segment: Neon Rainfall]
                <br />

Host: "We kick off the forecast with our signature weather phenomenon—Neon Rainfall. Brace yourself for scattered showers of luminescent droplets, casting an ethereal glow across the city streets. Remember to bring your neon umbrellas and embrace the vibrant ambiance."
                <br />

[Transition to weather animation: Neon rain falling against a backdrop of towering skyscrapers]
                <br />

Host: "Now, let's move on to the temperature extremes that Night City experiences."
                <br />

[Second weather segment: Techno-Heatwaves]
                <br />

Host: "Night City, known for its scorching summers, will experience another Techno-Heatwave tomorrow. Expect the mercury to rise as the sun's rays reflect off the glass facades, intensifying the urban heat island effect. Make sure to stay hydrated and seek shelter in air-conditioned havens."
                <br />

[Transition to weather animation: Sun shining brightly over a futuristic cityscape]
                <br />

Host: "But don't get too comfortable with the heat, Night City has a surprise in store."
                <br />

[Third weather segment: Nano-Mist]
                <br />

Host: "As the day progresses, brace yourself for the Nano-Mist phenomenon—an abrupt shift in the weather. Nano-Mist, a fine fog of synthetic particles, will envelop the city, creating an otherworldly atmosphere. It's as if the city itself breathes with its cybernetic lungs."
                <br />

[Transition to weather animation: Dense mist rolling through the streets, neon lights diffusing through the haze]
                <br />

Host: "Now, let's talk about the wind patterns sweeping through our futuristic urban landscape."
                <br />

[Fourth weather segment: Techno-Breezes]
                <br />

Host: "Night City is known for its Techno-Breezes, a result of the city's sprawling infrastructure. These gusts carry a mix of technological particles and urban debris, creating an urban dance of swirling winds. So hold onto your hats and prepare for some exciting kinetic experiences!"
                <br />

[Transition to weather animation: Whirling winds carrying digital debris through the city]
                <br />

Host: "Before we wrap up, here's an important safety announcement."
                <br />

[Final weather segment: Electro-Storm Watch]
            </div>

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
