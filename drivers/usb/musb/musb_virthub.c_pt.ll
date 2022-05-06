; ModuleID = '/llk/IR/drivers/usb/musb/musb_virthub.c_pt.bc'
source_filename = "../drivers/usb/musb/musb_virthub.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_musb_root_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22musb_root_disconnect\22\09\09\09\09\09"
module asm "__kstrtabns_musb_root_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.musb = type { %struct.spinlock, %struct.spinlock, %struct.musb_io, ptr, %struct.musb_context_registers, ptr, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, i16, i16, i16, i32, i32, i8, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.timer_list, %struct.timer_list, %struct.notifier_block, ptr, ptr, ptr, ptr, i8, i16, i16, ptr, ptr, i32, i8, [16 x %struct.musb_hw_ep], i16, i16, i8, ptr, i8, i32, i8, i32, i8, i32, i32, [3 x i8], i8, i8, i16, i8, %struct.usb_gadget, ptr, ptr, ptr, i32, ptr }
%struct.musb_io = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.musb_context_registers = type { i8, i8, i16, i8, i8, i8, i8, i8, i32, [16 x %struct.musb_csr_regs] }
%struct.musb_csr_regs = type { i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.musb_hw_ep = type { ptr, ptr, ptr, i8, i8, i8, i8, i16, i16, ptr, ptr, ptr, ptr, i8, i8, %struct.musb_ep, %struct.musb_ep }
%struct.musb_ep = type { %struct.usb_ep, [12 x i8], ptr, ptr, i8, i8, i8, i16, ptr, ptr, %struct.list_head, i8, i8, i8 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.musb_platform_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [0 x i32] }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.65, i32 }
%union.anon.65 = type { ptr }
%struct.usb_hub_descriptor = type <{ i8, i8, i8, i16, i8, i8, %union.anon.72 }>
%union.anon.72 = type { %struct.anon.73 }
%struct.anon.73 = type { [4 x i8], [4 x i8] }

