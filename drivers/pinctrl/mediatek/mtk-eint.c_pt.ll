; ModuleID = '/llk/IR/drivers/pinctrl/mediatek/mtk-eint.c_pt.bc'
source_filename = "../drivers/pinctrl/mediatek/mtk-eint.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_eint_do_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_eint_do_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_eint_do_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_eint_do_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_eint_do_resume\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_eint_do_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_eint_set_debounce:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_eint_set_debounce\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_eint_set_debounce:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_eint_find_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_eint_find_irq\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_eint_find_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_eint_do_init:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_eint_do_init\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_eint_do_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.mtk_eint_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.mtk_eint = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mtk_eint_hw = type { i8, i8, i32, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.mtk_eint_xt = type { ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [1 x i32] }
%struct.callback_head = type { ptr, ptr }

@__kstrtab_mtk_eint_do_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_eint_do_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_eint_do_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_eint_do_suspend to i32), ptr @__kstrtab_mtk_eint_do_suspend, ptr @__kstrtabns_mtk_eint_do_suspend }, section "___ksymtab_gpl+mtk_eint_do_suspend", align 4
@__kstrtab_mtk_eint_do_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_eint_do_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_eint_do_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_eint_do_resume to i32), ptr @__kstrtab_mtk_eint_do_resume, ptr @__kstrtabns_mtk_eint_do_resume }, section "___ksymtab_gpl+mtk_eint_do_resume", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__kstrtab_mtk_eint_set_debounce = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_eint_set_debounce = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_eint_set_debounce = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_eint_set_debounce to i32), ptr @__kstrtab_mtk_eint_set_debounce, ptr @__kstrtabns_mtk_eint_set_debounce }, section "___ksymtab_gpl+mtk_eint_set_debounce", align 4
@__kstrtab_mtk_eint_find_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_eint_find_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_eint_find_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_eint_find_irq to i32), ptr @__kstrtab_mtk_eint_find_irq, ptr @__kstrtabns_mtk_eint_find_irq }, section "___ksymtab_gpl+mtk_eint_find_irq", align 4
@mtk_generic_eint_regs = internal constant %struct.mtk_eint_regs { i32 0, i32 64, i32 128, i32 192, i32 256, i32 320, i32 384, i32 448, i32 512, i32 576, i32 640, i32 768, i32 832, i32 896, i32 1024, i32 1280, i32 1536, i32 1792 }, align 4
@irq_domain_simple_ops = external dso_local constant %struct.irq_domain_ops, align 4
@mtk_eint_irq_chip = internal global %struct.irq_chip { ptr null, ptr @.str, ptr null, ptr null, ptr null, ptr @mtk_eint_mask, ptr @mtk_eint_ack, ptr @mtk_eint_mask, ptr null, ptr @mtk_eint_unmask, ptr null, ptr null, ptr null, ptr @mtk_eint_set_type, ptr @mtk_eint_irq_set_wake, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_eint_irq_request_resources, ptr @mtk_eint_irq_release_resources, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@__kstrtab_mtk_eint_do_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_eint_do_init = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_eint_do_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_eint_do_init to i32), ptr @__kstrtab_mtk_eint_do_init, ptr @__kstrtabns_mtk_eint_do_init }, section "___ksymtab_gpl+mtk_eint_do_init", align 4
@__UNIQUE_ID_file206 = internal constant [48 x i8] c"mtk_eint.file=drivers/pinctrl/mediatek/mtk-eint\00", section ".modinfo", align 1
@__UNIQUE_ID_license207 = internal constant [24 x i8] c"mtk_eint.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description208 = internal constant [42 x i8] c"mtk_eint.description=MediaTek EINT Driver\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [8 x i8] c"mt-eint\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Can't configure IRQ%d (EINT%lu) for type 0x%X\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Can not find pin\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"unable to lock HW IRQ %lu for IRQ\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Can not eint mode\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_description208, ptr @__UNIQUE_ID_file206, ptr @__UNIQUE_ID_license207, ptr @__ksymtab_mtk_eint_do_init, ptr @__ksymtab_mtk_eint_do_resume, ptr @__ksymtab_mtk_eint_do_suspend, ptr @__ksymtab_mtk_eint_find_irq, ptr @__ksymtab_mtk_eint_set_debounce], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mtk_eint_do_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mtk_eint, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mtk_eint, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mtk_eint, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mtk_eint_hw, ptr %7, i32 0, i32 1
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %35, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.mtk_eint, ptr %0, i32 0, i32 8
  br label %13

13:                                               ; preds = %13, %11
  %14 = phi i32 [ 0, %11 ], [ %29, %13 ]
  %15 = shl i32 %14, 2
  %16 = getelementptr i8, ptr %3, i32 %15
  %17 = getelementptr i32, ptr %5, i32 %14
  %18 = load i32, ptr %17, align 4
  %19 = xor i32 %18, -1
  %20 = load ptr, ptr %12, align 4
  %21 = getelementptr inbounds %struct.mtk_eint_regs, ptr %20, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr i8, ptr %16, i32 %22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %19) #6, !srcloc !8
  %24 = load i32, ptr %17, align 4
  %25 = load ptr, ptr %12, align 4
  %26 = getelementptr inbounds %struct.mtk_eint_regs, ptr %25, i32 0, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr i8, ptr %16, i32 %27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %24) #6, !srcloc !8
  %29 = add nuw nsw i32 %14, 1
  %30 = load ptr, ptr %6, align 4
  %31 = getelementptr inbounds %struct.mtk_eint_hw, ptr %30, i32 0, i32 1
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp ult i32 %29, %33
  br i1 %34, label %13, label %35

35:                                               ; preds = %13, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mtk_eint_do_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mtk_eint, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mtk_eint, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mtk_eint, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mtk_eint_hw, ptr %7, i32 0, i32 1
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %35, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.mtk_eint, ptr %0, i32 0, i32 8
  br label %13

