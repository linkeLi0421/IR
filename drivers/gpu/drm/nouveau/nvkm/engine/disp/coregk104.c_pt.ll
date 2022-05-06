; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/disp/coregk104.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/coregk104.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nv50_disp_mthd_list = type { i32, i32, [0 x %struct.anon] }
%struct.anon = type { i32, i32, ptr }
%struct.anon.0 = type { ptr, i32, ptr }
%struct.nv50_disp_chan_func = type { ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [5 x i8] c"Core\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Global\00", align 1
@gf119_disp_core_mthd_base = external dso_local constant %struct.nv50_disp_mthd_list, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"DAC\00", align 1
@gf119_disp_core_mthd_dac = external dso_local constant %struct.nv50_disp_mthd_list, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"SOR\00", align 1
@gf119_disp_core_mthd_sor = external dso_local constant %struct.nv50_disp_mthd_list, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"PIOR\00", align 1
@gf119_disp_core_mthd_pior = external dso_local constant %struct.nv50_disp_mthd_list, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@gk104_disp_core_mthd = dso_local constant { ptr, i32, i32, [6 x %struct.anon.0] } { ptr @.str, i32 0, i32 -131072, [6 x %struct.anon.0] [%struct.anon.0 { ptr @.str.1, i32 1, ptr @gf119_disp_core_mthd_base }, %struct.anon.0 { ptr @.str.2, i32 3, ptr @gf119_disp_core_mthd_dac }, %struct.anon.0 { ptr @.str.3, i32 8, ptr @gf119_disp_core_mthd_sor }, %struct.anon.0 { ptr @.str.4, i32 4, ptr @gf119_disp_core_mthd_pior }, %struct.anon.0 { ptr @.str.5, i32 4, ptr @gk104_disp_core_mthd_head }, %struct.anon.0 zeroinitializer] }, align 4
@gf119_disp_core_func = external dso_local constant %struct.nv50_disp_chan_func, align 4
@gk104_disp_core_mthd_head = internal constant { i32, i32, [71 x %struct.anon] } { i32 768, i32 768, [71 x %struct.anon] [%struct.anon { i32 1024, i32 6685696, ptr null }, %struct.anon { i32 1028, i32 6685700, ptr null }, %struct.anon { i32 1032, i32 6685704, ptr null }, %struct.anon { i32 1036, i32 6685708, ptr null }, %struct.anon { i32 1040, i32 6685712, ptr null }, %struct.anon { i32 1044, i32 6685716, ptr null }, %struct.anon { i32 1048, i32 6685720, ptr null }, %struct.anon { i32 1052, i32 6685724, ptr null }, %struct.anon { i32 1056, i32 6685728, ptr null }, %struct.anon { i32 1060, i32 6685732, ptr null }, %struct.anon { i32 1064, i32 6685736, ptr null }, %struct.anon { i32 1068, i32 6685740, ptr null }, %struct.anon { i32 1072, i32 6685744, ptr null }, %struct.anon { i32 1076, i32 6685748, ptr null }, %struct.anon { i32 1080, i32 6685752, ptr null }, %struct.anon { i32 1088, i32 6685760, ptr null }, %struct.anon { i32 1092, i32 6685764, ptr null }, %struct.anon { i32 1096, i32 6685768, ptr null }, %struct.anon { i32 1100, i32 6685772, ptr null }, %struct.anon { i32 1104, i32 6685776, ptr null }, %struct.anon { i32 1108, i32 6685780, ptr null }, %struct.anon { i32 1112, i32 6685784, ptr null }, %struct.anon { i32 1116, i32 6685788, ptr null }, %struct.anon { i32 1120, i32 6685792, ptr null }, %struct.anon { i32 1128, i32 6685800, ptr null }, %struct.anon { i32 1132, i32 6685804, ptr null }, %struct.anon { i32 1136, i32 6685808, ptr null }, %struct.anon { i32 1140, i32 6685812, ptr null }, %struct.anon { i32 1148, i32 6685820, ptr null }, %struct.anon { i32 1152, i32 6685824, ptr null }, %struct.anon { i32 1156, i32 6685828, ptr null }, %struct.anon { i32 1160, i32 6685832, ptr null }, %struct.anon { i32 1164, i32 6685836, ptr null }, %struct.anon { i32 1168, i32 6685840, ptr null }, %struct.anon { i32 1172, i32 6685844, ptr null }, %struct.anon { i32 1176, i32 6685848, ptr null }, %struct.anon { i32 1184, i32 6685856, ptr null }, %struct.anon { i32 1200, i32 6685872, ptr null }, %struct.anon { i32 1208, i32 6685880, ptr null }, %struct.anon { i32 1212, i32 6685884, ptr null }, %struct.anon { i32 1216, i32 6685888, ptr null }, %struct.anon { i32 1220, i32 6685892, ptr null }, %struct.anon { i32 1224, i32 6685896, ptr null }, %struct.anon { i32 1232, i32 6685904, ptr null }, %struct.anon { i32 1236, i32 6685908, ptr null }, %struct.anon { i32 1248, i32 6685920, ptr null }, %struct.anon { i32 1252, i32 6685924, ptr null }, %struct.anon { i32 1256, i32 6685928, ptr null }, %struct.anon { i32 1260, i32 6685932, ptr null }, %struct.anon { i32 1264, i32 6685936, ptr null }, %struct.anon { i32 1268, i32 6685940, ptr null }, %struct.anon { i32 1272, i32 6685944, ptr null }, %struct.anon { i32 1276, i32 6685948, ptr null }, %struct.anon { i32 1280, i32 6685952, ptr null }, %struct.anon { i32 1284, i32 6685956, ptr null }, %struct.anon { i32 1288, i32 6685960, ptr null }, %struct.anon { i32 1292, i32 6685964, ptr null }, %struct.anon { i32 1296, i32 6685968, ptr null }, %struct.anon { i32 1300, i32 6685972, ptr null }, %struct.anon { i32 1304, i32 6685976, ptr null }, %struct.anon { i32 1308, i32 6685980, ptr null }, %struct.anon { i32 1312, i32 6685984, ptr null }, %struct.anon { i32 1316, i32 6685988, ptr null }, %struct.anon { i32 1324, i32 6685996, ptr null }, %struct.anon { i32 1328, i32 6686000, ptr null }, %struct.anon { i32 1356, i32 6686028, ptr null }, %struct.anon { i32 1360, i32 6686032, ptr null }, %struct.anon { i32 1364, i32 6686036, ptr null }, %struct.anon { i32 1368, i32 6686040, ptr null }, %struct.anon { i32 1372, i32 6686044, ptr null }, %struct.anon zeroinitializer] }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gk104_disp_core_new(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call i32 @nv50_disp_core_new_(ptr noundef nonnull @gf119_disp_core_func, ptr noundef nonnull @gk104_disp_core_mthd, ptr noundef %3, i32 noundef 0, ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #2
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_disp_core_new_(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }

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