@musb_readb = external dso_local local_unnamed_addr global ptr, align 4
@.str = private unnamed_addr constant [37 x i8] c"root port resume stopped, power %02x\00", align 1
@musb_writeb = external dso_local local_unnamed_addr global ptr, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Root port suspended, power %02x\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.2 = private unnamed_addr constant [21 x i8] c"bogus rh suspend? %s\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Root port resuming, power %02x\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"HNP: Returning from HNP; no hub reset from b_idle\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"root port reset stopped\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"high-speed device connected\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"host disconnect (%s)\00", align 1
@__kstrtab_musb_root_disconnect = external dso_local constant [0 x i8], align 1
@__kstrtabns_musb_root_disconnect = external dso_local constant [0 x i8], align 1
@__ksymtab_musb_root_disconnect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @musb_root_disconnect to i32), ptr @__kstrtab_musb_root_disconnect, ptr @__kstrtabns_musb_root_disconnect }, section "___ksymtab_gpl+musb_root_disconnect", align 4
@.str.8 = private unnamed_addr constant [17 x i8] c"clear feature %d\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"port status %08x\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"set feature %d\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_musb_root_disconnect], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @musb_host_finish_resume(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -536
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #2
  %4 = load ptr, ptr @musb_readb, align 4
  %5 = getelementptr i8, ptr %0, i32 208
  %6 = load ptr, ptr %5, align 8
  %7 = tail call zeroext i8 %4(ptr noundef %6, i32 noundef 1) #2
  %8 = and i8 %7, -5
  %9 = zext i8 %8 to i32
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef %9) #2
  %10 = load ptr, ptr @musb_writeb, align 4
  %11 = load ptr, ptr %5, align 8
  tail call void %10(ptr noundef %11, i32 noundef 1, i8 noundef zeroext %8) #2
  %12 = getelementptr i8, ptr %0, i32 3860
  %13 = load i24, ptr %12, align 4
  %14 = or i24 %13, 4
  store i24 %14, ptr %12, align 4
  %15 = getelementptr i8, ptr %0, i32 96
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 2147221499
  %18 = or i32 %17, 262144
  store i32 %18, ptr %15, align 8
  %19 = getelementptr i8, ptr %0, i32 4444
  %20 = load ptr, ptr %19, align 4
  tail call void @usb_hcd_poll_rh_status(ptr noundef %20) #2
  %21 = getelementptr i8, ptr %0, i32 220
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.usb_phy, ptr %22, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.usb_otg, ptr %24, i32 0, i32 5
  store i32 9, ptr %25, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_dbg(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_poll_rh_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @musb_port_suspend(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 31
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_phy, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 27
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 44
  %10 = load i8, ptr %9, align 8, !range !8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %109, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr @musb_readb, align 4
  %14 = tail call zeroext i8 %13(ptr noundef %8, i32 noundef 1) #2
  br i1 %1, label %15, label %95

15:                                               ; preds = %12
  %16 = zext i8 %14 to i32
  %17 = and i32 %16, 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %109

19:                                               ; preds = %15
  %20 = and i32 %16, 2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %19
  %23 = or i8 %14, 2
  %24 = load ptr, ptr @musb_writeb, align 4
  tail call void %24(ptr noundef %8, i32 noundef 1, i8 noundef zeroext %23) #2
  %25 = load ptr, ptr @musb_readb, align 4
  %26 = tail call zeroext i8 %25(ptr noundef %8, i32 noundef 1) #2
  br label %27

27:                                               ; preds = %32, %22
  %28 = phi i8 [ %26, %22 ], [ %34, %32 ]
  %29 = phi i32 [ 10000, %22 ], [ %35, %32 ]
  %30 = and i8 %28, 2
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load ptr, ptr @musb_readb, align 4
  %34 = tail call zeroext i8 %33(ptr noundef %8, i32 noundef 1) #2
  %35 = add nsw i32 %29, -1
  %36 = icmp eq i32 %29, 0
  br i1 %36, label %37, label %27

37:                                               ; preds = %32, %27
  %38 = phi i8 [ %34, %32 ], [ %28, %27 ]
  %39 = zext i8 %38 to i32
  br label %40

40:                                               ; preds = %37, %19
  %41 = phi i32 [ %39, %37 ], [ %16, %19 ]
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %41) #2
  %42 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 13
  %43 = load i32, ptr %42, align 8
  %44 = or i32 %43, 4
  store i32 %44, ptr %42, align 8
  %45 = load ptr, ptr %3, align 4
  %46 = getelementptr inbounds %struct.usb_phy, ptr %45, i32 0, i32 5
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.usb_otg, ptr %47, i32 0, i32 5
  %49 = load i32, ptr %48, align 4
  switch i32 %49, label %93 [
    i32 9, label %50
    i32 5, label %75
  ]

50:                                               ; preds = %40
  store i32 10, ptr %48, align 4
  %51 = getelementptr inbounds %struct.usb_otg, ptr %6, i32 0, i32 3
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.usb_bus, ptr %52, i32 0, i32 6
  %54 = load i8, ptr %53, align 2
  %55 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 47
  %56 = load i24, ptr %55, align 4
  %57 = shl i8 %54, 1
  %58 = and i8 %57, 4
  %59 = zext i8 %58 to i24
  %60 = and i24 %56, -5
  %61 = or i24 %60, %59
  store i24 %61, ptr %55, align 4
  %62 = icmp eq i8 %58, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %50
  %64 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 21
  %65 = load volatile i32, ptr @jiffies, align 64
  %66 = add i32 %65, 20
  %67 = tail call i32 @mod_timer(ptr noundef %64, i32 noundef %66) #2
  br label %68

68:                                               ; preds = %63, %50
  %69 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 3
  %70 = load ptr, ptr %69, align 8
  %71 = getelementptr inbounds %struct.musb_platform_ops, ptr %70, i32 0, i32 23
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %109, label %74

74:                                               ; preds = %68
  tail call void %72(ptr noundef %0, i32 noundef 0) #2
  br label %109

75:                                               ; preds = %40
  store i32 4, ptr %48, align 4
  %76 = getelementptr inbounds %struct.usb_otg, ptr %6, i32 0, i32 3
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.usb_bus, ptr %77, i32 0, i32 6
  %79 = load i8, ptr %78, align 2
  %80 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 47
  %81 = load i24, ptr %80, align 4
  %82 = shl i8 %79, 1
  %83 = and i8 %82, 4
  %84 = zext i8 %83 to i24
  %85 = and i24 %81, -5
  %86 = or i24 %85, %84
  store i24 %86, ptr %80, align 4
  %87 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 3
  %88 = load ptr, ptr %87, align 8
  %89 = getelementptr inbounds %struct.musb_platform_ops, ptr %88, i32 0, i32 23
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %109, label %92

92:                                               ; preds = %75
  tail call void %90(ptr noundef %0, i32 noundef 0) #2
  br label %109

93:                                               ; preds = %40
  %94 = tail call ptr @usb_otg_state_string(i32 noundef %49) #2
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %94) #2
  br label %109

