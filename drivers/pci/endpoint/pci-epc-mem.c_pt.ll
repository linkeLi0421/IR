; ModuleID = '/llk/IR/drivers/pci/endpoint/pci-epc-mem.c_pt.bc'
source_filename = "../drivers/pci/endpoint/pci-epc-mem.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_epc_multi_mem_init:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_epc_multi_mem_init\22\09\09\09\09\09"
module asm "__kstrtabns_pci_epc_multi_mem_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_epc_mem_init:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_epc_mem_init\22\09\09\09\09\09"
module asm "__kstrtabns_pci_epc_mem_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_epc_mem_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_epc_mem_exit\22\09\09\09\09\09"
module asm "__kstrtabns_pci_epc_mem_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_epc_mem_alloc_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_epc_mem_alloc_addr\22\09\09\09\09\09"
module asm "__kstrtabns_pci_epc_mem_alloc_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_epc_mem_free_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_epc_mem_free_addr\22\09\09\09\09\09"
module asm "__kstrtabns_pci_epc_mem_free_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type {}
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pci_epc = type { %struct.device, %struct.list_head, ptr, ptr, ptr, i32, i8, ptr, ptr, %struct.mutex, i32, %struct.atomic_notifier_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.pci_epc_mem_window = type { i32, i32, i32 }
%struct.pci_epc_mem = type { %struct.pci_epc_mem_window, ptr, i32, %struct.mutex }

@pci_epc_multi_mem_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [11 x i8] c"&mem->lock\00", align 1
@__kstrtab_pci_epc_multi_mem_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_epc_multi_mem_init = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_epc_multi_mem_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_epc_multi_mem_init to i32), ptr @__kstrtab_pci_epc_multi_mem_init, ptr @__kstrtabns_pci_epc_multi_mem_init }, section "___ksymtab_gpl+pci_epc_multi_mem_init", align 4
@__kstrtab_pci_epc_mem_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_epc_mem_init = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_epc_mem_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_epc_mem_init to i32), ptr @__kstrtab_pci_epc_mem_init, ptr @__kstrtabns_pci_epc_mem_init }, section "___ksymtab_gpl+pci_epc_mem_init", align 4
@__kstrtab_pci_epc_mem_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_epc_mem_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_epc_mem_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_epc_mem_exit to i32), ptr @__kstrtab_pci_epc_mem_exit, ptr @__kstrtabns_pci_epc_mem_exit }, section "___ksymtab_gpl+pci_epc_mem_exit", align 4
@__kstrtab_pci_epc_mem_alloc_addr = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_epc_mem_alloc_addr = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_epc_mem_alloc_addr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_epc_mem_alloc_addr to i32), ptr @__kstrtab_pci_epc_mem_alloc_addr, ptr @__kstrtabns_pci_epc_mem_alloc_addr }, section "___ksymtab_gpl+pci_epc_mem_alloc_addr", align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"\013failed to get matching window\0A\00", align 1
@__kstrtab_pci_epc_mem_free_addr = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_epc_mem_free_addr = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_epc_mem_free_addr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_epc_mem_free_addr to i32), ptr @__kstrtab_pci_epc_mem_free_addr, ptr @__kstrtabns_pci_epc_mem_free_addr }, section "___ksymtab_gpl+pci_epc_mem_free_addr", align 4
@__UNIQUE_ID_description228 = internal constant [57 x i8] c"pci_epc_mem.description=PCI EPC Address Space Management\00", section ".modinfo", align 1
@__UNIQUE_ID_author229 = internal constant [58 x i8] c"pci_epc_mem.author=Kishon Vijay Abraham I <kishon@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file230 = internal constant [50 x i8] c"pci_epc_mem.file=drivers/pci/endpoint/pci-epc-mem\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [27 x i8] c"pci_epc_mem.license=GPL v2\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__ksymtab_pci_epc_mem_alloc_addr, ptr @__ksymtab_pci_epc_mem_exit, ptr @__ksymtab_pci_epc_mem_free_addr, ptr @__ksymtab_pci_epc_mem_init, ptr @__ksymtab_pci_epc_multi_mem_init], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_epc_multi_mem_init(ptr nocapture noundef %0, ptr noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 5
  store i32 0, ptr %4, align 4
  %5 = icmp ne ptr %1, null
  %6 = icmp ne i32 %2, 0
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %69

8:                                                ; preds = %3
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 4) #7
  %10 = extractvalue { i32, i1 } %9, 1
  br i1 %10, label %11, label %13, !prof !8

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 3
  store ptr null, ptr %12, align 4
  br label %69

13:                                               ; preds = %8
  %14 = extractvalue { i32, i1 } %9, 0
  %15 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %14, i32 noundef 3520) #8
  %16 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 3
  store ptr %15, ptr %16, align 4
  %17 = icmp eq ptr %15, null
  br i1 %17, label %69, label %18

