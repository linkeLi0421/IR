; ModuleID = '/llk/IR/arch/arm/mach-spear/spear13xx.c_pt.bc'
source_filename = "../arch/arm/mach-spear/spear13xx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.map_desc = type { i32, i32, i32, i32 }

@spear13xx_io_desc = internal global [4 x %struct.map_desc] [%struct.map_desc { i32 -117440512, i32 733184, i32 16777216, i32 0 }, %struct.map_desc { i32 -50331648, i32 917504, i32 16777216, i32 0 }, %struct.map_desc { i32 -67108864, i32 966656, i32 16777216, i32 0 }, %struct.map_desc { i32 -83886080, i32 970752, i32 4096, i32 0 }], section ".init.data", align 4
@__const.spear13xx_timer_init.pclk_name = private unnamed_addr constant [12 x i8] c"osc_24m_clk\00", align 1
@.str = private unnamed_addr constant [5 x i8] c"gpt0\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"\013SPEAr13xx: %s:couldn't get clk for gpt\0A\00", align 1
@__func__.spear13xx_timer_init = private unnamed_addr constant [21 x i8] c"spear13xx_timer_init\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"\013SPEAr13xx: %s:couldn't get %s as parent for gpt\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"st,spear1310\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"st,spear1340\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"\013SPEAr13xx: %s: Unknown machine\0A\00", align 1
@__func__.spear13xx_clk_init = private unnamed_addr constant [19 x i8] c"spear13xx_clk_init\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @spear13xx_l2x0_init() local_unnamed_addr #0 section ".init.text" {
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -83882144 to ptr), i32 6) #5, !srcloc !8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -83885816 to ptr), i32 545) #5, !srcloc !8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -83885812 to ptr), i32 1089) #5, !srcloc !8
  tail call void @l2x0_init(ptr noundef nonnull inttoptr (i32 -83886080 to ptr), i32 noundef 815792129, i32 noundef -32505857) #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @l2x0_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1 section ".init.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @spear13xx_map_io() local_unnamed_addr #0 section ".init.text" {
  tail call void @iotable_init(ptr noundef nonnull @spear13xx_io_desc, i32 noundef 4) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iotable_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @spear13xx_timer_init() local_unnamed_addr #0 section ".init.text" {
  %1 = alloca [12 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %1) #5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(12) %1, ptr noundef nonnull align 1 dereferenceable(12) @__const.spear13xx_timer_init.pclk_name, i32 12, i1 false)
  tail call fastcc void @spear13xx_clk_init() #7
  %2 = tail call ptr @clk_get_sys(ptr noundef nonnull @.str, ptr noundef null) #5
  %3 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.spear13xx_timer_init) #6
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-spear/spear13xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #5, !srcloc !9
  unreachable

6:                                                ; preds = %0
  %7 = call ptr @clk_get(ptr noundef null, ptr noundef nonnull %1) #5
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.spear13xx_timer_init, ptr noundef nonnull %1) #6
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-spear/spear13xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 120, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

11:                                               ; preds = %6
  %12 = call i32 @clk_set_parent(ptr noundef %2, ptr noundef %7) #5
  call void @clk_put(ptr noundef %2) #5
  call void @clk_put(ptr noundef %7) #5
  call void @spear_setup_of_timer() #6
  call void @timer_probe() #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %1) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @spear13xx_clk_init() unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.3) #5
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @spear1310_clk_init(ptr noundef nonnull inttoptr (i32 -42991616 to ptr), ptr noundef nonnull inttoptr (i32 -96468992 to ptr)) #6
  br label %10

4:                                                ; preds = %0
  %5 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.4) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @spear1340_clk_init(ptr noundef nonnull inttoptr (i32 -42991616 to ptr)) #6
  br label %10

8:                                                ; preds = %4
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.spear13xx_clk_init) #6
  br label %10

10:                                               ; preds = %8, %7, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_sys(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @spear_setup_of_timer() local_unnamed_addr #1 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @timer_probe() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @spear1310_clk_init(ptr noundef, ptr noundef) local_unnamed_addr #1 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @spear1340_clk_init(ptr noundef) local_unnamed_addr #1 section ".init.text"

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }
attributes #7 = { cold }

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
!8 = !{i64 2828070}
!9 = !{i64 2153038855, i64 2153039351, i64 2153038892, i64 2153038948, i64 2153038982, i64 2153039006, i64 2153039047, i64 2153039068, i64 2153039096, i64 2153039130}
!10 = !{i64 2153040420, i64 2153040916, i64 2153040457, i64 2153040513, i64 2153040547, i64 2153040571, i64 2153040612, i64 2153040633, i64 2153040661, i64 2153040695}
