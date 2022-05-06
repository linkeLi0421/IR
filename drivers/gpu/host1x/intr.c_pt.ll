; ModuleID = '/llk/IR/drivers/gpu/host1x/intr.c_pt.bc'
source_filename = "../drivers/gpu/host1x/intr.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.list_head = type { ptr, ptr }
%struct.host1x_waitlist = type { %struct.list_head, %struct.kref, i32, i32, %struct.atomic_t, ptr, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.host1x_syncpt = type { %struct.kref, i32, %struct.atomic_t, %struct.atomic_t, i32, ptr, i8, ptr, ptr, %struct.host1x_syncpt_intr, i8 }
%struct.host1x_syncpt_intr = type { %struct.spinlock, %struct.list_head, [12 x i8], %struct.work_struct }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.host1x = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x %struct.reset_control_bulk_data], i32, ptr, ptr, %struct.iova_domain, i32, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.host1x_channel_list, ptr, %struct.mutex, %struct.list_head, %struct.list_head, %struct.device_dma_parameters, %struct.host1x_bo_cache }
%struct.reset_control_bulk_data = type { ptr, ptr }
%struct.iova_domain = type { %struct.spinlock, %struct.rb_root, ptr, ptr, i32, i32, i32, i32, %struct.iova, [6 x %struct.iova_rcache], %struct.hlist_node }
%struct.rb_root = type { ptr }
%struct.iova = type { %struct.rb_node, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.iova_rcache = type { %struct.spinlock, i32, [32 x ptr], ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.host1x_channel_list = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.host1x_bo_cache = type { %struct.list_head, %struct.mutex }
%struct.host1x_intr_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.host1x_channel = type { %struct.kref, i32, %struct.mutex, ptr, ptr, ptr, %struct.host1x_cdma }
%struct.host1x_cdma = type { %struct.mutex, %struct.completion, i32, i32, i32, i32, i32, %struct.push_buffer, %struct.list_head, %struct.buffer_timeout, i8, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.push_buffer = type { ptr, i32, i32, i32, i32, i32, i32 }
%struct.buffer_timeout = type { %struct.delayed_work, i8, ptr, i32, i64, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"\014%s: NULL waiter\0A\00", align 1
@__func__.host1x_intr_add_action = private unnamed_addr constant [23 x i8] c"host1x_intr_add_action\00", align 1
@host1x_intr_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"&host->intr_mutex\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"host1x_sp_%02u\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"\014%s cannot stop syncpt intr id=%u\0A\00", align 1
@__func__.host1x_intr_stop = private unnamed_addr constant [17 x i8] c"host1x_intr_stop\00", align 1
@action_handlers = internal unnamed_addr constant [4 x ptr] [ptr @action_submit_complete, ptr @action_wakeup, ptr @action_wakeup_interruptible, ptr @action_signal_fence], align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"drivers/gpu/host1x/intr.c\00", align 1
@__tracepoint_host1x_channel_submit_complete = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @host1x_intr_add_action(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef writeonly %6) local_unnamed_addr #0 {
  %8 = icmp eq ptr %5, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %7
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.host1x_intr_add_action) #7
  br label %67

11:                                               ; preds = %7
  store volatile ptr %5, ptr %5, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %5, ptr %12, align 4
  %13 = getelementptr inbounds %struct.host1x_waitlist, ptr %5, i32 0, i32 1
  store volatile i32 1, ptr %13, align 4
  %14 = icmp eq ptr %6, null
  br i1 %14, label %25, label %15

15:                                               ; preds = %11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #8, !srcloc !8
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #8, !srcloc !9
  %17 = extractvalue { i32, i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19, !prof !10

19:                                               ; preds = %15
  %20 = add i32 %17, 1
  %21 = or i32 %20, %17
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %25, label %23, !prof !11

23:                                               ; preds = %19, %15
  %24 = phi i32 [ 2, %15 ], [ 1, %19 ]
  tail call void @refcount_warn_saturate(ptr noundef %13, i32 noundef %24) #8
  br label %25

25:                                               ; preds = %23, %19, %11
  %26 = getelementptr inbounds %struct.host1x_waitlist, ptr %5, i32 0, i32 2
  store i32 %2, ptr %26, align 4
  %27 = getelementptr inbounds %struct.host1x_waitlist, ptr %5, i32 0, i32 3
  store i32 %3, ptr %27, align 4
  %28 = getelementptr inbounds %struct.host1x_waitlist, ptr %5, i32 0, i32 4
  store volatile i32 0, ptr %28, align 4
  %29 = getelementptr inbounds %struct.host1x_waitlist, ptr %5, i32 0, i32 5
  store ptr %4, ptr %29, align 4
  %30 = getelementptr inbounds %struct.host1x_waitlist, ptr %5, i32 0, i32 6
  store i32 1, ptr %30, align 4
  %31 = getelementptr inbounds %struct.host1x_syncpt, ptr %1, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %31) #8
  %32 = getelementptr inbounds %struct.host1x_syncpt, ptr %1, i32 0, i32 9, i32 1
  %33 = load volatile ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, %32
  %35 = load i32, ptr %26, align 4
  br label %36

36:                                               ; preds = %41, %25
  %37 = phi ptr [ %32, %25 ], [ %39, %41 ]
  %38 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, %32
  br i1 %40, label %49, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.host1x_waitlist, ptr %39, i32 0, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = sub i32 %43, %35
  %45 = icmp slt i32 %44, 1
  br i1 %45, label %46, label %36

46:                                               ; preds = %41
  %47 = load ptr, ptr %39, align 4
  %48 = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  store ptr %5, ptr %48, align 4
  store ptr %47, ptr %5, align 4
  store ptr %39, ptr %12, align 4
  store volatile ptr %5, ptr %39, align 4
  br label %62

49:                                               ; preds = %36
  %50 = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  store ptr %5, ptr %50, align 4
  store ptr %33, ptr %5, align 4
  store ptr %32, ptr %12, align 4
  store volatile ptr %5, ptr %32, align 4
  %51 = getelementptr inbounds %struct.host1x_syncpt, ptr %1, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 16
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.host1x_intr_ops, ptr %54, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  tail call void %56(ptr noundef %0, i32 noundef %52, i32 noundef %2) #8
  br i1 %34, label %57, label %62

57:                                               ; preds = %49
  %58 = load i32, ptr %51, align 4
  %59 = load ptr, ptr %53, align 4
  %60 = getelementptr inbounds %struct.host1x_intr_ops, ptr %59, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  tail call void %61(ptr noundef %0, i32 noundef %58) #8
  br label %62

62:                                               ; preds = %57, %49, %46
  br i1 %14, label %64, label %63

63:                                               ; preds = %62
  store ptr %5, ptr %6, align 4
  br label %64

64:                                               ; preds = %63, %62
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %65 = load i16, ptr %31, align 4
  %66 = add i16 %65, 1
  store i16 %66, ptr %31, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  br label %67

67:                                               ; preds = %64, %9
  %68 = phi i32 [ -22, %9 ], [ 0, %64 ]
  ret i32 %68
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @host1x_intr_put_ref(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.host1x_waitlist, ptr %2, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #8, !srcloc !8
  br label %6

6:                                                ; preds = %6, %4
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 0, i32 2, ptr elementtype(i32) %5) #8, !srcloc !17
  %8 = extractvalue { i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %6

10:                                               ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !18
  %11 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr %struct.host1x_syncpt, ptr %12, i32 %1, i32 9
  tail call void @_raw_spin_lock(ptr noundef %13) #8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #8, !srcloc !8
  br label %14

14:                                               ; preds = %14, %10
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 2, i32 3, ptr elementtype(i32) %5) #8, !srcloc !17
  %16 = extractvalue { i32, i32 } %15, 0
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %14

18:                                               ; preds = %14
  %19 = extractvalue { i32, i32 } %15, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !18
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %34

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %2, align 4
  %25 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  store ptr %23, ptr %25, align 4
  store volatile ptr %24, ptr %23, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %22, align 4
  %26 = getelementptr inbounds %struct.host1x_waitlist, ptr %2, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #8, !srcloc !8
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 1, ptr elementtype(i32) %26) #8, !srcloc !20
  %28 = extractvalue { i32, i32, i32 } %27, 0
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %33, label %30

30:                                               ; preds = %21
  %31 = icmp sgt i32 %28, 0
  br i1 %31, label %34, label %32, !prof !11

32:                                               ; preds = %30
  tail call void @refcount_warn_saturate(ptr noundef %26, i32 noundef 3) #8
  br label %34

33:                                               ; preds = %21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !21
  tail call void @kfree(ptr noundef %2) #8
  br label %34

34:                                               ; preds = %33, %32, %30, %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %35 = load i16, ptr %13, align 4
  %36 = add i16 %35, 1
  store i16 %36, ptr %13, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  br i1 %3, label %37, label %43

37:                                               ; preds = %34
  %38 = load volatile i32, ptr %5, align 4
  %39 = icmp eq i32 %38, 3
  br i1 %39, label %43, label %40

40:                                               ; preds = %40, %37
  tail call void @schedule() #8
  %41 = load volatile i32, ptr %5, align 4
  %42 = icmp eq i32 %41, 3
  br i1 %42, label %43, label %40

43:                                               ; preds = %40, %37, %34
  %44 = getelementptr inbounds %struct.host1x_waitlist, ptr %2, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %44) #8, !srcloc !8
  %45 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %44, ptr %44, i32 1, ptr elementtype(i32) %44) #8, !srcloc !20
  %46 = extractvalue { i32, i32, i32 } %45, 0
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = icmp sgt i32 %46, 0
  br i1 %49, label %52, label %50, !prof !11

