; ModuleID = '/llk/IR/drivers/mailbox/pl320-ipc.c_pt.bc'
source_filename = "../drivers/mailbox/pl320-ipc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pl320_ipc_transmit:\09\09\09\09\09"
module asm "\09.asciz \09\22pl320_ipc_transmit\22\09\09\09\09\09"
module asm "__kstrtabns_pl320_ipc_transmit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pl320_ipc_register_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22pl320_ipc_register_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_pl320_ipc_register_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pl320_ipc_unregister_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22pl320_ipc_unregister_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_pl320_ipc_unregister_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.lock_class_key = type {}
%struct.amba_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amba_id = type { i32, i32, ptr }
%struct.amba_device = type { %struct.device, %struct.resource, ptr, %struct.device_dma_parameters, i32, i32, %struct.amba_cs_uci_id, [9 x i32], ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.amba_cs_uci_id = type { i32, i32, i32, ptr }

@ipc_m1_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @ipc_m1_lock, i64 12), ptr getelementptr (i8, ptr @ipc_m1_lock, i64 12) } }, align 4
@ipc_completion = internal global %struct.completion { i32 0, %struct.swait_queue_head { %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @ipc_completion, i64 8), ptr getelementptr (i8, ptr @ipc_completion, i64 8) } } }, align 4
@__kstrtab_pl320_ipc_transmit = external dso_local constant [0 x i8], align 1
@__kstrtabns_pl320_ipc_transmit = external dso_local constant [0 x i8], align 1
@__ksymtab_pl320_ipc_transmit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pl320_ipc_transmit to i32), ptr @__kstrtab_pl320_ipc_transmit, ptr @__kstrtabns_pl320_ipc_transmit }, section "___ksymtab_gpl+pl320_ipc_transmit", align 4
@ipc_notifier = internal global %struct.atomic_notifier_head zeroinitializer, align 4
@__kstrtab_pl320_ipc_register_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_pl320_ipc_register_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_pl320_ipc_register_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pl320_ipc_register_notifier to i32), ptr @__kstrtab_pl320_ipc_register_notifier, ptr @__kstrtabns_pl320_ipc_register_notifier }, section "___ksymtab_gpl+pl320_ipc_register_notifier", align 4
@__kstrtab_pl320_ipc_unregister_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_pl320_ipc_unregister_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_pl320_ipc_unregister_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pl320_ipc_unregister_notifier to i32), ptr @__kstrtab_pl320_ipc_unregister_notifier, ptr @__kstrtabns_pl320_ipc_unregister_notifier }, section "___ksymtab_gpl+pl320_ipc_unregister_notifier", align 4
@__initcall__kmod_pl320_ipc__247_187_ipc_init4 = internal global ptr @ipc_init, section ".initcall4.init", align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@ipc_base = internal unnamed_addr global ptr null, align 4
@pl320_driver = internal global %struct.amba_driver { %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @pl320_probe, ptr null, ptr null, ptr @pl320_ids }, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"pl320\00", align 1
@pl320_ids = internal global [2 x %struct.amba_id] [%struct.amba_id { i32 267040, i32 1048575, ptr null }, %struct.amba_id zeroinitializer], align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__initcall__kmod_pl320_ipc__247_187_ipc_init4, ptr @__ksymtab_pl320_ipc_register_notifier, ptr @__ksymtab_pl320_ipc_transmit, ptr @__ksymtab_pl320_ipc_unregister_notifier], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pl320_ipc_transmit(ptr nocapture noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @ipc_m1_lock) #4
  store i32 0, ptr @ipc_completion, align 4
  tail call void @__init_swait_queue_head(ptr noundef getelementptr inbounds (%struct.completion, ptr @ipc_completion, i32 0, i32 1), ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #4
  %2 = load i32, ptr %0, align 4
  %3 = load ptr, ptr @ipc_base, align 4
  %4 = getelementptr i8, ptr %3, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %2) #4, !srcloc !8
  %5 = getelementptr i32, ptr %0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = load ptr, ptr @ipc_base, align 4
  %8 = getelementptr i8, ptr %7, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #4, !srcloc !8
  %9 = getelementptr i32, ptr %0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = load ptr, ptr @ipc_base, align 4
  %12 = getelementptr i8, ptr %11, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #4, !srcloc !8
  %13 = getelementptr i32, ptr %0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = load ptr, ptr @ipc_base, align 4
  %16 = getelementptr i8, ptr %15, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #4, !srcloc !8
  %17 = getelementptr i32, ptr %0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = load ptr, ptr @ipc_base, align 4
  %20 = getelementptr i8, ptr %19, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #4, !srcloc !8
  %21 = getelementptr i32, ptr %0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = load ptr, ptr @ipc_base, align 4
  %24 = getelementptr i8, ptr %23, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #4, !srcloc !8
  %25 = getelementptr i32, ptr %0, i32 6
  %26 = load i32, ptr %25, align 4
  %27 = load ptr, ptr @ipc_base, align 4
  %28 = getelementptr i8, ptr %27, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #4, !srcloc !8
  %29 = load ptr, ptr @ipc_base, align 4
  %30 = getelementptr i8, ptr %29, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 1) #4, !srcloc !8
  %31 = tail call i32 @wait_for_completion_timeout(ptr noundef nonnull @ipc_completion, i32 noundef 100) #4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %56, label %33

