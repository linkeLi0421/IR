; ModuleID = '/llk/IR/drivers/clk/renesas/clk-emev2.c_pt.bc'
source_filename = "../drivers/clk/renesas/clk-emev2.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@__of_table_emev2_smu_clkdiv = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,emev2-smu-clkdiv\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @emev2_smu_clkdiv_init }, section "__clk_of_table", align 4
@__of_table_emev2_smu_gclk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,emev2-smu-gclk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @emev2_smu_gclk_init }, section "__clk_of_table", align 4
@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"drivers/clk/renesas/clk-emev2.c\00", align 1
@smu_base = internal unnamed_addr global ptr null, align 4
@lock = internal global %struct.spinlock zeroinitializer, align 4
@smu_id = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,emev2-smu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__of_table_emev2_smu_clkdiv, ptr @__of_table_emev2_smu_gclk], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @emev2_smu_clkdiv_init(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca [2 x i32], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #3
  store i64 0, ptr %2, align 8, !annotation !8
  %3 = tail call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef 0) #3
  %4 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull %2, i32 noundef 2, i32 noundef 0) #3
  %5 = icmp sgt i32 %4, -1
  br i1 %5, label %7, label %6, !prof !9

6:                                                ; preds = %1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 70, i32 noundef 9, ptr noundef null) #3
  br label %25

7:                                                ; preds = %1
  %8 = load ptr, ptr @smu_base, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  call fastcc void @emev2_smu_init() #4
  %11 = load ptr, ptr @smu_base, align 4
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi ptr [ %11, %10 ], [ %8, %7 ]
  %14 = load ptr, ptr %0, align 4
  %15 = load i32, ptr %2, align 8
  %16 = getelementptr i8, ptr %13, i32 %15
  %17 = getelementptr inbounds [2 x i32], ptr %2, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = trunc i32 %18 to i8
  %20 = call ptr @clk_register_divider_table(ptr noundef null, ptr noundef %14, ptr noundef %3, i32 noundef 0, ptr noundef %16, i8 noundef zeroext %19, i8 noundef zeroext 8, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @lock) #3
  %21 = call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %20) #3
  %22 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = call i32 @clk_register_clkdev(ptr noundef %20, ptr noundef %23, ptr noundef null) #3
  br label %25

25:                                               ; preds = %12, %6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #3
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @emev2_smu_gclk_init(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca [2 x i32], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #3
  store i64 0, ptr %2, align 8, !annotation !8
  %3 = tail call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef 0) #3
  %4 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull %2, i32 noundef 2, i32 noundef 0) #3
  %5 = icmp sgt i32 %4, -1
  br i1 %5, label %7, label %6, !prof !9

6:                                                ; preds = %1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 88, i32 noundef 9, ptr noundef null) #3
  br label %25

7:                                                ; preds = %1
  %8 = load ptr, ptr @smu_base, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  call fastcc void @emev2_smu_init() #4
  %11 = load ptr, ptr @smu_base, align 4
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi ptr [ %11, %10 ], [ %8, %7 ]
  %14 = load ptr, ptr %0, align 4
  %15 = load i32, ptr %2, align 8
  %16 = getelementptr i8, ptr %13, i32 %15
  %17 = getelementptr inbounds [2 x i32], ptr %2, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = trunc i32 %18 to i8
  %20 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %14, ptr noundef %3, i32 noundef 0, ptr noundef %16, i8 noundef zeroext %19, i8 noundef zeroext 0, ptr noundef nonnull @lock) #3
  %21 = call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %20) #3
  %22 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = call i32 @clk_register_clkdev(ptr noundef %20, ptr noundef %23, ptr noundef null) #3
  br label %25

25:                                               ; preds = %12, %6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @emev2_smu_init() unnamed_addr #0 section ".init.text" {
  %1 = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @smu_id, ptr noundef null) #3
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4, !prof !10