95:                                               ; preds = %12
  %96 = and i8 %14, 2
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %109, label %98

98:                                               ; preds = %95
  %99 = and i8 %14, -7
  %100 = or i8 %99, 4
  %101 = load ptr, ptr @musb_writeb, align 4
  tail call void %101(ptr noundef %8, i32 noundef 1, i8 noundef zeroext %100) #2
  %102 = zext i8 %100 to i32
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %102) #2
  %103 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 13
  %104 = load i32, ptr %103, align 8
  %105 = or i32 %104, -2147483648
  store i32 %105, ptr %103, align 8
  %106 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 8
  %107 = load ptr, ptr @system_wq, align 4
  %108 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %107, ptr noundef %106, i32 noundef 4) #2
  br label %109

109:                                              ; preds = %98, %95, %93, %92, %75, %74, %68, %15, %2
  %110 = phi i32 [ 0, %2 ], [ -16, %15 ], [ 0, %93 ], [ 0, %68 ], [ 0, %74 ], [ 0, %75 ], [ 0, %92 ], [ 0, %95 ], [ 0, %98 ]
  ret i32 %110
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_otg_state_string(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @musb_port_reset(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 27
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 31
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usb_phy, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.usb_otg, ptr %8, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.4) #2
  %13 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 13
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, -17
  store i32 %15, ptr %13, align 8
  br label %90

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 44
  %18 = load i8, ptr %17, align 8, !range !8
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %90, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr @musb_readb, align 4
  %22 = tail call zeroext i8 %21(ptr noundef %4, i32 noundef 1) #2
  br i1 %1, label %23, label %55

23:                                               ; preds = %20
  %24 = and i8 %22, 4
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %44, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 14
  %28 = load i32, ptr %27, align 4
  %29 = load volatile i32, ptr @jiffies, align 64
  %30 = sub i32 %28, %29
  %31 = icmp ne i32 %28, 0
  %32 = icmp sgt i32 %30, 0
  %33 = select i1 %31, i1 %32, i1 false
  br i1 %33, label %34, label %38

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 7
  %36 = load ptr, ptr @system_wq, align 4
  %37 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %36, ptr noundef %35, i32 noundef %30) #2
  br label %90

38:                                               ; preds = %26
  %39 = load ptr, ptr @musb_writeb, align 4
  %40 = and i8 %22, -5
  tail call void %39(ptr noundef %4, i32 noundef 1, i8 noundef zeroext %40) #2
  %41 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 7
  %42 = load ptr, ptr @system_wq, align 4
  %43 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %42, ptr noundef %41, i32 noundef 1) #2
  br label %90

44:                                               ; preds = %23
  %45 = and i8 %22, -16
  %46 = load ptr, ptr @musb_writeb, align 4
  %47 = or i8 %45, 8
  tail call void %46(ptr noundef %4, i32 noundef 1, i8 noundef zeroext %47) #2
  %48 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 13
  %49 = load i32, ptr %48, align 8
  %50 = and i32 %49, -19
  %51 = or i32 %50, 16
  store i32 %51, ptr %48, align 8
  %52 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 7
  %53 = load ptr, ptr @system_wq, align 4
  %54 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %53, ptr noundef %52, i32 noundef 5) #2
  br label %90

55:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.5) #2
  %56 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 3
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr inbounds %struct.musb_platform_ops, ptr %57, i32 0, i32 27
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %55
  tail call void %59(ptr noundef %0) #2
  br label %62