13:                                               ; preds = %13, %11
  %14 = phi i32 [ 0, %11 ], [ %29, %13 ]
  %15 = shl i32 %14, 2
  %16 = getelementptr i8, ptr %3, i32 %15
  %17 = getelementptr i32, ptr %5, i32 %14
  %18 = load i32, ptr %17, align 4
  %19 = xor i32 %18, -1
  %20 = load ptr, ptr %12, align 4
  %21 = getelementptr inbounds %struct.mtk_eint_regs, ptr %20, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr i8, ptr %16, i32 %22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %19) #6, !srcloc !8
  %24 = load i32, ptr %17, align 4
  %25 = load ptr, ptr %12, align 4
  %26 = getelementptr inbounds %struct.mtk_eint_regs, ptr %25, i32 0, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr i8, ptr %16, i32 %27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %24) #6, !srcloc !8
  %29 = add nuw nsw i32 %14, 1
  %30 = load ptr, ptr %6, align 4
  %31 = getelementptr inbounds %struct.mtk_eint_hw, ptr %30, i32 0, i32 1
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp ult i32 %29, %33
  br i1 %34, label %13, label %35

35:                                               ; preds = %13, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mtk_eint_set_debounce(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.mtk_eint, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !9
  %7 = call ptr @__irq_resolve_mapping(ptr noundef %6, i32 noundef %1, ptr noundef nonnull %4) #6
  %8 = icmp eq ptr %7, null
  %9 = load i32, ptr %4, align 4
  %10 = select i1 %8, i32 0, i32 %9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  %11 = shl i32 %1, 3
  %12 = and i32 %11, 24
  %13 = call ptr @irq_get_irq_data(i32 noundef %10) #6
  %14 = and i32 %1, -4
  %15 = getelementptr inbounds %struct.mtk_eint, ptr %0, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.mtk_eint_regs, ptr %16, i32 0, i32 16
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, %14
  %20 = getelementptr inbounds %struct.mtk_eint_regs, ptr %16, i32 0, i32 17
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, %14
  %23 = and i32 %1, 31
  %24 = shl nuw i32 1, %23
  %25 = getelementptr inbounds %struct.mtk_eint_regs, ptr %16, i32 0, i32 5
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.mtk_eint, ptr %0, i32 0, i32 7
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.mtk_eint_hw, ptr %28, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = icmp ugt i32 %30, %1
  %32 = select i1 %31, i32 0, i32 %30
  %33 = getelementptr inbounds %struct.mtk_eint, ptr %0, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr i8, ptr %34, i32 %26
  %36 = sub i32 %1, %32
  %37 = lshr i32 %36, 3
  %38 = and i32 %37, 536870908
  %39 = getelementptr i8, ptr %35, i32 %38
  %40 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #6, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %41 = and i32 %40, %24
  %42 = icmp eq i32 %41, 0
  %43 = load ptr, ptr %27, align 4
  %44 = getelementptr inbounds %struct.mtk_eint_hw, ptr %43, i32 0, i32 3
  %45 = load i32, ptr %44, align 4
  %46 = icmp ule i32 %45, %1
  %47 = select i1 %46, i1 true, i1 %42
  br i1 %47, label %121, label %48

48:                                               ; preds = %3
  %49 = icmp ugt i32 %2, 500
  br i1 %49, label %50, label %63

50:                                               ; preds = %48
  %51 = icmp ugt i32 %2, 1000
  br i1 %51, label %52, label %63

52:                                               ; preds = %50
  %53 = icmp ugt i32 %2, 16000
  br i1 %53, label %54, label %63

54:                                               ; preds = %52
  %55 = icmp ugt i32 %2, 32000
  br i1 %55, label %56, label %63

56:                                               ; preds = %54
  %57 = icmp ugt i32 %2, 64000
  br i1 %57, label %58, label %63

58:                                               ; preds = %56
  %59 = icmp ugt i32 %2, 128000
  br i1 %59, label %60, label %63

60:                                               ; preds = %58
  %61 = icmp ugt i32 %2, 256000
  %62 = select i1 %61, i32 115, i32 99
  br label %63

63:                                               ; preds = %60, %58, %56, %54, %52, %50, %48
  %64 = phi i32 [ 3, %48 ], [ 19, %50 ], [ 35, %52 ], [ 51, %54 ], [ 67, %56 ], [ 83, %58 ], [ %62, %60 ]
  %65 = load ptr, ptr %15, align 4
  %66 = getelementptr inbounds %struct.mtk_eint_regs, ptr %65, i32 0, i32 2
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr inbounds %struct.mtk_eint_hw, ptr %43, i32 0, i32 2
  %69 = load i32, ptr %68, align 4
  %70 = icmp ugt i32 %69, %1
  %71 = select i1 %70, i32 0, i32 %69
  %72 = load ptr, ptr %33, align 4
  %73 = getelementptr i8, ptr %72, i32 %67
  %74 = sub i32 %1, %71
  %75 = lshr i32 %74, 3
  %76 = and i32 %75, 536870908
  %77 = getelementptr i8, ptr %73, i32 %76
  %78 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #6, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %79 = and i32 %78, %24
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %112

81:                                               ; preds = %63
  %82 = getelementptr inbounds %struct.irq_data, ptr %13, i32 0, i32 7
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.irq_data, ptr %13, i32 0, i32 2
  %85 = load i32, ptr %84, align 4
  %86 = and i32 %85, 31
  %87 = shl nuw i32 1, %86
  %88 = getelementptr inbounds %struct.mtk_eint, ptr %83, i32 0, i32 8
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr inbounds %struct.mtk_eint_regs, ptr %89, i32 0, i32 3
  %91 = load i32, ptr %90, align 4
  %92 = getelementptr inbounds %struct.mtk_eint, ptr %83, i32 0, i32 7
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.mtk_eint_hw, ptr %93, i32 0, i32 2
  %95 = load i32, ptr %94, align 4
  %96 = icmp ugt i32 %95, %85
  %97 = select i1 %96, i32 0, i32 %95
  %98 = getelementptr inbounds %struct.mtk_eint, ptr %83, i32 0, i32 1
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr i8, ptr %99, i32 %91
  %101 = sub i32 %85, %97
  %102 = lshr i32 %101, 3
  %103 = and i32 %102, 536870908
  %104 = getelementptr i8, ptr %100, i32 %103
  %105 = xor i32 %87, -1
  %106 = getelementptr inbounds %struct.mtk_eint, ptr %83, i32 0, i32 6
  %107 = load ptr, ptr %106, align 4
  %108 = lshr i32 %85, 5
  %109 = getelementptr i32, ptr %107, i32 %108
  %110 = load i32, ptr %109, align 4
  %111 = and i32 %110, %105
  store i32 %111, ptr %109, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 %87) #6, !srcloc !8
  br label %112

