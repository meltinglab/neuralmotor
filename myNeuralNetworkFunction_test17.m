function [Y,Xf,Af] = myNeuralNetworkFunction_test17(X,~,~)
%MYNEURALNETWORKFUNCTION neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-Jan-2019 18:33:10.
%
% [Y] = myNeuralNetworkFunction(X,~,~) takes these arguments:
%
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 100xQ matrix, input #1 at timestep ts.
%
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 4xQ matrix, output #1 at timestep ts.
%
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1.keep = [2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100];
x1_step2.xoffset = [1.22925491643095e-06;2.46395480693407e-06;3.69865469712224e-06;4.93335458699546e-06;6.16805447655372e-06;7.40275436579702e-06;8.63745425472537e-06;9.87215414333876e-06;1.11068540316372e-05;1.23415539196207e-05;1.35762538072892e-05;1.48109536946428e-05;1.60456535816814e-05;1.7280353468405e-05;1.85150533548138e-05;1.97497532409075e-05;2.09844531266863e-05;2.22191530121501e-05;2.3453852897299e-05;2.46885527821329e-05;2.59232526666519e-05;2.71579525508559e-05;2.8392652434745e-05;2.96273523183191e-05;3.08620522015782e-05;3.20967520845224e-05;3.33314519671517e-05;3.4566151849466e-05;3.58008517314653e-05;3.70355516131497e-05;3.82702514945191e-05;3.95049513755735e-05;4.0739651256313e-05;4.19743511367376e-05;4.32090510168472e-05;4.44437508966418e-05;4.56784507761215e-05;4.69131506552863e-05;4.8147850534136e-05;4.93825504126709e-05;5.06172502908907e-05;5.18519501687956e-05;5.30866500463856e-05;5.43213499236606e-05;5.55560498006206e-05;5.67907496772657e-05;5.80254495535959e-05;5.9260149429611e-05;6.04948493053113e-05;-4.09439747195087;-5.46308060017989;-5.81158956749204;-5.61119288305611;-6.29814101908368;-4.49495929765785;-6.22432192086538;-6.32145799599857;-7.18093143037914;-6.87852899721168;-6.94536967376407;-7.45565734001452;-6.8757706504972;-5.41804444334009;-6.8166006690014;-7.59198104077277;-7.73862408965053;-7.32179310750674;-6.83614868325365;-6.07745992677394;-5.82944083719551;-6.53319938100871;-7.05331407776766;-7.41816008980381;-7.51209953942149;-7.35171518328399;-7.13164256508559;-6.98115240916754;-6.64697457193827;-6.15521390056297;-5.53406216982093;-5.14894223583718;-5.57816896066906;-6.09168077615302;-6.49279140123899;-6.7815642681514;-6.95964892682224;-7.03017673192041;-6.99764089071565;-6.86776336727864;-6.64735119707383;-6.34414478543297;-6.5420527275764;-6.85746295711608;-7.09830761752929;-7.26533362755799;-7.3599277941304;-7.3840790919515;-7.34033696623301];
x1_step2.gain = [0.158457816371007;0.117883640778032;0.107423190629586;0.0872432037401771;0.0779277773573781;0.0677154056993007;0.0614277841595584;0.058045384650311;0.0564464489880142;0.0536578232840175;0.0500715406447565;0.0471172259258747;0.0446459919741146;0.042552254141709;0.0407590510961895;0.0392089580212164;0.0378582549717055;0.0366730665982477;0.03562673722832;0.034698003435951;0.0338696950549648;0.0331277945537473;0.0324607445007519;0.0318589299951327;0.03131428657428;0.0308199994855555;0.0303702704118175;0.0299601346336778;0.0295853163468055;0.0292421131553831;0.0289273030989175;0.0286380692434889;0.0283719380823973;0.0281267288813325;0.027900511762812;0.0276915728181848;0.0274983849081837;0.0273195830968342;0.0271539438814359;0.0270003675498935;0.0268578631280132;0.0267255354823944;0.0266025742258827;0.0264505159229861;0.0260126183945426;0.0255944187782932;0.0251946508803586;0.0248121546702967;0.0244458653814939;0.0371081287251146;0.0361870426366033;0.0359641861019128;0.0360981835605764;0.0356599258159067;0.0368485949916504;0.0357146135695624;0.0356566032096392;0.0351222024428261;0.0353134736022982;0.0352755958917182;0.0349646186559286;0.0353264713962752;0.0362640637142763;0.0353709669157108;0.0348961543086019;0.034810744394049;0.035068848218378;0.0353738086044269;0.0358588113648013;0.0360228873473857;0.0355757959646094;0.0352534144386535;0.0350318394875327;0.0349779719915262;0.0350800612925582;0.0352197284810863;0.0353170634832549;0.0355305056007555;0.0358475081071127;0.0362550563349995;0.0365139495630763;0.0362339828535982;0.0359038684709935;0.0356510022046417;0.0354722078817088;0.0353642774196583;0.0353239779036381;0.0353480407919609;0.0354331374231623;0.0355758443569048;0.0357726016725414;0.0356502339733582;0.0354546937124812;0.0353077032424704;0.0352076186487725;0.035152795211726;0.0351415840664074;0.0351723247596049];
x1_step2.ymin = -1;

