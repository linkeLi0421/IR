; ModuleID = '/llk/IR/drivers/gpu/drm/rcar-du/rcar_cmm.c_pt.bc'
source_filename = "../drivers/gpu/drm/rcar-du/rcar_cmm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rcar_cmm_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22rcar_cmm_setup\22\09\09\09\09\09"
module asm "__kstrtabns_rcar_cmm_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rcar_cmm_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22rcar_cmm_enable\22\09\09\09\09\09"
module asm "__kstrtabns_rcar_cmm_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rcar_cmm_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22rcar_cmm_disable\22\09\09\09\09\09"
module asm "__kstrtabns_rcar_cmm_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rcar_cmm_init:\09\09\09\09\09"
module asm "\09.asciz \09\22rcar_cmm_init\22\09\09\09\09\09"
module asm "__kstrtabns_rcar_cmm_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.rcar_cmm = type { ptr, %struct.anon.6 }
%struct.anon.6 = type { i8 }
%struct.drm_color_lut = type { i16, i16, i16, i16 }

@__kstrtab_rcar_cmm_setup = external dso_local constant [0 x i8], align 1
@__kstrtabns_rcar_cmm_setup = external dso_local constant [0 x i8], align 1
@__ksymtab_rcar_cmm_setup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rcar_cmm_setup to i32), ptr @__kstrtab_rcar_cmm_setup, ptr @__kstrtabns_rcar_cmm_setup }, section "___ksymtab_gpl+rcar_cmm_setup", align 4
@__kstrtab_rcar_cmm_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_rcar_cmm_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_rcar_cmm_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rcar_cmm_enable to i32), ptr @__kstrtab_rcar_cmm_enable, ptr @__kstrtabns_rcar_cmm_enable }, section "___ksymtab_gpl+rcar_cmm_enable", align 4
@__kstrtab_rcar_cmm_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_rcar_cmm_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_rcar_cmm_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rcar_cmm_disable to i32), ptr @__kstrtab_rcar_cmm_disable, ptr @__kstrtabns_rcar_cmm_disable }, section "___ksymtab_gpl+rcar_cmm_disable", align 4
@__kstrtab_rcar_cmm_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_rcar_cmm_init = external dso_local constant [0 x i8], align 1
@__ksymtab_rcar_cmm_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rcar_cmm_init to i32), ptr @__kstrtab_rcar_cmm_init, ptr @__kstrtabns_rcar_cmm_init }, section "___ksymtab_gpl+rcar_cmm_init", align 4
@rcar_cmm_of_table = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen3-cmm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen2-cmm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author167 = internal constant [48 x i8] c"author=Jacopo Mondi <jacopo+renesas@jmondi.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description168 = internal constant [37 x i8] c"description=Renesas R-Car CMM Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license169 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@rcar_cmm_platform_driver = internal global %struct.platform_driver { ptr @rcar_cmm_probe, ptr @rcar_cmm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rcar_cmm_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [9 x i8] c"rcar-cmm\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author167, ptr @__UNIQUE_ID_description168, ptr @__UNIQUE_ID_license169, ptr @__ksymtab_rcar_cmm_disable, ptr @__ksymtab_rcar_cmm_enable, ptr @__ksymtab_rcar_cmm_init, ptr @__ksymtab_rcar_cmm_setup], section "llvm.metadata"

@__mod_of__rcar_cmm_of_table_device_table = dso_local alias [3 x %struct.of_device_id], ptr @rcar_cmm_of_table

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rcar_cmm_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %1, align 4
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds %struct.rcar_cmm, ptr %4, i32 0, i32 1
  %8 = load i8, ptr %7, align 4, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %6, label %10, label %13

10:                                               ; preds = %2
  br i1 %9, label %49, label %11

11:                                               ; preds = %10
  %12 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 0) #5, !srcloc !10
  store i8 0, ptr %7, align 4
  br label %49

13:                                               ; preds = %2
  br i1 %9, label %14, label %17