33:                                               ; preds = %1
  %34 = load ptr, ptr @ipc_base, align 4
  %35 = getelementptr i8, ptr %34, i32 100
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #4, !srcloc !9
  store i32 %36, ptr %0, align 4
  %37 = load ptr, ptr @ipc_base, align 4
  %38 = getelementptr i8, ptr %37, i32 104
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #4, !srcloc !9
  store i32 %39, ptr %5, align 4
  %40 = load ptr, ptr @ipc_base, align 4
  %41 = getelementptr i8, ptr %40, i32 108
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #4, !srcloc !9
  store i32 %42, ptr %9, align 4
  %43 = load ptr, ptr @ipc_base, align 4
  %44 = getelementptr i8, ptr %43, i32 112
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #4, !srcloc !9
  store i32 %45, ptr %13, align 4
  %46 = load ptr, ptr @ipc_base, align 4
  %47 = getelementptr i8, ptr %46, i32 116
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #4, !srcloc !9
  store i32 %48, ptr %17, align 4
  %49 = load ptr, ptr @ipc_base, align 4
  %50 = getelementptr i8, ptr %49, i32 120
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #4, !srcloc !9
  store i32 %51, ptr %21, align 4
  %52 = load ptr, ptr @ipc_base, align 4
  %53 = getelementptr i8, ptr %52, i32 124
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #4, !srcloc !9
  store i32 %54, ptr %25, align 4
  %55 = load i32, ptr %5, align 4
  br label %56

56:                                               ; preds = %33, %1
  %57 = phi i32 [ %55, %33 ], [ -110, %1 ]
  tail call void @mutex_unlock(ptr noundef nonnull @ipc_m1_lock) #4
  ret i32 %57
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pl320_ipc_register_notifier(ptr noundef %0) #0 {
  %2 = tail call i32 @atomic_notifier_chain_register(ptr noundef nonnull @ipc_notifier, ptr noundef %0) #4
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pl320_ipc_unregister_notifier(ptr noundef %0) #0 {
  %2 = tail call i32 @atomic_notifier_chain_unregister(ptr noundef nonnull @ipc_notifier, ptr noundef %0) #4
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ipc_init() #3 section ".init.text" {
  %1 = tail call i32 @amba_driver_register(ptr noundef nonnull @pl320_driver) #4
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amba_driver_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl320_probe(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 1, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = sub i32 1, %4
  %8 = add i32 %7, %6
  %9 = tail call ptr @ioremap(i32 noundef %4, i32 noundef %8) #4
  store ptr %9, ptr @ipc_base, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %38, label %11

11:                                               ; preds = %2
  %12 = getelementptr i8, ptr %9, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 0) #4, !srcloc !8
  %13 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 7
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load ptr, ptr %0, align 4
  br label %20

