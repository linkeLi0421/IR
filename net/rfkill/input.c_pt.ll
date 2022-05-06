; ModuleID = '/llk/IR/net/rfkill/input.c_pt.bc'
source_filename = "../net/rfkill/input.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.57 }
%union.anon.57 = type { ptr }
%struct.input_handler = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, %struct.list_head, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.input_device_id = type { i32, i16, i16, i16, i16, [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }
%struct.input_handle = type { ptr, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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

@__param_str_master_switch_mode = internal constant [26 x i8] c"rfkill.master_switch_mode\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@rfkill_master_switch_mode = internal global i32 2, align 4
@__param_master_switch_mode = internal constant %struct.kernel_param { ptr @__param_str_master_switch_mode, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.57 { ptr @rfkill_master_switch_mode } }, section "__param", align 4
@__UNIQUE_ID_master_switch_modetype206 = internal constant [40 x i8] c"rfkill.parmtype=master_switch_mode:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_master_switch_mode207 = internal constant [109 x i8] c"rfkill.parm=master_switch_mode:SW_RFKILL_ALL ON should: 0=do nothing (only unlock); 1=restore; 2=unblock all\00", section ".modinfo", align 1
@rfkill_master_switch_op = internal unnamed_addr global i32 0, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@rfkill_last_scheduled = internal unnamed_addr global i32 0, align 4
@rfkill_handler = internal global %struct.input_handler { ptr null, ptr @rfkill_event, ptr null, ptr null, ptr null, ptr @rfkill_connect, ptr @rfkill_disconnect, ptr @rfkill_start, i8 0, i32 0, ptr @.str, ptr @rfkill_ids, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer }, align 4
@rfkill_op_work = internal global %struct.delayed_work { %struct.work_struct { %struct.atomic_t { i32 -32 }, %struct.list_head { ptr getelementptr (i8, ptr @rfkill_op_work, i64 4), ptr getelementptr (i8, ptr @rfkill_op_work, i64 4) }, ptr @rfkill_op_handler }, %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @delayed_work_timer_fn, i32 2097152 }, ptr null, i32 0 }, align 4
@.str = private unnamed_addr constant [7 x i8] c"rfkill\00", align 1
@rfkill_op_lock = internal global %struct.spinlock zeroinitializer, align 4
@rfkill_op_pending = internal unnamed_addr global i1 false, align 1
@rfkill_sw_pending.0 = internal unnamed_addr global i32 0, align 4
@rfkill_sw_state.0 = internal unnamed_addr global i32 0, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@rfkill_op = internal unnamed_addr global i32 0, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@rfkill_ids = internal constant <{ { i32, i16, i16, i16, i16, [1 x i32], <{ [8 x i32], [16 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, { i32, i16, i16, i16, i16, [1 x i32], <{ [8 x i32], [16 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, { i32, i16, i16, i16, i16, [1 x i32], <{ [8 x i32], [16 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, { i32, i16, i16, i16, i16, [1 x i32], <{ [8 x i32], [16 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, { i32, i16, i16, i16, i16, [1 x i32], <{ [8 x i32], [16 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, %struct.input_device_id, %struct.input_device_id }> <{ { i32, i16, i16, i16, i16, [1 x i32], <{ [8 x i32], [16 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 } { i32 48, i16 0, i16 0, i16 0, i16 0, [1 x i32] [i32 2], <{ [8 x i32], [16 x i32] }> <{ [8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16384], [16 x i32] zeroinitializer }>, [1 x i32] zeroinitializer, [2 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, i32 0 }, { i32, i16, i16, i16, i16, [1 x i32], <{ [8 x i32], [16 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 } { i32 48, i16 0, i16 0, i16 0, i16 0, [1 x i32] [i32 2], <{ [8 x i32], [16 x i32] }> <{ [8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8192], [16 x i32] zeroinitializer }>, [1 x i32] zeroinitializer, [2 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, i32 0 }, { i32, i16, i16, i16, i16, [1 x i32], <{ [8 x i32], [16 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 } { i32 48, i16 0, i16 0, i16 0, i16 0, [1 x i32] [i32 2], <{ [8 x i32], [16 x i32] }> <{ [8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 32768], [16 x i32] zeroinitializer }>, [1 x i32] zeroinitializer, [2 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, i32 0 }, { i32, i16, i16, i16, i16, [1 x i32], <{ [8 x i32], [16 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 } { i32 48, i16 0, i16 0, i16 0, i16 0, [1 x i32] [i32 2], <{ [8 x i32], [16 x i32] }> <{ [8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4194304], [16 x i32] zeroinitializer }>, [1 x i32] zeroinitializer, [2 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, i32 0 }, { i32, i16, i16, i16, i16, [1 x i32], <{ [8 x i32], [16 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 } { i32 48, i16 0, i16 0, i16 0, i16 0, [1 x i32] [i32 2], <{ [8 x i32], [16 x i32] }> <{ [8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8388608], [16 x i32] zeroinitializer }>, [1 x i32] zeroinitializer, [2 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, i32 0 }, %struct.input_device_id { i32 4112, i16 0, i16 0, i16 0, i16 0, [1 x i32] [i32 32], [24 x i32] zeroinitializer, [1 x i32] zeroinitializer, [2 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] [i32 8], [1 x i32] zeroinitializer, i32 0 }, %struct.input_device_id zeroinitializer }>, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"net/rfkill/input.c\00", align 1
@.str.3 = private unnamed_addr constant [70 x i8] c"Unknown requested operation %d! rfkill Emergency Power Off activated\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_master_switch_mode207, ptr @__UNIQUE_ID_master_switch_modetype206, ptr @__param_master_switch_mode, ptr @rfkill_handler_exit], section "llvm.metadata"
@switch.table.rfkill_handler_init = private unnamed_addr constant [3 x i32] [i32 2, i32 1, i32 3], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @rfkill_handler_init() local_unnamed_addr #0 section ".init.text" {
  %1 = load i32, ptr @rfkill_master_switch_mode, align 4
  %2 = icmp ult i32 %1, 3
  br i1 %2, label %3, label %9

3:                                                ; preds = %0
  %4 = getelementptr inbounds [3 x i32], ptr @switch.table.rfkill_handler_init, i32 0, i32 %1
  %5 = load i32, ptr %4, align 4
  store i32 %5, ptr @rfkill_master_switch_op, align 4
  %6 = load volatile i32, ptr @jiffies, align 64
  %7 = add i32 %6, -21
  store i32 %7, ptr @rfkill_last_scheduled, align 4
  %8 = tail call i32 @input_register_handler(ptr noundef nonnull @rfkill_handler) #4
  br label %9

9:                                                ; preds = %3, %0
  %10 = phi i32 [ %8, %3 ], [ -22, %0 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @rfkill_handler_exit() #0 section ".exit.text" {
  tail call void @input_unregister_handler(ptr noundef nonnull @rfkill_handler) #4
  %1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef nonnull @rfkill_op_work) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rfkill_event(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = icmp eq i32 %1, 1
  %6 = icmp eq i32 %3, 1
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %114

8:                                                ; preds = %4
  switch i32 %2, label %122 [
    i32 238, label %9
    i32 237, label %30
    i32 239, label %51
    i32 246, label %72
    i32 247, label %93
  ]

9:                                                ; preds = %8
  %10 = tail call zeroext i1 @rfkill_is_epo_lock_active() #4
  br i1 %10, label %122, label %11

11:                                               ; preds = %9
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @rfkill_op_lock) #4
  %13 = load i1, ptr @rfkill_op_pending, align 1
  br i1 %13, label %29, label %14

14:                                               ; preds = %11
  %15 = load i32, ptr @rfkill_sw_pending.0, align 4
  %16 = or i32 %15, 2
  store i32 %16, ptr @rfkill_sw_pending.0, align 4
  %17 = load i32, ptr @rfkill_sw_state.0, align 4
  %18 = xor i32 %17, 2
  store i32 %18, ptr @rfkill_sw_state.0, align 4
  %19 = load i32, ptr @rfkill_last_scheduled, align 4
  %20 = add i32 %19, 20
  %21 = load volatile i32, ptr @jiffies, align 64
  %22 = sub i32 %20, %21
  %23 = icmp slt i32 %22, 0
  %24 = select i1 %23, i32 0, i32 20
  %25 = load ptr, ptr @system_wq, align 4
  %26 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %25, ptr noundef nonnull @rfkill_op_work, i32 noundef %24) #4
  br i1 %26, label %27, label %29

27:                                               ; preds = %14
  %28 = load volatile i32, ptr @jiffies, align 64
  store i32 %28, ptr @rfkill_last_scheduled, align 4
  br label %29

29:                                               ; preds = %27, %14, %11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @rfkill_op_lock, i32 noundef %12) #4
  br label %122

30:                                               ; preds = %8
  %31 = tail call zeroext i1 @rfkill_is_epo_lock_active() #4
  br i1 %31, label %122, label %32

32:                                               ; preds = %30
  %33 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @rfkill_op_lock) #4
  %34 = load i1, ptr @rfkill_op_pending, align 1
  br i1 %34, label %50, label %35

35:                                               ; preds = %32
  %36 = load i32, ptr @rfkill_sw_pending.0, align 4
  %37 = or i32 %36, 4
  store i32 %37, ptr @rfkill_sw_pending.0, align 4
  %38 = load i32, ptr @rfkill_sw_state.0, align 4
  %39 = xor i32 %38, 4
  store i32 %39, ptr @rfkill_sw_state.0, align 4
  %40 = load i32, ptr @rfkill_last_scheduled, align 4
  %41 = add i32 %40, 20
  %42 = load volatile i32, ptr @jiffies, align 64
  %43 = sub i32 %41, %42
  %44 = icmp slt i32 %43, 0
  %45 = select i1 %44, i32 0, i32 20
  %46 = load ptr, ptr @system_wq, align 4
  %47 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %46, ptr noundef nonnull @rfkill_op_work, i32 noundef %45) #4
  br i1 %47, label %48, label %50

48:                                               ; preds = %35
  %49 = load volatile i32, ptr @jiffies, align 64
  store i32 %49, ptr @rfkill_last_scheduled, align 4
  br label %50

50:                                               ; preds = %48, %35, %32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @rfkill_op_lock, i32 noundef %33) #4
  br label %122

51:                                               ; preds = %8
  %52 = tail call zeroext i1 @rfkill_is_epo_lock_active() #4
  br i1 %52, label %122, label %53

53:                                               ; preds = %51
  %54 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @rfkill_op_lock) #4
  %55 = load i1, ptr @rfkill_op_pending, align 1
  br i1 %55, label %71, label %56

56:                                               ; preds = %53
  %57 = load i32, ptr @rfkill_sw_pending.0, align 4
  %58 = or i32 %57, 8
  store i32 %58, ptr @rfkill_sw_pending.0, align 4
  %59 = load i32, ptr @rfkill_sw_state.0, align 4
  %60 = xor i32 %59, 8
  store i32 %60, ptr @rfkill_sw_state.0, align 4
  %61 = load i32, ptr @rfkill_last_scheduled, align 4
  %62 = add i32 %61, 20
  %63 = load volatile i32, ptr @jiffies, align 64
  %64 = sub i32 %62, %63
  %65 = icmp slt i32 %64, 0
  %66 = select i1 %65, i32 0, i32 20
  %67 = load ptr, ptr @system_wq, align 4
  %68 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %67, ptr noundef nonnull @rfkill_op_work, i32 noundef %66) #4
  br i1 %68, label %69, label %71

69:                                               ; preds = %56
  %70 = load volatile i32, ptr @jiffies, align 64
  store i32 %70, ptr @rfkill_last_scheduled, align 4
  br label %71

71:                                               ; preds = %69, %56, %53
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @rfkill_op_lock, i32 noundef %54) #4
  br label %122

72:                                               ; preds = %8
  %73 = tail call zeroext i1 @rfkill_is_epo_lock_active() #4
  br i1 %73, label %122, label %74

74:                                               ; preds = %72
  %75 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @rfkill_op_lock) #4
  %76 = load i1, ptr @rfkill_op_pending, align 1
  br i1 %76, label %92, label %77

77:                                               ; preds = %74
  %78 = load i32, ptr @rfkill_sw_pending.0, align 4
  %79 = or i32 %78, 16
  store i32 %79, ptr @rfkill_sw_pending.0, align 4
  %80 = load i32, ptr @rfkill_sw_state.0, align 4
  %81 = xor i32 %80, 16
  store i32 %81, ptr @rfkill_sw_state.0, align 4
  %82 = load i32, ptr @rfkill_last_scheduled, align 4
  %83 = add i32 %82, 20
  %84 = load volatile i32, ptr @jiffies, align 64
  %85 = sub i32 %83, %84
  %86 = icmp slt i32 %85, 0
  %87 = select i1 %86, i32 0, i32 20
  %88 = load ptr, ptr @system_wq, align 4
  %89 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %88, ptr noundef nonnull @rfkill_op_work, i32 noundef %87) #4
  br i1 %89, label %90, label %92

90:                                               ; preds = %77
  %91 = load volatile i32, ptr @jiffies, align 64
  store i32 %91, ptr @rfkill_last_scheduled, align 4
  br label %92

92:                                               ; preds = %90, %77, %74
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @rfkill_op_lock, i32 noundef %75) #4
  br label %122

93:                                               ; preds = %8
  %94 = tail call zeroext i1 @rfkill_is_epo_lock_active() #4
  br i1 %94, label %122, label %95

95:                                               ; preds = %93
  %96 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @rfkill_op_lock) #4
  %97 = load i1, ptr @rfkill_op_pending, align 1
  br i1 %97, label %113, label %98

98:                                               ; preds = %95
  %99 = load i32, ptr @rfkill_sw_pending.0, align 4
  %100 = or i32 %99, 1
  store i32 %100, ptr @rfkill_sw_pending.0, align 4
  %101 = load i32, ptr @rfkill_sw_state.0, align 4
  %102 = xor i32 %101, 1
  store i32 %102, ptr @rfkill_sw_state.0, align 4
  %103 = load i32, ptr @rfkill_last_scheduled, align 4
  %104 = add i32 %103, 20
  %105 = load volatile i32, ptr @jiffies, align 64
  %106 = sub i32 %104, %105
  %107 = icmp slt i32 %106, 0
  %108 = select i1 %107, i32 0, i32 20
  %109 = load ptr, ptr @system_wq, align 4
  %110 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %109, ptr noundef nonnull @rfkill_op_work, i32 noundef %108) #4
  br i1 %110, label %111, label %113

111:                                              ; preds = %98
  %112 = load volatile i32, ptr @jiffies, align 64
  store i32 %112, ptr @rfkill_last_scheduled, align 4
  br label %113

113:                                              ; preds = %111, %98, %95
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @rfkill_op_lock, i32 noundef %96) #4
  br label %122

114:                                              ; preds = %4
  %115 = icmp eq i32 %1, 5
  %116 = icmp eq i32 %2, 3
  %117 = and i1 %115, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = icmp eq i32 %3, 0
  %120 = load i32, ptr @rfkill_master_switch_op, align 4
  %121 = select i1 %119, i32 0, i32 %120
  tail call fastcc void @rfkill_schedule_global_op(i32 noundef %121) #4
  br label %122

122:                                              ; preds = %118, %114, %113, %93, %92, %72, %71, %51, %50, %30, %29, %9, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rfkill_connect(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #2 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 36) #5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.input_handle, ptr %5, i32 0, i32 3
  store ptr %1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.input_handle, ptr %5, i32 0, i32 4
  store ptr %0, ptr %9, align 8
  %10 = getelementptr inbounds %struct.input_handle, ptr %5, i32 0, i32 2
  store ptr @.str, ptr %10, align 8
  %11 = tail call i32 @input_register_handle(ptr noundef nonnull %5) #4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = tail call i32 @input_open_device(ptr noundef nonnull %5) #4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  tail call void @input_unregister_handle(ptr noundef nonnull %5) #4
  br label %17

17:                                               ; preds = %16, %7
  %18 = phi i32 [ %11, %7 ], [ %14, %16 ]
  tail call void @kfree(ptr noundef nonnull %5) #4
  br label %19

19:                                               ; preds = %17, %13, %3
  %20 = phi i32 [ %18, %17 ], [ -12, %3 ], [ 0, %13 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rfkill_disconnect(ptr noundef %0) #2 {
  tail call void @input_close_device(ptr noundef %0) #4
  tail call void @input_unregister_handle(ptr noundef %0) #4
  tail call void @kfree(ptr noundef %0) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rfkill_start(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.input_handle, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 36
  tail call void @_raw_spin_lock_irq(ptr noundef %4) #4
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 5
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 32
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 13
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 30
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %17, 8
  %19 = icmp eq i32 %18, 0
  %20 = load i32, ptr @rfkill_master_switch_op, align 4
  %21 = select i1 %19, i32 0, i32 %20
  tail call fastcc void @rfkill_schedule_global_op(i32 noundef %21) #4
  %22 = load ptr, ptr %2, align 4
  br label %23

23:                                               ; preds = %15, %10, %1
  %24 = phi ptr [ %22, %15 ], [ %5, %10 ], [ %5, %1 ]
  %25 = getelementptr inbounds %struct.input_dev, ptr %24, i32 0, i32 36
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !8
  %26 = load i16, ptr %25, align 4
  %27 = add i16 %26, 1
  store i16 %27, ptr %25, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #4, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rfkill_is_epo_lock_active() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rfkill_schedule_global_op(i32 noundef %0) unnamed_addr #2 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @rfkill_op_lock) #4
  store i32 %0, ptr @rfkill_op, align 4
  store i1 true, ptr @rfkill_op_pending, align 1
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  %5 = tail call zeroext i1 @rfkill_is_epo_lock_active() #4
  br i1 %5, label %9, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr @system_wq, align 4
  %8 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %7, ptr noundef nonnull @rfkill_op_work, i32 noundef 0) #4
  br label %18

9:                                                ; preds = %4, %1
  %10 = load i32, ptr @rfkill_last_scheduled, align 4
  %11 = add i32 %10, 20
  %12 = load volatile i32, ptr @jiffies, align 64
  %13 = sub i32 %11, %12
  %14 = icmp slt i32 %13, 0
  %15 = select i1 %14, i32 0, i32 20
  %16 = load ptr, ptr @system_wq, align 4
  %17 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %16, ptr noundef nonnull @rfkill_op_work, i32 noundef %15) #4
  br i1 %17, label %18, label %20

18:                                               ; preds = %9, %6
  %19 = load volatile i32, ptr @jiffies, align 64
  store i32 %19, ptr @rfkill_last_scheduled, align 4
  br label %20

20:                                               ; preds = %18, %9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @rfkill_op_lock, i32 noundef %2) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_handle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_open_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_handle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_close_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rfkill_op_handler(ptr nocapture noundef readnone %0) #2 {
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @rfkill_op_lock) #4
  %2 = load i1, ptr @rfkill_op_pending, align 1
  br i1 %2, label %3, label %15

3:                                                ; preds = %41, %1
  br label %4

4:                                                ; preds = %13, %3
  %5 = load i32, ptr @rfkill_op, align 4
  store i1 false, ptr @rfkill_op_pending, align 1
  store i32 0, ptr @rfkill_sw_pending.0, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !8
  %6 = load i16, ptr @rfkill_op_lock, align 4
  %7 = add i16 %6, 1
  store i16 %7, ptr @rfkill_op_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #4, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !12
  switch i32 %5, label %12 [
    i32 0, label %8
    i32 1, label %9
    i32 2, label %10
    i32 3, label %11
  ]

8:                                                ; preds = %4
  tail call void @rfkill_epo() #4
  br label %13

9:                                                ; preds = %4
  tail call void @rfkill_restore_states() #4
  br label %13

10:                                               ; preds = %4
  tail call void @rfkill_remove_epo_lock() #4
  br label %13

11:                                               ; preds = %4
  tail call void @rfkill_remove_epo_lock() #4
  tail call void @rfkill_switch_all(i32 noundef 0, i1 noundef zeroext false) #4
  tail call void @rfkill_switch_all(i32 noundef 1, i1 noundef zeroext false) #4
  tail call void @rfkill_switch_all(i32 noundef 2, i1 noundef zeroext false) #4
  tail call void @rfkill_switch_all(i32 noundef 3, i1 noundef zeroext false) #4
  tail call void @rfkill_switch_all(i32 noundef 4, i1 noundef zeroext false) #4
  tail call void @rfkill_switch_all(i32 noundef 5, i1 noundef zeroext false) #4
  tail call void @rfkill_switch_all(i32 noundef 6, i1 noundef zeroext false) #4
  tail call void @rfkill_switch_all(i32 noundef 7, i1 noundef zeroext false) #4
  tail call void @rfkill_switch_all(i32 noundef 8, i1 noundef zeroext false) #4
  br label %13

12:                                               ; preds = %4
  tail call void @rfkill_epo() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 78, i32 noundef 9, ptr noundef nonnull @.str.3, i32 noundef %5) #4
  br label %13

13:                                               ; preds = %12, %11, %10, %9, %8
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @rfkill_op_lock) #4
  %14 = load i1, ptr @rfkill_op_pending, align 1
  br i1 %14, label %4, label %15

15:                                               ; preds = %13, %1
  %16 = tail call zeroext i1 @rfkill_is_epo_lock_active() #4
  br i1 %16, label %41, label %17

17:                                               ; preds = %15
  %18 = load i32, ptr @rfkill_sw_pending.0, align 4
  br label %19

19:                                               ; preds = %37, %17
  %20 = phi i32 [ %38, %37 ], [ %18, %17 ]
  %21 = phi i32 [ %39, %37 ], [ 0, %17 ]
  %22 = shl nuw i32 1, %21
  %23 = xor i32 %22, -1
  %24 = and i32 %20, %23
  store i32 %24, ptr @rfkill_sw_pending.0, align 4
  %25 = and i32 %20, %22
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %19
  %28 = load i32, ptr @rfkill_sw_state.0, align 4
  %29 = and i32 %28, %23
  store i32 %29, ptr @rfkill_sw_state.0, align 4
  %30 = and i32 %28, %22
  %31 = icmp ne i32 %30, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !8
  %32 = load i16, ptr @rfkill_op_lock, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr @rfkill_op_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #4, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !12
  %34 = tail call zeroext i1 @rfkill_get_global_sw_state(i32 noundef %21) #4
  %35 = xor i1 %31, %34
  tail call void @rfkill_switch_all(i32 noundef %21, i1 noundef zeroext %35) #4
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @rfkill_op_lock) #4
  %36 = load i32, ptr @rfkill_sw_pending.0, align 4
  br label %37

37:                                               ; preds = %27, %19
  %38 = phi i32 [ %24, %19 ], [ %36, %27 ]
  %39 = add nuw nsw i32 %21, 1
  %40 = icmp eq i32 %39, 9
  br i1 %40, label %41, label %19

41:                                               ; preds = %37, %15
  %42 = load i1, ptr @rfkill_op_pending, align 1
  br i1 %42, label %3, label %43

43:                                               ; preds = %41
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !8
  %44 = load i16, ptr @rfkill_op_lock, align 4
  %45 = add i16 %44, 1
  store i16 %45, ptr @rfkill_op_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #4, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rfkill_epo() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rfkill_restore_states() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rfkill_remove_epo_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rfkill_switch_all(i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rfkill_get_global_sw_state(i32 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind allocsize(2) }

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
!8 = !{i64 2149305384}
!9 = !{i64 2149301208}
!10 = !{i64 2149301283, i64 2149301310, i64 2149301357, i64 2149301379, i64 2149301407, i64 2149301427}
!11 = !{i64 324088}
!12 = !{i64 2149329528}
