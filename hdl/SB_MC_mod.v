`timescale 1 ns / 100 ps   // module timescale_check2;
module SB_MC_mod (
        input  wire       clk,
        input  wire       reset,
        input  wire       SB_MC_sample_trig,
        input  wire       end_round_enable,
        input  wire       first_round_enable,
        input  wire [7:0] SB_MC_in_1, SB_MC_in_2, SB_MC_in_3, SB_MC_in_4,
        output reg  [7:0] out_1_SB_MC,out_2_SB_MC,out_3_SB_MC,out_4_SB_MC,
        output reg        end_mod_SB_MC
        );

    reg [7:0] T1 [0:255];
    reg [7:0] T2 [0:255];
    reg [7:0] T3 [0:255];

    localparam size = 3 ; 
    localparam IDLE = 3'd1 ;
    localparam S1   = 3'd2 ;
    localparam S2   = 3'd3 ;
    localparam S3   = 3'd4 ;
    localparam S4   = 3'd5 ;
    reg  [size-1:0] state ;

    always @(reset)
    begin 
        T1[0] = 8'd99; T1[1] = 8'd124; T1[2] = 8'd119; T1[3] = 8'd123; T1[4] = 8'd242; T1[5] = 8'd107; T1[6] = 8'd111; T1[7] = 8'd197; T1[8] = 8'd48; T1[9] = 8'd1; T1[10] = 8'd103; T1[11] = 8'd43; T1[12] = 8'd254; T1[13] = 8'd215; T1[14] = 8'd171; T1[15] = 8'd118; T1[16] = 8'd202; T1[17] = 8'd130; T1[18] = 8'd201; T1[19] = 8'd125; T1[20] = 8'd250; T1[21] = 8'd89; T1[22] = 8'd71; T1[23] = 8'd240; T1[24] = 8'd173; T1[25] = 8'd212; T1[26] = 8'd162; T1[27] = 8'd175; T1[28] = 8'd156; T1[29] = 8'd164; T1[30] = 8'd114; T1[31] = 8'd192; T1[32] = 8'd183; T1[33] = 8'd253; T1[34] = 8'd147; T1[35] = 8'd38; T1[36] = 8'd54; T1[37] = 8'd63; T1[38] = 8'd247; T1[39] = 8'd204; T1[40] = 8'd52; T1[41] = 8'd165; T1[42] = 8'd229; T1[43] = 8'd241; T1[44] = 8'd113; T1[45] = 8'd216; T1[46] = 8'd49; T1[47] = 8'd21; T1[48] = 8'd4; T1[49] = 8'd199; T1[50] = 8'd35; T1[51] = 8'd195; T1[52] = 8'd24; T1[53] = 8'd150; T1[54] = 8'd5; T1[55] = 8'd154; T1[56] = 8'd7; T1[57] = 8'd18; T1[58] = 8'd128; T1[59] = 8'd226; T1[60] = 8'd235; T1[61] = 8'd39; T1[62] = 8'd178; T1[63] = 8'd117; T1[64] = 8'd9; T1[65] = 8'd131; T1[66] = 8'd44; T1[67] = 8'd26; T1[68] = 8'd27; T1[69] = 8'd110; T1[70] = 8'd90; T1[71] = 8'd160; T1[72] = 8'd82; T1[73] = 8'd59; T1[74] = 8'd214; T1[75] = 8'd179; T1[76] = 8'd41; T1[77] = 8'd227; T1[78] = 8'd47; T1[79] = 8'd132; T1[80] = 8'd83; T1[81] = 8'd209; T1[82] = 8'd0; T1[83] = 8'd237; T1[84] = 8'd32; T1[85] = 8'd252; T1[86] = 8'd177; T1[87] = 8'd91; T1[88] = 8'd106; T1[89] = 8'd203; T1[90] = 8'd190; T1[91] = 8'd57; T1[92] = 8'd74; T1[93] = 8'd76; T1[94] = 8'd88; T1[95] = 8'd207; T1[96] = 8'd208; T1[97] = 8'd239; T1[98] = 8'd170; T1[99] = 8'd251; T1[100] = 8'd67; T1[101] = 8'd77; T1[102] = 8'd51; T1[103] = 8'd133; T1[104] = 8'd69; T1[105] = 8'd249; T1[106] = 8'd2; T1[107] = 8'd127; T1[108] = 8'd80; T1[109] = 8'd60; T1[110] = 8'd159; T1[111] = 8'd168; T1[112] = 8'd81; T1[113] = 8'd163; T1[114] = 8'd64; T1[115] = 8'd143; T1[116] = 8'd146; T1[117] = 8'd157; T1[118] = 8'd56; T1[119] = 8'd245; T1[120] = 8'd188; T1[121] = 8'd182; T1[122] = 8'd218; T1[123] = 8'd33; T1[124] = 8'd16; T1[125] = 8'd255; T1[126] = 8'd243; T1[127] = 8'd210; T1[128] = 8'd205; T1[129] = 8'd12; T1[130] = 8'd19; T1[131] = 8'd236; T1[132] = 8'd95; T1[133] = 8'd151; T1[134] = 8'd68; T1[135] = 8'd23; T1[136] = 8'd196; T1[137] = 8'd167; T1[138] = 8'd126; T1[139] = 8'd61; T1[140] = 8'd100; T1[141] = 8'd93; T1[142] = 8'd25; T1[143] = 8'd115; T1[144] = 8'd96; T1[145] = 8'd129; T1[146] = 8'd79; T1[147] = 8'd220; T1[148] = 8'd34; T1[149] = 8'd42; T1[150] = 8'd144; T1[151] = 8'd136; T1[152] = 8'd70; T1[153] = 8'd238; T1[154] = 8'd184; T1[155] = 8'd20; T1[156] = 8'd222; T1[157] = 8'd94; T1[158] = 8'd11; T1[159] = 8'd219; T1[160] = 8'd224; T1[161] = 8'd50; T1[162] = 8'd58; T1[163] = 8'd10; T1[164] = 8'd73; T1[165] = 8'd6; T1[166] = 8'd36; T1[167] = 8'd92; T1[168] = 8'd194; T1[169] = 8'd211; T1[170] = 8'd172; T1[171] = 8'd98; T1[172] = 8'd145; T1[173] = 8'd149; T1[174] = 8'd228; T1[175] = 8'd121; T1[176] = 8'd231; T1[177] = 8'd200; T1[178] = 8'd55; T1[179] = 8'd109; T1[180] = 8'd141; T1[181] = 8'd213; T1[182] = 8'd78; T1[183] = 8'd169; T1[184] = 8'd108; T1[185] = 8'd86; T1[186] = 8'd244; T1[187] = 8'd234; T1[188] = 8'd101; T1[189] = 8'd122; T1[190] = 8'd174; T1[191] = 8'd8; T1[192] = 8'd186; T1[193] = 8'd120; T1[194] = 8'd37; T1[195] = 8'd46; T1[196] = 8'd28; T1[197] = 8'd166; T1[198] = 8'd180; T1[199] = 8'd198; T1[200] = 8'd232; T1[201] = 8'd221; T1[202] = 8'd116; T1[203] = 8'd31; T1[204] = 8'd75; T1[205] = 8'd189; T1[206] = 8'd139; T1[207] = 8'd138; T1[208] = 8'd112; T1[209] = 8'd62; T1[210] = 8'd181; T1[211] = 8'd102; T1[212] = 8'd72; T1[213] = 8'd3; T1[214] = 8'd246; T1[215] = 8'd14; T1[216] = 8'd97; T1[217] = 8'd53; T1[218] = 8'd87; T1[219] = 8'd185; T1[220] = 8'd134; T1[221] = 8'd193; T1[222] = 8'd29; T1[223] = 8'd158; T1[224] = 8'd225; T1[225] = 8'd248; T1[226] = 8'd152; T1[227] = 8'd17; T1[228] = 8'd105; T1[229] = 8'd217; T1[230] = 8'd142; T1[231] = 8'd148; T1[232] = 8'd155; T1[233] = 8'd30; T1[234] = 8'd135; T1[235] = 8'd233; T1[236] = 8'd206; T1[237] = 8'd85; T1[238] = 8'd40; T1[239] = 8'd223; T1[240] = 8'd140; T1[241] = 8'd161; T1[242] = 8'd137; T1[243] = 8'd13; T1[244] = 8'd191; T1[245] = 8'd230; T1[246] = 8'd66; T1[247] = 8'd104; T1[248] = 8'd65; T1[249] = 8'd153; T1[250] = 8'd45; T1[251] = 8'd15; T1[252] = 8'd176; T1[253] = 8'd84; T1[254] = 8'd187; T1[255] = 8'd22;
        T2[0] = 8'd198; T2[1] = 8'd248; T2[2] = 8'd238; T2[3] = 8'd246; T2[4] = 8'd255; T2[5] = 8'd214; T2[6] = 8'd222; T2[7] = 8'd145; T2[8] = 8'd96; T2[9] = 8'd2; T2[10] = 8'd206; T2[11] = 8'd86; T2[12] = 8'd231; T2[13] = 8'd181; T2[14] = 8'd77; T2[15] = 8'd236; T2[16] = 8'd143; T2[17] = 8'd31; T2[18] = 8'd137; T2[19] = 8'd250; T2[20] = 8'd239; T2[21] = 8'd178; T2[22] = 8'd142; T2[23] = 8'd251; T2[24] = 8'd65; T2[25] = 8'd179; T2[26] = 8'd95; T2[27] = 8'd69; T2[28] = 8'd35; T2[29] = 8'd83; T2[30] = 8'd228; T2[31] = 8'd155; T2[32] = 8'd117; T2[33] = 8'd225; T2[34] = 8'd61; T2[35] = 8'd76; T2[36] = 8'd108; T2[37] = 8'd126; T2[38] = 8'd245; T2[39] = 8'd131; T2[40] = 8'd104; T2[41] = 8'd81; T2[42] = 8'd209; T2[43] = 8'd249; T2[44] = 8'd226; T2[45] = 8'd171; T2[46] = 8'd98; T2[47] = 8'd42; T2[48] = 8'd8; T2[49] = 8'd149; T2[50] = 8'd70; T2[51] = 8'd157; T2[52] = 8'd48; T2[53] = 8'd55; T2[54] = 8'd10; T2[55] = 8'd47; T2[56] = 8'd14; T2[57] = 8'd36; T2[58] = 8'd27; T2[59] = 8'd223; T2[60] = 8'd205; T2[61] = 8'd78; T2[62] = 8'd127; T2[63] = 8'd234; T2[64] = 8'd18; T2[65] = 8'd29; T2[66] = 8'd88; T2[67] = 8'd52; T2[68] = 8'd54; T2[69] = 8'd220; T2[70] = 8'd180; T2[71] = 8'd91; T2[72] = 8'd164; T2[73] = 8'd118; T2[74] = 8'd183; T2[75] = 8'd125; T2[76] = 8'd82; T2[77] = 8'd221; T2[78] = 8'd94; T2[79] = 8'd19; T2[80] = 8'd166; T2[81] = 8'd185; T2[82] = 8'd0; T2[83] = 8'd193; T2[84] = 8'd64; T2[85] = 8'd227; T2[86] = 8'd121; T2[87] = 8'd182; T2[88] = 8'd212; T2[89] = 8'd141; T2[90] = 8'd103; T2[91] = 8'd114; T2[92] = 8'd148; T2[93] = 8'd152; T2[94] = 8'd176; T2[95] = 8'd133; T2[96] = 8'd187; T2[97] = 8'd197; T2[98] = 8'd79; T2[99] = 8'd237; T2[100] = 8'd134; T2[101] = 8'd154; T2[102] = 8'd102; T2[103] = 8'd17; T2[104] = 8'd138; T2[105] = 8'd233; T2[106] = 8'd4; T2[107] = 8'd254; T2[108] = 8'd160; T2[109] = 8'd120; T2[110] = 8'd37; T2[111] = 8'd75; T2[112] = 8'd162; T2[113] = 8'd93; T2[114] = 8'd128; T2[115] = 8'd5; T2[116] = 8'd63; T2[117] = 8'd33; T2[118] = 8'd112; T2[119] = 8'd241; T2[120] = 8'd99; T2[121] = 8'd119; T2[122] = 8'd175; T2[123] = 8'd66; T2[124] = 8'd32; T2[125] = 8'd229; T2[126] = 8'd253; T2[127] = 8'd191; T2[128] = 8'd129; T2[129] = 8'd24; T2[130] = 8'd38; T2[131] = 8'd195; T2[132] = 8'd190; T2[133] = 8'd53; T2[134] = 8'd136; T2[135] = 8'd46; T2[136] = 8'd147; T2[137] = 8'd85; T2[138] = 8'd252; T2[139] = 8'd122; T2[140] = 8'd200; T2[141] = 8'd186; T2[142] = 8'd50; T2[143] = 8'd230; T2[144] = 8'd192; T2[145] = 8'd25; T2[146] = 8'd158; T2[147] = 8'd163; T2[148] = 8'd68; T2[149] = 8'd84; T2[150] = 8'd59; T2[151] = 8'd11; T2[152] = 8'd140; T2[153] = 8'd199; T2[154] = 8'd107; T2[155] = 8'd40; T2[156] = 8'd167; T2[157] = 8'd188; T2[158] = 8'd22; T2[159] = 8'd173; T2[160] = 8'd219; T2[161] = 8'd100; T2[162] = 8'd116; T2[163] = 8'd20; T2[164] = 8'd146; T2[165] = 8'd12; T2[166] = 8'd72; T2[167] = 8'd184; T2[168] = 8'd159; T2[169] = 8'd189; T2[170] = 8'd67; T2[171] = 8'd196; T2[172] = 8'd57; T2[173] = 8'd49; T2[174] = 8'd211; T2[175] = 8'd242; T2[176] = 8'd213; T2[177] = 8'd139; T2[178] = 8'd110; T2[179] = 8'd218; T2[180] = 8'd1; T2[181] = 8'd177; T2[182] = 8'd156; T2[183] = 8'd73; T2[184] = 8'd216; T2[185] = 8'd172; T2[186] = 8'd243; T2[187] = 8'd207; T2[188] = 8'd202; T2[189] = 8'd244; T2[190] = 8'd71; T2[191] = 8'd16; T2[192] = 8'd111; T2[193] = 8'd240; T2[194] = 8'd74; T2[195] = 8'd92; T2[196] = 8'd56; T2[197] = 8'd87; T2[198] = 8'd115; T2[199] = 8'd151; T2[200] = 8'd203; T2[201] = 8'd161; T2[202] = 8'd232; T2[203] = 8'd62; T2[204] = 8'd150; T2[205] = 8'd97; T2[206] = 8'd13; T2[207] = 8'd15; T2[208] = 8'd224; T2[209] = 8'd124; T2[210] = 8'd113; T2[211] = 8'd204; T2[212] = 8'd144; T2[213] = 8'd6; T2[214] = 8'd247; T2[215] = 8'd28; T2[216] = 8'd194; T2[217] = 8'd106; T2[218] = 8'd174; T2[219] = 8'd105; T2[220] = 8'd23; T2[221] = 8'd153; T2[222] = 8'd58; T2[223] = 8'd39; T2[224] = 8'd217; T2[225] = 8'd235; T2[226] = 8'd43; T2[227] = 8'd34; T2[228] = 8'd210; T2[229] = 8'd169; T2[230] = 8'd7; T2[231] = 8'd51; T2[232] = 8'd45; T2[233] = 8'd60; T2[234] = 8'd21; T2[235] = 8'd201; T2[236] = 8'd135; T2[237] = 8'd170; T2[238] = 8'd80; T2[239] = 8'd165; T2[240] = 8'd3; T2[241] = 8'd89; T2[242] = 8'd9; T2[243] = 8'd26; T2[244] = 8'd101; T2[245] = 8'd215; T2[246] = 8'd132; T2[247] = 8'd208; T2[248] = 8'd130; T2[249] = 8'd41; T2[250] = 8'd90; T2[251] = 8'd30; T2[252] = 8'd123; T2[253] = 8'd168; T2[254] = 8'd109; T2[255] = 8'd44;
        T3[0] = 8'd165; T3[1] = 8'd132; T3[2] = 8'd153; T3[3] = 8'd141; T3[4] = 8'd13; T3[5] = 8'd189; T3[6] = 8'd177; T3[7] = 8'd84; T3[8] = 8'd80; T3[9] = 8'd3; T3[10] = 8'd169; T3[11] = 8'd125; T3[12] = 8'd25; T3[13] = 8'd98; T3[14] = 8'd230; T3[15] = 8'd154; T3[16] = 8'd69; T3[17] = 8'd157; T3[18] = 8'd64; T3[19] = 8'd135; T3[20] = 8'd21; T3[21] = 8'd235; T3[22] = 8'd201; T3[23] = 8'd11; T3[24] = 8'd236; T3[25] = 8'd103; T3[26] = 8'd253; T3[27] = 8'd234; T3[28] = 8'd191; T3[29] = 8'd247; T3[30] = 8'd150; T3[31] = 8'd91; T3[32] = 8'd194; T3[33] = 8'd28; T3[34] = 8'd174; T3[35] = 8'd106; T3[36] = 8'd90; T3[37] = 8'd65; T3[38] = 8'd2; T3[39] = 8'd79; T3[40] = 8'd92; T3[41] = 8'd244; T3[42] = 8'd52; T3[43] = 8'd8; T3[44] = 8'd147; T3[45] = 8'd115; T3[46] = 8'd83; T3[47] = 8'd63; T3[48] = 8'd12; T3[49] = 8'd82; T3[50] = 8'd101; T3[51] = 8'd94; T3[52] = 8'd40; T3[53] = 8'd161; T3[54] = 8'd15; T3[55] = 8'd181; T3[56] = 8'd9; T3[57] = 8'd54; T3[58] = 8'd155; T3[59] = 8'd61; T3[60] = 8'd38; T3[61] = 8'd105; T3[62] = 8'd205; T3[63] = 8'd159; T3[64] = 8'd27; T3[65] = 8'd158; T3[66] = 8'd116; T3[67] = 8'd46; T3[68] = 8'd45; T3[69] = 8'd178; T3[70] = 8'd238; T3[71] = 8'd251; T3[72] = 8'd246; T3[73] = 8'd77; T3[74] = 8'd97; T3[75] = 8'd206; T3[76] = 8'd123; T3[77] = 8'd62; T3[78] = 8'd113; T3[79] = 8'd151; T3[80] = 8'd245; T3[81] = 8'd104; T3[82] = 8'd0; T3[83] = 8'd44; T3[84] = 8'd96; T3[85] = 8'd31; T3[86] = 8'd200; T3[87] = 8'd237; T3[88] = 8'd190; T3[89] = 8'd70; T3[90] = 8'd217; T3[91] = 8'd75; T3[92] = 8'd222; T3[93] = 8'd212; T3[94] = 8'd232; T3[95] = 8'd74; T3[96] = 8'd107; T3[97] = 8'd42; T3[98] = 8'd229; T3[99] = 8'd22; T3[100] = 8'd197; T3[101] = 8'd215; T3[102] = 8'd85; T3[103] = 8'd148; T3[104] = 8'd207; T3[105] = 8'd16; T3[106] = 8'd6; T3[107] = 8'd129; T3[108] = 8'd240; T3[109] = 8'd68; T3[110] = 8'd186; T3[111] = 8'd227; T3[112] = 8'd243; T3[113] = 8'd254; T3[114] = 8'd192; T3[115] = 8'd138; T3[116] = 8'd173; T3[117] = 8'd188; T3[118] = 8'd72; T3[119] = 8'd4; T3[120] = 8'd223; T3[121] = 8'd193; T3[122] = 8'd117; T3[123] = 8'd99; T3[124] = 8'd48; T3[125] = 8'd26; T3[126] = 8'd14; T3[127] = 8'd109; T3[128] = 8'd76; T3[129] = 8'd20; T3[130] = 8'd53; T3[131] = 8'd47; T3[132] = 8'd225; T3[133] = 8'd162; T3[134] = 8'd204; T3[135] = 8'd57; T3[136] = 8'd87; T3[137] = 8'd242; T3[138] = 8'd130; T3[139] = 8'd71; T3[140] = 8'd172; T3[141] = 8'd231; T3[142] = 8'd43; T3[143] = 8'd149; T3[144] = 8'd160; T3[145] = 8'd152; T3[146] = 8'd209; T3[147] = 8'd127; T3[148] = 8'd102; T3[149] = 8'd126; T3[150] = 8'd171; T3[151] = 8'd131; T3[152] = 8'd202; T3[153] = 8'd41; T3[154] = 8'd211; T3[155] = 8'd60; T3[156] = 8'd121; T3[157] = 8'd226; T3[158] = 8'd29; T3[159] = 8'd118; T3[160] = 8'd59; T3[161] = 8'd86; T3[162] = 8'd78; T3[163] = 8'd30; T3[164] = 8'd219; T3[165] = 8'd10; T3[166] = 8'd108; T3[167] = 8'd228; T3[168] = 8'd93; T3[169] = 8'd110; T3[170] = 8'd239; T3[171] = 8'd166; T3[172] = 8'd168; T3[173] = 8'd164; T3[174] = 8'd55; T3[175] = 8'd139; T3[176] = 8'd50; T3[177] = 8'd67; T3[178] = 8'd89; T3[179] = 8'd183; T3[180] = 8'd140; T3[181] = 8'd100; T3[182] = 8'd210; T3[183] = 8'd224; T3[184] = 8'd180; T3[185] = 8'd250; T3[186] = 8'd7; T3[187] = 8'd37; T3[188] = 8'd175; T3[189] = 8'd142; T3[190] = 8'd233; T3[191] = 8'd24; T3[192] = 8'd213; T3[193] = 8'd136; T3[194] = 8'd111; T3[195] = 8'd114; T3[196] = 8'd36; T3[197] = 8'd241; T3[198] = 8'd199; T3[199] = 8'd81; T3[200] = 8'd35; T3[201] = 8'd124; T3[202] = 8'd156; T3[203] = 8'd33; T3[204] = 8'd221; T3[205] = 8'd220; T3[206] = 8'd134; T3[207] = 8'd133; T3[208] = 8'd144; T3[209] = 8'd66; T3[210] = 8'd196; T3[211] = 8'd170; T3[212] = 8'd216; T3[213] = 8'd5; T3[214] = 8'd1; T3[215] = 8'd18; T3[216] = 8'd163; T3[217] = 8'd95; T3[218] = 8'd249; T3[219] = 8'd208; T3[220] = 8'd145; T3[221] = 8'd88; T3[222] = 8'd39; T3[223] = 8'd185; T3[224] = 8'd56; T3[225] = 8'd19; T3[226] = 8'd179; T3[227] = 8'd51; T3[228] = 8'd187; T3[229] = 8'd112; T3[230] = 8'd137; T3[231] = 8'd167; T3[232] = 8'd182; T3[233] = 8'd34; T3[234] = 8'd146; T3[235] = 8'd32; T3[236] = 8'd73; T3[237] = 8'd255; T3[238] = 8'd120; T3[239] = 8'd122; T3[240] = 8'd143; T3[241] = 8'd248; T3[242] = 8'd128; T3[243] = 8'd23; T3[244] = 8'd218; T3[245] = 8'd49; T3[246] = 8'd198; T3[247] = 8'd184; T3[248] = 8'd195; T3[249] = 8'd176; T3[250] = 8'd119; T3[251] = 8'd17; T3[252] = 8'd203; T3[253] = 8'd252; T3[254] = 8'd214; T3[255] = 8'd58;  
    end 

    always @(posedge clk) begin
        if(reset) begin
            state               <= IDLE;
            end_mod_SB_MC       <= 0;
            out_1_SB_MC         <= 0;
            out_2_SB_MC         <= 0;
            out_3_SB_MC         <= 0;
            out_4_SB_MC         <= 0;
        end else if(first_round_enable) begin  // if first_round_enable is enable we don't use this block
            out_1_SB_MC         <= SB_MC_in_1;
            out_2_SB_MC         <= SB_MC_in_2;
            out_3_SB_MC         <= SB_MC_in_3;
            out_4_SB_MC         <= SB_MC_in_4;
            end_mod_SB_MC       <= 1;
        end else begin
         case(state)
            IDLE: begin
                end_mod_SB_MC   <= 0;
                if (SB_MC_sample_trig) 
                    state       <= S1;
                else 
                    state       <= IDLE;
            end

            S1:  begin 
                if (end_round_enable) // if end_round_enable ==1 then this module become only SB without mix column
                    out_1_SB_MC <= T1[SB_MC_in_1];
                else
                    out_1_SB_MC <= T2[SB_MC_in_1]^T3[SB_MC_in_2]^T1[SB_MC_in_3]^T1[SB_MC_in_4];
                state           <= S2 ;
            end

            S2: begin
                if (end_round_enable)
                    out_2_SB_MC <= T1[SB_MC_in_2];
                else
                    out_2_SB_MC <= T1[SB_MC_in_1]^T2[SB_MC_in_2]^T3[SB_MC_in_3]^T1[SB_MC_in_4];
                state           <= S3;
            end

            S3: begin
                if (end_round_enable)
                    out_3_SB_MC <= T1[SB_MC_in_3];
                else
                    out_3_SB_MC <= T1[SB_MC_in_1]^T1[SB_MC_in_2]^T2[SB_MC_in_3]^T3[SB_MC_in_4];
                state           <= S4;
            end

            S4: begin
                if (end_round_enable)
                    out_4_SB_MC <= T1[SB_MC_in_4];
                else
                    out_4_SB_MC <= T3[SB_MC_in_1]^T1[SB_MC_in_2]^T1[SB_MC_in_3]^T2[SB_MC_in_4];
                state           <= IDLE;
                end_mod_SB_MC   <= 1;
            end

            default: state      <= IDLE;
          endcase
        end //else
    end //always
endmodule