20:                                               ; preds = %18, %11
  %21 = phi ptr [ %19, %18 ], [ %16, %11 ]
  %22 = tail call i32 @request_threaded_irq(i32 noundef %14, ptr noundef nonnull @ipc_handler, ptr noundef null, i32 noundef 0, ptr noundef %21, ptr noundef null) #4
  %23 = icmp slt i32 %22, 0
  %24 = load ptr, ptr @ipc_base, align 4
  br i1 %23, label %37, label %25

25:                                               ; preds = %20
  %26 = getelementptr i8, ptr %24, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 2) #4, !srcloc !8
  %27 = load ptr, ptr @ipc_base, align 4
  %28 = getelementptr i8, ptr %27, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 1) #4, !srcloc !8
  %29 = load ptr, ptr @ipc_base, align 4
  %30 = getelementptr i8, ptr %29, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 3) #4, !srcloc !8
  %31 = load ptr, ptr @ipc_base, align 4
  %32 = getelementptr i8, ptr %31, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 1) #4, !srcloc !8
  %33 = load ptr, ptr @ipc_base, align 4
  %34 = getelementptr i8, ptr %33, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 2) #4, !srcloc !8
  %35 = load ptr, ptr @ipc_base, align 4
  %36 = getelementptr i8, ptr %35, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 3) #4, !srcloc !8
  br label %38

37:                                               ; preds = %20
  tail call void @iounmap(ptr noundef %24) #4
  br label %38

38:                                               ; preds = %37, %25, %2
  %39 = phi i32 [ %22, %37 ], [ 0, %25 ], [ -12, %2 ]
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ipc_handler(i32 noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca [7 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #4
  %4 = load ptr, ptr @ipc_base, align 4
  %5 = getelementptr i8, ptr %4, i32 2056
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #4, !srcloc !9
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr @ipc_base, align 4
  %11 = getelementptr i8, ptr %10, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 0) #4, !srcloc !8
  tail call void @complete(ptr noundef nonnull @ipc_completion) #4
  br label %12

12:                                               ; preds = %9, %2
  %13 = and i32 %6, 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %46, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr @ipc_base, align 4
  %17 = getelementptr i8, ptr %16, i32 164
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #4
  store i32 %18, ptr %3, align 4
  %19 = load ptr, ptr @ipc_base, align 4
  %20 = getelementptr i8, ptr %19, i32 168
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #4, !srcloc !9
  %22 = getelementptr inbounds i32, ptr %3, i32 1
  store i32 %21, ptr %22, align 4
  %23 = load ptr, ptr @ipc_base, align 4
  %24 = getelementptr i8, ptr %23, i32 172
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #4, !srcloc !9
  %26 = getelementptr inbounds i32, ptr %3, i32 2
  store i32 %25, ptr %26, align 4
  %27 = load ptr, ptr @ipc_base, align 4
  %28 = getelementptr i8, ptr %27, i32 176
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #4, !srcloc !9
  %30 = getelementptr inbounds i32, ptr %3, i32 3
  store i32 %29, ptr %30, align 4
  %31 = load ptr, ptr @ipc_base, align 4
  %32 = getelementptr i8, ptr %31, i32 180
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #4, !srcloc !9
  %34 = getelementptr inbounds i32, ptr %3, i32 4
  store i32 %33, ptr %34, align 4
  %35 = load ptr, ptr @ipc_base, align 4
  %36 = getelementptr i8, ptr %35, i32 184
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #4, !srcloc !9
  %38 = getelementptr inbounds i32, ptr %3, i32 5
  store i32 %37, ptr %38, align 4
  %39 = load ptr, ptr @ipc_base, align 4
  %40 = getelementptr i8, ptr %39, i32 188
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #4, !srcloc !9
  %42 = getelementptr inbounds i32, ptr %3, i32 6
  store i32 %41, ptr %42, align 4
  %43 = call i32 @atomic_notifier_call_chain(ptr noundef nonnull @ipc_notifier, i32 noundef %18, ptr noundef %22) #4
  %44 = load ptr, ptr @ipc_base, align 4
  %45 = getelementptr i8, ptr %44, i32 160
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 2) #4, !srcloc !8
  br label %46

46:                                               ; preds = %15, %12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }

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
!8 = !{i64 2386164}
!9 = !{i64 2386582}