50:                                               ; preds = %48
  tail call void @refcount_warn_saturate(ptr noundef %44, i32 noundef 3) #8
  br label %52

51:                                               ; preds = %43
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !21
  tail call void @kfree(ptr noundef %2) #8
  br label %52

52:                                               ; preds = %51, %50, %48
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @host1x_intr_init(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @host1x_syncpt_nb_pts(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 13
  tail call void @__mutex_init(ptr noundef %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @host1x_intr_init.__key) #8
  %5 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 14
  store i32 %1, ptr %5, align 4
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 3
  br label %9

9:                                                ; preds = %9, %7
  %10 = phi i32 [ 0, %7 ], [ %17, %9 ]
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr %struct.host1x_syncpt, ptr %11, i32 %10, i32 9
  store i32 0, ptr %12, align 4
  %13 = getelementptr %struct.host1x_syncpt, ptr %11, i32 %10, i32 9, i32 1
  store volatile ptr %13, ptr %13, align 4
  %14 = getelementptr %struct.host1x_syncpt, ptr %11, i32 %10, i32 9, i32 1, i32 1
  store ptr %13, ptr %14, align 4
  %15 = getelementptr %struct.host1x_syncpt, ptr %11, i32 %10, i32 9, i32 2
  %16 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %15, i32 noundef 12, ptr noundef nonnull @.str.2, i32 noundef %10)
  %17 = add nuw i32 %10, 1
  %18 = icmp eq i32 %17, %3
  br i1 %18, label %19, label %9

19:                                               ; preds = %9, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_syncpt_nb_pts(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @host1x_intr_deinit(ptr nocapture noundef %0) local_unnamed_addr #5 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @host1x_intr_start(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @clk_get_rate(ptr noundef %3) #8
  %5 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %5) #8
  %6 = add i32 %4, 999999
  %7 = udiv i32 %6, 1000000
  %8 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 16
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef %0, i32 noundef %7, ptr noundef nonnull @syncpt_thresh_work) #8
  tail call void @mutex_unlock(ptr noundef %5) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @syncpt_thresh_work(ptr noundef %0) #0 {
  %2 = alloca [4 x %struct.list_head], align 4
  %3 = getelementptr i8, ptr %0, i32 -56
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 -32
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.host1x, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr %struct.host1x_syncpt, ptr %8, i32 %4
  %10 = tail call i32 @host1x_syncpt_load(ptr noundef %9) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #8
  store volatile ptr %2, ptr %2, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %11, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %2, i32 1
  store volatile ptr %12, ptr %12, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %2, i32 1, i32 1
  store ptr %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %2, i32 2
  store volatile ptr %14, ptr %14, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %2, i32 2, i32 1
  store ptr %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %2, i32 3
  store volatile ptr %16, ptr %16, align 4
  %17 = getelementptr inbounds %struct.list_head, ptr %2, i32 3, i32 1
  store ptr %16, ptr %17, align 4
  %18 = getelementptr i8, ptr %0, i32 -24
  call void @_raw_spin_lock(ptr noundef %18) #8
  %19 = getelementptr i8, ptr %0, i32 -20
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %19
  br i1 %21, label %74, label %22