62:                                               ; preds = %61, %55
  %63 = load ptr, ptr @musb_writeb, align 4
  %64 = and i8 %22, -9
  tail call void %63(ptr noundef %4, i32 noundef 1, i8 noundef zeroext %64) #2
  %65 = load ptr, ptr %56, align 8
  %66 = getelementptr inbounds %struct.musb_platform_ops, ptr %65, i32 0, i32 28
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %62
  tail call void %67(ptr noundef %0) #2
  br label %70

70:                                               ; preds = %69, %62
  %71 = load ptr, ptr @musb_readb, align 4
  %72 = tail call zeroext i8 %71(ptr noundef %4, i32 noundef 1) #2
  %73 = and i8 %72, 16
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 13
  %77 = load i32, ptr %76, align 8
  br label %82

78:                                               ; preds = %70
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.6) #2
  %79 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 13
  %80 = load i32, ptr %79, align 8
  %81 = or i32 %80, 1024
  br label %82

82:                                               ; preds = %78, %75
  %83 = phi i32 [ %77, %75 ], [ %81, %78 ]
  %84 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 13
  %85 = and i32 %83, -1179667
  %86 = or i32 %85, 1179650
  store i32 %86, ptr %84, align 8
  %87 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 54
  %88 = load ptr, ptr %87, align 4
  tail call void @usb_hcd_poll_rh_status(ptr noundef %88) #2
  %89 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 36
  store i16 3, ptr %89, align 4
  br label %90

90:                                               ; preds = %82, %44, %38, %34, %16, %12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @musb_root_disconnect(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 31
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.usb_phy, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 13
  store i32 65792, ptr %6, align 8
  %7 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 54
  %8 = load ptr, ptr %7, align 4
  tail call void @usb_hcd_poll_rh_status(ptr noundef %8) #2
  %9 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 47
  %10 = load i24, ptr %9, align 4
  %11 = and i24 %10, -5
  store i24 %11, ptr %9, align 4
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr inbounds %struct.usb_phy, ptr %12, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.usb_otg, ptr %14, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  switch i32 %16, label %32 [
    i32 10, label %17
    i32 9, label %28
    i32 12, label %31
  ]

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.usb_otg, ptr %5, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.usb_bus, ptr %19, i32 0, i32 6
  %21 = load i8, ptr %20, align 2
  %22 = and i8 %21, 2
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  store i32 11, ptr %15, align 4
  %25 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 52, i32 17
  %26 = load i32, ptr %25, align 4
  %27 = or i32 %26, 4
  store i32 %27, ptr %25, align 4
  br label %34

28:                                               ; preds = %17, %1
  store i32 8, ptr %15, align 4
  %29 = load i24, ptr %9, align 4
  %30 = and i24 %29, -5
  store i24 %30, ptr %9, align 4
  br label %34

31:                                               ; preds = %1
  store i32 1, ptr %15, align 4
  br label %34

32:                                               ; preds = %1
  %33 = tail call ptr @usb_otg_state_string(i32 noundef %16) #2
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef %33) #2
  br label %34

