; ModuleID = '/llk/IR/arch/arm/mach-zynq/slcr.c_pt.bc'
source_filename = "../arch/arm/mach-zynq/slcr.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.notifier_block = type { ptr, ptr, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@zynq_slcr_base = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [15 x i8] c"xlnx,zynq-slcr\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"\013%s: no slcr node found\0A\00", align 1
@__func__.zynq_early_slcr_init = private unnamed_addr constant [21 x i8] c"zynq_early_slcr_init\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"\013%s: Unable to map I/O memory\0A\00", align 1
@zynq_slcr_regmap = internal unnamed_addr global ptr null, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"\013%s: failed to find zynq-slcr\0A\00", align 1
@zynq_slcr_restart_nb = internal global %struct.notifier_block { ptr @zynq_slcr_system_restart, ptr null, i32 192 }, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"\016%pOFn mapped to %p\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @zynq_slcr_get_device_id() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #5
  store i32 0, ptr %1, align 4, !annotation !8
  %2 = load ptr, ptr @zynq_slcr_regmap, align 4
  %3 = call i32 @regmap_read(ptr noundef %2, i32 noundef 1328, ptr noundef nonnull %1) #5
  %4 = load i32, ptr %1, align 4
  %5 = lshr i32 %4, 12
  %6 = and i32 %5, 31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #5
  ret i32 %6
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @zynq_slcr_cpu_start(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = load ptr, ptr @zynq_slcr_regmap, align 4
  %4 = call i32 @regmap_read(ptr noundef %3, i32 noundef 580, ptr noundef nonnull %2) #5
  %5 = shl nuw i32 1, %0
  %6 = xor i32 %5, -1
  %7 = load i32, ptr %2, align 4
  %8 = and i32 %7, %6
  store i32 %8, ptr %2, align 4
  %9 = load ptr, ptr @zynq_slcr_regmap, align 4
  %10 = call i32 @regmap_write(ptr noundef %9, i32 noundef 580, i32 noundef %8) #5
  %11 = shl i32 16, %0
  %12 = xor i32 %11, -1
  %13 = load i32, ptr %2, align 4
  %14 = and i32 %13, %12
  store i32 %14, ptr %2, align 4
  %15 = load ptr, ptr @zynq_slcr_regmap, align 4
  %16 = call i32 @regmap_write(ptr noundef %15, i32 noundef 580, i32 noundef %14) #5
  %17 = load ptr, ptr @zynq_slcr_base, align 4
  %18 = getelementptr i8, ptr %17, i32 600
  %19 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #5, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %20 = lshr i32 -2147483648, %0
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  call void @arm_heavy_mb() #5
  %23 = load ptr, ptr @zynq_slcr_base, align 4
  %24 = getelementptr i8, ptr %23, i32 600
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #5, !srcloc !12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @zynq_slcr_cpu_state_write(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @zynq_slcr_base, align 4
  %4 = getelementptr i8, ptr %3, i32 600
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %6 = lshr i32 -2147483648, %0
  %7 = or i32 %5, %6
  %8 = xor i32 %6, -1
  %9 = and i32 %5, %8
  %10 = select i1 %1, i32 %7, i32 %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  %11 = load ptr, ptr @zynq_slcr_base, align 4
  %12 = getelementptr i8, ptr %11, i32 600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #5, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @zynq_slcr_cpu_stop(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = load ptr, ptr @zynq_slcr_regmap, align 4
  %4 = call i32 @regmap_read(ptr noundef %3, i32 noundef 580, ptr noundef nonnull %2) #5
  %5 = shl i32 17, %0
  %6 = load i32, ptr %2, align 4
  %7 = or i32 %6, %5
  store i32 %7, ptr %2, align 4
  %8 = load ptr, ptr @zynq_slcr_regmap, align 4
  %9 = call i32 @regmap_write(ptr noundef %8, i32 noundef 580, i32 noundef %7) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @zynq_slcr_cpu_state_read(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @zynq_slcr_base, align 4
  %3 = getelementptr i8, ptr %2, i32 600
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !13
  %5 = lshr i32 -2147483648, %0
  %6 = and i32 %4, %5
  %7 = icmp eq i32 %6, 0
  ret i1 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @zynq_early_slcr_init() local_unnamed_addr #3 section ".init.text" {
  %1 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str) #5
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.zynq_early_slcr_init) #6
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-zynq/slcr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 202, 0\0A.popsection", ""() #5, !srcloc !14
  unreachable

5:                                                ; preds = %0
  %6 = tail call ptr @of_iomap(ptr noundef nonnull %1, i32 noundef 0) #5
  store ptr %6, ptr @zynq_slcr_base, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.zynq_early_slcr_init) #6
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-zynq/slcr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 208, 0\0A.popsection", ""() #5, !srcloc !15
  unreachable

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 11
  store ptr %6, ptr %11, align 4
  %12 = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str) #5
  store ptr %12, ptr @zynq_slcr_regmap, align 4
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.zynq_early_slcr_init) #6
  br label %23

16:                                               ; preds = %10
  %17 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 8, i32 noundef 57101) #5
  %18 = load ptr, ptr @zynq_slcr_regmap, align 4
  %19 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 2588, i32 noundef 460551, i32 noundef 131586, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %20 = tail call i32 @register_restart_handler(ptr noundef nonnull @zynq_slcr_restart_nb) #5
  %21 = load ptr, ptr @zynq_slcr_base, align 4
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull %1, ptr noundef %21) #6
  tail call void @of_node_put(ptr noundef nonnull %1) #5
  br label %23

23:                                               ; preds = %16, %14
  %24 = phi i32 [ -19, %14 ], [ 0, %16 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_restart_handler(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @zynq_slcr_system_restart(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = load ptr, ptr @zynq_slcr_regmap, align 4
  %6 = call i32 @regmap_read(ptr noundef %5, i32 noundef 600, ptr noundef nonnull %4) #5
  %7 = load i32, ptr %4, align 4
  %8 = and i32 %7, -251658241
  %9 = load ptr, ptr @zynq_slcr_regmap, align 4
  %10 = call i32 @regmap_write(ptr noundef %9, i32 noundef 600, i32 noundef %8) #5
  %11 = load ptr, ptr @zynq_slcr_regmap, align 4
  %12 = call i32 @regmap_write(ptr noundef %11, i32 noundef 512, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  ret i32 0
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
!9 = !{i64 364980}
!10 = !{i64 2150973819}
!11 = !{i64 2150974017}
!12 = !{i64 364562}
!13 = !{i64 2150973464}
!14 = !{i64 2150975020, i64 2150975510, i64 2150975057, i64 2150975113, i64 2150975147, i64 2150975171, i64 2150975212, i64 2150975233, i64 2150975261, i64 2150975295}
!15 = !{i64 2150976414, i64 2150976904, i64 2150976451, i64 2150976507, i64 2150976541, i64 2150976565, i64 2150976606, i64 2150976627, i64 2150976655, i64 2150976689}