22:                                               ; preds = %72, %1
  %23 = phi ptr [ %24, %72 ], [ %20, %1 ]
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.host1x_waitlist, ptr %23, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = sub i32 %26, %10
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %74, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.host1x_waitlist, ptr %23, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr %struct.list_head, ptr %2, i32 %31
  %33 = icmp eq i32 %31, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %29
  %35 = load volatile ptr, ptr %32, align 4
  %36 = icmp eq ptr %35, %32
  br i1 %36, label %48, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr %11, align 4
  %39 = getelementptr inbounds %struct.host1x_waitlist, ptr %38, i32 0, i32 5
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.host1x_waitlist, ptr %23, i32 0, i32 5
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %40, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.host1x_waitlist, ptr %38, i32 0, i32 6
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, 1
  store i32 %47, ptr %45, align 4
  br label %48

48:                                               ; preds = %44, %37, %34, %29
  %49 = phi ptr [ %32, %34 ], [ null, %44 ], [ %32, %37 ], [ %32, %29 ]
  %50 = getelementptr inbounds %struct.host1x_waitlist, ptr %23, i32 0, i32 4
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !22
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %50) #8, !srcloc !8
  %51 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %50, ptr %50, i32 1, ptr elementtype(i32) %50) #8, !srcloc !23
  %52 = extractvalue { i32, i32 } %51, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !24
  %53 = icmp ne i32 %52, 3
  %54 = icmp ne ptr %49, null
  %55 = select i1 %53, i1 %54, i1 false
  %56 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = load ptr, ptr %23, align 4
  %59 = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  store ptr %57, ptr %59, align 4
  store volatile ptr %58, ptr %57, align 4
  br i1 %55, label %69, label %60