112:                                              ; preds = %81, %63
  %113 = shl nuw i32 255, %12
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !14
  call void @arm_heavy_mb() #6
  %114 = load ptr, ptr %33, align 4
  %115 = getelementptr i8, ptr %114, i32 %22
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 %113) #6, !srcloc !8
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !15
  call void @arm_heavy_mb() #6
  %116 = shl nuw nsw i32 %64, %12
  %117 = load ptr, ptr %33, align 4
  %118 = getelementptr i8, ptr %117, i32 %19
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 %116) #6, !srcloc !8
  %119 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %119(i32 noundef 214748) #6
  br i1 %80, label %120, label %121

120:                                              ; preds = %112
  call void @mtk_eint_unmask(ptr noundef %13)
  br label %121

121:                                              ; preds = %120, %112, %3
  %122 = phi i32 [ -22, %3 ], [ 0, %120 ], [ 0, %112 ]
  ret i32 %122
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mtk_eint_mask(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 31
  %7 = shl nuw i32 1, %6
  %8 = getelementptr inbounds %struct.mtk_eint, ptr %3, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.mtk_eint_regs, ptr %9, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.mtk_eint, ptr %3, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.mtk_eint_hw, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = icmp ugt i32 %15, %5
  %17 = select i1 %16, i32 0, i32 %15
  %18 = getelementptr inbounds %struct.mtk_eint, ptr %3, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 %11
  %21 = sub i32 %5, %17
  %22 = lshr i32 %21, 3
  %23 = and i32 %22, 536870908
  %24 = getelementptr i8, ptr %20, i32 %23
  %25 = xor i32 %7, -1
  %26 = getelementptr inbounds %struct.mtk_eint, ptr %3, i32 0, i32 6
  %27 = load ptr, ptr %26, align 4
  %28 = lshr i32 %5, 5
  %29 = getelementptr i32, ptr %27, i32 %28
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, %25
  store i32 %31, ptr %29, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %7) #6, !srcloc !8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mtk_eint_unmask(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 31
  %7 = shl nuw i32 1, %6
  %8 = getelementptr inbounds %struct.mtk_eint, ptr %3, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.mtk_eint_regs, ptr %9, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.mtk_eint, ptr %3, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.mtk_eint_hw, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = icmp ugt i32 %15, %5
  %17 = select i1 %16, i32 0, i32 %15
  %18 = getelementptr inbounds %struct.mtk_eint, ptr %3, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 %11
  %21 = sub i32 %5, %17
  %22 = lshr i32 %21, 3
  %23 = and i32 %22, 536870908
  %24 = getelementptr i8, ptr %20, i32 %23
  %25 = getelementptr inbounds %struct.mtk_eint, ptr %3, i32 0, i32 6
  %26 = load ptr, ptr %25, align 4
  %27 = lshr i32 %5, 5
  %28 = getelementptr i32, ptr %26, i32 %27
  %29 = load i32, ptr %28, align 4
  %30 = or i32 %29, %7
  store i32 %30, ptr %28, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !16
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %7) #6, !srcloc !8
  %31 = getelementptr inbounds %struct.mtk_eint, ptr %3, i32 0, i32 4
  %32 = load ptr, ptr %31, align 4
  %33 = load i32, ptr %4, align 4
  %34 = getelementptr i32, ptr %32, i32 %33
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %70, label %37

37:                                               ; preds = %1
  %38 = and i32 %33, 31
  %39 = shl nuw i32 1, %38
  %40 = lshr i32 %33, 5
  %41 = load ptr, ptr %12, align 4
  %42 = load i8, ptr %41, align 4
  %43 = zext i8 %42 to i32
  %44 = and i32 %40, %43
  %45 = load ptr, ptr %18, align 4
  %46 = shl nuw nsw i32 %44, 2
  %47 = getelementptr i8, ptr %45, i32 %46
  %48 = getelementptr inbounds %struct.mtk_eint, ptr %3, i32 0, i32 10
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.mtk_eint_xt, ptr %49, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.mtk_eint, ptr %3, i32 0, i32 9
  %53 = load ptr, ptr %52, align 4
  %54 = tail call i32 %51(ptr noundef %53, i32 noundef %33) #6
  br label %55

55:                                               ; preds = %55, %37
  %56 = phi i32 [ %54, %37 ], [ %68, %55 ]
  %57 = icmp eq i32 %56, 0
  %58 = load ptr, ptr %8, align 4
  %59 = getelementptr inbounds %struct.mtk_eint_regs, ptr %58, i32 0, i32 13
  %60 = getelementptr inbounds %struct.mtk_eint_regs, ptr %58, i32 0, i32 12
  %61 = select i1 %57, ptr %60, ptr %59
  %62 = load i32, ptr %61, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !17
  tail call void @arm_heavy_mb() #6
  %63 = getelementptr i8, ptr %47, i32 %62
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %39) #6, !srcloc !8
  %64 = load ptr, ptr %48, align 4
  %65 = getelementptr inbounds %struct.mtk_eint_xt, ptr %64, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = load ptr, ptr %52, align 4
  %68 = tail call i32 %66(ptr noundef %67, i32 noundef %33) #6
  %69 = icmp eq i32 %56, %68
  br i1 %69, label %70, label %55