18:                                               ; preds = %39, %13
  %19 = phi i32 [ %49, %39 ], [ 0, %13 ]
  %20 = getelementptr %struct.pci_epc_mem_window, ptr %1, i32 %19
  %21 = getelementptr %struct.pci_epc_mem_window, ptr %1, i32 %19, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 @llvm.umax.i32(i32 %22, i32 4096)
  %24 = tail call i32 @llvm.ctlz.i32(i32 %23, i1 false), !range !9
  %25 = sub nsw i32 31, %24
  %26 = getelementptr %struct.pci_epc_mem_window, ptr %1, i32 %19, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = lshr i32 %27, %25
  %29 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %30 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3520, i32 noundef 40) #9
  %31 = icmp eq ptr %30, null
  br i1 %31, label %55, label %32

32:                                               ; preds = %18
  %33 = add i32 %28, 31
  %34 = lshr i32 %33, 3
  %35 = and i32 %34, 536870908
  %36 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %35, i32 noundef 3520) #8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  tail call void @kfree(ptr noundef nonnull %30) #7
  br label %55

39:                                               ; preds = %32
  %40 = load i32, ptr %20, align 4
  store i32 %40, ptr %30, align 8
  %41 = load i32, ptr %26, align 4
  %42 = getelementptr inbounds %struct.pci_epc_mem_window, ptr %30, i32 0, i32 1
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.pci_epc_mem_window, ptr %30, i32 0, i32 2
  store i32 %23, ptr %43, align 8
  %44 = getelementptr inbounds %struct.pci_epc_mem, ptr %30, i32 0, i32 1
  store ptr %36, ptr %44, align 4
  %45 = getelementptr inbounds %struct.pci_epc_mem, ptr %30, i32 0, i32 2
  store i32 %28, ptr %45, align 8
  %46 = getelementptr inbounds %struct.pci_epc_mem, ptr %30, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %46, ptr noundef nonnull @.str, ptr noundef nonnull @pci_epc_multi_mem_init.__key) #7
  %47 = load ptr, ptr %16, align 4
  %48 = getelementptr ptr, ptr %47, i32 %19
  store ptr %30, ptr %48, align 4
  %49 = add nuw i32 %19, 1
  %50 = icmp eq i32 %49, %2
  br i1 %50, label %51, label %18

51:                                               ; preds = %39
  %52 = load ptr, ptr %16, align 4
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 4
  store ptr %53, ptr %54, align 8
  store i32 %2, ptr %4, align 4
  br label %69

55:                                               ; preds = %38, %18
  %56 = add i32 %19, -1
  %57 = icmp sgt i32 %56, -1
  br i1 %57, label %58, label %67

58:                                               ; preds = %58, %55
  %59 = phi i32 [ %65, %58 ], [ %56, %55 ]
  %60 = load ptr, ptr %16, align 4
  %61 = getelementptr ptr, ptr %60, i32 %59
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.pci_epc_mem, ptr %62, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  tail call void @kfree(ptr noundef %64) #7
  tail call void @kfree(ptr noundef %62) #7
  %65 = add nsw i32 %59, -1
  %66 = icmp sgt i32 %59, 0
  br i1 %66, label %58, label %67

67:                                               ; preds = %58, %55
  %68 = load ptr, ptr %16, align 4
  tail call void @kfree(ptr noundef %68) #7
  br label %69