34:                                               ; preds = %32, %31, %28, %24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @musb_hub_status_data(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = tail call ptr @hcd_to_musb(ptr noundef %0) #2
  %4 = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 13
  %5 = load i32, ptr %4, align 8
  %6 = icmp ult i32 %5, 65536
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  store i8 2, ptr %1, align 1
  br label %8

8:                                                ; preds = %7, %2
  %9 = phi i32 [ 1, %7 ], [ 0, %2 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hcd_to_musb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @musb_hub_control(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3, ptr nocapture noundef writeonly %4, i16 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = tail call ptr @hcd_to_musb(ptr noundef %0) #2
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #2
  %9 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 12
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14, !prof !9

13:                                               ; preds = %6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #2
  br label %120

14:                                               ; preds = %6
  switch i16 %1, label %111 [
    i16 8193, label %15
    i16 8195, label %15
    i16 8961, label %17
    i16 -24570, label %42
    i16 -24576, label %50
    i16 -23808, label %51
    i16 8963, label %58
  ]

15:                                               ; preds = %14, %14
  %16 = icmp ult i16 %2, 2
  br i1 %16, label %112, label %111

17:                                               ; preds = %14
  %18 = and i16 %3, 255
  %19 = icmp eq i16 %18, 1
  br i1 %19, label %20, label %111

20:                                               ; preds = %17
  %21 = zext i16 %2 to i32
  switch i16 %2, label %111 [
    i16 1, label %36
    i16 2, label %22
    i16 8, label %24
    i16 16, label %36
    i16 17, label %36
    i16 19, label %36
    i16 20, label %36
    i16 18, label %36
  ]

22:                                               ; preds = %20
  %23 = tail call i32 @musb_port_suspend(ptr noundef %7, i1 noundef zeroext false)
  br label %36

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 6
  %26 = load i8, ptr %25, align 2
  %27 = and i8 %26, 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.musb, ptr %7, i32 0, i32 3
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.musb_platform_ops, ptr %31, i32 0, i32 26
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  tail call void %33(ptr noundef %7, i32 noundef 0) #2
  br label %36

36:                                               ; preds = %35, %29, %24, %22, %20, %20, %20, %20, %20, %20
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %7, ptr noundef nonnull @.str.8, i32 noundef %21) #2
  %37 = shl nuw nsw i32 1, %21
  %38 = xor i32 %37, -1
  %39 = getelementptr inbounds %struct.musb, ptr %7, i32 0, i32 13
  %40 = load i32, ptr %39, align 8
  %41 = and i32 %40, %38
  store i32 %41, ptr %39, align 8
  br label %112

42:                                               ; preds = %14
  store i8 9, ptr %4, align 1
  %43 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %4, i32 0, i32 1
  store i8 41, ptr %43, align 1
  %44 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %4, i32 0, i32 2
  store i8 1, ptr %44, align 1
  %45 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %4, i32 0, i32 3
  store i16 17, ptr %45, align 1
  %46 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %4, i32 0, i32 4
  store i8 5, ptr %46, align 1
  %47 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %4, i32 0, i32 5
  store i8 0, ptr %47, align 1
  %48 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %4, i32 0, i32 6
  store i8 2, ptr %48, align 1
  %49 = getelementptr %struct.usb_hub_descriptor, ptr %4, i32 0, i32 6, i32 0, i32 0, i32 1
  store i8 -1, ptr %49, align 1
  br label %112

50:                                               ; preds = %14
  store i32 0, ptr %4, align 4
  br label %112

51:                                               ; preds = %14
  %52 = icmp eq i16 %3, 1
  br i1 %52, label %53, label %111

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.musb, ptr %7, i32 0, i32 13
  %55 = load i32, ptr %54, align 8
  %56 = and i32 %55, 2147483647
  store i32 %56, ptr %4, align 1
  %57 = load i32, ptr %54, align 8
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %7, ptr noundef nonnull @.str.9, i32 noundef %57) #2
  br label %112

58:                                               ; preds = %14
  %59 = and i16 %3, 255
  %60 = icmp eq i16 %59, 1
  br i1 %60, label %61, label %111

61:                                               ; preds = %58
  %62 = zext i16 %2 to i32
  switch i16 %2, label %111 [
    i16 8, label %63
    i16 4, label %76
    i16 2, label %81
    i16 21, label %87
  ]

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 6
  %65 = load i8, ptr %64, align 2
  %66 = and i8 %65, 1
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %115

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.musb, ptr %7, i32 0, i32 41
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 %70, 1
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %7, ptr noundef nonnull @.str.10, i32 noundef %62) #2
  %72 = shl nuw nsw i32 1, %62
  %73 = getelementptr inbounds %struct.musb, ptr %7, i32 0, i32 13
  %74 = load i32, ptr %73, align 8
  %75 = or i32 %74, %72
  store i32 %75, ptr %73, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #2
  br i1 %71, label %114, label %120

76:                                               ; preds = %61
  tail call void @musb_port_reset(ptr noundef %7, i1 noundef zeroext true)
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %7, ptr noundef nonnull @.str.10, i32 noundef %62) #2
  %77 = shl nuw nsw i32 1, %62
  %78 = getelementptr inbounds %struct.musb, ptr %7, i32 0, i32 13
  %79 = load i32, ptr %78, align 8
  %80 = or i32 %79, %77
  store i32 %80, ptr %78, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #2
  br label %120

