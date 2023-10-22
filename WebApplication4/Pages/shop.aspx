﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="shop.aspx.cs" Inherits="WebApplication4.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

        <meta charset="UTF-8" />
    <title>Product Slider</title>
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />
    <link href="/Styles/StyleSheet3.css" rel="stylesheet" />
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.3.5/css/swiper.min.css" />
    <link rel="stylesheet" href="../Styles/style.css" />
    <script src="/JavaScript Files/JavaScript.js"></script>
    <link href="/Styles/productstyle.css" rel="stylesheet" />

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- partial:index.partial.html -->
    <div class="wrapper">
        <div class="content">
            <div class="product-img">
                <div class="product-img__item" id="img1">
                    <img src="/Pictures/gun.png"
                         alt="star wars"
                         class="product-img__img" />
                </div>

                <div class="product-img__item" id="img2">
                    <img src="/Pictures/davidchip.png"
                         alt="star wars"
                         class="product-img__img" />
                </div>

                <div class="product-img__item" id="img3">
                    <img src="/Pictures/roboticarm.png"
                         alt="star wars"
                         class="product-img__img" />
                </div>

                <div class="product-img__item" id="img4">
                    <img src="/Pictures/Cyberpunk-2077-Edgerunners-Jacket-800x800.png"
                         alt="star wars"
                         class="product-img__img" />
                </div>
            </div>


            <div class="product-slider">
                <button class="prev disabled">
                    <span class="icon">
                        <svg class="icon icon-arrow-right">
                            <use xlink:href="#icon-arrow-left"></use>
                        </svg>
                    </span>
                </button>
                <button class="next">
                    <span class="icon">
                        <svg class="icon icon-arrow-right">
                            <use xlink:href="#icon-arrow-right"></use>
                        </svg>
                    </span>
                </button>

                <div class="product-slider__wrp swiper-wrapper">
                    <div class="product-slider__item swiper-slide" data-target="img4">
                        <div class="product-slider__card">

                            <div class="product-slider__content">
                                <h1 class="product-slider__title">
                                    Cyberpunk <br />
                                    Jacket
                                </h1>
                                <span class="product-slider__price">$299,<sup>99</sup></span>
                                <div class="product-ctr">
                                    <div class="product-labels">
                                        <div class="product-labels__title">JACKET SIZE</div>

                                        <div class="product-labels__group">
                                            <label class="product-labels__item">
                                                <input type="radio"
                                                       class="product-labels__checkbox"
                                                       name="type5" />
                                                <span class="product-labels__txt">S</span>
                                            </label>

                                            <label class="product-labels__item">
                                                <input type="radio"
                                                       class="product-labels__checkbox"
                                                       name="type5"
                                                       checked />
                                                <span class="product-labels__txt">M</span>
                                            </label>

                                            <label class="product-labels__item">
                                                <input type="radio"
                                                       class="product-labels__checkbox"
                                                       name="type5" />
                                                <span class="product-labels__txt">L</span>
                                            </label>

                                            <label class="product-labels__item">
                                                <input type="radio"
                                                       class="product-labels__checkbox"
                                                       name="type5" />
                                                <span class="product-labels__txt">XL</span>
                                            </label>
                                        </div>
                                    </div>

                                    <span class="hr-vertical"></span>

                                    <div class="product-inf">
                                        <div class="product-inf__percent">
                                            <div class="product-inf__percent-circle">
                                                <svg xmlns="http://www.w3.org/2000/svg"
                                                     width="100"
                                                     height="100"
                                                     viewBox="0 0 100 100">
                                                    <defs>
                                                        <linearGradient id="gradient"
                                                                        x1="0%"
                                                                        y1="0%"
                                                                        x2="0%"
                                                                        y2="100%">
                                                            <stop offset="0%"
                                                                  stop-color="#0c1e2c"
                                                                  stop-opacity="0" />
                                                            <stop offset="100%"
                                                                  stop-color="#cb2240"
                                                                  stop-opacity="1" />
                                                        </linearGradient>
                                                    </defs>
                                                    <circle cx="50"
                                                            cy="50"
                                                            r="47"
                                                            stroke-dasharray="240, 300"
                                                            stroke="#cb2240"
                                                            stroke-width="4"
                                                            fill="none" />
                                                </svg>
                                            </div>
                                            <div class="product-inf__percent-txt">80%</div>
                                        </div>

                                        <span class="product-inf__title">CYBERLEVEL</span>
                                    </div>
                                </div>

                                <div class="product-slider__bottom">
                                    <button class="product-slider__cart">ADD TO CART</button>

                                    <button class="product-slider__fav js-fav">
                                        <span class="heart"></span> ADD TO WISHLIST
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="product-slider__item swiper-slide" data-target="img1">
                        <div class="product-slider__card">

                            <div class="product-slider__content">
                                <h1 class="product-slider__title">
                                    T-13 CLOSE <br />
                                    COMBAT PISTOL
                                </h1>
                                <span class="product-slider__price">$99,<sup>99</sup></span>
                                <div class="product-ctr">
                                    <div class="product-labels">
                                        <div class="product-labels__title">ENGINE UNIT</div>

                                        <div class="product-labels__group">
                                            <label class="product-labels__item">
                                                <input type="radio"
                                                       class="product-labels__checkbox"
                                                       name="type1"
                                                       checked />
                                                <span class="product-labels__txt">FULL AUTO</span>
                                            </label>

                                            <label class="product-labels__item">
                                                <input type="radio"
                                                       class="product-labels__checkbox"
                                                       name="type1" />
                                                <span class="product-labels__txt">BURST</span>
                                            </label>
                                        </div>
                                    </div>

                                    <span class="hr-vertical"></span>

                                    <div class="product-inf">
                                        <div class="product-inf__percent">
                                            <div class="product-inf__percent-circle">
                                                <svg xmlns="http://www.w3.org/2000/svg"
                                                     width="100"
                                                     height="100"
                                                     viewBox="0 0 100 100">
                                                    <defs>
                                                        <linearGradient id="gradient"
                                                                        x1="0%"
                                                                        y1="0%"
                                                                        x2="0%"
                                                                        y2="100%">
                                                            <stop offset="0%"
                                                                  stop-color="#0c1e2c"
                                                                  stop-opacity="0" />
                                                            <stop offset="100%"
                                                                  stop-color="#cb2240"
                                                                  stop-opacity="1" />
                                                        </linearGradient>
                                                    </defs>
                                                    <circle cx="50"
                                                            cy="50"
                                                            r="47"
                                                            stroke-dasharray="225, 300"
                                                            stroke="#cb2240"
                                                            stroke-width="4"
                                                            fill="none" />
                                                </svg>
                                            </div>
                                            <div class="product-inf__percent-txt">75%</div>
                                        </div>

                                        <span class="product-inf__title">CYBERLEVEL</span>
                                    </div>
                                </div>

                                <div class="product-slider__bottom">
                                    <button class="product-slider__cart">ADD TO CART</button>

                                    <button class="product-slider__fav js-fav">
                                        <span class="heart"></span> ADD TO WISHLIST
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="product-slider__item swiper-slide" data-target="img2">
                        <div class="product-slider__card">

                            <div class="product-slider__content">
                                <h1 class="product-slider__title">
                                    INDUSTIRAL Militech  <br />
                                    Berserk Mk.5 Sandevistan
                                </h1>
                                <span class="product-slider__price">$1.699,<sup>99</sup></span>
                                <div class="product-ctr">
                                    <div class="product-labels">
                                        <div class="product-labels__title">VOLTAGE RANGE</div>

                                        <div class="product-labels__group">
                                            <label class="product-labels__item">
                                                <input type="radio"
                                                       class="product-labels__checkbox"
                                                       name="type3"
                                                       checked />
                                                <span class="product-labels__txt">2000 <sup>WATT</sup></span>
                                            </label>

                                            <label class="product-labels__item">
                                                <input type="radio"
                                                       class="product-labels__checkbox"
                                                       name="type3" />
                                                <span class="product-labels__txt">2800 <sup>WATT</sup></span>
                                            </label>
                                        </div>

                                        <div class="product-labels__title">GRADE</div>

                                        <div class="product-labels__group">
                                            <label class="product-labels__item">
                                                <input type="radio"
                                                       class="product-labels__checkbox"
                                                       name="type2" />
                                                <span class="product-labels__txt">BASE</span>
                                            </label>

                                            <label class="product-labels__item">
                                                <input type="radio"
                                                       class="product-labels__checkbox"
                                                       name="type2" />
                                                <span class="product-labels__txt">UNLOCKED</span>
                                            </label>

                                            <label class="product-labels__item">
                                                <input type="radio"
                                                       class="product-labels__checkbox"
                                                       name="type2" />
                                                <span class="product-labels__txt">MILITARY</span>
                                            </label>
                                        </div>
                                    </div>

                                    <span class="hr-vertical"></span>

                                    <div class="product-inf">
                                        <div class="product-inf__percent">
                                            <div class="product-inf__percent-circle">
                                                <svg xmlns="http://www.w3.org/2000/svg"
                                                     width="100"
                                                     height="100"
                                                     viewBox="0 0 100 100">
                                                    <defs>
                                                        <linearGradient id="gradient"
                                                                        x1="0%"
                                                                        y1="0%"
                                                                        x2="0%"
                                                                        y2="100%">
                                                            <stop offset="0%"
                                                                  stop-color="#0c1e2c"
                                                                  stop-opacity="0" />
                                                            <stop offset="100%"
                                                                  stop-color="#cb2240"
                                                                  stop-opacity="1" />
                                                        </linearGradient>
                                                    </defs>
                                                    <circle cx="50"
                                                            cy="50"
                                                            r="47"
                                                            stroke-dasharray="240, 300"
                                                            stroke="#cb2240"
                                                            stroke-width="4"
                                                            fill="none" />
                                                </svg>
                                            </div>
                                            <div class="product-inf__percent-txt">80%</div>
                                        </div>

                                        <span class="product-inf__title">CYBERLEVEL</span>
                                    </div>
                                </div>

                                <div class="product-slider__bottom">
                                    <button class="product-slider__cart">ADD TO CART</button>

                                    <button class="product-slider__fav js-fav">
                                        <span class="heart"></span> ADD TO WISHLIST
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="product-slider__item swiper-slide" data-target="img3">
                        <div class="product-slider__card">

                            <div class="product-slider__content">
                                <h1 class="product-slider__title">
                                    Arasaka™ SILVERHAND BIONIC <br />
                                    ARM
                                </h1>
                                <span class="product-slider__price">$999,<sup>99</sup></span>
                                <div class="product-ctr">
                                    <div class="product-labels">
                                        <div class="product-labels__title">RATING CLASS</div>

                                        <div class="product-labels__group">
                                            <label class="product-labels__item">
                                                <input type="radio"
                                                       class="product-labels__checkbox"
                                                       name="type6"
                                                       checked />
                                                <span class="product-labels__txt">PUBLIC CLASS</span>
                                            </label>

                                            <label class="product-labels__item">
                                                <input type="radio"
                                                       class="product-labels__checkbox"
                                                       name="type6" />
                                                <span class="product-labels__txt">BOOTLEG CLASS</span>
                                            </label>
                                        </div>

                                        <div class="product-labels__title">POWER</div>

                                        <div class="product-labels__group">
                                            <label class="product-labels__item">
                                                <input type="radio"
                                                       class="product-labels__checkbox"
                                                       name="type7"
                                                       checked />
                                                <span class="product-labels__txt">MISSLE LAUNCHER</span>
                                            </label>

                                            <label class="product-labels__item">
                                                <input type="radio"
                                                       class="product-labels__checkbox"
                                                       name="type7" />
                                                <span class="product-labels__txt">TURBOLASER</span>
                                            </label>
                                        </div>
                                    </div>

                                    <span class="hr-vertical"></span>

                                    <div class="product-inf">
                                        <div class="product-inf__percent">
                                            <div class="product-inf__percent-circle">
                                                <svg xmlns="http://www.w3.org/2000/svg"
                                                     width="100"
                                                     height="100"
                                                     viewBox="0 0 100 100">
                                                    <defs>
                                                        <linearGradient id="gradient"
                                                                        x1="0%"
                                                                        y1="0%"
                                                                        x2="0%"
                                                                        y2="100%">
                                                            <stop offset="0%"
                                                                  stop-color="#0c1e2c"
                                                                  stop-opacity="0" />
                                                            <stop offset="100%"
                                                                  stop-color="#cb2240"
                                                                  stop-opacity="1" />
                                                        </linearGradient>
                                                    </defs>
                                                    <circle cx="50"
                                                            cy="50"
                                                            r="47"
                                                            stroke-dasharray="240, 300"
                                                            stroke="#cb2240"
                                                            stroke-width="4"
                                                            fill="none" />
                                                </svg>
                                            </div>
                                            <div class="product-inf__percent-txt">80%</div>
                                        </div>

                                        <span class="product-inf__title">CYBERLEVEL</span>
                                    </div>
                                </div>

                                <div class="product-slider__bottom">
                                    <button class="product-slider__cart">ADD TO CART</button>

                                    <button class="product-slider__fav js-fav">
                                        <span class="heart"></span> ADD TO WISHLIST
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <svg class="hidden" hidden>
            <symbol id="icon-arrow-left" viewBox="0 0 32 32">
                <path d="M0.704 17.696l9.856 9.856c0.896 0.896 2.432 0.896 3.328 0s0.896-2.432 0-3.328l-5.792-5.856h21.568c1.312 0 2.368-1.056 2.368-2.368s-1.056-2.368-2.368-2.368h-21.568l5.824-5.824c0.896-0.896 0.896-2.432 0-3.328-0.48-0.48-1.088-0.704-1.696-0.704s-1.216 0.224-1.696 0.704l-9.824 9.824c-0.448 0.448-0.704 1.056-0.704 1.696s0.224 1.248 0.704 1.696z"></path>
            </symbol>
            <symbol id="icon-arrow-right" viewBox="0 0 32 32">
                <path d="M31.296 14.336l-9.888-9.888c-0.896-0.896-2.432-0.896-3.328 0s-0.896 2.432 0 3.328l5.824 5.856h-21.536c-1.312 0-2.368 1.056-2.368 2.368s1.056 2.368 2.368 2.368h21.568l-5.856 5.824c-0.896 0.896-0.896 2.432 0 3.328 0.48 0.48 1.088 0.704 1.696 0.704s1.216-0.224 1.696-0.704l9.824-9.824c0.448-0.448 0.704-1.056 0.704-1.696s-0.224-1.248-0.704-1.664z"></path>
            </symbol>
        </svg>
        <!-- partial -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.3.5/js/swiper.min.js"></script>
        <script src="/JavaScript Files/JavaScript.js"></script>


</asp:Content>

