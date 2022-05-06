; ModuleID = '/llk/IR/drivers/soc/ux500/ux500-soc-id.c_pt.bc'
source_filename = "../drivers/soc/ux500/ux500-soc-id.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_ux500_soc_id__220_227_ux500_soc_device_init4 = internal global ptr @ux500_soc_device_init, section ".initcall4.init", align 4
@.str = private unnamed_addr constant [21 x i8] c"ste,dbx500-backupram\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"\013Unable to identify SoC\0A\00", align 1
@dbx500_id.0 = internal unnamed_addr global i16 0, align 2
@dbx500_id.1 = internal unnamed_addr global i8 0, align 2
@dbx500_id.2 = internal unnamed_addr global i8 0, align 2
@.str.2 = private unnamed_addr constant [9 x i8] c"\016DB%4x \00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"\01cEarly Drop\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"\01cv%d.%d\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"\01cUnknown\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"\01c [%#010x]\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"%08x%08x%08x%08x%08x\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"DB%4x\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"ux500\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"ED\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"%d.%d\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@ux500_soc_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ux500_soc_attrs, ptr null }, align 4
@ux500_soc_attrs = internal global [2 x ptr] [ptr @dev_attr_process, ptr null], align 4
@dev_attr_process = internal global %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 292 }, ptr @process_show, ptr null }, align 4
@.str.14 = private unnamed_addr constant [8 x i8] c"process\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"Standard\0A\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"%02xnm\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_ux500_soc_id__220_227_ux500_soc_device_init4], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ux500_soc_device_init() #0 section ".init.text" {
  %1 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str) #7
  %2 = icmp eq ptr %1, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %0
  tail call fastcc void @ux500_setup_id() #8
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 28) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @of_node_put(ptr noundef nonnull %1) #7
  br label %13

8:                                                ; preds = %3
  tail call fastcc void @soc_info_populate(ptr noundef nonnull %5, ptr noundef nonnull %1) #8
  tail call void @of_node_put(ptr noundef nonnull %1) #7
  %9 = tail call ptr @soc_device_register(ptr noundef nonnull %5) #7
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  tail call void @kfree(ptr noundef nonnull %5) #7
  %12 = ptrtoint ptr %9 to i32
  br label %13

13:                                               ; preds = %11, %8, %7, %0
  %14 = phi i32 [ %12, %11 ], [ -12, %7 ], [ 0, %0 ], [ 0, %8 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @ux500_setup_id() unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #10, !srcloc !8
  switch i32 %1, label %13 [
    i32 1091551376, label %7
    i32 1092599953, label %7
    i32 1093648529, label %2
    i32 1094697104, label %6
  ]

2:                                                ; preds = %0
  %3 = tail call fastcc i32 @ux500_read_asicid(i32 noundef -1878926348) #8
  %4 = lshr i32 %3, 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %7 [
    i16 -31488, label %10
    i16 -31456, label %10
  ]

6:                                                ; preds = %0
  br label %7

7:                                                ; preds = %6, %2, %0, %0
  %8 = phi i32 [ -9228, %6 ], [ -1878917132, %0 ], [ -1878917132, %0 ], [ -1878917132, %2 ]
  %9 = tail call fastcc i32 @ux500_read_asicid(i32 noundef %8) #8
  br label %10

10:                                               ; preds = %7, %2, %2
  %11 = phi i32 [ %9, %7 ], [ %3, %2 ], [ %3, %2 ]
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10, %0
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #11
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/soc/ux500/ux500-soc-id.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 116, 0\0A.popsection", ""() #7, !srcloc !9
  unreachable

15:                                               ; preds = %10
  %16 = lshr i32 %11, 24
  %17 = trunc i32 %16 to i8
  store i8 %17, ptr @dbx500_id.2, align 2
  %18 = lshr i32 %11, 8
  %19 = trunc i32 %18 to i16
  store i16 %19, ptr @dbx500_id.0, align 2
  %20 = trunc i32 %11 to i8
  store i8 %20, ptr @dbx500_id.1, align 2
  %21 = and i32 %18, 65535
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %21) #11
  %23 = icmp eq i8 %20, 1
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  br label %36

26:                                               ; preds = %15
  %27 = icmp ugt i8 %20, -97
  br i1 %27, label %28, label %34