% Layer 1
b1 = [-39.533254481730452312;-8.434807549401782012;3.5073743711402705081;1.5723595813113147024;-34.946442812423185842;-3.1273105148682072141;-343.27814046639008438;3.6887098203288277709;-74.474465679806712615;1.6417639861592761008];
IW1_1 = [2.5272225007450188627 1.1062318338292893571 -2.325811767267544905 0.94114618709156894205 0.16676050571924688759 1.1055100799416079926 1.8964485698015622894 1.3056226824161367706 -0.045352060354209182413 -0.80612835571077445795 -0.67739433400923021455 -0.67490322574917371856 -0.53011471127340581422 -0.59993899523007576668 -0.61179652654514116161 -0.87427398735405015273 -0.38336278646061106024 -0.71416471650514445901 -0.67560391365896488303 -0.31700860232752631207 -0.63968732944393846829 -0.5153665612484295 -0.75065791457328812086 -0.34897889327520220659 -0.28462636685080816568 0.1311975247400335165 0.43911499153546068586 0.64940827493660513436 0.92495058910313465717 0.99624542841452967679 0.92911965045378630546 1.1529220193730818078 1.1605171224362389459 0.85424217515538247714 1.1459409641150122283 0.95932035052367159444 0.71830716023076512933 0.036017179886474098849 -0.140627620967136574 -0.044861421086430701421 -0.65343869717064184677 -0.79925479356154205401 -1.2646985644907298152 -1.6967782009074352523 -1.0183916554225496132 -0.84295441099791457162 -0.52047244020287297683 -0.2781208019761627348 0.52008146407949717993 -0.50568981463892104244 2.3917287002978548927 2.5466094351560109033 0.6153431383489448292 -0.39101829610168081786 0.2387221728067002724 -1.4172858147548397234 -2.4285409339793506689 -3.1323324579256852651 -3.0799964951036917782 -3.3658916007293253614 -3.7434023968400103044 -3.600983123330765423 -2.5613672912849860808 -3.1984281978821824666 -3.2512272039110667876 -3.0559947944763434791 -2.2019981068621632403 -1.7286364019588238428 -1.0109787589208187875 -0.27000897549519842222 -0.3929794587160236885 -0.357319566226438734 -0.65256145247274754961 -0.72605510124663363847 -0.21463673114610043458 -0.23136333256191055074 -0.24242243384951250862 -0.51182050160540093486 -0.18035457654369138614 0.37046085735578526688 0.70332305231339264928 0.29003069903902123361 0.17222877482815496242 -0.41665553808463823282 -0.55618662485535652618 -0.71193521438527451739 -0.92965466760072024144 -0.82627857595821929682 -0.94668636865506838873 -0.83572634632034947799 -1.1527004550250909976 -1.1175872018023047527 -1.6189552176083783497 -1.6553736868908146551 -1.8670064914088329022 -2.1955934084801049799 -1.7636956208824106085 -2.101830708228379585;0.53031489287640221075 0.16862660347867969302 -0.6004816468462627066 0.20028451643015809935 0.27743272281028324988 1.5906313855154106118 1.8148695149306155461 1.491495684055135218 0.89366579430994630417 0.48051862679519630195 0.48581741138001172109 -0.16446999548677060377 -0.51818551361604392458 -0.89294580194991235444 -1.1002045669401403494 -1.2515188281916100888 -1.5134359777784316403 -1.8198127091398494937 -1.6468806012822154727 -1.3375050963593191344 -1.3513444870980624302 -0.88444290523002866422 -0.83419965224819925265 -0.62669533787160092153 -0.30717171896965389521 -0.050236035895792001404 0.05700745461954643406 0.48806760424783968144 0.41552179461273042183 0.70538701069418330292 0.66105314597883813033 0.45640860513289849276 0.3883478389701428557 0.043299116936672397971 0.20122881779322618345 0.061809935510844571382 0.10194408414198602442 0.27630399250001047573 -0.10879843519633494719 0.10942257683361900078 -0.16753391250587329475 -0.085859585314119329924 0.15095569532004529667 0.18989248326840502124 -0.092511476095678737974 0.087551507949936546726 0.49758834725762718376 0.79136604510729069428 1.2554963941113899129 -0.53561215534799466731 1.274202011663014833 1.5033662597905663727 0.55432437180140914368 -0.049166604413514891636 -0.34917688599759272305 -0.90874385740700980296 -1.5615750792062605967 -1.7918831164995718819 -1.9430179896462163036 -1.7753177438899789831 -2.0121598186636551198 -1.6568531957732228754 -1.2826742520356486654 -1.5291810523197937322 -1.3552283362908927877 -1.246104163634223605 -0.46934921763520409677 -0.53578034716617395361 -0.03456043193183549328 0.22994267270458926267 0.29283428099751918072 0.49521768187124581839 0.41147992733510169172 0.62211297063593207213 0.423399737617271954 0.47866177445716595606 0.44699926797458994221 0.16995395801869023211 0.35173161810869318922 0.16930814830746099275 0.16078217223749474707 -0.36649019466003140977 -0.2022281065783513021 -0.36640146942249440798 -0.64054973584953234234 -0.45824909584007467167 -0.27495495736571412548 -0.49955240543912349249 -0.054814898280246833473 -0.098930907831345532566 0.083509025751279025718 0.3378448031729206491 0.20000577077996847808 0.4995053443021908457 0.41301342283967229507 0.43981704830756229718 0.81509280652859184002 0.63973217894149103646;-3.6652044820363300914 -2.6797247904470871127 -1.5674519072705157541 -1.1912098270959790014 -0.87217298856030445187 -0.30179307781132463928 -0.40870296032898018046 -0.25389799058566520085 -0.13816385292644242644 0.32294428250840967465 0.21267501986252110302 0.32390972750155205828 0.3617257838257851299 0.27537483397086692793 0.15367776921173417759 0.016784007451906259034 0.29251275153227573878 0.35906158654897002425 0.45038108341298210835 0.16787647671873542898 0.18301807399333192006 0.4745227042177884158 0.37613774450522852177 0.15126434092169496748 0.21215666540536678997 0.35005800492999805673 0.26845527623142295681 0.55741479553787331991 0.36809289907532966035 0.57225138244771200924 0.46815410504858545604 0.093246596301872125556 0.10772060717691805953 -0.032621786152161977301 0.215018609373010261 -0.089721633296243732958 0.16226905619428017014 0.26491088175116156433 0.24196555778649803115 -0.071469402475944729392 0.16459427377350910326 -0.020313559317992301023 0.035541169219912578658 -0.086334542406466180386 -0.1441885434620623907 -0.10440593102529412139 0.11571978968006153832 -0.27549302347478571429 -0.20498000783627259858 0.5118316635795153724 0.30974872280560900029 0.44771193660982105955 -0.030523479824659228987 0.049513831997893789638 -0.058882887398976457849 -0.35670822763756876439 -0.571475495247141696 -0.36351156621474123298 -0.65823520104807287101 -0.40645797365329067174 -0.30950082182100263628 -0.71223649404720323908 -0.4825786432362392242 -0.27235876556850391328 -0.12763564458841789029 -0.18710320575337691107 -0.16026394877417360352 -0.34847880421831967102 -0.03642158329665604044 0.047044287146813690281 0.22625326992914190916 -0.085011255387537315586 0.084599217609712215604 0.37191432755904157981 0.16062427753461830382 0.39784225670438327915 0.32754933971433813911 0.13744879980528221242 -0.037888198255330379771 -0.090238097516278550914 -0.12427165884696843301 0.17379224098038945079 0.31439053267402433667 0.27190462021137074 -0.022895017271724049657 0.37604186710075293565 0.45740877746895730604 0.15970693549698466995 0.52290298965645543028 0.64594005844032609254 0.6515981609892577131 0.89357659119450005836 1.0428194823805498892 1.1953662743757202946 1.1812685235661313232 1.5372408009150433372 1.4789724653307969593 1.9521761681149454315;-0.37790810111359612877 -0.087310948050996137204 -0.1475385409489516908 -0.5480588783206140624 -0.7433408577547946372 -0.29832214280850016808 -0.051344678490370443402 0.33774312829750047227 0.29401444769592560702 0.40904040647377393203 0.10345398024999233333 0.01511049990228704315 -0.23270318464514208601 0.093069172536842270649 0.035510010118662643785 0.077130359149776644978 0.32131536082626893647 0.15300594146083534852 0.15899240205839476614 0.28447669921021317974 0.2812810426952785936 0.41578793878751024726 0.32644760855967952518 0.11151356172779214315 0.24316591487653418935 -0.065235790522527634105 -0.22232497916866611476 -0.04022961824133164388 -0.0045341143245073642354 -0.21103380597506790628 -0.12637950457818158956 0.19527777662904605149 -0.11132719654173477142 0.16197644663137203414 0.11760127252345586868 -0.059460822654036016299 -0.41050056928815720214 -0.42375933195886439364 -0.16711718520278304179 -0.0099425557013027299202 -0.14069186645045700379 -0.084073532822152532984 0.012025378340129976029 -0.18267478004370260591 -0.12982637090682519476 0.23409463789683157553 0.2505439492040378302 -0.062734359691099722545 0.11265072066237287463 0.16964570552648078339 -0.117510521286284364 -0.018658998179242020088 -0.00066651385516151503974 0.22858430828619694108 0.14822630183138923998 0.060633566194468725696 -0.28452756530479644814 0.051509078790779198875 -0.29158422424490115787 -0.16011301748188461191 0.045537880004973885217 -0.12509858963493264428 0.097602058619792708694 0.11287162986047477586 0.27468992143313830656 0.35268525929496924443 0.092095067692643917123 0.16302788995343814316 0.17127411006360138135 -0.11661984964269783704 -0.22063755567014117775 0.099539341289552121794 -0.14896298088838541562 -0.18786544817835149068 0.10307795790599458274 -0.022275188193226231476 0.11163972942136829447 0.19632055266325140752 -0.12731111888003096566 0.036263348138069577409 0.18009194969298220057 0.12326640406494479563 0.20402859027874187259 0.27760988564620958652 -0.060884150810861625835 0.36662876408529665451 0.17334526899376281883 0.15854898688186111477 0.48308376528891039392 0.33729155674331851023 0.5584371210474979863 0.11182291459625237628 0.270013370447505896 -0.10313465100367925908 -0.13286311581146703631 -0.099524950629335542929 -0.40846259847251786823 -0.35455177372273305458;2.7071843658112353381 0.84741585298837840412 -1.7839460325811353769 0.41929134001316642477 -0.12403887794083676144 1.5995896408346312878 2.0141667397026581376 0.88126645096415556768 -0.2614866882217768973 -0.71045177652615609798 -0.51632060370978205555 -0.30418948066437029309 -0.65984774170436910623 -0.79567339974172457406 -0.49231470718180425639 -0.69391748605681069506 -0.84816102369904922131 -1.2781829088320217913 -0.94116232660876764093 -0.82447020674920090677 -0.64934593165596354858 -0.65586870358086735155 -0.45868087992059169977 -0.26856117012316671477 0.34025876734434934434 0.16825163911812884843 0.62579728345285268176 0.67937465423013265742 0.65114223448394459304 0.93972981235318109317 0.87319822855566298081 1.0749295570411943057 1.009798907215589292 1.0437880458459147803 0.86280283270874380541 0.77927323852102348134 0.61597517824376590845 0.43870896819636423514 0.42662692771198457153 0.38024396818222633287 -0.12415259025026155471 -0.28032464364833831194 -0.37465117256430191528 -0.81943359529870274383 -0.623364627780505276 -0.87953395855725713393 -0.70579057069434258942 -0.9117532369326195596 -1.5514008051239331909 -0.47810412571168353635 2.4943726238270595985 2.2268219471421919486 1.2786859911544716795 -0.25224438589898195984 -0.12602202677401835862 -1.7594234794237018082 -2.3159033661482544275 -2.9716150669578667021 -3.5695292457530229946 -4.1415973944796258266 -4.1111727848721750789 -3.4006593112738423557 -2.5188440331650401305 -2.8330349331367425947 -3.0860774787190479174 -3.0565466087043127175 -2.5917455254895691574 -2.0503883231961603784 -1.0904089119269007035 -0.6324992279924880334 -1.2565112794697257392 -1.2988033653350294916 -1.2644381046458457174 -0.92621063213244303469 -0.46371845464037908524 -0.30288797841657005838 -0.061818631350834027383 0.1129901580696843072 0.51976959415496837291 0.89966619132889080745 0.57653000773634044407 0.46821064309949333992 0.055976854388695193587 -0.48671922285718621781 -0.78140595826390146783 -0.76725631366604640782 -0.95050939665261180433 -0.78703307977795622374 -0.77925741368357670513 -0.40907391524288611029 -0.52916747302844657774 -0.61996513020710430908 -0.33603465766770129752 -0.75131331090065989198 -0.89227219761576714863 -0.64264192190726654452 -0.78235009942472366617 -0.60732237027035007593;0.26795119523564470132 0.064744669175026969832 -0.47640043626421252343 -0.36614841177100188041 -0.12402016962993056559 0.25232961680963195139 0.45288793645096758755 0.49957061087217352613 0.046841899725332675208 0.23058839905992195574 -0.21025070834811687703 -0.078609271376448255908 -0.1015587775023820416 -0.14778523157333620097 -0.62460697470231629769 -0.35952534445233258475 -0.35484560124665670555 -0.55009652749884352385 -0.63155797204251162835 -0.74676171541409097632 -0.38198404821598797021 -0.73645044033799411665 -0.33992429445042499081 -0.74729921051221082084 -0.77466336296776994175 -0.65880108026923422937 -0.71767209604982029614 -0.53159850880793690919 -0.75155917450683651371 -0.83579725391946513291 -0.50303003214497532536 -0.63737430936441308305 -0.48412961311118896113 -0.53310323469800136031 -0.70810611601243844682 -0.4325534760882066565 -0.65244332504068358602 -0.49766559315848568623 -0.70044779394007550266 -0.85095034996684559836 -0.86756600907918246524 -0.48583458319348704624 -0.7803131082242790173 -0.82106646941243721649 -0.48752940549365658685 -0.6328394743871033068 -0.17866889035386659956 -0.14590883713469038341 -0.20532999844804139533 0.88305560607006960971 0.46805597226079598272 0.50019658915843712155 0.53870079768916356855 0.2556239520673959098 0.14354910409306667618 -0.35156692318834564803 -0.3973775726563867905 -0.6131607559520935169 -0.977972349432147392 -0.91635509290629668655 -0.91639125368278318007 -0.99363848756528350137 -1.0793819201726553292 -0.9590358395353478782 -1.1575377060421991882 -0.83039648516807673673 -0.61301375777602873374 -0.79459693183946655815 -0.41420402856585747386 -0.45628472272149744882 -0.45904203292248363377 -0.23314540246355144881 -0.48441203770991247968 -0.20656314124386254694 0.04018473233391695737 0.11835726103979521406 0.42240896477124750819 0.42483513440925313454 0.3084184405888544811 0.41763614980952068478 0.76277450333035889951 0.8782056587750919352 1.0043316482923780875 1.0360287572750883633 1.2292196972699815927 0.96379990254332048583 1.1529395691122445999 1.6408296326301112789 1.5813647054607373743 1.5862581734481502327 1.6372910648703555836 2.1271201464036804119 2.04611141303759414 2.1339144307042823279 2.4102949715778709816 2.321377124807861847 2.8092171077547414271 2.6493179637750450262;-3.4690409807408908449 12.02409806606036824 -14.208187013485549244 0.88390916176122147352 -8.4650569247834734909 7.0485244044869084235 11.2989360850306646 3.5210843788346530836 -8.3498894489229193994 -9.7945413389263062953 -4.7720014127809244897 -0.83473214729282174673 1.8845213411727592678 2.4955693952774504751 2.7734981357675150271 2.5709169902174093814 2.4354394716466765125 2.2343167815601718829 2.3539140563939180417 2.1934083814030049808 2.5002002773823739368 2.5142158877705189646 2.1576186373026042808 2.0729844030602562199 1.8699191151823473245 1.6591522198232315777 0.99221629717901604906 0.73700924022851477257 0.088515461862151534334 -1.082044691421948146 -1.5503301436104002242 -2.5421443771969269854 -3.4141977429558170165 -4.0816088845799747276 -4.4016786779377854444 -4.4162521202983473501 -4.4008950787372960178 -4.3557094581425976898 -4.4007128956235943562 -4.2384009040739485386 -4.3479118211754519407 -4.5086299525484578865 -5.1909839503750658807 -5.0256322620191520301 -0.83986380892811907106 3.4245144838615901861 7.6582881535522568939 11.918086004932309407 15.973370894206698978 -26.47439329996106494 -23.309533721356601177 -21.113026476007132004 -25.029700022375291013 -24.280333483960248486 -10.39939019068901338 -21.08729914260186078 -20.110066484485077609 -22.298786501526244308 -20.810482000338765829 -20.917400013894027921 -22.245554218319334439 -18.800170609384995402 -10.030733006472864588 -17.112996834938890345 -20.529558500799176102 -20.60503498197329364 -17.483753258689308296 -13.160660513153874973 -8.1208533091016565919 -5.375199095373606184 -8.9762546400711755723 -11.199122808839449661 -12.545664884692854457 -12.285058979950120417 -10.939970300089772337 -8.9435373605783468065 -7.6534197111528730062 -4.8634302425777216072 -1.3937734069984617502 3.0199277730865246028 5.8610844987718806465 4.1696449122429886103 1.7148158779878053259 0.074829030997947160175 -1.0290571241014783155 -1.318271211024022227 -1.1998697644473026447 -0.67472905656077775127 0.28135447803331253835 1.7258058062787664522 4.150627751700040946 2.8757392542583768424 1.3842780887040511129 0.77465926657105499409 0.23882583662803663627 0.092734341528688923884 1.0650979161953526564 1.6985127088956091246;-1.9532311186685369364 -1.0742001858420520133 -0.0093494829354426167017 -0.029022249284703271338 0.081321728220075481519 -0.011057303279992138079 0.0081409174348417989719 -0.24051562106035145883 0.27825102005594998245 0.24231637430811020506 0.23874406843234394215 0.064056743808065613743 0.14793076386792208821 -0.16661788261942978018 -0.29279107625639710921 -0.20093712070604838327 -0.29411189421453365345 -0.27308562003513436878 -0.2836575972258309486 -0.18156246696772418425 -0.30041685371647280922 -0.52951952154745907109 -0.32276685574832364445 -0.54764179976933347049 -0.33447432016097966567 -0.51278488083406104092 -0.63988295392766902925 -0.25617604898828261195 -0.37158286029802528594 -0.52264439874170942613 -0.17659307376623598063 -0.44116932885799670094 -0.071864425549359456369 -0.062760458954130557419 -0.29894499705444027571 0.11812568912425892853 0.13911786954594962396 0.23316867518039116614 0.24498916797204625673 0.31365702376116355587 0.20486542665980966849 0.36975596609295158235 0.18719451546187246271 0.37837107511859224829 0.46896854022270684226 0.022045298796249713363 0.40794623845479910385 -0.036351984572367726511 0.16605035512326887792 0.23962281265760701499 0.25504455060114916698 0.21157356794447723658 -0.0074663528996675582183 -0.022308814601381541515 0.1804733445223547228 0.1772025884432856524 -0.01172323473126049391 0.20077128438662400489 0.18733950210832617245 0.17992296249924899509 0.47457126901043383826 -0.012466966196472011735 -0.10353325918604107392 0.22264003739177001817 0.267458660807803561 0.27696775113642496668 -0.19858472498168383558 -0.18773418686208309669 0.030187147591395787488 -0.083962031447846099952 -0.02819151283942947922 -0.11994869623168563644 -0.19409043982816409635 -0.23814972535795528308 0.15622238583965780689 0.078838264592602708136 -0.029758658188630840447 0.040030594571182062658 -0.1976626920379403185 -0.0060656025058766147029 0.0055778195571393671126 -0.044953090568452293285 -0.32790032237616240085 -0.25960873001729972698 -0.067346977001579960698 -0.10028536932342037302 -0.30653256074062551484 -0.056710689052499388407 -0.15792990658365063661 -0.37915325291397855567 -0.45384769392041535152 -0.14983311271655405661 -0.39221104292241759648 -0.41211751124370266108 -0.45261203217276685384 -0.35236256633394508198 -0.46213368994203629647 -0.41684107286280019933;-2.5088109482341156564 2.5291158975958372146 -2.9171140754860460653 0.60601769789821657852 -1.0882811335284148235 0.88647970623401262102 0.9947411159958587934 -0.50329165548008636399 -2.4358418475993883767 -2.1018935789321089302 -0.039121780469922345924 0.93949559192446274736 1.3803899550064313573 0.67602859901652367913 0.22514619957171166931 -0.51404097465889664331 -0.52183028121377306174 0.0032230926965910247639 0.19200991409444712055 0.3628773410016287726 0.69986793638535260698 0.70833591467370893291 0.60088155751171568042 0.54306436497727439416 0.5807970389571938119 0.6261555749092322376 0.11044865857855835911 0.29867177279177092863 0.23228227799662756747 0.58019062809403709746 0.31950102326837209743 -0.15221918496739783588 -0.45450983406782757834 -0.69059535156354945329 -0.84145128610603048269 -0.78161687591356621141 -0.81204303716156145398 -1.0333101131367827819 -0.75245449257701857437 -0.60387273580708389353 -0.60844111467138706217 -0.89881788157423281316 -1.0453550108173541577 -1.2955582478069074259 -0.52365192880812883036 -0.025594875062575194596 1.1229659881869318294 1.9219182880690601767 3.2416436600761557862 -5.0195010898522065546 -5.2249459151201049778 -4.7740257976244349081 -5.1062048725648176983 -5.6345129781243228351 -3.0754401310011068027 -5.2606324303477531856 -4.2321033728231958193 -4.7807192849234603216 -4.2230385282510294331 -4.9549496183093291179 -5.5690525870152409738 -5.3756397605317740584 -3.4994927755704967609 -5.146076954846926732 -5.8396760534982607993 -5.1533928119477296903 -4.5592658912581178754 -3.6734853856866043209 -2.3844913670687364338 -1.8128230379354204338 -2.6706296042871207064 -3.0495634506114859263 -3.843277555542117252 -3.4781346616846438025 -3.2647668633816575579 -2.8175590393350682383 -2.3207679856124188156 -1.3453940994714255197 -0.72345636779442390463 0.12571343557990752315 0.83466734405874987157 0.79753487276858259225 0.19405021316276860333 -0.02857673108698953468 0.10238236043256185304 0.29108630526098405733 0.52941884185600041057 0.50550476837967706079 1.0967162976591529056 1.7790380532575293948 2.2336002780461323702 1.9478450192767136073 2.0612192382122467293 2.2751176184749217768 2.4172542606867848392 2.5965023201877990289 3.3241228471168051684 4.0860595531330989871;0.048251286520677540148 -0.10348515422769713479 -0.24178471860408556893 -0.10313103196171638509 -0.069739148440771947524 -0.10090017302556621159 -0.33909790005271833735 -0.08932709918287430606 0.058661089134995667016 0.044009609022595500005 -0.45923267034433579159 -0.25017869844111412236 -0.011251160927577684434 -0.17657086383150483178 -0.12053667570841304635 0.1934332239459828906 0.59775894089374514984 0.36041547000568985304 0.47699143550835043648 0.69515304129720090209 0.70452944579356790999 0.66616181302493893135 0.71417467157529590516 0.83270843098025448814 1.194168490361594781 0.89796193316692929365 1.0428381635270957961 0.90797718199722143861 1.1193248508950519593 1.1134431788894969539 0.85271758340422709743 1.1934430788881451591 0.75237928493686412335 0.60608177512584604507 0.73163505299338904564 0.32576556280895868634 -0.12888590264091229209 -0.25230126167005295645 -0.61284360001043691746 -0.97691970636777769599 -1.0372914046261250132 -1.5668008212239246113 -1.7573276008123031033 -1.8453893905562943623 -2.0506947749313728657 -2.3512107573988823006 -3.0598828472273602586 -3.3942347453929655465 -3.5577637875780223631 -0.28055006302807972141 0.47584250965820118484 0.033018240916446714439 0.040514657927459701847 -0.31902370059712897854 -0.070418743114426474161 -0.23680944885954649526 -0.052905208770256922923 -0.0028349808286223920212 -0.40800113889485234431 -0.5968888231662666799 -0.48977841978225922226 -0.5368002832306116856 -0.59543214783908915422 -0.26681150047270607573 -0.35093229644982015802 -0.63512733087649408947 -0.69727475494086954555 -0.44384064606074441484 -0.14446232714347528869 -0.41602080309744365882 -0.28620263431695336376 -0.085173347907725530104 0.089521322319957158387 0.020782862069551426287 0.29924569967700143103 0.046994273514280482384 0.096286683055296043432 0.45141486683891385301 0.44697632438809259403 0.49394140683637838274 0.76424617421791207761 0.60897564983365182201 0.60904545504520701815 0.68662029579854633177 0.60932566972716739606 0.73036545704277089364 0.37861897395249938247 0.63164247116210003874 0.77675932531704838802 0.81688272328444833104 0.97679692368952675263 0.99495803508416491567 1.2849064422647447081 1.2534091097873096832 0.98089141599297891005 1.0623422073573840496 1.5294642730094460958 1.1771149457732024146];