60:                                               ; preds = %48
  store ptr inttoptr (i32 256 to ptr), ptr %23, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %56, align 4
  %61 = getelementptr inbounds %struct.host1x_waitlist, ptr %23, i32 0, i32 1
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %61) #8, !srcloc !8
  %62 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %61, ptr %61, i32 1, ptr elementtype(i32) %61) #8, !srcloc !20
  %63 = extractvalue { i32, i32, i32 } %62, 0
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %68, label %65

65:                                               ; preds = %60
  %66 = icmp sgt i32 %63, 0
  br i1 %66, label %72, label %67, !prof !11

67:                                               ; preds = %65
  call void @refcount_warn_saturate(ptr noundef %61, i32 noundef 3) #8
  br label %72

68:                                               ; preds = %60
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !21
  call void @kfree(ptr noundef %23) #8
  br label %72

69:                                               ; preds = %48
  %70 = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  store ptr %23, ptr %70, align 4
  store ptr %49, ptr %23, align 4
  store ptr %71, ptr %56, align 4
  store volatile ptr %23, ptr %71, align 4
  br label %72

72:                                               ; preds = %69, %68, %67, %65
  %73 = icmp eq ptr %24, %19
  br i1 %73, label %74, label %22

74:                                               ; preds = %72, %22, %1
  %75 = load volatile ptr, ptr %19, align 4
  %76 = icmp eq ptr %75, %19
  %77 = load i32, ptr %3, align 4
  br i1 %76, label %78, label %82

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.host1x, ptr %6, i32 0, i32 16
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.host1x_intr_ops, ptr %80, i32 0, i32 3
  br label %91

82:                                               ; preds = %74
  %83 = getelementptr inbounds %struct.host1x_waitlist, ptr %75, i32 0, i32 2
  %84 = load i32, ptr %83, align 4
  %85 = getelementptr inbounds %struct.host1x, ptr %6, i32 0, i32 16
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.host1x_intr_ops, ptr %86, i32 0, i32 1
  %88 = load ptr, ptr %87, align 4
  call void %88(ptr noundef %6, i32 noundef %77, i32 noundef %84) #8
  %89 = load ptr, ptr %85, align 4
  %90 = getelementptr inbounds %struct.host1x_intr_ops, ptr %89, i32 0, i32 2
  br label %91

91:                                               ; preds = %82, %78
  %92 = phi ptr [ %90, %82 ], [ %81, %78 ]
  %93 = load ptr, ptr %92, align 4
  call void %93(ptr noundef %6, i32 noundef %77) #8
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %94 = load i16, ptr %18, align 4
  %95 = add i16 %94, 1
  store i16 %95, ptr %18, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  br label %96

