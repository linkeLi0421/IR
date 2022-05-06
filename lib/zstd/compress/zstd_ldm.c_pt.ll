; ModuleID = '/llk/IR/lib/zstd/compress/zstd_ldm.c_pt.bc'
source_filename = "../lib/zstd/compress/zstd_ldm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

%struct.ldmParams_t = type { i32, i32, i32, i32, i32, i32 }
%struct.ldmRollingHashState_t = type { i64, i64 }
%struct.ZSTD_window_t = type { ptr, ptr, ptr, i32, i32 }
%struct.ldmState_t = type { %struct.ZSTD_window_t, ptr, i32, ptr, [64 x i32], [64 x %struct.ldmMatchCandidate_t] }
%struct.ldmMatchCandidate_t = type { ptr, i32, i32, ptr }
%struct.ldmEntry_t = type { i32, i32 }
%struct.rawSeqStore_t = type { ptr, i32, i32, i32, i32 }
%struct.rawSeq = type { i32, i32, i32 }
%struct.ZSTD_matchState_t = type { %struct.ZSTD_window_t, i32, i32, i32, ptr, ptr, ptr, i32, %struct.optState_t, ptr, %struct.ZSTD_compressionParameters, ptr }
%struct.optState_t = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.ZSTD_compressionParameters = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.seqStore_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.seqDef_s = type { i32, i16, i16 }