% Layer 2
b2 = [25.660946999191931894;-0.94328568211534724597;0.086781012013148292605;-0.0749006214652912089];
LW2_1 = [-1.1072453978686893628 0.056580712840368557748 0.0078971105878602211592 -0.014825789468632888379 1.0473553920419738095 0.001519122764870179049 42.734420415056952436 22.038613862766016638 5.9610481007727091907 -0.0010591675417932822946;-0.27886061895616692796 -0.45209373095275107168 -0.17045284787286724137 0.038309295673934672111 0.77386221560525159102 0.12303866512174020664 0.58445673546404630638 0.51901235966139391831 -0.49435490220317196419 -0.044666674317999643939;2.3321996715901538444 -0.61289231807741284541 -0.39247620970170138399 -0.0007012822854979743406 -1.958908869352496751 -0.92916525936477956105 3.3131407333725020337 -0.64290412625584081319 -3.1704722980790074338 0.84941385143938319402;-0.18595840484800538195 -0.39589055952541574168 -0.34707470188422762103 0.0030028385235456259844 0.23014079959736863379 0.25154003151231330015 -0.082145861438531309062 -0.3997086786069479758 0.3731019960261773849 0.020271483695550686355];

% Output 1
y1_step1.ymin = -1;
y1_step1.gain = [0.0200237554217028;200.304943484167;2.00347617104124;20.2096007861977];
y1_step1.xoffset = [0.100240270882645;1.00077283516872e-05;0.00100213894321721;0.00100011297003405];