96:                                               ; preds = %125, %91
  %97 = phi ptr [ %2, %91 ], [ %127, %125 ]
  %98 = phi i32 [ 0, %91 ], [ %126, %125 ]
  %99 = getelementptr [4 x ptr], ptr @action_handlers, i32 0, i32 %98
  %100 = load ptr, ptr %99, align 4
  %101 = load ptr, ptr %97, align 4
  %102 = icmp eq ptr %101, %97
  br i1 %102, label %125, label %103

103:                                              ; preds = %123, %96
  %104 = phi ptr [ %105, %123 ], [ %101, %96 ]
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.list_head, ptr %104, i32 0, i32 1
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr inbounds %struct.list_head, ptr %105, i32 0, i32 1
  store ptr %107, ptr %108, align 4
  store volatile ptr %105, ptr %107, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %104, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %106, align 4
  call void %100(ptr noundef %104) #8
  %109 = getelementptr inbounds %struct.host1x_waitlist, ptr %104, i32 0, i32 4
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !25
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %109) #8, !srcloc !8
  %110 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 3, ptr %109) #8, !srcloc !26
  %111 = extractvalue { i32, i32 } %110, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !27
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %114, label %113, !prof !11

113:                                              ; preds = %103
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 154, i32 noundef 9, ptr noundef null) #8
  br label %114

114:                                              ; preds = %113, %103
  %115 = getelementptr inbounds %struct.host1x_waitlist, ptr %104, i32 0, i32 1
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %115) #8, !srcloc !8
  %116 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %115, ptr %115, i32 1, ptr elementtype(i32) %115) #8, !srcloc !20
  %117 = extractvalue { i32, i32, i32 } %116, 0
  %118 = icmp eq i32 %117, 1
  br i1 %118, label %122, label %119

119:                                              ; preds = %114
  %120 = icmp sgt i32 %117, 0
  br i1 %120, label %123, label %121, !prof !11

121:                                              ; preds = %119
  call void @refcount_warn_saturate(ptr noundef %115, i32 noundef 3) #8
  br label %123

122:                                              ; preds = %114
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !21
  call void @kfree(ptr noundef %104) #8
  br label %123

123:                                              ; preds = %122, %121, %119
  %124 = icmp eq ptr %105, %97
  br i1 %124, label %125, label %103

125:                                              ; preds = %123, %96
  %126 = add nuw nsw i32 %98, 1
  %127 = getelementptr %struct.list_head, ptr %97, i32 1
  %128 = icmp eq i32 %126, 4
  br i1 %128, label %129, label %96

129:                                              ; preds = %125
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @host1x_intr_stop(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @host1x_syncpt_nb_pts(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %5) #8
  %6 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.host1x_intr_ops, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  tail call void %9(ptr noundef %0) #8
  %10 = icmp eq i32 %4, 0
  br i1 %10, label %50, label %11

11:                                               ; preds = %47, %1
  %12 = phi i32 [ %48, %47 ], [ 0, %1 ]
  %13 = getelementptr %struct.host1x_syncpt, ptr %3, i32 %12, i32 9, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %42, label %16

16:                                               ; preds = %40, %11
  %17 = phi ptr [ %18, %40 ], [ %14, %11 ]
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.host1x_waitlist, ptr %17, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %19) #8, !srcloc !8
  br label %20

20:                                               ; preds = %20, %16
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 2, i32 3, ptr elementtype(i32) %19) #8, !srcloc !17
  %22 = extractvalue { i32, i32 } %21, 0
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %20

24:                                               ; preds = %20
  %25 = extractvalue { i32, i32 } %21, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !18
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %40

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = load ptr, ptr %17, align 4
  %31 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  store ptr %29, ptr %31, align 4
  store volatile ptr %30, ptr %29, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %17, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %28, align 4
  %32 = getelementptr inbounds %struct.host1x_waitlist, ptr %17, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %32) #8, !srcloc !8
  %33 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %32, ptr %32, i32 1, ptr elementtype(i32) %32) #8, !srcloc !20
  %34 = extractvalue { i32, i32, i32 } %33, 0
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %39, label %36

36:                                               ; preds = %27
  %37 = icmp sgt i32 %34, 0
  br i1 %37, label %40, label %38, !prof !11