81:                                               ; preds = %61
  %82 = tail call i32 @musb_port_suspend(ptr noundef %7, i1 noundef zeroext true)
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %7, ptr noundef nonnull @.str.10, i32 noundef %62) #2
  %83 = shl nuw nsw i32 1, %62
  %84 = getelementptr inbounds %struct.musb, ptr %7, i32 0, i32 13
  %85 = load i32, ptr %84, align 8
  %86 = or i32 %85, %83
  store i32 %86, ptr %84, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #2
  br label %120

87:                                               ; preds = %61
  %88 = getelementptr inbounds %struct.musb, ptr %7, i32 0, i32 44
  %89 = load i8, ptr %88, align 8, !range !8
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %91, label %111, !prof !10

91:                                               ; preds = %87
  %92 = lshr i16 %3, 8
  %93 = trunc i16 %92 to i8
  switch i8 %93, label %111 [
    i8 1, label %102
    i8 2, label %94
    i8 3, label %95
    i8 4, label %96
    i8 5, label %97
    i8 6, label %101
  ]

94:                                               ; preds = %91
  br label %102

95:                                               ; preds = %91
  br label %102

96:                                               ; preds = %91
  tail call void @musb_load_testpacket(ptr noundef %7) #2
  br label %102

97:                                               ; preds = %91
  %98 = load ptr, ptr @musb_writeb, align 4
  %99 = getelementptr inbounds %struct.musb, ptr %7, i32 0, i32 27
  %100 = load ptr, ptr %99, align 8
  tail call void %98(ptr noundef %100, i32 noundef 96, i8 noundef zeroext 1) #2
  br label %102

101:                                              ; preds = %91
  br label %102

102:                                              ; preds = %101, %97, %96, %95, %94, %91
  %103 = phi i8 [ 64, %101 ], [ -112, %97 ], [ 8, %96 ], [ 1, %95 ], [ 4, %94 ], [ 2, %91 ]
  %104 = load ptr, ptr @musb_writeb, align 4
  %105 = getelementptr inbounds %struct.musb, ptr %7, i32 0, i32 27
  %106 = load ptr, ptr %105, align 8
  tail call void %104(ptr noundef %106, i32 noundef 15, i8 noundef zeroext %103) #2
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %7, ptr noundef nonnull @.str.10, i32 noundef %62) #2
  %107 = shl nuw nsw i32 1, %62
  %108 = getelementptr inbounds %struct.musb, ptr %7, i32 0, i32 13
  %109 = load i32, ptr %108, align 8
  %110 = or i32 %109, %107
  store i32 %110, ptr %108, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #2
  br label %120

111:                                              ; preds = %91, %87, %61, %58, %51, %20, %17, %15, %14
  br label %112

112:                                              ; preds = %111, %53, %50, %42, %36, %15
  %113 = phi i32 [ 0, %15 ], [ 0, %36 ], [ 0, %42 ], [ 0, %50 ], [ 0, %53 ], [ -32, %111 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #2
  br label %120

114:                                              ; preds = %68
  tail call void @musb_start(ptr noundef %7) #2
  br label %120

115:                                              ; preds = %63
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %7, ptr noundef nonnull @.str.10, i32 noundef %62) #2
  %116 = shl nuw nsw i32 1, %62
  %117 = getelementptr inbounds %struct.musb, ptr %7, i32 0, i32 13
  %118 = load i32, ptr %117, align 8
  %119 = or i32 %118, %116
  store i32 %119, ptr %117, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #2
  br label %120

120:                                              ; preds = %115, %114, %112, %102, %81, %76, %68, %13
  %121 = phi i32 [ -108, %13 ], [ 0, %114 ], [ 0, %68 ], [ %113, %112 ], [ 0, %102 ], [ 0, %81 ], [ 0, %76 ], [ 0, %115 ]
  ret i32 %121
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_load_testpacket(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

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
!8 = !{i8 0, i8 2}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{!"branch_weights", i32 2000, i32 1}