28:                                               ; preds = %26
  %29 = lshr i32 %11, 4
  %30 = and i32 %29, 15
  %31 = add nsw i32 %30, -9
  %32 = and i32 %11, 15
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %31, i32 noundef %32) #11
  br label %36

34:                                               ; preds = %26
  %35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #11
  br label %36

36:                                               ; preds = %34, %28, %24
  %37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %11) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @soc_info_populate(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #0 section ".init.text" {
  %3 = tail call ptr @of_iomap(ptr noundef %1, i32 noundef 0) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %2
  %6 = getelementptr i8, ptr %3, i32 8128
  tail call void @add_device_randomness(ptr noundef %6, i32 noundef 20) #7
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %8 = getelementptr i8, ptr %3, i32 8132
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %10 = getelementptr i8, ptr %3, i32 8136
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  %12 = getelementptr i8, ptr %3, i32 8140
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %14 = getelementptr i8, ptr %3, i32 8144
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  %16 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.7, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15) #7
  tail call void @iounmap(ptr noundef nonnull %3) #7
  br label %17

17:                                               ; preds = %5, %2
  %18 = phi ptr [ %16, %5 ], [ null, %2 ]
  %19 = getelementptr inbounds %struct.soc_device_attribute, ptr %0, i32 0, i32 4
  store ptr %18, ptr %19, align 4
  %20 = load i16, ptr @dbx500_id.0, align 2
  %21 = zext i16 %20 to i32
  %22 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.8, i32 noundef %21) #7
  store ptr %22, ptr %0, align 4
  %23 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.9) #7
  %24 = getelementptr inbounds %struct.soc_device_attribute, ptr %0, i32 0, i32 1
  store ptr %23, ptr %24, align 4
  %25 = tail call fastcc ptr @ux500_get_revision() #8
  %26 = getelementptr inbounds %struct.soc_device_attribute, ptr %0, i32 0, i32 2
  store ptr %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.soc_device_attribute, ptr %0, i32 0, i32 6
  store ptr @ux500_soc_group, ptr %27, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @ux500_read_asicid(i32 noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = tail call ptr @ioremap(i32 noundef %0, i32 noundef 4) #7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !16
  tail call void @iounmap(ptr noundef nonnull %2) #7
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  ret i32 %7
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc noalias ptr @ux500_get_revision() unnamed_addr #0 section ".init.text" {
  %1 = load i8, ptr @dbx500_id.1, align 2
  %2 = zext i8 %1 to i32
  %3 = icmp eq i8 %1, 1
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #7
  br label %15

6:                                                ; preds = %0
  %7 = icmp ugt i8 %1, -97
  br i1 %7, label %8, label %13

8:                                                ; preds = %6
  %9 = lshr i32 %2, 4
  %10 = add nsw i32 %9, -9
  %11 = and i32 %2, 15
  %12 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.12, i32 noundef %10, i32 noundef %11) #7
  br label %15

13:                                               ; preds = %6
  %14 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.13) #7
  br label %15

15:                                               ; preds = %13, %8, %4
  %16 = phi ptr [ %5, %4 ], [ %12, %8 ], [ %14, %13 ]
  ret ptr %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_device_randomness(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @process_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = load i8, ptr @dbx500_id.2, align 2
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(10) %2, ptr noundef nonnull align 1 dereferenceable(10) @.str.15, i32 10, i1 false)
  br label %10

7:                                                ; preds = %3
  %8 = zext i8 %4 to i32
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.16, i32 noundef %8)
  br label %10

10:                                               ; preds = %7, %6
  %11 = phi i32 [ 9, %6 ], [ %9, %7 ]
  ret i32 %11
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind readnone }
attributes #11 = { cold nounwind }

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
!8 = !{i64 2151433461}
!9 = !{i64 2152710211, i64 2152710708, i64 2152710248, i64 2152710304, i64 2152710338, i64 2152710362, i64 2152710403, i64 2152710424, i64 2152710452, i64 2152710486}
!10 = !{i64 948878}
!11 = !{i64 2152713555}
!12 = !{i64 2152713874}
!13 = !{i64 2152714193}
!14 = !{i64 2152714512}
!15 = !{i64 2152714831}
!16 = !{i64 2152707659}