38:                                               ; preds = %36
  tail call void @refcount_warn_saturate(ptr noundef %32, i32 noundef 3) #8
  br label %40

39:                                               ; preds = %27
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !21
  tail call void @kfree(ptr noundef %17) #8
  br label %40

40:                                               ; preds = %39, %38, %36, %24
  %41 = icmp eq ptr %18, %13
  br i1 %41, label %42, label %16

42:                                               ; preds = %40, %11
  %43 = load volatile ptr, ptr %13, align 4
  %44 = icmp eq ptr %43, %13
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  tail call void @mutex_unlock(ptr noundef %5) #8
  %46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.host1x_intr_stop, i32 noundef %12) #7
  br label %55

47:                                               ; preds = %42
  %48 = add nuw i32 %12, 1
  %49 = icmp eq i32 %48, %4
  br i1 %49, label %50, label %11

50:                                               ; preds = %47, %1
  %51 = load ptr, ptr %6, align 4
  %52 = getelementptr inbounds %struct.host1x_intr_ops, ptr %51, i32 0, i32 5
  %53 = load ptr, ptr %52, align 4
  %54 = tail call i32 %53(ptr noundef %0) #8
  tail call void @mutex_unlock(ptr noundef %5) #8
  br label %55

55:                                               ; preds = %50, %45
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_syncpt_load(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @action_submit_complete(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.host1x_waitlist, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.host1x_channel, ptr %3, i32 0, i32 6
  tail call void @host1x_cdma_update(ptr noundef %4) #8
  %5 = getelementptr inbounds %struct.host1x_channel, ptr %3, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load ptr, ptr %6, align 4
  br label %12

12:                                               ; preds = %10, %1
  %13 = phi ptr [ %11, %10 ], [ %8, %1 ]
  %14 = getelementptr inbounds %struct.host1x_waitlist, ptr %0, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.host1x_waitlist, ptr %0, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_host1x_channel_submit_complete, i32 0, i32 1), align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %12
  %21 = tail call ptr @llvm.thread.pointer() #8
  %22 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %23 = load i32, ptr %22, align 8
  %24 = lshr i32 %23, 5
  %25 = getelementptr i32, ptr @__cpu_online_mask, i32 %24
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %23, 31
  %28 = shl nuw i32 1, %27
  %29 = and i32 %28, %26
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %20
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !28
  %32 = tail call i32 @__traceiter_host1x_channel_submit_complete(ptr noundef null, ptr noundef %13, i32 noundef %15, i32 noundef %17) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !29
  br label %33

33:                                               ; preds = %31, %20, %12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @action_wakeup(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.host1x_waitlist, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  tail call void @__wake_up(ptr noundef %3, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @action_wakeup_interruptible(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.host1x_waitlist, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  tail call void @__wake_up(ptr noundef %3, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @action_signal_fence(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.host1x_waitlist, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  tail call void @host1x_fence_signal(ptr noundef %3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_cdma_update(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_host1x_channel_submit_complete(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_fence_signal(ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind }

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
!8 = !{i64 447217, i64 2147937188, i64 2147937214, i64 2147937261, i64 2147937283, i64 2147937311, i64 2147937331}
!9 = !{i64 2147950858, i64 2147950890, i64 2147950919, i64 2147950953, i64 2147950984, i64 2147951007}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2148885769}
!13 = !{i64 2148881593}
!14 = !{i64 2148881668, i64 2148881695, i64 2148881742, i64 2148881764, i64 2148881792, i64 2148881812}
!15 = !{i64 2148908772}
!16 = !{i64 2148062802}
!17 = !{i64 433280, i64 433304, i64 433325, i64 433342, i64 433359}
!18 = !{i64 2148063002}
!19 = !{i64 2148051056}
!20 = !{i64 2147953215, i64 2147953247, i64 2147953276, i64 2147953310, i64 2147953341, i64 2147953364}
!21 = !{i64 2149531909}
!22 = !{i64 2148047222}
!23 = !{i64 2147950084, i64 2147950116, i64 2147950145, i64 2147950179, i64 2147950210, i64 2147950233}
!24 = !{i64 2148047425}
!25 = !{i64 2148233414}
!26 = !{i64 456664, i64 456681, i64 456705, i64 456731, i64 456749}
!27 = !{i64 2148233758}
!28 = !{i64 2151777693}
!29 = !{i64 2151777903}