70:                                               ; preds = %55, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mtk_eint_find_irq(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.mtk_eint, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !9
  %6 = call ptr @__irq_resolve_mapping(ptr noundef %5, i32 noundef %1, ptr noundef nonnull %3) #6
  %7 = icmp eq ptr %6, null
  %8 = load i32, ptr %3, align 4
  %9 = select i1 %7, i32 0, i32 %8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i32 -22, i32 %9
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mtk_eint_do_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mtk_eint, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store ptr @mtk_generic_eint_regs, ptr %2, align 4
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.mtk_eint, ptr %0, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.mtk_eint_hw, ptr %8, i32 0, i32 1
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = shl nuw nsw i32 %11, 2
  %13 = load ptr, ptr %0, align 4
  %14 = tail call noalias ptr @devm_kmalloc(ptr noundef %13, i32 noundef %12, i32 noundef 3520) #6
  %15 = getelementptr inbounds %struct.mtk_eint, ptr %0, i32 0, i32 5
  store ptr %14, ptr %15, align 4
  %16 = icmp eq ptr %14, null
  br i1 %16, label %90, label %17

17:                                               ; preds = %6
  %18 = load ptr, ptr %7, align 4
  %19 = getelementptr inbounds %struct.mtk_eint_hw, ptr %18, i32 0, i32 1
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = shl nuw nsw i32 %21, 2
  %23 = load ptr, ptr %0, align 4
  %24 = tail call noalias ptr @devm_kmalloc(ptr noundef %23, i32 noundef %22, i32 noundef 3520) #6
  %25 = getelementptr inbounds %struct.mtk_eint, ptr %0, i32 0, i32 6
  store ptr %24, ptr %25, align 4
  %26 = icmp eq ptr %24, null
  br i1 %26, label %90, label %27

27:                                               ; preds = %17
  %28 = load ptr, ptr %7, align 4
  %29 = getelementptr inbounds %struct.mtk_eint_hw, ptr %28, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %30, i32 4) #6
  %32 = extractvalue { i32, i1 } %31, 1
  br i1 %32, label %33, label %35, !prof !18

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.mtk_eint, ptr %0, i32 0, i32 4
  store ptr null, ptr %34, align 4
  br label %90

35:                                               ; preds = %27
  %36 = load ptr, ptr %0, align 4
  %37 = extractvalue { i32, i1 } %31, 0
  %38 = tail call noalias ptr @devm_kmalloc(ptr noundef %36, i32 noundef %37, i32 noundef 3520) #6
  %39 = getelementptr inbounds %struct.mtk_eint, ptr %0, i32 0, i32 4
  store ptr %38, ptr %39, align 4
  %40 = icmp eq ptr %38, null
  br i1 %40, label %90, label %41

41:                                               ; preds = %35
  %42 = load ptr, ptr %0, align 4
  %43 = getelementptr inbounds %struct.device, ptr %42, i32 0, i32 25
  %44 = load ptr, ptr %43, align 8
  %45 = load ptr, ptr %7, align 4
  %46 = getelementptr inbounds %struct.mtk_eint_hw, ptr %45, i32 0, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq ptr %44, null
  %49 = getelementptr inbounds %struct.device_node, ptr %44, i32 0, i32 3
  %50 = select i1 %48, ptr null, ptr %49
  %51 = tail call ptr @__irq_domain_add(ptr noundef %50, i32 noundef %47, i32 noundef %47, i32 noundef 0, ptr noundef nonnull @irq_domain_simple_ops, ptr noundef null) #6
  %52 = getelementptr inbounds %struct.mtk_eint, ptr %0, i32 0, i32 2
  store ptr %51, ptr %52, align 4
  %53 = icmp eq ptr %51, null
  br i1 %53, label %90, label %54

54:                                               ; preds = %41
  %55 = load ptr, ptr %7, align 4
  %56 = getelementptr inbounds %struct.mtk_eint_hw, ptr %55, i32 0, i32 2
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %87, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.mtk_eint, ptr %0, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = load ptr, ptr %2, align 4
  %63 = getelementptr inbounds %struct.mtk_eint_regs, ptr %62, i32 0, i32 14
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr i8, ptr %61, i32 %64
  br label %66

66:                                               ; preds = %66, %59
  %67 = phi i32 [ %70, %66 ], [ 0, %59 ]
  %68 = phi ptr [ %69, %66 ], [ %65, %59 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !19
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 -1) #6, !srcloc !8
  %69 = getelementptr i8, ptr %68, i32 4
  %70 = add i32 %67, 32
  %71 = load ptr, ptr %7, align 4
  %72 = getelementptr inbounds %struct.mtk_eint_hw, ptr %71, i32 0, i32 2
  %73 = load i32, ptr %72, align 4
  %74 = icmp ult i32 %70, %73
  br i1 %74, label %66, label %75

75:                                               ; preds = %66
  %76 = icmp eq i32 %73, 0
  br i1 %76, label %87, label %77