69:                                               ; preds = %67, %51, %13, %11, %3
  %70 = phi i32 [ -12, %67 ], [ 0, %51 ], [ -22, %3 ], [ -12, %13 ], [ -12, %11 ]
  ret i32 %70
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_epc_mem_init(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.pci_epc_mem_window, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #7
  store i32 %1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.pci_epc_mem_window, ptr %5, i32 0, i32 1
  store i32 %2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.pci_epc_mem_window, ptr %5, i32 0, i32 2
  store i32 %3, ptr %7, align 4
  %8 = call i32 @pci_epc_multi_mem_init(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #7
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_epc_mem_exit(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 3
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi i32 [ 0, %5 ], [ %14, %7 ]
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr ptr, ptr %9, i32 %8
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.pci_epc_mem, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void @kfree(ptr noundef %13) #7
  tail call void @kfree(ptr noundef %11) #7
  %14 = add nuw i32 %8, 1
  %15 = load i32, ptr %2, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %7, label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  tail call void @kfree(ptr noundef %19) #7
  store ptr null, ptr %18, align 4
  %20 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 4
  store ptr null, ptr %20, align 8
  store i32 0, ptr %2, align 4
  br label %21

21:                                               ; preds = %17, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pci_epc_mem_alloc_addr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %55, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 3
  %9 = add i32 %2, -1
  br label %10

10:                                               ; preds = %51, %7
  %11 = phi i32 [ 0, %7 ], [ %52, %51 ]
  %12 = load ptr, ptr %8, align 4
  %13 = getelementptr ptr, ptr %12, i32 %11
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.pci_epc_mem, ptr %14, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %15) #7
  %16 = getelementptr inbounds %struct.pci_epc_mem_window, ptr %14, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %9, %17
  %19 = sub i32 0, %17
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %17, 0
  %22 = tail call i32 @llvm.ctlz.i32(i32 %17, i1 false) #7, !range !9
  %23 = sub nsw i32 31, %22
  %24 = select i1 %21, i32 -1, i32 %23
  %25 = add i32 %20, -1
  %26 = lshr i32 %25, %24
  %27 = icmp eq i32 %26, 0
  %28 = tail call i32 @llvm.ctlz.i32(i32 %26, i1 false) #7, !range !9
  %29 = sub nuw nsw i32 32, %28
  %30 = select i1 %27, i32 0, i32 %29
  %31 = getelementptr inbounds %struct.pci_epc_mem, ptr %14, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.pci_epc_mem, ptr %14, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = tail call i32 @bitmap_find_free_region(ptr noundef %32, i32 noundef %34, i32 noundef %30) #7
  %36 = icmp sgt i32 %35, -1
  br i1 %36, label %37, label %51

37:                                               ; preds = %10
  %38 = load i32, ptr %16, align 4
  %39 = icmp eq i32 %38, 0
  %40 = tail call i32 @llvm.ctlz.i32(i32 %38, i1 false) #7, !range !9
  %41 = sub nsw i32 31, %40
  %42 = select i1 %39, i32 -1, i32 %41
  %43 = load i32, ptr %14, align 4
  %44 = shl i32 %35, %42
  %45 = add i32 %43, %44
  store i32 %45, ptr %1, align 4
  %46 = tail call ptr @ioremap(i32 noundef %45, i32 noundef %20) #7
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = load ptr, ptr %31, align 4
  tail call void @bitmap_release_region(ptr noundef %49, i32 noundef %35, i32 noundef %30) #7
  br label %51

50:                                               ; preds = %37
  tail call void @mutex_unlock(ptr noundef %15) #7
  br label %55

51:                                               ; preds = %48, %10
  tail call void @mutex_unlock(ptr noundef %15) #7
  %52 = add nuw i32 %11, 1
  %53 = load i32, ptr %4, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %10, label %55

55:                                               ; preds = %51, %50, %3
  %56 = phi ptr [ %46, %50 ], [ null, %3 ], [ null, %51 ]
  ret ptr %56
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_find_free_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_epc_mem_free_addr(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %27, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %22, %8
  %12 = phi i32 [ 0, %8 ], [ %23, %22 ]
  %13 = getelementptr ptr, ptr %10, i32 %12
  %14 = load ptr, ptr %13, align 4
  %15 = load i32, ptr %14, align 4
  %16 = icmp ugt i32 %15, %1
  br i1 %16, label %22, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.pci_epc_mem_window, ptr %14, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, %15
  %21 = icmp ugt i32 %20, %1
  br i1 %21, label %25, label %22

22:                                               ; preds = %17, %11
  %23 = add nuw i32 %12, 1
  %24 = icmp eq i32 %23, %6
  br i1 %24, label %27, label %11

25:                                               ; preds = %17
  %26 = icmp eq ptr %14, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %25, %22, %4
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #10
  br label %57

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.pci_epc_mem_window, ptr %14, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  %33 = tail call i32 @llvm.ctlz.i32(i32 %31, i1 false) #7, !range !9
  %34 = sub nsw i32 31, %33
  %35 = select i1 %32, i32 -1, i32 %34
  tail call void @iounmap(ptr noundef %2) #7
  %36 = load i32, ptr %14, align 4
  %37 = sub i32 %1, %36
  %38 = lshr i32 %37, %35
  %39 = add i32 %3, -1
  %40 = add i32 %39, %31
  %41 = sub i32 0, %31
  %42 = and i32 %40, %41
  %43 = load i32, ptr %30, align 4
  %44 = icmp eq i32 %43, 0
  %45 = tail call i32 @llvm.ctlz.i32(i32 %43, i1 false) #7, !range !9
  %46 = sub nsw i32 31, %45
  %47 = select i1 %44, i32 -1, i32 %46
  %48 = add i32 %42, -1
  %49 = lshr i32 %48, %47
  %50 = icmp eq i32 %49, 0
  %51 = tail call i32 @llvm.ctlz.i32(i32 %49, i1 false) #7, !range !9
  %52 = sub nuw nsw i32 32, %51
  %53 = select i1 %50, i32 0, i32 %52
  %54 = getelementptr inbounds %struct.pci_epc_mem, ptr %14, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %54) #7
  %55 = getelementptr inbounds %struct.pci_epc_mem, ptr %14, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  tail call void @bitmap_release_region(ptr noundef %56, i32 noundef %38, i32 noundef %53) #7
  tail call void @mutex_unlock(ptr noundef %54) #7
  br label %57

57:                                               ; preds = %29, %27
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

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