3:                                                ; preds = %0
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/renesas/clk-emev2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 45, 0\0A.popsection", ""() #3, !srcloc !11
  unreachable

4:                                                ; preds = %0
  %5 = tail call ptr @of_iomap(ptr noundef nonnull %1, i32 noundef 0) #3
  store ptr %5, ptr @smu_base, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8, !prof !10

7:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/renesas/clk-emev2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 47, 0\0A.popsection", ""() #3, !srcloc !12
  unreachable

8:                                                ; preds = %4
  tail call void @of_node_put(ptr noundef nonnull %1) #3
  %9 = load ptr, ptr @smu_base, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12, !prof !10

11:                                               ; preds = %8
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/renesas/clk-emev2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 31, 0\0A.popsection", ""() #3, !srcloc !13
  unreachable

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %9, i32 1672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 0) #3, !srcloc !14
  %14 = load ptr, ptr @smu_base, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17, !prof !10

16:                                               ; preds = %12
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/renesas/clk-emev2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 31, 0\0A.popsection", ""() #3, !srcloc !13
  unreachable

17:                                               ; preds = %12
  %18 = getelementptr i8, ptr %14, i32 292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 1) #3, !srcloc !14
  %19 = load ptr, ptr @smu_base, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22, !prof !10

21:                                               ; preds = %17
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/renesas/clk-emev2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 31, 0\0A.popsection", ""() #3, !srcloc !13
  unreachable

22:                                               ; preds = %17
  %23 = getelementptr i8, ptr %19, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 2) #3, !srcloc !14
  %24 = load ptr, ptr @smu_base, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27, !prof !10

26:                                               ; preds = %22
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/renesas/clk-emev2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 31, 0\0A.popsection", ""() #3, !srcloc !13
  unreachable

27:                                               ; preds = %22
  %28 = getelementptr i8, ptr %24, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 2) #3, !srcloc !14
  %29 = load ptr, ptr @smu_base, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %32, !prof !10

31:                                               ; preds = %27
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/renesas/clk-emev2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 31, 0\0A.popsection", ""() #3, !srcloc !13
  unreachable

32:                                               ; preds = %27
  %33 = getelementptr i8, ptr %29, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 2) #3, !srcloc !14
  %34 = load ptr, ptr @smu_base, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %37, !prof !10

36:                                               ; preds = %32
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/renesas/clk-emev2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 31, 0\0A.popsection", ""() #3, !srcloc !13
  unreachable

37:                                               ; preds = %32
  %38 = getelementptr i8, ptr %34, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 2) #3, !srcloc !14
  %39 = load ptr, ptr @smu_base, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %42, !prof !10

41:                                               ; preds = %37
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/renesas/clk-emev2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 31, 0\0A.popsection", ""() #3, !srcloc !13
  unreachable

42:                                               ; preds = %37
  %43 = getelementptr i8, ptr %39, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 1) #3, !srcloc !14
  %44 = load ptr, ptr @smu_base, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %47, !prof !10

46:                                               ; preds = %42
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/renesas/clk-emev2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 31, 0\0A.popsection", ""() #3, !srcloc !13
  unreachable

47:                                               ; preds = %42
  %48 = getelementptr i8, ptr %44, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 1) #3, !srcloc !14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_divider_table(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_register_clkdev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_gate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { cold }

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
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2150570180, i64 2150570675, i64 2150570217, i64 2150570273, i64 2150570307, i64 2150570331, i64 2150570372, i64 2150570393, i64 2150570421, i64 2150570455}
!12 = !{i64 2150571223, i64 2150571718, i64 2150571260, i64 2150571316, i64 2150571350, i64 2150571374, i64 2150571415, i64 2150571436, i64 2150571464, i64 2150571498}
!13 = !{i64 2150568737, i64 2150569232, i64 2150568774, i64 2150568830, i64 2150568864, i64 2150568888, i64 2150568929, i64 2150568950, i64 2150568978, i64 2150569012}
!14 = !{i64 2990179}