77:                                               ; preds = %77, %75
  %78 = phi i32 [ %82, %77 ], [ 0, %75 ]
  %79 = load ptr, ptr %52, align 4
  %80 = tail call i32 @irq_create_mapping_affinity(ptr noundef %79, i32 noundef %78, ptr noundef null) #6
  tail call void @irq_set_chip_and_handler_name(i32 noundef %80, ptr noundef nonnull @mtk_eint_irq_chip, ptr noundef nonnull @handle_level_irq, ptr noundef null) #6
  %81 = tail call i32 @irq_set_chip_data(i32 noundef %80, ptr noundef %0) #6
  %82 = add nuw i32 %78, 1
  %83 = load ptr, ptr %7, align 4
  %84 = getelementptr inbounds %struct.mtk_eint_hw, ptr %83, i32 0, i32 2
  %85 = load i32, ptr %84, align 4
  %86 = icmp ult i32 %82, %85
  br i1 %86, label %77, label %87

87:                                               ; preds = %77, %75, %54
  %88 = getelementptr inbounds %struct.mtk_eint, ptr %0, i32 0, i32 3
  %89 = load i32, ptr %88, align 4
  tail call void @irq_set_chained_handler_and_data(i32 noundef %89, ptr noundef nonnull @mtk_eint_irq_handler, ptr noundef %0) #6
  br label %90

90:                                               ; preds = %87, %41, %35, %33, %17, %6
  %91 = phi i32 [ 0, %87 ], [ -12, %6 ], [ -12, %17 ], [ -12, %35 ], [ -12, %41 ], [ -12, %33 ]
  ret i32 %91
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mtk_eint_irq_handler(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.irq_common_data, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mtk_eint, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.mtk_eint, ptr %5, i32 0, i32 7
  %10 = getelementptr inbounds %struct.mtk_eint, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 %8
  %13 = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 10
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %30

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 8
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %18(ptr noundef %21) #6
  br label %30

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 7
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %24(ptr noundef %25) #6
  %26 = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 6
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  tail call void %27(ptr noundef %25) #6
  br label %30

30:                                               ; preds = %29, %22, %20, %1
  %31 = load ptr, ptr %9, align 4
  %32 = getelementptr inbounds %struct.mtk_eint_hw, ptr %31, i32 0, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %174, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.mtk_eint, ptr %5, i32 0, i32 5
  %37 = getelementptr inbounds %struct.mtk_eint, ptr %5, i32 0, i32 6
  %38 = getelementptr inbounds %struct.mtk_eint, ptr %5, i32 0, i32 4
  %39 = getelementptr inbounds %struct.mtk_eint, ptr %5, i32 0, i32 10
  %40 = getelementptr inbounds %struct.mtk_eint, ptr %5, i32 0, i32 9
  %41 = getelementptr inbounds %struct.mtk_eint, ptr %5, i32 0, i32 2
  br label %42

42:                                               ; preds = %167, %35
  %43 = phi i32 [ 0, %35 ], [ %168, %167 ]
  %44 = phi ptr [ %12, %35 ], [ %169, %167 ]
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !20
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %167, label %47

47:                                               ; preds = %42
  %48 = lshr exact i32 %43, 5
  br label %49

49:                                               ; preds = %165, %47
  %50 = phi i32 [ %45, %47 ], [ %55, %165 ]
  %51 = tail call i32 @llvm.cttz.i32(i32 %50, i1 true) #6, !range !21
  %52 = or i32 %51, %43
  %53 = shl nuw i32 1, %51
  %54 = xor i32 %53, -1
  %55 = and i32 %50, %54
  %56 = load ptr, ptr %36, align 4
  %57 = getelementptr i32, ptr %56, i32 %48
  %58 = load i32, ptr %57, align 4
  %59 = and i32 %58, %53
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %75, label %61

61:                                               ; preds = %49
  %62 = load ptr, ptr %37, align 4
  %63 = getelementptr i32, ptr %62, i32 %48
  %64 = load i32, ptr %63, align 4
  %65 = and i32 %64, %53
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %61
  %68 = load ptr, ptr %6, align 4
  %69 = load i32, ptr %68, align 4
  %70 = sub i32 0, %69
  %71 = getelementptr i8, ptr %44, i32 %70
  %72 = getelementptr inbounds %struct.mtk_eint_regs, ptr %68, i32 0, i32 3
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr i8, ptr %71, i32 %73
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %53) #6, !srcloc !8
  br label %75

75:                                               ; preds = %67, %61, %49
  %76 = load ptr, ptr %38, align 4
  %77 = getelementptr i32, ptr %76, i32 %52
  %78 = load i32, ptr %77, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load ptr, ptr %41, align 4
  %82 = tail call i32 @generic_handle_domain_irq(ptr noundef %81, i32 noundef %52) #6
  br label %135

83:                                               ; preds = %75
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  %84 = load ptr, ptr %6, align 4
  %85 = load i32, ptr %84, align 4
  %86 = sub i32 0, %85
  %87 = getelementptr i8, ptr %44, i32 %86
  %88 = getelementptr inbounds %struct.mtk_eint_regs, ptr %84, i32 0, i32 10
  %89 = load i32, ptr %88, align 4
  %90 = getelementptr i8, ptr %87, i32 %89
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %53) #6, !srcloc !8
  %91 = load ptr, ptr %39, align 4
  %92 = getelementptr inbounds %struct.mtk_eint_xt, ptr %91, i32 0, i32 1
  %93 = load ptr, ptr %92, align 4
  %94 = load ptr, ptr %40, align 4
  %95 = tail call i32 %93(ptr noundef %94, i32 noundef %52) #6
  %96 = load ptr, ptr %41, align 4
  %97 = tail call i32 @generic_handle_domain_irq(ptr noundef %96, i32 noundef %52) #6
  %98 = load ptr, ptr %9, align 4
  %99 = load i8, ptr %98, align 4
  %100 = zext i8 %99 to i32
  %101 = and i32 %48, %100
  %102 = load ptr, ptr %10, align 4
  %103 = shl nuw nsw i32 %101, 2
  %104 = getelementptr i8, ptr %102, i32 %103
  %105 = load ptr, ptr %39, align 4
  %106 = getelementptr inbounds %struct.mtk_eint_xt, ptr %105, i32 0, i32 1
  %107 = load ptr, ptr %106, align 4
  %108 = load ptr, ptr %40, align 4
  %109 = tail call i32 %107(ptr noundef %108, i32 noundef %52) #6
  br label %110