@ZSTD_ldm_gearTab = internal unnamed_addr constant [256 x i64] [i64 -740570368750160036, i64 -8893660220509993966, i64 -5312086290702594868, i64 -5735972619299081762, i64 3771850993348288464, i64 5663242980927105797, i64 4180421565056919044, i64 -3545172778422107057, i64 8565414132019635614, i64 -7168278193325086006, i64 -8766759121928489687, i64 2955002781598341257, i64 -5786234267245351962, i64 -3591879250321086919, i64 152752410645948062, i64 980088017434152, i64 331732851626658549, i64 -8838640746785046208, i64 357946512872856607, i64 -9034488908246861280, i64 5763983574984628126, i64 -8902527927300804837, i64 5836814799640872626, i64 7626666828866112607, i64 -8314407865459583812, i64 -4338073698025259005, i64 -3427841724570307695, i64 -4735281124383641554, i64 3783546168938607943, i64 -5997679262622952944, i64 7335087386897913548, i64 -8164338418464644131, i64 -4068556904131095362, i64 -7831782995437506261, i64 6793784568496124290, i64 2174722154453825146, i64 2984138818416736892, i64 -7113741742226294226, i64 -2281435508835450325, i64 -7721633399858986080, i64 -3643393691544233469, i64 4998707500772197108, i64 -8746917044558380703, i64 4094234931541430821, i64 -5443419906114852421, i64 -6623610566688024079, i64 8857814660316604090, i64 -3400738594147523822, i64 -8919821665358523128, i64 -6282918144253290562, i64 2432827404989958913, i64 -7394112240096411410, i64 -6121261480113539237, i64 5984878076832140732, i64 3384046157297573234, i64 -4595246024994827002, i64 5291253059634137447, i64 8671685973221512352, i64 2826049182810801527, i64 7403797093788988755, i64 5165094797103512198, i64 3882952073790264921, i64 5144544719191608175, i64 7834774775704163346, i64 -2473432571472174399, i64 8174605543888266482, i64 -2355378437650417609, i64 -8592654940661990135, i64 6401049270349998237, i64 1690663705589720305, i64 -325991306605533225, i64 3162055811205276826, i64 7360403718927882347, i64 4149314189569060432, i64 242631106765699956, i64 4800188873694292702, i64 -4240136128533032951, i64 7695287510285100531, i64 -838191446823566789, i64 -8426618797363772681, i64 4318197351340892641, i64 1149634524221210890, i64 -7114863459094900121, i64 6598639596032476539, i64 -6839639621591231422, i64 -4468079783678231221, i64 7415306797865260392, i64 -8387907088140799907, i64 -1258625276876293193, i64 -8475030331983742166, i64 -4522295019934803305, i64 7907118757495767932, i64 -4069547487456468751, i64 -2916501145698388069, i64 -713064998698898503, i64 3241772581917522649, i64 -8751519476800664287, i64 2730958776012430807, i64 -5042858452473121693, i64 5670495071248203466, i64 -4753026106883975734, i64 8596907927398544058, i64 5161444109349651405, i64 5785732034315264735, i64 -2307004377459233095, i64 5101781436946662964, i64 -959555898603366205, i64 3854890476374695265, i64 2640596163920942051, i64 612531917322106041, i64 2943830675960290284, i64 5689027370104560298, i64 -8631226724040007757, i64 -4511209064617679402, i64 -4894469369141432134, i64 476493605933034202, i64 -4884230169516457813, i64 5170495216195818230, i64 5692683294927132859, i64 8144723081244076501, i64 -8597519866247633570, i64 -880939249453910632, i64 -4429072432866837671, i64 -9094346755688061955, i64 -8586012847855474869, i64 938274653391260135, i64 -1919596203828456659, i64 -4685062728154955610, i64 -7589917696820385588, i64 -4644676758005663535, i64 7411488509093422598, i64 -8990486576947324933, i64 -5153218641461172124, i64 -2632799881851607396, i64 -8546249320962975810, i64 -3973672932846999028, i64 8549157441122500270, i64 -6599514505156005102, i64 -6129339347647600276, i64 5601198583872550840, i64 448237196439497921, i64 4429298985553249414, i64 1710925370934130233, i64 649627535685727708, i64 7473286985276266860, i64 -6451688405355166991, i64 5916903098106068381, i64 4015692238528745986, i64 -8870599050489169071, i64 723755141375996997, i64 585701537146942606, i64 1762095187648923356, i64 -7499075263319252708, i64 -5534672106163518806, i64 2150778153372540978, i64 -6551385365357708843, i64 2851098796233701843, i64 8892087314106251931, i64 8629034505480888229, i64 -2056021433480337670, i64 -5504367576396503223, i64 -7836592892958478552, i64 -5799392812474758156, i64 1034405184557968969, i64 6802162732334632298, i64 2989737911373486958, i64 -8778167736429364826, i64 -1835460623793774935, i64 -7486017181440748174, i64 -429617951838635019, i64 3508842189232906005, i64 8135704789603646339, i64 6514020828226693353, i64 -3613195514473760017, i64 -2970174223312647786, i64 -1563248340095853661, i64 6024843996518658034, i64 718621336730405080, i64 -6679302967219244155, i64 3328034870986208117, i64 1672684744619306689, i64 -5162658619115609223, i64 -8970545856075756829, i64 -5111708603220227731, i64 8965210182149532773, i64 8555535473824159125, i64 4111651333356154152, i64 -4330767061174003086, i64 -4239562835870723191, i64 -2914198924640402128, i64 3999682325075695998, i64 8341500896009323972, i64 297956889220308695, i64 -7099292734868670191, i64 -8152361012580292778, i64 6806741856855634849, i64 5498675928299174173, i64 -5725270285902950948, i64 8841901128597221836, i64 8452800421686628345, i64 8170466794247151429, i64 3418145686321779422, i64 -7629649436654009993, i64 -885980405828750614, i64 -1279615140145250661, i64 -3645584372000451097, i64 -1959380958373714385, i64 -7401854505386743612, i64 2726709086420568843, i64 56600323866146812, i64 2432711764059673306, i64 6875692401370490017, i64 -2525618730407733492, i64 7150469517113480430, i64 -4524184818551573686, i64 6398633964089323354, i64 6824119869706748626, i64 7124491435314367896, i64 -5413128683141149161, i64 1648863654502257127, i64 -8159518228174467393, i64 7114119705011199411, i64 -3748695836744730090, i64 8708228644950752452, i64 -1200969192612019724, i64 -8253548825649809075, i64 -6218007400084108795, i64 4090442791415205777, i64 7208173716382451811, i64 -9156885958826744472, i64 4175721917217417792, i64 -1595983873127263617, i64 -7915925144243690988, i64 -4991676479780784319, i64 3502286560157455023, i64 -6532203062862126574, i64 4777171913562308143, i64 4711368926514029619, i64 -5148279762458990696, i64 -3276523506038921052, i64 -7330618301729952061, i64 8867750111338937128, i64 5817503254400830125, i64 7843308076737921667, i64 -8540058046490989581, i64 2422652698756804679, i64 4252262198383740502, i64 -2659446422212208921, i64 -8298729576016271950, i64 -382681700768530275, i64 4672201502568865753, i64 -5821590899938985698, i64 -1473505948212511144, i64 -4914601613263338112, i64 934305549654010667, i64 3120327478150945012], align 8

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @ZSTD_ldm_adjustParameters(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %1, align 4
  %4 = getelementptr inbounds %struct.ldmParams_t, ptr %0, i32 0, i32 5
  store i32 %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.ldmParams_t, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ldmParams_t, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 64, ptr %7, align 4
  br label %11

11:                                               ; preds = %10, %2
  %12 = getelementptr inbounds %struct.ldmParams_t, ptr %0, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = add i32 %3, -7
  %17 = tail call i32 @llvm.umax.i32(i32 %16, i32 6)
  store i32 %17, ptr %12, align 4
  br label %18

18:                                               ; preds = %15, %11
  %19 = phi i32 [ %17, %15 ], [ %13, %11 ]
  %20 = getelementptr inbounds %struct.ldmParams_t, ptr %0, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = tail call i32 @llvm.usub.sat.i32(i32 %3, i32 %19)
  store i32 %24, ptr %20, align 4
  br label %25

25:                                               ; preds = %23, %18
  %26 = icmp eq i32 %6, 0
  %27 = select i1 %26, i32 3, i32 %6
  %28 = tail call i32 @llvm.umin.i32(i32 %27, i32 %19)
  store i32 %28, ptr %5, align 4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_ldm_getTableSize([6 x i32] %0) local_unnamed_addr #1 {
  %2 = extractvalue [6 x i32] %0, 0
  %3 = extractvalue [6 x i32] %0, 1
  %4 = extractvalue [6 x i32] %0, 2
  %5 = tail call i32 @llvm.usub.sat.i32(i32 %3, i32 %4)
  %6 = shl nuw i32 1, %5
  %7 = shl i32 8, %3
  %8 = add i32 %6, %7
  %9 = icmp eq i32 %2, 0
  %10 = select i1 %9, i32 0, i32 %8
  ret i32 %10
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_ldm_getMaxNbSeq([6 x i32] %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = extractvalue [6 x i32] %0, 0
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = extractvalue [6 x i32] %0, 3
  %7 = udiv i32 %1, %6
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi i32 [ %7, %5 ], [ 0, %2 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ZSTD_ldm_fillHashTable(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #4 {
  %5 = alloca %struct.ldmRollingHashState_t, align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.ldmParams_t, ptr %3, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ldmParams_t, ptr %3, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ldmParams_t, ptr %3, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  %15 = getelementptr inbounds %struct.ldmState_t, ptr %0, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  %16 = tail call i32 @llvm.umin.i32(i32 %8, i32 64) #11
  %17 = getelementptr inbounds %struct.ldmParams_t, ptr %3, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  store i64 4294967295, ptr %5, align 8
  %19 = icmp eq i32 %18, 0
  %20 = icmp ult i32 %16, %18
  %21 = select i1 %19, i1 true, i1 %20
  %22 = zext i32 %18 to i64
  %23 = shl nsw i64 -1, %22
  %24 = xor i64 %23, -1
  %25 = sub i32 %16, %18
  %26 = zext i32 %25 to i64
  %27 = select i1 %21, i64 0, i64 %26
  %28 = shl i64 %24, %27
  %29 = getelementptr inbounds %struct.ldmRollingHashState_t, ptr %5, i32 0, i32 1
  store i64 %28, ptr %29, align 8
  %30 = icmp ult ptr %1, %2
  br i1 %30, label %31, label %84

31:                                               ; preds = %4
  %32 = sub i32 %10, %12
  %33 = ptrtoint ptr %2 to i32
  %34 = getelementptr i8, ptr %1, i32 %8
  %35 = sub i32 0, %8
  %36 = shl nsw i32 -1, %32
  %37 = xor i32 %36, -1
  %38 = ptrtoint ptr %14 to i32
  %39 = getelementptr inbounds %struct.ldmState_t, ptr %0, i32 0, i32 3
  %40 = getelementptr inbounds %struct.ldmState_t, ptr %0, i32 0, i32 1
  br label %41

41:                                               ; preds = %81, %31
  %42 = phi ptr [ %1, %31 ], [ %82, %81 ]
  store i32 0, ptr %6, align 4
  %43 = ptrtoint ptr %42 to i32
  %44 = sub i32 %33, %43
  %45 = call fastcc i32 @ZSTD_ldm_gear_feed(ptr noundef nonnull %5, ptr noundef %42, i32 noundef %44, ptr noundef %15, ptr noundef nonnull %6)
  %46 = load i32, ptr %6, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %81, label %48

48:                                               ; preds = %78, %41
  %49 = phi i32 [ %79, %78 ], [ 0, %41 ]
  %50 = getelementptr i32, ptr %15, i32 %49
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr i8, ptr %42, i32 %51
  %53 = icmp ult ptr %52, %34
  br i1 %53, label %78, label %54

54:                                               ; preds = %48
  %55 = getelementptr i8, ptr %52, i32 %35
  %56 = tail call i64 @xxh64(ptr noundef %55, i32 noundef %8, i64 noundef 0) #11
  %57 = trunc i64 %56 to i32
  %58 = and i32 %57, %37
  %59 = ptrtoint ptr %55 to i32
  %60 = sub i32 %59, %38
  %61 = lshr i64 %56, 32
  %62 = trunc i64 %61 to i32
  %63 = load i32, ptr %11, align 4
  %64 = load ptr, ptr %39, align 4
  %65 = getelementptr i8, ptr %64, i32 %58
  %66 = load i8, ptr %65, align 1
  %67 = zext i8 %66 to i32
  %68 = load ptr, ptr %40, align 4
  %69 = shl i32 %58, %63
  %70 = getelementptr %struct.ldmEntry_t, ptr %68, i32 %69
  %71 = getelementptr %struct.ldmEntry_t, ptr %70, i32 %67
  store i32 %60, ptr %71, align 4
  %72 = getelementptr inbounds i8, ptr %71, i32 4
  store i32 %62, ptr %72, align 4
  %73 = add nuw nsw i32 %67, 1
  %74 = shl nsw i32 -1, %63
  %75 = xor i32 %74, -1
  %76 = and i32 %73, %75
  %77 = trunc i32 %76 to i8
  store i8 %77, ptr %65, align 1
  br label %78

78:                                               ; preds = %54, %48
  %79 = add nuw i32 %49, 1
  %80 = icmp eq i32 %79, %46
  br i1 %80, label %81, label %48

81:                                               ; preds = %78, %41
  %82 = getelementptr i8, ptr %42, i32 %45
  %83 = icmp ult ptr %82, %2
  br i1 %83, label %41, label %84

84:                                               ; preds = %81, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ZSTD_ldm_gear_feed(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef %4) unnamed_addr #5 {
  %6 = load i64, ptr %0, align 8
  %7 = getelementptr inbounds %struct.ldmRollingHashState_t, ptr %0, i32 0, i32 1
  %8 = load i64, ptr %7, align 8
  %9 = icmp ugt i32 %2, 3
  br i1 %9, label %14, label %10

10:                                               ; preds = %84, %5
  %11 = phi i32 [ 0, %5 ], [ %75, %84 ]
  %12 = phi i64 [ %6, %5 ], [ %74, %84 ]
  %13 = icmp ult i32 %11, %2
  br i1 %13, label %87, label %111

14:                                               ; preds = %84, %5
  %15 = phi i32 [ %85, %84 ], [ 3, %5 ]
  %16 = phi i64 [ %74, %84 ], [ %6, %5 ]
  %17 = phi i32 [ %75, %84 ], [ 0, %5 ]
  %18 = shl i64 %16, 1
  %19 = getelementptr i8, ptr %1, i32 %17
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = getelementptr [256 x i64], ptr @ZSTD_ldm_gearTab, i32 0, i32 %21
  %23 = load i64, ptr %22, align 8
  %24 = add i64 %23, %18
  %25 = or i32 %17, 1
  %26 = and i64 %24, %8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %34, !prof !8

28:                                               ; preds = %14
  %29 = load i32, ptr %4, align 4
  %30 = getelementptr i32, ptr %3, i32 %29
  store i32 %25, ptr %30, align 4
  %31 = load i32, ptr %4, align 4
  %32 = add i32 %31, 1
  store i32 %32, ptr %4, align 4
  %33 = icmp eq i32 %32, 64
  br i1 %33, label %111, label %34

34:                                               ; preds = %28, %14
  %35 = shl i64 %24, 1
  %36 = getelementptr i8, ptr %1, i32 %25
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = getelementptr [256 x i64], ptr @ZSTD_ldm_gearTab, i32 0, i32 %38
  %40 = load i64, ptr %39, align 8
  %41 = add i64 %40, %35
  %42 = or i32 %17, 2
  %43 = and i64 %41, %8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %51, !prof !8

45:                                               ; preds = %34
  %46 = load i32, ptr %4, align 4
  %47 = getelementptr i32, ptr %3, i32 %46
  store i32 %42, ptr %47, align 4
  %48 = load i32, ptr %4, align 4
  %49 = add i32 %48, 1
  store i32 %49, ptr %4, align 4
  %50 = icmp eq i32 %49, 64
  br i1 %50, label %111, label %51

51:                                               ; preds = %45, %34
  %52 = shl i64 %41, 1
  %53 = getelementptr i8, ptr %1, i32 %42
  %54 = load i8, ptr %53, align 1
  %55 = zext i8 %54 to i32
  %56 = getelementptr [256 x i64], ptr @ZSTD_ldm_gearTab, i32 0, i32 %55
  %57 = load i64, ptr %56, align 8
  %58 = add i64 %57, %52
  %59 = and i64 %58, %8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %67, !prof !8

61:                                               ; preds = %51
  %62 = load i32, ptr %4, align 4
  %63 = getelementptr i32, ptr %3, i32 %62
  store i32 %15, ptr %63, align 4
  %64 = load i32, ptr %4, align 4
  %65 = add i32 %64, 1
  store i32 %65, ptr %4, align 4
  %66 = icmp eq i32 %65, 64
  br i1 %66, label %111, label %67

67:                                               ; preds = %61, %51
  %68 = shl i64 %58, 1
  %69 = getelementptr i8, ptr %1, i32 %15
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %70 to i32
  %72 = getelementptr [256 x i64], ptr @ZSTD_ldm_gearTab, i32 0, i32 %71
  %73 = load i64, ptr %72, align 8
  %74 = add i64 %73, %68
  %75 = add i32 %17, 4
  %76 = and i64 %74, %8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %84, !prof !8

78:                                               ; preds = %67
  %79 = load i32, ptr %4, align 4
  %80 = getelementptr i32, ptr %3, i32 %79
  store i32 %75, ptr %80, align 4
  %81 = load i32, ptr %4, align 4
  %82 = add i32 %81, 1
  store i32 %82, ptr %4, align 4
  %83 = icmp eq i32 %82, 64
  br i1 %83, label %111, label %84

84:                                               ; preds = %78, %67
  %85 = or i32 %75, 3
  %86 = icmp ult i32 %85, %2
  br i1 %86, label %14, label %10

87:                                               ; preds = %110, %10
  %88 = phi i64 [ %96, %110 ], [ %12, %10 ]
  %89 = phi i32 [ %97, %110 ], [ %11, %10 ]
  %90 = shl i64 %88, 1
  %91 = getelementptr i8, ptr %1, i32 %89
  %92 = load i8, ptr %91, align 1
  %93 = zext i8 %92 to i32
  %94 = getelementptr [256 x i64], ptr @ZSTD_ldm_gearTab, i32 0, i32 %93
  %95 = load i64, ptr %94, align 8
  %96 = add i64 %95, %90
  %97 = add nuw i32 %89, 1
  %98 = and i64 %96, %8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %108, !prof !8

100:                                              ; preds = %87
  %101 = load i32, ptr %4, align 4
  %102 = getelementptr i32, ptr %3, i32 %101
  store i32 %97, ptr %102, align 4
  %103 = load i32, ptr %4, align 4
  %104 = add i32 %103, 1
  store i32 %104, ptr %4, align 4
  %105 = icmp ne i32 %104, 64
  %106 = icmp ult i32 %97, %2
  %107 = select i1 %105, i1 %106, i1 false
  br i1 %107, label %110, label %111

108:                                              ; preds = %87
  %109 = icmp ult i32 %97, %2
  br i1 %109, label %110, label %111

110:                                              ; preds = %108, %100
  br label %87

111:                                              ; preds = %108, %100, %78, %61, %45, %28, %10
  %112 = phi i32 [ %11, %10 ], [ %97, %108 ], [ %97, %100 ], [ %75, %78 ], [ %15, %61 ], [ %42, %45 ], [ %25, %28 ]
  %113 = phi i64 [ %12, %10 ], [ %96, %108 ], [ %96, %100 ], [ %74, %78 ], [ %58, %61 ], [ %41, %45 ], [ %24, %28 ]
  store i64 %113, ptr %0, align 8
  ret i32 %112
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @xxh64(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_ldm_generateSequences(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #4 {
  %6 = alloca %struct.ldmRollingHashState_t, align 8
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.ldmParams_t, ptr %2, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = shl nuw i32 1, %9
  %11 = getelementptr i8, ptr %3, i32 %4
  %12 = lshr i32 %4, 20
  %13 = and i32 %4, 1048575
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = add nuw nsw i32 %12, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %588, label %18

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.rawSeqStore_t, ptr %1, i32 0, i32 3
  %20 = getelementptr inbounds %struct.rawSeqStore_t, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %11 to i32
  %22 = getelementptr inbounds [5 x i32], ptr %0, i32 0, i32 1
  %23 = getelementptr inbounds [5 x i32], ptr %0, i32 0, i32 3
  %24 = getelementptr inbounds [5 x i32], ptr %0, i32 0, i32 4
  %25 = getelementptr inbounds %struct.ldmParams_t, ptr %2, i32 0, i32 1
  %26 = xor i32 %10, -1
  %27 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 2
  %28 = getelementptr inbounds %struct.ldmState_t, ptr %0, i32 0, i32 1
  %29 = getelementptr inbounds %struct.ldmState_t, ptr %0, i32 0, i32 2
  %30 = icmp eq ptr %29, null
  %31 = getelementptr inbounds %struct.ldmParams_t, ptr %2, i32 0, i32 3
  %32 = getelementptr inbounds %struct.ldmParams_t, ptr %2, i32 0, i32 2
  %33 = getelementptr inbounds %struct.ldmState_t, ptr %0, i32 0, i32 4
  %34 = getelementptr inbounds %struct.ldmState_t, ptr %0, i32 0, i32 5
  %35 = getelementptr inbounds %struct.ldmParams_t, ptr %2, i32 0, i32 4
  %36 = getelementptr inbounds %struct.ldmRollingHashState_t, ptr %6, i32 0, i32 1
  %37 = getelementptr inbounds %struct.ldmState_t, ptr %0, i32 0, i32 3
  br label %38

38:                                               ; preds = %584, %18
  %39 = phi i32 [ 0, %18 ], [ %585, %584 ]
  %40 = phi i32 [ 0, %18 ], [ %586, %584 ]
  %41 = load i32, ptr %19, align 4
  %42 = load i32, ptr %20, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %588

44:                                               ; preds = %38
  %45 = shl i32 %40, 20
  %46 = getelementptr i8, ptr %3, i32 %45
  %47 = ptrtoint ptr %46 to i32
  %48 = sub i32 %21, %47
  %49 = icmp ult i32 %48, 1048576
  %50 = getelementptr i8, ptr %46, i32 1048576
  %51 = select i1 %49, ptr %11, ptr %50
  %52 = ptrtoint ptr %51 to i32
  %53 = sub i32 %52, %47
  %54 = load i32, ptr %22, align 4
  %55 = sub i32 %52, %54
  %56 = icmp ult i32 %55, -1610612735
  %57 = inttoptr i32 %54 to ptr
  br i1 %56, label %84, label %58

58:                                               ; preds = %44
  %59 = load i32, ptr %25, align 4
  %60 = shl nuw i32 1, %59
  %61 = sub i32 %47, %54
  %62 = add i32 %61, %26
  %63 = getelementptr i8, ptr %57, i32 %62
  store ptr %63, ptr %22, align 4
  %64 = load ptr, ptr %27, align 4
  %65 = getelementptr i8, ptr %64, i32 %62
  store ptr %65, ptr %27, align 4
  %66 = load i32, ptr %24, align 4
  %67 = icmp ugt i32 %66, %62
  %68 = sub i32 %66, %62
  %69 = select i1 %67, i32 %68, i32 1
  store i32 %69, ptr %24, align 4
  %70 = load i32, ptr %23, align 4
  %71 = icmp ugt i32 %70, %62
  %72 = sub i32 %70, %62
  %73 = select i1 %71, i32 %72, i32 1
  store i32 %73, ptr %23, align 4
  %74 = load ptr, ptr %28, align 4
  br label %75

75:                                               ; preds = %75, %58
  %76 = phi i32 [ %80, %75 ], [ 0, %58 ]
  %77 = getelementptr %struct.ldmEntry_t, ptr %74, i32 %76
  %78 = load i32, ptr %77, align 4
  %79 = tail call i32 @llvm.usub.sat.i32(i32 %78, i32 %62) #11
  store i32 %79, ptr %77, align 4
  %80 = add nuw i32 %76, 1
  %81 = icmp eq i32 %80, %60
  br i1 %81, label %82, label %75

82:                                               ; preds = %75
  store i32 0, ptr %29, align 4
  %83 = load ptr, ptr %22, align 4
  br label %84

84:                                               ; preds = %82, %44
  %85 = phi ptr [ %83, %82 ], [ %57, %44 ]
  %86 = ptrtoint ptr %85 to i32
  %87 = sub i32 %52, %86
  br i1 %30, label %90, label %88

88:                                               ; preds = %84
  %89 = load i32, ptr %29, align 4
  br label %90

90:                                               ; preds = %88, %84
  %91 = phi i32 [ %89, %88 ], [ 0, %84 ]
  %92 = add i32 %91, %10
  %93 = icmp ugt i32 %87, %92
  br i1 %93, label %97, label %94

94:                                               ; preds = %90
  %95 = load i32, ptr %23, align 4
  %96 = load i32, ptr %24, align 4
  br label %110

97:                                               ; preds = %90
  %98 = sub i32 %87, %10
  %99 = load i32, ptr %24, align 4
  %100 = icmp ult i32 %99, %98
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  store i32 %98, ptr %24, align 4
  br label %102

102:                                              ; preds = %101, %97
  %103 = phi i32 [ %98, %101 ], [ %99, %97 ]
  %104 = load i32, ptr %23, align 4
  %105 = icmp ult i32 %104, %103
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  store i32 %103, ptr %23, align 4
  br label %107

107:                                              ; preds = %106, %102
  %108 = phi i32 [ %103, %106 ], [ %104, %102 ]
  br i1 %30, label %110, label %109

109:                                              ; preds = %107
  store i32 0, ptr %29, align 4
  br label %110

110:                                              ; preds = %109, %107, %94
  %111 = phi i32 [ %96, %94 ], [ %103, %107 ], [ %103, %109 ]
  %112 = phi i32 [ %95, %94 ], [ %108, %107 ], [ %108, %109 ]
  %113 = icmp ult i32 %111, %112
  %114 = load i32, ptr %31, align 4
  %115 = load i32, ptr %32, align 4
  %116 = shl nuw i32 1, %115
  %117 = load i32, ptr %25, align 4
  %118 = sub i32 %117, %115
  br i1 %113, label %119, label %121

119:                                              ; preds = %110
  %120 = load ptr, ptr %27, align 4
  br label %121

121:                                              ; preds = %119, %110
  %122 = phi i32 [ %111, %119 ], [ %112, %110 ]
  %123 = phi ptr [ %120, %119 ], [ null, %110 ]
  %124 = getelementptr i8, ptr %123, i32 %122
  %125 = select i1 %113, ptr %124, ptr null
  %126 = getelementptr i8, ptr %123, i32 %112
  %127 = select i1 %113, ptr %126, ptr null
  %128 = getelementptr i8, ptr %85, i32 %112
  %129 = getelementptr i8, ptr %46, i32 %53
  %130 = getelementptr i8, ptr %129, i32 -8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  %131 = icmp ugt i32 %114, %53
  br i1 %131, label %571, label %132

132:                                              ; preds = %121
  %133 = tail call i32 @llvm.umin.i32(i32 %114, i32 64) #11
  %134 = load i32, ptr %35, align 4
  store i64 4294967295, ptr %6, align 8
  %135 = icmp eq i32 %134, 0
  %136 = icmp ult i32 %133, %134
  %137 = select i1 %135, i1 true, i1 %136
  %138 = zext i32 %134 to i64
  %139 = shl nsw i64 -1, %138
  %140 = xor i64 %139, -1
  %141 = sub i32 %133, %134
  %142 = zext i32 %141 to i64
  %143 = select i1 %137, i64 0, i64 %142
  %144 = shl i64 %140, %143
  store i64 %144, ptr %36, align 8
  %145 = icmp eq i32 %114, 0
  br i1 %145, label %153, label %146

146:                                              ; preds = %146, %132
  %147 = phi i32 [ %151, %146 ], [ 0, %132 ]
  store i32 0, ptr %7, align 4
  %148 = getelementptr i8, ptr %46, i32 %147
  %149 = sub i32 %114, %147
  %150 = call fastcc i32 @ZSTD_ldm_gear_feed(ptr noundef nonnull %6, ptr noundef %148, i32 noundef %149, ptr noundef %33, ptr noundef nonnull %7) #11
  %151 = add i32 %150, %147
  %152 = icmp ugt i32 %114, %151
  br i1 %152, label %146, label %153

153:                                              ; preds = %146, %132
  %154 = getelementptr i8, ptr %46, i32 %114
  %155 = icmp ult ptr %154, %130
  br i1 %155, label %156, label %567

156:                                              ; preds = %153
  %157 = ptrtoint ptr %130 to i32
  %158 = sub i32 0, %114
  %159 = shl nsw i32 -1, %118
  %160 = xor i32 %159, -1
  %161 = getelementptr i8, ptr %129, i32 -3
  %162 = getelementptr i8, ptr %129, i32 -1
  %163 = icmp ugt ptr %127, %125
  br label %164

164:                                              ; preds = %561, %156
  %165 = phi ptr [ %154, %156 ], [ %563, %561 ]
  %166 = phi ptr [ %46, %156 ], [ %562, %561 ]
  store i32 0, ptr %7, align 4
  %167 = ptrtoint ptr %165 to i32
  %168 = sub i32 %157, %167
  %169 = call fastcc i32 @ZSTD_ldm_gear_feed(ptr noundef nonnull %6, ptr noundef %165, i32 noundef %168, ptr noundef %33, ptr noundef nonnull %7) #11
  %170 = load i32, ptr %7, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %561, label %172

172:                                              ; preds = %164
  %173 = getelementptr i8, ptr %165, i32 %158
  br label %174

174:                                              ; preds = %174, %172
  %175 = phi i32 [ %192, %174 ], [ 0, %172 ]
  %176 = getelementptr i32, ptr %33, i32 %175
  %177 = load i32, ptr %176, align 4
  %178 = getelementptr i8, ptr %173, i32 %177
  %179 = tail call i64 @xxh64(ptr noundef %178, i32 noundef %114, i64 noundef 0) #11
  %180 = trunc i64 %179 to i32
  %181 = and i32 %180, %160
  %182 = getelementptr %struct.ldmMatchCandidate_t, ptr %34, i32 %175
  store ptr %178, ptr %182, align 4
  %183 = getelementptr %struct.ldmMatchCandidate_t, ptr %34, i32 %175, i32 1
  store i32 %181, ptr %183, align 4
  %184 = lshr i64 %179, 32
  %185 = trunc i64 %184 to i32
  %186 = getelementptr %struct.ldmMatchCandidate_t, ptr %34, i32 %175, i32 2
  store i32 %185, ptr %186, align 4
  %187 = load i32, ptr %32, align 4
  %188 = load ptr, ptr %28, align 4
  %189 = shl i32 %181, %187
  %190 = getelementptr %struct.ldmEntry_t, ptr %188, i32 %189
  %191 = getelementptr %struct.ldmMatchCandidate_t, ptr %34, i32 %175, i32 3
  store ptr %190, ptr %191, align 4
  tail call void @llvm.prefetch.p0(ptr %190, i32 0, i32 3, i32 1) #11
  %192 = add nuw i32 %175, 1
  %193 = icmp eq i32 %192, %170
  br i1 %193, label %194, label %174

194:                                              ; preds = %557, %174
  %195 = phi i32 [ %559, %557 ], [ 0, %174 ]
  %196 = phi ptr [ %558, %557 ], [ %166, %174 ]
  %197 = getelementptr %struct.ldmMatchCandidate_t, ptr %34, i32 %195
  %198 = load ptr, ptr %197, align 4
  %199 = getelementptr %struct.ldmMatchCandidate_t, ptr %34, i32 %195, i32 2
  %200 = load i32, ptr %199, align 4
  %201 = getelementptr %struct.ldmMatchCandidate_t, ptr %34, i32 %195, i32 1
  %202 = load i32, ptr %201, align 4
  %203 = getelementptr %struct.ldmMatchCandidate_t, ptr %34, i32 %195, i32 3
  %204 = load ptr, ptr %203, align 4
  %205 = ptrtoint ptr %198 to i32
  %206 = sub i32 %205, %86
  %207 = icmp ult ptr %198, %196
  br i1 %207, label %214, label %208

208:                                              ; preds = %194
  %209 = getelementptr %struct.ldmEntry_t, ptr %204, i32 %116
  %210 = icmp ult ptr %204, %209
  br i1 %210, label %211, label %505

211:                                              ; preds = %208
  %212 = icmp ugt ptr %161, %198
  %213 = icmp ugt ptr %198, %196
  br label %230

214:                                              ; preds = %194
  %215 = load i32, ptr %32, align 4
  %216 = load ptr, ptr %37, align 4
  %217 = getelementptr i8, ptr %216, i32 %202
  %218 = load i8, ptr %217, align 1
  %219 = zext i8 %218 to i32
  %220 = load ptr, ptr %28, align 4
  %221 = shl i32 %202, %215
  %222 = getelementptr %struct.ldmEntry_t, ptr %220, i32 %221
  %223 = getelementptr %struct.ldmEntry_t, ptr %222, i32 %219
  store i32 %206, ptr %223, align 4
  %224 = getelementptr inbounds i8, ptr %223, i32 4
  store i32 %200, ptr %224, align 4
  %225 = add nuw nsw i32 %219, 1
  %226 = shl nsw i32 -1, %215
  %227 = xor i32 %226, -1
  %228 = and i32 %225, %227
  %229 = trunc i32 %228 to i8
  store i8 %229, ptr %217, align 1
  br label %557

230:                                              ; preds = %496, %211
  %231 = phi ptr [ null, %211 ], [ %500, %496 ]
  %232 = phi ptr [ %204, %211 ], [ %501, %496 ]
  %233 = phi i32 [ 0, %211 ], [ %499, %496 ]
  %234 = phi i32 [ 0, %211 ], [ %498, %496 ]
  %235 = phi i32 [ 0, %211 ], [ %497, %496 ]
  %236 = getelementptr inbounds %struct.ldmEntry_t, ptr %232, i32 0, i32 1
  %237 = load i32, ptr %236, align 4
  %238 = icmp eq i32 %237, %200
  br i1 %238, label %239, label %496

239:                                              ; preds = %230
  %240 = load i32, ptr %232, align 4
  %241 = icmp ugt i32 %240, %122
  br i1 %241, label %242, label %496

242:                                              ; preds = %239
  br i1 %113, label %243, label %418

243:                                              ; preds = %242
  %244 = icmp ult i32 %240, %112
  %245 = select i1 %244, ptr %123, ptr %85
  %246 = getelementptr i8, ptr %245, i32 %240
  %247 = select i1 %244, ptr %127, ptr %129
  %248 = ptrtoint ptr %247 to i32
  %249 = ptrtoint ptr %246 to i32
  %250 = sub i32 %248, %249
  %251 = getelementptr i8, ptr %198, i32 %250
  %252 = icmp ult ptr %251, %129
  %253 = select i1 %252, ptr %251, ptr %129
  %254 = getelementptr i8, ptr %253, i32 -3
  %255 = icmp ugt ptr %254, %198
  br i1 %255, label %256, label %281

256:                                              ; preds = %243
  %257 = load i32, ptr %246, align 1
  %258 = load i32, ptr %198, align 1
  %259 = xor i32 %258, %257
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %264, label %261

261:                                              ; preds = %256
  %262 = tail call i32 @llvm.cttz.i32(i32 %259, i1 true) #11, !range !9
  %263 = lshr i32 %262, 3
  br label %307

264:                                              ; preds = %270, %256
  %265 = phi ptr [ %268, %270 ], [ %198, %256 ]
  %266 = phi ptr [ %267, %270 ], [ %246, %256 ]
  %267 = getelementptr i8, ptr %266, i32 4
  %268 = getelementptr i8, ptr %265, i32 4
  %269 = icmp ult ptr %268, %254
  br i1 %269, label %270, label %281

270:                                              ; preds = %264
  %271 = load i32, ptr %267, align 1
  %272 = load i32, ptr %268, align 1
  %273 = xor i32 %272, %271
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %264, label %275

275:                                              ; preds = %270
  %276 = tail call i32 @llvm.cttz.i32(i32 %273, i1 true) #11, !range !9
  %277 = lshr i32 %276, 3
  %278 = getelementptr i8, ptr %268, i32 %277
  %279 = ptrtoint ptr %278 to i32
  %280 = sub i32 %279, %205
  br label %307

281:                                              ; preds = %264, %243
  %282 = phi ptr [ %198, %243 ], [ %268, %264 ]
  %283 = phi ptr [ %246, %243 ], [ %267, %264 ]
  %284 = getelementptr i8, ptr %253, i32 -1
  %285 = icmp ult ptr %282, %284
  br i1 %285, label %286, label %293

286:                                              ; preds = %281
  %287 = load i16, ptr %283, align 1
  %288 = load i16, ptr %282, align 1
  %289 = icmp eq i16 %287, %288
  br i1 %289, label %290, label %293

290:                                              ; preds = %286
  %291 = getelementptr i8, ptr %282, i32 2
  %292 = getelementptr i8, ptr %283, i32 2
  br label %293

293:                                              ; preds = %290, %286, %281
  %294 = phi ptr [ %291, %290 ], [ %282, %286 ], [ %282, %281 ]
  %295 = phi ptr [ %292, %290 ], [ %283, %286 ], [ %283, %281 ]
  %296 = icmp ult ptr %294, %253
  br i1 %296, label %297, label %303

297:                                              ; preds = %293
  %298 = load i8, ptr %295, align 1
  %299 = load i8, ptr %294, align 1
  %300 = icmp eq i8 %298, %299
  %301 = zext i1 %300 to i32
  %302 = getelementptr i8, ptr %294, i32 %301
  br label %303

303:                                              ; preds = %297, %293
  %304 = phi ptr [ %294, %293 ], [ %302, %297 ]
  %305 = ptrtoint ptr %304 to i32
  %306 = sub i32 %305, %205
  br label %307

307:                                              ; preds = %303, %275, %261
  %308 = phi i32 [ %306, %303 ], [ %263, %261 ], [ %280, %275 ]
  %309 = getelementptr i8, ptr %246, i32 %308
  %310 = icmp eq ptr %309, %247
  br i1 %310, label %311, label %369

311:                                              ; preds = %307
  %312 = getelementptr i8, ptr %198, i32 %308
  %313 = icmp ugt ptr %161, %312
  br i1 %313, label %314, label %340

314:                                              ; preds = %311
  %315 = load i32, ptr %128, align 1
  %316 = load i32, ptr %312, align 1
  %317 = xor i32 %316, %315
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %322, label %319

319:                                              ; preds = %314
  %320 = tail call i32 @llvm.cttz.i32(i32 %317, i1 true) #11, !range !9
  %321 = lshr i32 %320, 3
  br label %366

322:                                              ; preds = %328, %314
  %323 = phi ptr [ %326, %328 ], [ %312, %314 ]
  %324 = phi ptr [ %325, %328 ], [ %128, %314 ]
  %325 = getelementptr i8, ptr %324, i32 4
  %326 = getelementptr i8, ptr %323, i32 4
  %327 = icmp ult ptr %326, %161
  br i1 %327, label %328, label %340

328:                                              ; preds = %322
  %329 = load i32, ptr %325, align 1
  %330 = load i32, ptr %326, align 1
  %331 = xor i32 %330, %329
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %322, label %333

333:                                              ; preds = %328
  %334 = tail call i32 @llvm.cttz.i32(i32 %331, i1 true) #11, !range !9
  %335 = lshr i32 %334, 3
  %336 = getelementptr i8, ptr %326, i32 %335
  %337 = ptrtoint ptr %336 to i32
  %338 = ptrtoint ptr %312 to i32
  %339 = sub i32 %337, %338
  br label %366

340:                                              ; preds = %322, %311
  %341 = phi ptr [ %312, %311 ], [ %326, %322 ]
  %342 = phi ptr [ %128, %311 ], [ %325, %322 ]
  %343 = icmp ult ptr %341, %162
  br i1 %343, label %344, label %351

344:                                              ; preds = %340
  %345 = load i16, ptr %342, align 1
  %346 = load i16, ptr %341, align 1
  %347 = icmp eq i16 %345, %346
  br i1 %347, label %348, label %351

348:                                              ; preds = %344
  %349 = getelementptr i8, ptr %341, i32 2
  %350 = getelementptr i8, ptr %342, i32 2
  br label %351

351:                                              ; preds = %348, %344, %340
  %352 = phi ptr [ %349, %348 ], [ %341, %344 ], [ %341, %340 ]
  %353 = phi ptr [ %350, %348 ], [ %342, %344 ], [ %342, %340 ]
  %354 = icmp ult ptr %352, %129
  br i1 %354, label %355, label %361

355:                                              ; preds = %351
  %356 = load i8, ptr %353, align 1
  %357 = load i8, ptr %352, align 1
  %358 = icmp eq i8 %356, %357
  %359 = zext i1 %358 to i32
  %360 = getelementptr i8, ptr %352, i32 %359
  br label %361

361:                                              ; preds = %355, %351
  %362 = phi ptr [ %352, %351 ], [ %360, %355 ]
  %363 = ptrtoint ptr %362 to i32
  %364 = ptrtoint ptr %312 to i32
  %365 = sub i32 %363, %364
  br label %366

366:                                              ; preds = %361, %333, %319
  %367 = phi i32 [ %365, %361 ], [ %321, %319 ], [ %339, %333 ]
  %368 = add i32 %367, %308
  br label %369

369:                                              ; preds = %366, %307
  %370 = phi i32 [ %368, %366 ], [ %308, %307 ]
  %371 = icmp ult i32 %370, %114
  br i1 %371, label %496, label %372

372:                                              ; preds = %369
  %373 = select i1 %244, ptr %125, ptr %128
  %374 = icmp ugt ptr %246, %373
  %375 = and i1 %213, %374
  br i1 %375, label %376, label %390

376:                                              ; preds = %385, %372
  %377 = phi i32 [ %386, %385 ], [ 0, %372 ]
  %378 = phi ptr [ %380, %385 ], [ %198, %372 ]
  %379 = phi ptr [ %382, %385 ], [ %246, %372 ]
  %380 = getelementptr i8, ptr %378, i32 -1
  %381 = load i8, ptr %380, align 1
  %382 = getelementptr i8, ptr %379, i32 -1
  %383 = load i8, ptr %382, align 1
  %384 = icmp eq i8 %381, %383
  br i1 %384, label %385, label %390

385:                                              ; preds = %376
  %386 = add i32 %377, 1
  %387 = icmp ugt ptr %380, %196
  %388 = icmp ugt ptr %382, %373
  %389 = and i1 %387, %388
  br i1 %389, label %376, label %390

390:                                              ; preds = %385, %376, %372
  %391 = phi i32 [ 0, %372 ], [ %377, %376 ], [ %386, %385 ]
  %392 = sub i32 0, %391
  %393 = getelementptr i8, ptr %246, i32 %392
  %394 = icmp ne ptr %393, %373
  %395 = icmp eq ptr %373, %125
  %396 = or i1 %395, %394
  br i1 %396, label %490, label %397

397:                                              ; preds = %390
  %398 = getelementptr i8, ptr %198, i32 %392
  %399 = icmp ugt ptr %398, %196
  %400 = and i1 %163, %399
  br i1 %400, label %401, label %415

401:                                              ; preds = %410, %397
  %402 = phi i32 [ %411, %410 ], [ 0, %397 ]
  %403 = phi ptr [ %405, %410 ], [ %398, %397 ]
  %404 = phi ptr [ %407, %410 ], [ %127, %397 ]
  %405 = getelementptr i8, ptr %403, i32 -1
  %406 = load i8, ptr %405, align 1
  %407 = getelementptr i8, ptr %404, i32 -1
  %408 = load i8, ptr %407, align 1
  %409 = icmp eq i8 %406, %408
  br i1 %409, label %410, label %415

410:                                              ; preds = %401
  %411 = add i32 %402, 1
  %412 = icmp ugt ptr %405, %196
  %413 = icmp ugt ptr %407, %125
  %414 = and i1 %412, %413
  br i1 %414, label %401, label %415

415:                                              ; preds = %410, %401, %397
  %416 = phi i32 [ 0, %397 ], [ %402, %401 ], [ %411, %410 ]
  %417 = add i32 %416, %391
  br label %490

418:                                              ; preds = %242
  %419 = getelementptr i8, ptr %85, i32 %240
  br i1 %212, label %420, label %445

420:                                              ; preds = %418
  %421 = load i32, ptr %419, align 1
  %422 = load i32, ptr %198, align 1
  %423 = xor i32 %422, %421
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %428, label %425

425:                                              ; preds = %420
  %426 = tail call i32 @llvm.cttz.i32(i32 %423, i1 true) #11, !range !9
  %427 = lshr i32 %426, 3
  br label %470

428:                                              ; preds = %434, %420
  %429 = phi ptr [ %432, %434 ], [ %198, %420 ]
  %430 = phi ptr [ %431, %434 ], [ %419, %420 ]
  %431 = getelementptr i8, ptr %430, i32 4
  %432 = getelementptr i8, ptr %429, i32 4
  %433 = icmp ult ptr %432, %161
  br i1 %433, label %434, label %445

434:                                              ; preds = %428
  %435 = load i32, ptr %431, align 1
  %436 = load i32, ptr %432, align 1
  %437 = xor i32 %436, %435
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %428, label %439

439:                                              ; preds = %434
  %440 = tail call i32 @llvm.cttz.i32(i32 %437, i1 true) #11, !range !9
  %441 = lshr i32 %440, 3
  %442 = getelementptr i8, ptr %432, i32 %441
  %443 = ptrtoint ptr %442 to i32
  %444 = sub i32 %443, %205
  br label %470

445:                                              ; preds = %428, %418
  %446 = phi ptr [ %198, %418 ], [ %432, %428 ]
  %447 = phi ptr [ %419, %418 ], [ %431, %428 ]
  %448 = icmp ult ptr %446, %162
  br i1 %448, label %449, label %456

449:                                              ; preds = %445
  %450 = load i16, ptr %447, align 1
  %451 = load i16, ptr %446, align 1
  %452 = icmp eq i16 %450, %451
  br i1 %452, label %453, label %456

453:                                              ; preds = %449
  %454 = getelementptr i8, ptr %446, i32 2
  %455 = getelementptr i8, ptr %447, i32 2
  br label %456

456:                                              ; preds = %453, %449, %445
  %457 = phi ptr [ %454, %453 ], [ %446, %449 ], [ %446, %445 ]
  %458 = phi ptr [ %455, %453 ], [ %447, %449 ], [ %447, %445 ]
  %459 = icmp ult ptr %457, %129
  br i1 %459, label %460, label %466

460:                                              ; preds = %456
  %461 = load i8, ptr %458, align 1
  %462 = load i8, ptr %457, align 1
  %463 = icmp eq i8 %461, %462
  %464 = zext i1 %463 to i32
  %465 = getelementptr i8, ptr %457, i32 %464
  br label %466

466:                                              ; preds = %460, %456
  %467 = phi ptr [ %457, %456 ], [ %465, %460 ]
  %468 = ptrtoint ptr %467 to i32
  %469 = sub i32 %468, %205
  br label %470

470:                                              ; preds = %466, %439, %425
  %471 = phi i32 [ %469, %466 ], [ %427, %425 ], [ %444, %439 ]
  %472 = icmp ult i32 %471, %114
  br i1 %472, label %496, label %473

473:                                              ; preds = %470
  %474 = icmp ugt ptr %419, %128
  %475 = and i1 %213, %474
  br i1 %475, label %476, label %490

476:                                              ; preds = %485, %473
  %477 = phi i32 [ %486, %485 ], [ 0, %473 ]
  %478 = phi ptr [ %480, %485 ], [ %198, %473 ]
  %479 = phi ptr [ %482, %485 ], [ %419, %473 ]
  %480 = getelementptr i8, ptr %478, i32 -1
  %481 = load i8, ptr %480, align 1
  %482 = getelementptr i8, ptr %479, i32 -1
  %483 = load i8, ptr %482, align 1
  %484 = icmp eq i8 %481, %483
  br i1 %484, label %485, label %490

485:                                              ; preds = %476
  %486 = add i32 %477, 1
  %487 = icmp ugt ptr %480, %196
  %488 = icmp ugt ptr %482, %128
  %489 = and i1 %487, %488
  br i1 %489, label %476, label %490

490:                                              ; preds = %485, %476, %473, %415, %390
  %491 = phi i32 [ %471, %473 ], [ %370, %415 ], [ %370, %390 ], [ %471, %476 ], [ %471, %485 ]
  %492 = phi i32 [ 0, %473 ], [ %417, %415 ], [ %391, %390 ], [ %486, %485 ], [ %477, %476 ]
  %493 = add i32 %492, %491
  %494 = icmp ugt i32 %493, %233
  br i1 %494, label %495, label %496

495:                                              ; preds = %490
  br label %496

496:                                              ; preds = %495, %490, %470, %369, %239, %230
  %497 = phi i32 [ %235, %239 ], [ %235, %230 ], [ %491, %495 ], [ %235, %490 ], [ %235, %369 ], [ %235, %470 ]
  %498 = phi i32 [ %234, %239 ], [ %234, %230 ], [ %492, %495 ], [ %234, %490 ], [ %234, %369 ], [ %234, %470 ]
  %499 = phi i32 [ %233, %239 ], [ %233, %230 ], [ %493, %495 ], [ %233, %490 ], [ %233, %369 ], [ %233, %470 ]
  %500 = phi ptr [ %231, %239 ], [ %231, %230 ], [ %232, %495 ], [ %231, %490 ], [ %231, %369 ], [ %231, %470 ]
  %501 = getelementptr %struct.ldmEntry_t, ptr %232, i32 1
  %502 = icmp ult ptr %501, %209
  br i1 %502, label %230, label %503

503:                                              ; preds = %496
  %504 = icmp eq ptr %500, null
  br i1 %504, label %505, label %521

505:                                              ; preds = %503, %208
  %506 = load i32, ptr %32, align 4
  %507 = load ptr, ptr %37, align 4
  %508 = getelementptr i8, ptr %507, i32 %202
  %509 = load i8, ptr %508, align 1
  %510 = zext i8 %509 to i32
  %511 = load ptr, ptr %28, align 4
  %512 = shl i32 %202, %506
  %513 = getelementptr %struct.ldmEntry_t, ptr %511, i32 %512
  %514 = getelementptr %struct.ldmEntry_t, ptr %513, i32 %510
  store i32 %206, ptr %514, align 4
  %515 = getelementptr inbounds i8, ptr %514, i32 4
  store i32 %200, ptr %515, align 4
  %516 = add nuw nsw i32 %510, 1
  %517 = shl nsw i32 -1, %506
  %518 = xor i32 %517, -1
  %519 = and i32 %516, %518
  %520 = trunc i32 %519 to i8
  store i8 %520, ptr %508, align 1
  br label %557

521:                                              ; preds = %503
  %522 = load i32, ptr %19, align 4
  %523 = load i32, ptr %20, align 4
  %524 = icmp eq i32 %522, %523
  br i1 %524, label %525, label %526

525:                                              ; preds = %521
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  br label %588

526:                                              ; preds = %521
  %527 = load ptr, ptr %1, align 4
  %528 = getelementptr %struct.rawSeq, ptr %527, i32 %522
  %529 = load i32, ptr %500, align 4
  %530 = sub i32 %206, %529
  %531 = add i32 %498, %497
  %532 = sub i32 0, %498
  %533 = getelementptr i8, ptr %198, i32 %532
  %534 = ptrtoint ptr %533 to i32
  %535 = ptrtoint ptr %196 to i32
  %536 = sub i32 %534, %535
  %537 = getelementptr %struct.rawSeq, ptr %527, i32 %522, i32 1
  store i32 %536, ptr %537, align 4
  %538 = getelementptr %struct.rawSeq, ptr %527, i32 %522, i32 2
  store i32 %531, ptr %538, align 4
  store i32 %530, ptr %528, align 4
  %539 = load i32, ptr %19, align 4
  %540 = add i32 %539, 1
  store i32 %540, ptr %19, align 4
  %541 = load i32, ptr %32, align 4
  %542 = load ptr, ptr %37, align 4
  %543 = getelementptr i8, ptr %542, i32 %202
  %544 = load i8, ptr %543, align 1
  %545 = zext i8 %544 to i32
  %546 = load ptr, ptr %28, align 4
  %547 = shl i32 %202, %541
  %548 = getelementptr %struct.ldmEntry_t, ptr %546, i32 %547
  %549 = getelementptr %struct.ldmEntry_t, ptr %548, i32 %545
  store i32 %206, ptr %549, align 4
  %550 = getelementptr inbounds i8, ptr %549, i32 4
  store i32 %200, ptr %550, align 4
  %551 = add nuw nsw i32 %545, 1
  %552 = shl nsw i32 -1, %541
  %553 = xor i32 %552, -1
  %554 = and i32 %551, %553
  %555 = trunc i32 %554 to i8
  store i8 %555, ptr %543, align 1
  %556 = getelementptr i8, ptr %198, i32 %497
  br label %557

557:                                              ; preds = %526, %505, %214
  %558 = phi ptr [ %556, %526 ], [ %196, %505 ], [ %196, %214 ]
  %559 = add nuw i32 %195, 1
  %560 = icmp eq i32 %559, %170
  br i1 %560, label %561, label %194

561:                                              ; preds = %557, %164
  %562 = phi ptr [ %166, %164 ], [ %558, %557 ]
  %563 = getelementptr i8, ptr %165, i32 %169
  %564 = icmp ult ptr %563, %130
  br i1 %564, label %164, label %565

565:                                              ; preds = %561
  %566 = ptrtoint ptr %562 to i32
  br label %567

567:                                              ; preds = %565, %153
  %568 = phi i32 [ %566, %565 ], [ %47, %153 ]
  %569 = ptrtoint ptr %129 to i32
  %570 = sub i32 %569, %568
  br label %571

571:                                              ; preds = %567, %121
  %572 = phi i32 [ %570, %567 ], [ %53, %121 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  %573 = icmp ult i32 %572, -119
  br i1 %573, label %574, label %588

574:                                              ; preds = %571
  %575 = load i32, ptr %19, align 4
  %576 = icmp ult i32 %41, %575
  br i1 %576, label %577, label %582

577:                                              ; preds = %574
  %578 = load ptr, ptr %1, align 4
  %579 = getelementptr %struct.rawSeq, ptr %578, i32 %41, i32 1
  %580 = load i32, ptr %579, align 4
  %581 = add i32 %580, %39
  store i32 %581, ptr %579, align 4
  br label %584

582:                                              ; preds = %574
  %583 = add i32 %53, %39
  br label %584

584:                                              ; preds = %582, %577
  %585 = phi i32 [ %583, %582 ], [ %572, %577 ]
  %586 = add nuw nsw i32 %40, 1
  %587 = icmp eq i32 %586, %16
  br i1 %587, label %588, label %38

588:                                              ; preds = %584, %571, %525, %38, %5
  %589 = phi i32 [ -70, %525 ], [ 0, %5 ], [ 0, %584 ], [ 0, %38 ], [ %572, %571 ]
  ret i32 %589
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ZSTD_ldm_skipSequences(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %49, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.rawSeqStore_t, ptr %0, i32 0, i32 1
  %7 = getelementptr inbounds %struct.rawSeqStore_t, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %6, align 4
  br label %9

9:                                                ; preds = %44, %5
  %10 = phi i32 [ %8, %5 ], [ %47, %44 ]
  %11 = phi i32 [ %1, %5 ], [ %45, %44 ]
  %12 = load i32, ptr %7, align 4
  %13 = icmp ult i32 %10, %12
  br i1 %13, label %14, label %49

14:                                               ; preds = %9
  %15 = load ptr, ptr %0, align 4
  %16 = getelementptr %struct.rawSeq, ptr %15, i32 %10, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp ugt i32 %11, %17
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = sub i32 %17, %11
  store i32 %20, ptr %16, align 4
  br label %49

21:                                               ; preds = %14
  %22 = sub i32 %11, %17
  store i32 0, ptr %16, align 4
  %23 = getelementptr %struct.rawSeq, ptr %15, i32 %10, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = icmp ult i32 %22, %24
  br i1 %25, label %26, label %44

26:                                               ; preds = %21
  %27 = getelementptr %struct.rawSeq, ptr %15, i32 %10
  %28 = sub i32 %24, %22
  store i32 %28, ptr %23, align 4
  %29 = icmp ult i32 %28, %2
  br i1 %29, label %30, label %49

30:                                               ; preds = %26
  %31 = load i32, ptr %6, align 4
  %32 = add i32 %31, 1
  %33 = load i32, ptr %7, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = getelementptr %struct.rawSeq, ptr %27, i32 1
  %37 = getelementptr inbounds %struct.rawSeq, ptr %36, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = add i32 %38, %28
  store i32 %39, ptr %37, align 4
  %40 = load i32, ptr %6, align 4
  %41 = add i32 %40, 1
  br label %42

42:                                               ; preds = %35, %30
  %43 = phi i32 [ %41, %35 ], [ %32, %30 ]
  store i32 %43, ptr %6, align 4
  br label %49

44:                                               ; preds = %21
  %45 = sub i32 %22, %24
  store i32 0, ptr %23, align 4
  %46 = load i32, ptr %6, align 4
  %47 = add i32 %46, 1
  store i32 %47, ptr %6, align 4
  %48 = icmp eq i32 %45, 0
  br i1 %48, label %49, label %9

49:                                               ; preds = %44, %42, %26, %19, %9, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ZSTD_ldm_skipRawSeqStoreBytes(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.rawSeqStore_t, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, %1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %32, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rawSeqStore_t, ptr %0, i32 0, i32 1
  %9 = getelementptr inbounds %struct.rawSeqStore_t, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = load i32, ptr %8, align 4
  br label %12

12:                                               ; preds = %26, %7
  %13 = phi i32 [ %11, %7 ], [ %28, %26 ]
  %14 = phi i32 [ %5, %7 ], [ %27, %26 ]
  %15 = icmp ult i32 %13, %10
  br i1 %15, label %16, label %30

16:                                               ; preds = %12
  %17 = load ptr, ptr %0, align 4
  %18 = getelementptr %struct.rawSeq, ptr %17, i32 %13
  %19 = getelementptr inbounds i8, ptr %18, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds i8, ptr %18, i32 8
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, %20
  %24 = icmp ult i32 %14, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  store i32 %14, ptr %3, align 4
  br label %30

26:                                               ; preds = %16
  %27 = sub i32 %14, %23
  %28 = add nuw i32 %13, 1
  store i32 %28, ptr %8, align 4
  %29 = icmp eq i32 %27, 0
  br i1 %29, label %32, label %12

30:                                               ; preds = %25, %12
  %31 = icmp eq i32 %13, %10
  br i1 %31, label %32, label %33

32:                                               ; preds = %30, %26, %2
  store i32 0, ptr %3, align 4
  br label %33

33:                                               ; preds = %32, %30
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_ldm_blockCompress(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #4 {
  %7 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %1, i32 0, i32 10, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %1, i32 0, i32 10, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds [5 x i32], ptr %1, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds [5 x i32], ptr %1, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = icmp ult i32 %14, %12
  br i1 %15, label %25, label %16

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %1, i32 0, i32 9
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %18, i32 0, i32 7
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i32 2, i32 3
  br label %25

25:                                               ; preds = %20, %16, %6
  %26 = phi i32 [ 1, %6 ], [ %24, %20 ], [ 0, %16 ]
  %27 = tail call ptr @ZSTD_selectBlockCompressor(i32 noundef %10, i32 noundef %26) #11
  %28 = getelementptr i8, ptr %4, i32 %5
  %29 = load i32, ptr %9, align 4
  %30 = icmp ugt i32 %29, 6
  br i1 %30, label %50, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.rawSeqStore_t, ptr %0, i32 0, i32 1
  %33 = getelementptr inbounds %struct.rawSeqStore_t, ptr %0, i32 0, i32 3
  %34 = load i32, ptr %32, align 4
  %35 = load i32, ptr %33, align 4
  %36 = icmp ult i32 %34, %35
  %37 = icmp ugt ptr %28, %4
  %38 = and i1 %36, %37
  br i1 %38, label %39, label %277

39:                                               ; preds = %31
  %40 = ptrtoint ptr %28 to i32
  %41 = getelementptr inbounds %struct.ZSTD_window_t, ptr %1, i32 0, i32 1
  %42 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %1, i32 0, i32 2
  %43 = getelementptr i8, ptr %28, i32 -32
  %44 = getelementptr inbounds %struct.seqStore_t, ptr %2, i32 0, i32 3
  %45 = ptrtoint ptr %43 to i32
  %46 = getelementptr inbounds %struct.seqStore_t, ptr %2, i32 0, i32 9
  %47 = getelementptr inbounds %struct.seqStore_t, ptr %2, i32 0, i32 1
  %48 = getelementptr inbounds %struct.seqStore_t, ptr %2, i32 0, i32 10
  %49 = getelementptr i8, ptr %3, i32 4
  br label %85

50:                                               ; preds = %25
  %51 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %1, i32 0, i32 11
  store ptr %0, ptr %51, align 4
  %52 = tail call i32 %27(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #11
  %53 = getelementptr inbounds %struct.rawSeqStore_t, ptr %0, i32 0, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %54, %5
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %84, label %57

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.rawSeqStore_t, ptr %0, i32 0, i32 1
  %59 = getelementptr inbounds %struct.rawSeqStore_t, ptr %0, i32 0, i32 3
  %60 = load i32, ptr %59, align 4
  %61 = load i32, ptr %58, align 4
  %62 = call i32 @llvm.umax.i32(i32 %61, i32 %60)
  br label %63

63:                                               ; preds = %77, %57
  %64 = phi i32 [ %61, %57 ], [ %79, %77 ]
  %65 = phi i32 [ %55, %57 ], [ %78, %77 ]
  %66 = icmp eq i32 %64, %62
  br i1 %66, label %81, label %67

67:                                               ; preds = %63
  %68 = load ptr, ptr %0, align 4
  %69 = getelementptr %struct.rawSeq, ptr %68, i32 %64
  %70 = getelementptr inbounds i8, ptr %69, i32 4
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr inbounds i8, ptr %69, i32 8
  %73 = load i32, ptr %72, align 4
  %74 = add i32 %73, %71
  %75 = icmp ult i32 %65, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  store i32 %65, ptr %53, align 4
  br label %81

77:                                               ; preds = %67
  %78 = sub i32 %65, %74
  %79 = add i32 %64, 1
  store i32 %79, ptr %58, align 4
  %80 = icmp eq i32 %78, 0
  br i1 %80, label %84, label %63

81:                                               ; preds = %76, %63
  %82 = phi i32 [ %64, %76 ], [ %62, %63 ]
  %83 = icmp eq i32 %82, %60
  br i1 %83, label %84, label %301

84:                                               ; preds = %81, %77, %50
  store i32 0, ptr %53, align 4
  br label %301

85:                                               ; preds = %265, %39
  %86 = phi i32 [ %35, %39 ], [ %273, %265 ]
  %87 = phi i32 [ %34, %39 ], [ %272, %265 ]
  %88 = phi ptr [ %4, %39 ], [ %271, %265 ]
  %89 = ptrtoint ptr %88 to i32
  %90 = sub i32 %40, %89
  %91 = load ptr, ptr %0, align 4, !noalias !10
  %92 = getelementptr %struct.rawSeq, ptr %91, i32 %87
  %93 = load i32, ptr %92, align 4
  %94 = getelementptr inbounds i8, ptr %92, i32 4
  %95 = load i32, ptr %94, align 4
  %96 = getelementptr inbounds i8, ptr %92, i32 8
  %97 = load i32, ptr %96, align 4
  %98 = add i32 %97, %95
  %99 = icmp ugt i32 %98, %90
  br i1 %99, label %102, label %100

100:                                              ; preds = %85
  %101 = add nuw i32 %87, 1
  store i32 %101, ptr %32, align 4, !noalias !10
  br label %154

102:                                              ; preds = %85
  %103 = icmp ugt i32 %90, %95
  br i1 %103, label %104, label %108

104:                                              ; preds = %102
  %105 = sub i32 %90, %95
  %106 = icmp ult i32 %105, %8
  %107 = select i1 %106, i32 0, i32 %93
  br label %110

108:                                              ; preds = %102
  %109 = icmp eq i32 %90, 0
  br i1 %109, label %277, label %110

110:                                              ; preds = %108, %104
  %111 = phi i32 [ 0, %108 ], [ %107, %104 ]
  %112 = phi i32 [ %97, %108 ], [ %105, %104 ]
  %113 = icmp ult i32 %87, %86
  br i1 %113, label %114, label %154

114:                                              ; preds = %151, %110
  %115 = phi i32 [ %147, %151 ], [ %90, %110 ]
  %116 = phi i32 [ %149, %151 ], [ %87, %110 ]
  %117 = load ptr, ptr %0, align 4, !noalias !10
  %118 = getelementptr %struct.rawSeq, ptr %117, i32 %116, i32 1
  %119 = load i32, ptr %118, align 4, !noalias !10
  %120 = icmp ugt i32 %115, %119
  br i1 %120, label %123, label %121

121:                                              ; preds = %114
  %122 = sub i32 %119, %115
  store i32 %122, ptr %118, align 4, !noalias !10
  br label %154

123:                                              ; preds = %114
  %124 = sub i32 %115, %119
  store i32 0, ptr %118, align 4, !noalias !10
  %125 = getelementptr %struct.rawSeq, ptr %117, i32 %116, i32 2
  %126 = load i32, ptr %125, align 4, !noalias !10
  %127 = icmp ult i32 %124, %126
  br i1 %127, label %128, label %146

128:                                              ; preds = %123
  %129 = getelementptr %struct.rawSeq, ptr %117, i32 1
  %130 = sub i32 %126, %124
  store i32 %130, ptr %125, align 4, !noalias !10
  %131 = icmp ult i32 %130, %8
  br i1 %131, label %132, label %154

132:                                              ; preds = %128
  %133 = load i32, ptr %32, align 4, !noalias !10
  %134 = add i32 %133, 1
  %135 = load i32, ptr %33, align 4, !noalias !10
  %136 = icmp ult i32 %134, %135
  br i1 %136, label %137, label %144

137:                                              ; preds = %132
  %138 = getelementptr %struct.rawSeq, ptr %129, i32 %116
  %139 = getelementptr inbounds %struct.rawSeq, ptr %138, i32 0, i32 1
  %140 = load i32, ptr %139, align 4, !noalias !10
  %141 = add i32 %140, %130
  store i32 %141, ptr %139, align 4, !noalias !10
  %142 = load i32, ptr %32, align 4, !noalias !10
  %143 = add i32 %142, 1
  br label %144

144:                                              ; preds = %137, %132
  %145 = phi i32 [ %143, %137 ], [ %134, %132 ]
  store i32 %145, ptr %32, align 4, !noalias !10
  br label %154

146:                                              ; preds = %123
  %147 = sub i32 %124, %126
  store i32 0, ptr %125, align 4, !noalias !10
  %148 = load i32, ptr %32, align 4, !noalias !10
  %149 = add i32 %148, 1
  store i32 %149, ptr %32, align 4, !noalias !10
  %150 = icmp eq i32 %147, 0
  br i1 %150, label %154, label %151

151:                                              ; preds = %146
  %152 = load i32, ptr %33, align 4, !noalias !10
  %153 = icmp ult i32 %149, %152
  br i1 %153, label %114, label %154

154:                                              ; preds = %151, %146, %144, %128, %121, %110, %100
  %155 = phi i32 [ %111, %144 ], [ %111, %128 ], [ %111, %121 ], [ %93, %100 ], [ %111, %110 ], [ %111, %151 ], [ %111, %146 ]
  %156 = phi i32 [ %112, %144 ], [ %112, %128 ], [ %112, %121 ], [ %97, %100 ], [ %112, %110 ], [ %112, %151 ], [ %112, %146 ]
  %157 = icmp eq i32 %155, 0
  br i1 %157, label %277, label %158

158:                                              ; preds = %154
  %159 = load ptr, ptr %41, align 4
  %160 = ptrtoint ptr %159 to i32
  %161 = sub i32 %89, %160
  %162 = load i32, ptr %42, align 4
  %163 = add i32 %162, 1024
  %164 = icmp ugt i32 %161, %163
  br i1 %164, label %165, label %170

165:                                              ; preds = %158
  %166 = sub i32 -1024, %162
  %167 = add i32 %166, %161
  %168 = tail call i32 @llvm.umin.i32(i32 %167, i32 512) #11
  %169 = sub i32 %161, %168
  store i32 %169, ptr %42, align 4
  br label %170

170:                                              ; preds = %165, %158
  %171 = load i32, ptr %9, align 4
  switch i32 %171, label %174 [
    i32 1, label %172
    i32 2, label %173
  ]

172:                                              ; preds = %170
  tail call void @ZSTD_fillHashTable(ptr noundef %1, ptr noundef %88, i32 noundef 0) #11
  br label %174

173:                                              ; preds = %170
  tail call void @ZSTD_fillDoubleHashTable(ptr noundef %1, ptr noundef %88, i32 noundef 0) #11
  br label %174

174:                                              ; preds = %173, %172, %170
  %175 = tail call i32 %27(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %88, i32 noundef %95) #11
  %176 = load i64, ptr %3, align 4
  store i64 %176, ptr %49, align 4
  %177 = getelementptr i8, ptr %88, i32 %95
  store i32 %155, ptr %3, align 4
  %178 = sub i32 0, %175
  %179 = getelementptr i8, ptr %177, i32 %178
  %180 = add i32 %156, -3
  %181 = getelementptr i8, ptr %179, i32 %175
  %182 = icmp ugt ptr %181, %43
  %183 = load ptr, ptr %44, align 4
  br i1 %182, label %205, label %184

184:                                              ; preds = %174
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %183, ptr noundef align 1 dereferenceable(16) %179, i32 16, i1 false) #11
  %185 = icmp ugt i32 %175, 16
  %186 = load ptr, ptr %44, align 4
  br i1 %185, label %189, label %187

187:                                              ; preds = %184
  %188 = getelementptr i8, ptr %186, i32 %175
  store ptr %188, ptr %44, align 4
  br label %249

189:                                              ; preds = %184
  %190 = getelementptr i8, ptr %186, i32 16
  %191 = getelementptr i8, ptr %179, i32 16
  %192 = add i32 %175, -16
  %193 = getelementptr i8, ptr %186, i32 %175
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %190, ptr noundef align 1 dereferenceable(16) %191, i32 16, i1 false) #11
  %194 = icmp slt i32 %192, 17
  br i1 %194, label %238, label %195

195:                                              ; preds = %189
  %196 = getelementptr i8, ptr %186, i32 32
  br label %197

197:                                              ; preds = %197, %195
  %198 = phi ptr [ %191, %195 ], [ %202, %197 ]
  %199 = phi ptr [ %196, %195 ], [ %203, %197 ]
  %200 = getelementptr i8, ptr %198, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %199, ptr noundef align 1 dereferenceable(16) %200, i32 16, i1 false) #11
  %201 = getelementptr i8, ptr %199, i32 16
  %202 = getelementptr i8, ptr %198, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %201, ptr noundef align 1 dereferenceable(16) %202, i32 16, i1 false) #11
  %203 = getelementptr i8, ptr %199, i32 32
  %204 = icmp ult ptr %203, %193
  br i1 %204, label %197, label %238

205:                                              ; preds = %174
  %206 = ptrtoint ptr %181 to i32
  %207 = icmp ult ptr %43, %179
  br i1 %207, label %223, label %208

208:                                              ; preds = %205
  %209 = ptrtoint ptr %179 to i32
  %210 = sub i32 %45, %209
  %211 = getelementptr i8, ptr %183, i32 %210
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %183, ptr noundef align 1 dereferenceable(16) %179, i32 16, i1 false) #11
  %212 = icmp slt i32 %210, 17
  br i1 %212, label %223, label %213

213:                                              ; preds = %208
  %214 = getelementptr i8, ptr %183, i32 16
  br label %215

215:                                              ; preds = %215, %213
  %216 = phi ptr [ %179, %213 ], [ %220, %215 ]
  %217 = phi ptr [ %214, %213 ], [ %221, %215 ]
  %218 = getelementptr i8, ptr %216, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %217, ptr noundef align 1 dereferenceable(16) %218, i32 16, i1 false) #11
  %219 = getelementptr i8, ptr %217, i32 16
  %220 = getelementptr i8, ptr %216, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %219, ptr noundef align 1 dereferenceable(16) %220, i32 16, i1 false) #11
  %221 = getelementptr i8, ptr %217, i32 32
  %222 = icmp ult ptr %221, %211
  br i1 %222, label %215, label %223

223:                                              ; preds = %215, %208, %205
  %224 = phi ptr [ %43, %208 ], [ %179, %205 ], [ %43, %215 ]
  %225 = phi ptr [ %211, %208 ], [ %183, %205 ], [ %211, %215 ]
  %226 = icmp ult ptr %224, %181
  br i1 %226, label %227, label %238

227:                                              ; preds = %223
  %228 = ptrtoint ptr %224 to i32
  %229 = sub i32 %206, %228
  %230 = getelementptr i8, ptr %224, i32 %229
  br label %231

231:                                              ; preds = %231, %227
  %232 = phi ptr [ %236, %231 ], [ %225, %227 ]
  %233 = phi ptr [ %234, %231 ], [ %224, %227 ]
  %234 = getelementptr i8, ptr %233, i32 1
  %235 = load i8, ptr %233, align 1
  %236 = getelementptr i8, ptr %232, i32 1
  store i8 %235, ptr %232, align 1
  %237 = icmp eq ptr %234, %230
  br i1 %237, label %238, label %231

238:                                              ; preds = %231, %223, %197, %189
  %239 = load ptr, ptr %44, align 4
  %240 = getelementptr i8, ptr %239, i32 %175
  store ptr %240, ptr %44, align 4
  %241 = icmp ugt i32 %175, 65535
  br i1 %241, label %242, label %249

242:                                              ; preds = %238
  store i32 1, ptr %46, align 4
  %243 = load ptr, ptr %47, align 4
  %244 = load ptr, ptr %2, align 4
  %245 = ptrtoint ptr %243 to i32
  %246 = ptrtoint ptr %244 to i32
  %247 = sub i32 %245, %246
  %248 = ashr exact i32 %247, 3
  store i32 %248, ptr %48, align 4
  br label %249

249:                                              ; preds = %242, %238, %187
  %250 = trunc i32 %175 to i16
  %251 = load ptr, ptr %47, align 4
  %252 = getelementptr inbounds %struct.seqDef_s, ptr %251, i32 0, i32 1
  store i16 %250, ptr %252, align 4
  %253 = add i32 %155, 3
  %254 = load ptr, ptr %47, align 4
  store i32 %253, ptr %254, align 4
  %255 = icmp ugt i32 %180, 65535
  br i1 %255, label %258, label %256

256:                                              ; preds = %249
  %257 = load ptr, ptr %47, align 4
  br label %265

258:                                              ; preds = %249
  store i32 2, ptr %46, align 4
  %259 = load ptr, ptr %47, align 4
  %260 = load ptr, ptr %2, align 4
  %261 = ptrtoint ptr %259 to i32
  %262 = ptrtoint ptr %260 to i32
  %263 = sub i32 %261, %262
  %264 = ashr exact i32 %263, 3
  store i32 %264, ptr %48, align 4
  br label %265

265:                                              ; preds = %258, %256
  %266 = phi ptr [ %257, %256 ], [ %259, %258 ]
  %267 = trunc i32 %180 to i16
  %268 = getelementptr inbounds %struct.seqDef_s, ptr %266, i32 0, i32 2
  store i16 %267, ptr %268, align 2
  %269 = load ptr, ptr %47, align 4
  %270 = getelementptr %struct.seqDef_s, ptr %269, i32 1
  store ptr %270, ptr %47, align 4
  %271 = getelementptr i8, ptr %177, i32 %156
  %272 = load i32, ptr %32, align 4
  %273 = load i32, ptr %33, align 4
  %274 = icmp ult i32 %272, %273
  %275 = icmp ult ptr %271, %28
  %276 = select i1 %274, i1 %275, i1 false
  br i1 %276, label %85, label %277

277:                                              ; preds = %265, %154, %108, %31
  %278 = phi ptr [ %4, %31 ], [ %88, %108 ], [ %88, %154 ], [ %271, %265 ]
  %279 = getelementptr inbounds %struct.ZSTD_window_t, ptr %1, i32 0, i32 1
  %280 = load ptr, ptr %279, align 4
  %281 = ptrtoint ptr %278 to i32
  %282 = ptrtoint ptr %280 to i32
  %283 = sub i32 %281, %282
  %284 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %1, i32 0, i32 2
  %285 = load i32, ptr %284, align 4
  %286 = add i32 %285, 1024
  %287 = icmp ugt i32 %283, %286
  br i1 %287, label %288, label %293

288:                                              ; preds = %277
  %289 = sub i32 -1024, %285
  %290 = add i32 %289, %283
  %291 = tail call i32 @llvm.umin.i32(i32 %290, i32 512) #11
  %292 = sub i32 %283, %291
  store i32 %292, ptr %284, align 4
  br label %293

293:                                              ; preds = %288, %277
  %294 = load i32, ptr %9, align 4
  switch i32 %294, label %297 [
    i32 1, label %295
    i32 2, label %296
  ]

295:                                              ; preds = %293
  tail call void @ZSTD_fillHashTable(ptr noundef %1, ptr noundef %278, i32 noundef 0) #11
  br label %297

296:                                              ; preds = %293
  tail call void @ZSTD_fillDoubleHashTable(ptr noundef %1, ptr noundef %278, i32 noundef 0) #11
  br label %297

297:                                              ; preds = %296, %295, %293
  %298 = ptrtoint ptr %28 to i32
  %299 = sub i32 %298, %281
  %300 = tail call i32 %27(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %278, i32 noundef %299) #11
  br label %301

301:                                              ; preds = %297, %84, %81
  %302 = phi i32 [ %300, %297 ], [ %52, %81 ], [ %52, %84 ]
  ret i32 %302
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ZSTD_selectBlockCompressor(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @ZSTD_fillHashTable(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ZSTD_fillDoubleHashTable(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i32 0, i32 33}
!10 = !{!11}
!11 = distinct !{!11, !12, !"maybeSplitSequence: argument 0"}
!12 = distinct !{!12, !"maybeSplitSequence"}