14:                                               ; preds = %13
  %15 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 1) #5, !srcloc !10
  store i8 1, ptr %7, align 4
  %16 = load ptr, ptr %1, align 4
  br label %17

17:                                               ; preds = %14, %13
  %18 = phi ptr [ %16, %14 ], [ %5, %13 ]
  br label %19

19:                                               ; preds = %19, %17
  %20 = phi i32 [ 0, %17 ], [ %47, %19 ]
  %21 = getelementptr %struct.drm_color_lut, ptr %18, i32 %20
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i32
  %24 = add nuw nsw i32 %23, 128
  %25 = lshr i32 %24, 8
  %26 = tail call i32 @llvm.umin.i32(i32 %25, i32 255) #5
  %27 = shl nuw nsw i32 %26, 16
  %28 = getelementptr %struct.drm_color_lut, ptr %18, i32 %20, i32 1
  %29 = load i16, ptr %28, align 2
  %30 = zext i16 %29 to i32
  %31 = add nuw nsw i32 %30, 128
  %32 = lshr i32 %31, 8
  %33 = tail call i32 @llvm.umin.i32(i32 %32, i32 255) #5
  %34 = shl nuw nsw i32 %33, 8
  %35 = or i32 %34, %27
  %36 = getelementptr %struct.drm_color_lut, ptr %18, i32 %20, i32 2
  %37 = load i16, ptr %36, align 2
  %38 = zext i16 %37 to i32
  %39 = add nuw nsw i32 %38, 128
  %40 = lshr i32 %39, 8
  %41 = tail call i32 @llvm.umin.i32(i32 %40, i32 255) #5
  %42 = or i32 %35, %41
  %43 = shl nuw nsw i32 %20, 2
  %44 = add nuw nsw i32 %43, 1536
  %45 = load ptr, ptr %4, align 4
  %46 = getelementptr i8, ptr %45, i32 %44
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %42) #5, !srcloc !10
  %47 = add nuw nsw i32 %20, 1
  %48 = icmp eq i32 %47, 256
  br i1 %48, label %49, label %19

49:                                               ; preds = %19, %11, %10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rcar_cmm_enable(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call i32 @__pm_runtime_resume(ptr noundef %2, i32 noundef 4) #5
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #5, !srcloc !12
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 0, i32 -1, ptr elementtype(i32) %6) #5, !srcloc !13
  %8 = extractvalue { i32, i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !14
  br label %11

11:                                               ; preds = %10, %5, %1
  %12 = phi i32 [ 0, %1 ], [ %3, %5 ], [ %3, %10 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rcar_cmm_disable(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 0) #5, !srcloc !10
  %5 = getelementptr inbounds %struct.rcar_cmm, ptr %3, i32 0, i32 1
  store i8 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %7 = tail call i32 @__pm_runtime_idle(ptr noundef %6, i32 noundef 5) #5
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @rcar_cmm_init(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  %5 = select i1 %4, i32 -517, i32 0
  ret i32 %5
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #2 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @rcar_cmm_platform_driver, ptr noundef nonnull @__this_module) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #2 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @rcar_cmm_platform_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_cmm_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 8, i32 noundef 3520) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %6, align 8
  %7 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #5
  store ptr %7, ptr %3, align 4
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = ptrtoint ptr %7 to i32
  br label %12

11:                                               ; preds = %5
  tail call void @pm_runtime_enable(ptr noundef %2) #5
  br label %12

12:                                               ; preds = %11, %9, %1
  %13 = phi i32 [ %10, %9 ], [ 0, %11 ], [ -12, %1 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_cmm_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }

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
!8 = !{i8 0, i8 2}
!9 = !{i64 2148577473}
!10 = !{i64 364233}
!11 = !{i64 2148100385}
!12 = !{i64 599492, i64 2148089463, i64 2148089489, i64 2148089536, i64 2148089558, i64 2148089586, i64 2148089606}
!13 = !{i64 586061, i64 586086, i64 586108, i64 586124, i64 586136, i64 586156, i64 586180, i64 586196, i64 586208}
!14 = !{i64 2148100511}