110:                                              ; preds = %110, %83
  %111 = phi i32 [ %109, %83 ], [ %123, %110 ]
  %112 = icmp eq i32 %111, 0
  %113 = load ptr, ptr %6, align 4
  %114 = getelementptr inbounds %struct.mtk_eint_regs, ptr %113, i32 0, i32 13
  %115 = getelementptr inbounds %struct.mtk_eint_regs, ptr %113, i32 0, i32 12
  %116 = select i1 %112, ptr %115, ptr %114
  %117 = load i32, ptr %116, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !17
  tail call void @arm_heavy_mb() #6
  %118 = getelementptr i8, ptr %104, i32 %117
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 %53) #6, !srcloc !8
  %119 = load ptr, ptr %39, align 4
  %120 = getelementptr inbounds %struct.mtk_eint_xt, ptr %119, i32 0, i32 1
  %121 = load ptr, ptr %120, align 4
  %122 = load ptr, ptr %40, align 4
  %123 = tail call i32 %121(ptr noundef %122, i32 noundef %52) #6
  %124 = icmp eq i32 %111, %123
  br i1 %124, label %125, label %110

125:                                              ; preds = %110
  %126 = icmp eq i32 %95, %111
  br i1 %126, label %135, label %127

127:                                              ; preds = %125
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !23
  tail call void @arm_heavy_mb() #6
  %128 = load ptr, ptr %6, align 4
  %129 = load i32, ptr %128, align 4
  %130 = sub i32 0, %129
  %131 = getelementptr i8, ptr %44, i32 %130
  %132 = getelementptr inbounds %struct.mtk_eint_regs, ptr %128, i32 0, i32 9
  %133 = load i32, ptr %132, align 4
  %134 = getelementptr i8, ptr %131, i32 %133
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %134, i32 %53) #6, !srcloc !8
  br label %135

135:                                              ; preds = %127, %125, %80
  %136 = load ptr, ptr %9, align 4
  %137 = getelementptr inbounds %struct.mtk_eint_hw, ptr %136, i32 0, i32 3
  %138 = load i32, ptr %137, align 4
  %139 = icmp ult i32 %52, %138
  br i1 %139, label %140, label %165

140:                                              ; preds = %135
  %141 = freeze i32 %52
  %142 = sdiv i32 %141, 4
  %143 = shl nsw i32 %142, 2
  %144 = load ptr, ptr %6, align 4
  %145 = getelementptr inbounds %struct.mtk_eint_regs, ptr %144, i32 0, i32 15
  %146 = load i32, ptr %145, align 4
  %147 = add i32 %146, %143
  %148 = load ptr, ptr %10, align 4
  %149 = getelementptr i8, ptr %148, i32 %147
  %150 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %149) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !24
  %151 = mul i32 %142, 4
  %152 = sub i32 %141, %151
  %153 = shl nsw i32 %152, 3
  %154 = shl nuw i32 1, %153
  %155 = and i32 %150, %154
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %165, label %157

157:                                              ; preds = %140
  %158 = load ptr, ptr %6, align 4
  %159 = getelementptr inbounds %struct.mtk_eint_regs, ptr %158, i32 0, i32 16
  %160 = load i32, ptr %159, align 4
  %161 = add i32 %160, %143
  %162 = shl i32 2, %153
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !25
  tail call void @arm_heavy_mb() #6
  %163 = load ptr, ptr %10, align 4
  %164 = getelementptr i8, ptr %163, i32 %161
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %164, i32 %162) #6, !srcloc !8
  br label %165

165:                                              ; preds = %157, %140, %135
  %166 = icmp eq i32 %55, 0
  br i1 %166, label %167, label %49

167:                                              ; preds = %165, %42
  %168 = add i32 %43, 32
  %169 = getelementptr i8, ptr %44, i32 4
  %170 = load ptr, ptr %9, align 4
  %171 = getelementptr inbounds %struct.mtk_eint_hw, ptr %170, i32 0, i32 2
  %172 = load i32, ptr %171, align 4
  %173 = icmp ult i32 %168, %172
  br i1 %173, label %42, label %174

174:                                              ; preds = %167, %30
  %175 = load ptr, ptr %13, align 4
  %176 = icmp eq ptr %175, null
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  %178 = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 9
  %179 = load ptr, ptr %178, align 4
  br label %180

180:                                              ; preds = %177, %174
  %181 = phi ptr [ %179, %177 ], [ %175, %174 ]
  %182 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %181(ptr noundef %182) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mtk_eint_ack(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 31
  %7 = shl nuw i32 1, %6
  %8 = getelementptr inbounds %struct.mtk_eint, ptr %3, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.mtk_eint_regs, ptr %9, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.mtk_eint, ptr %3, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.mtk_eint_hw, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = icmp ugt i32 %15, %5
  %17 = select i1 %16, i32 0, i32 %15
  %18 = getelementptr inbounds %struct.mtk_eint, ptr %3, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 %11
  %21 = sub i32 %5, %17
  %22 = lshr i32 %21, 3
  %23 = and i32 %22, 536870908
  %24 = getelementptr i8, ptr %20, i32 %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !26
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %7) #6, !srcloc !8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_eint_set_type(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 31
  %8 = shl nuw i32 1, %7
  %9 = and i32 %1, 3
  %10 = icmp eq i32 %9, 0
  %11 = and i32 %1, 12
  %12 = icmp eq i32 %11, 0
  %13 = or i1 %10, %12
  %14 = icmp ne i32 %11, 12
  %15 = and i1 %14, %13
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.1, i32 noundef %19, i32 noundef %6, i32 noundef %1) #7
  br label %165