% ===== SIMULATION ========

% Format Input Arguments
isCellX = iscell(X);
if ~isCellX
    X = {X};
end

% Dimensions
TS = size(X,2); % timesteps
if ~isempty(X)
    Q = size(X{1},2); % samples/series
else
    Q = 0;
end

% Allocate Outputs
Y = cell(1,TS);

% Time loop
for ts=1:TS
    
    % Input 1
    temp = removeconstantrows_apply(X{1,ts},x1_step1);
    Xp1 = mapminmax_apply(temp,x1_step2);
    
    % Layer 1
    a1 = tansig_apply(repmat(b1,1,Q) + IW1_1*Xp1);
    
    % Layer 2
    a2 = repmat(b2,1,Q) + LW2_1*a1;
    
    % Output 1
    Y{1,ts} = mapminmax_reverse(a2,y1_step1);
end

% Final Delay States
Xf = cell(1,0);
Af = cell(2,0);

% Format Output Arguments
if ~isCellX
    Y = cell2mat(Y);
end
end

% ===== MODULE FUNCTIONS ========

% Map Minimum and Maximum Input Processing Function
function y = mapminmax_apply(x,settings)
y = bsxfun(@minus,x,settings.xoffset);
y = bsxfun(@times,y,settings.gain);
y = bsxfun(@plus,y,settings.ymin);
end

% Remove Constants Input Processing Function
function y = removeconstantrows_apply(x,settings)
y = x(settings.keep,:);
end

% Sigmoid Symmetric Transfer Function
function a = tansig_apply(n,~)
a = 2 ./ (1 + exp(-2*n)) - 1;
end

% Map Minimum and Maximum Output Reverse-Processing Function
function x = mapminmax_reverse(y,settings)
x = bsxfun(@minus,y,settings.ymin);
x = bsxfun(@rdivide,x,settings.gain);
x = bsxfun(@plus,x,settings.xoffset);
end