20:                                               ; preds = %2
  %21 = icmp eq i32 %9, 3
  %22 = getelementptr inbounds %struct.mtk_eint, ptr %4, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i32, ptr %23, i32 %6
  %25 = zext i1 %21 to i32
  store i32 %25, ptr %24, align 4
  %26 = load i32, ptr %5, align 4
  %27 = and i32 %26, 31
  %28 = getelementptr inbounds %struct.mtk_eint, ptr %4, i32 0, i32 8
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.mtk_eint_regs, ptr %29, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.mtk_eint, ptr %4, i32 0, i32 7
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.mtk_eint_hw, ptr %33, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = icmp ugt i32 %35, %26
  %37 = select i1 %36, i32 0, i32 %35
  %38 = getelementptr inbounds %struct.mtk_eint, ptr %4, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr i8, ptr %39, i32 %31
  %41 = sub i32 %26, %37
  %42 = lshr i32 %41, 3
  %43 = and i32 %42, 536870908
  %44 = getelementptr i8, ptr %40, i32 %43
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %46 = shl nuw i32 1, %27
  %47 = and i32 %45, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %78

49:                                               ; preds = %20
  %50 = load ptr, ptr %3, align 4
  %51 = load i32, ptr %5, align 4
  %52 = and i32 %51, 31
  %53 = shl nuw i32 1, %52
  %54 = getelementptr inbounds %struct.mtk_eint, ptr %50, i32 0, i32 8
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.mtk_eint_regs, ptr %55, i32 0, i32 3
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.mtk_eint, ptr %50, i32 0, i32 7
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.mtk_eint_hw, ptr %59, i32 0, i32 2
  %61 = load i32, ptr %60, align 4
  %62 = icmp ugt i32 %61, %51
  %63 = select i1 %62, i32 0, i32 %61
  %64 = getelementptr inbounds %struct.mtk_eint, ptr %50, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr i8, ptr %65, i32 %57
  %67 = sub i32 %51, %63
  %68 = lshr i32 %67, 3
  %69 = and i32 %68, 536870908
  %70 = getelementptr i8, ptr %66, i32 %69
  %71 = xor i32 %53, -1
  %72 = getelementptr inbounds %struct.mtk_eint, ptr %50, i32 0, i32 6
  %73 = load ptr, ptr %72, align 4
  %74 = lshr i32 %51, 5
  %75 = getelementptr i32, ptr %73, i32 %74
  %76 = load i32, ptr %75, align 4
  %77 = and i32 %76, %71
  store i32 %77, ptr %75, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %53) #6, !srcloc !8
  br label %78

78:                                               ; preds = %49, %20
  %79 = and i32 %1, 10
  %80 = icmp eq i32 %79, 0
  %81 = load i32, ptr %5, align 4
  %82 = load ptr, ptr %28, align 4
  br i1 %80, label %97, label %83

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.mtk_eint_regs, ptr %82, i32 0, i32 13
  %85 = load i32, ptr %84, align 4
  %86 = load ptr, ptr %32, align 4
  %87 = getelementptr inbounds %struct.mtk_eint_hw, ptr %86, i32 0, i32 2
  %88 = load i32, ptr %87, align 4
  %89 = icmp ugt i32 %88, %81
  %90 = select i1 %89, i32 0, i32 %88
  %91 = load ptr, ptr %38, align 4
  %92 = getelementptr i8, ptr %91, i32 %85
  %93 = sub i32 %81, %90
  %94 = lshr i32 %93, 3
  %95 = and i32 %94, 536870908
  %96 = getelementptr i8, ptr %92, i32 %95
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !27
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 %8) #6, !srcloc !8
  br label %111

97:                                               ; preds = %78
  %98 = getelementptr inbounds %struct.mtk_eint_regs, ptr %82, i32 0, i32 12
  %99 = load i32, ptr %98, align 4
  %100 = load ptr, ptr %32, align 4
  %101 = getelementptr inbounds %struct.mtk_eint_hw, ptr %100, i32 0, i32 2
  %102 = load i32, ptr %101, align 4
  %103 = icmp ugt i32 %102, %81
  %104 = select i1 %103, i32 0, i32 %102
  %105 = load ptr, ptr %38, align 4
  %106 = getelementptr i8, ptr %105, i32 %99
  %107 = sub i32 %81, %104
  %108 = lshr i32 %107, 3
  %109 = and i32 %108, 536870908
  %110 = getelementptr i8, ptr %106, i32 %109
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !28
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 %8) #6, !srcloc !8
  br label %111

111:                                              ; preds = %97, %83
  %112 = load i32, ptr %5, align 4
  %113 = load ptr, ptr %28, align 4
  br i1 %10, label %128, label %114

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.mtk_eint_regs, ptr %113, i32 0, i32 7
  %116 = load i32, ptr %115, align 4
  %117 = load ptr, ptr %32, align 4
  %118 = getelementptr inbounds %struct.mtk_eint_hw, ptr %117, i32 0, i32 2
  %119 = load i32, ptr %118, align 4
  %120 = icmp ugt i32 %119, %112
  %121 = select i1 %120, i32 0, i32 %119
  %122 = load ptr, ptr %38, align 4
  %123 = getelementptr i8, ptr %122, i32 %116
  %124 = sub i32 %112, %121
  %125 = lshr i32 %124, 3
  %126 = and i32 %125, 536870908
  %127 = getelementptr i8, ptr %123, i32 %126
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !29
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %127, i32 %8) #6, !srcloc !8
  br label %142

128:                                              ; preds = %111
  %129 = getelementptr inbounds %struct.mtk_eint_regs, ptr %113, i32 0, i32 6
  %130 = load i32, ptr %129, align 4
  %131 = load ptr, ptr %32, align 4
  %132 = getelementptr inbounds %struct.mtk_eint_hw, ptr %131, i32 0, i32 2
  %133 = load i32, ptr %132, align 4
  %134 = icmp ugt i32 %133, %112
  %135 = select i1 %134, i32 0, i32 %133
  %136 = load ptr, ptr %38, align 4
  %137 = getelementptr i8, ptr %136, i32 %130
  %138 = sub i32 %112, %135
  %139 = lshr i32 %138, 3
  %140 = and i32 %139, 536870908
  %141 = getelementptr i8, ptr %137, i32 %140
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !30
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %141, i32 %8) #6, !srcloc !8
  br label %142

142:                                              ; preds = %128, %114
  %143 = load ptr, ptr %3, align 4
  %144 = load i32, ptr %5, align 4
  %145 = and i32 %144, 31
  %146 = shl nuw i32 1, %145
  %147 = getelementptr inbounds %struct.mtk_eint, ptr %143, i32 0, i32 8
  %148 = load ptr, ptr %147, align 4
  %149 = getelementptr inbounds %struct.mtk_eint_regs, ptr %148, i32 0, i32 1
  %150 = load i32, ptr %149, align 4
  %151 = getelementptr inbounds %struct.mtk_eint, ptr %143, i32 0, i32 7
  %152 = load ptr, ptr %151, align 4
  %153 = getelementptr inbounds %struct.mtk_eint_hw, ptr %152, i32 0, i32 2
  %154 = load i32, ptr %153, align 4
  %155 = icmp ugt i32 %154, %144
  %156 = select i1 %155, i32 0, i32 %154
  %157 = getelementptr inbounds %struct.mtk_eint, ptr %143, i32 0, i32 1
  %158 = load ptr, ptr %157, align 4
  %159 = getelementptr i8, ptr %158, i32 %150
  %160 = sub i32 %144, %156
  %161 = lshr i32 %160, 3
  %162 = and i32 %161, 536870908
  %163 = getelementptr i8, ptr %159, i32 %162
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !26
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %163, i32 %146) #6, !srcloc !8
  br i1 %48, label %164, label %165

164:                                              ; preds = %142
  tail call void @mtk_eint_unmask(ptr noundef %0)
  br label %165

165:                                              ; preds = %164, %142, %16
  %166 = phi i32 [ -22, %16 ], [ 0, %164 ], [ 0, %142 ]
  ret i32 %166
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @mtk_eint_irq_set_wake(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 31
  %8 = lshr i32 %6, 5
  %9 = icmp eq i32 %1, 0
  %10 = shl nuw i32 1, %7
  br i1 %9, label %17, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.mtk_eint, ptr %4, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i32, ptr %13, i32 %8
  %15 = load i32, ptr %14, align 4
  %16 = or i32 %15, %10
  store i32 %16, ptr %14, align 4
  br label %24

17:                                               ; preds = %2
  %18 = xor i32 %10, -1
  %19 = getelementptr inbounds %struct.mtk_eint, ptr %4, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i32, ptr %20, i32 %8
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, %18
  store i32 %23, ptr %21, align 4
  br label %24

24:                                               ; preds = %17, %11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_eint_irq_request_resources(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store ptr null, ptr %2, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.mtk_eint, ptr %5, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.mtk_eint, ptr %5, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = call i32 %8(ptr noundef %10, i32 noundef %12, ptr noundef nonnull %3, ptr noundef nonnull %2) #6
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.2) #7
  br label %35

17:                                               ; preds = %1
  %18 = load ptr, ptr %2, align 4
  %19 = load i32, ptr %3, align 4
  %20 = call i32 @gpiochip_lock_as_irq(ptr noundef %18, i32 noundef %19) #6
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load ptr, ptr %5, align 4
  %24 = load i32, ptr %11, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.3, i32 noundef %24) #7
  br label %35

25:                                               ; preds = %17
  %26 = load ptr, ptr %6, align 4
  %27 = getelementptr inbounds %struct.mtk_eint_xt, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = load ptr, ptr %9, align 4
  %30 = load i32, ptr %11, align 4
  %31 = call i32 %28(ptr noundef %29, i32 noundef %30) #6
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.4) #7
  br label %35

35:                                               ; preds = %33, %25, %22, %15
  %36 = phi i32 [ %13, %15 ], [ %20, %22 ], [ %31, %33 ], [ 0, %25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mtk_eint_irq_release_resources(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store ptr null, ptr %2, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.mtk_eint, ptr %5, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.mtk_eint, ptr %5, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = call i32 %8(ptr noundef %10, i32 noundef %12, ptr noundef nonnull %3, ptr noundef nonnull %2) #6
  %14 = load ptr, ptr %2, align 4
  %15 = load i32, ptr %3, align 4
  call void @gpiochip_unlock_as_irq(ptr noundef %14, i32 noundef %15) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_lock_as_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_unlock_as_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
!8 = !{i64 3693070}
!9 = !{!"auto-init"}
!10 = !{i64 3693488}
!11 = !{i64 2152324108}
!12 = !{i64 2152325650}
!13 = !{i64 2152324776}
!14 = !{i64 2152336886}
!15 = !{i64 2152337250}
!16 = !{i64 2152325154}
!17 = !{i64 2152324385}
!18 = !{!"branch_weights", i32 1, i32 2000}
!19 = !{i64 2152330312}
!20 = !{i64 2152331607}
!21 = !{i32 0, i32 33}
!22 = !{i64 2152332483}
!23 = !{i64 2152333055}
!24 = !{i64 2152330965}
!25 = !{i64 2152331179}
!26 = !{i64 2152325911}
!27 = !{i64 2152327022}
!28 = !{i64 2152327311}
!29 = !{i64 2152327600}
!30 = !{i64 2152327889}
