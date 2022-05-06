; ModuleID = '/llk/IR/drivers/gpu/host1x/channel.c_pt.bc'
source_filename = "../drivers/gpu/host1x/channel.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_host1x_job_submit:\09\09\09\09\09"
module asm "\09.asciz \09\22host1x_job_submit\22\09\09\09\09\09"
module asm "__kstrtabns_host1x_job_submit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_host1x_channel_get:\09\09\09\09\09"
module asm "\09.asciz \09\22host1x_channel_get\22\09\09\09\09\09"
module asm "__kstrtabns_host1x_channel_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_host1x_channel_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22host1x_channel_stop\22\09\09\09\09\09"
module asm "__kstrtabns_host1x_channel_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_host1x_channel_put:\09\09\09\09\09"
module asm "\09.asciz \09\22host1x_channel_put\22\09\09\09\09\09"
module asm "__kstrtabns_host1x_channel_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_host1x_channel_request:\09\09\09\09\09"
module asm "\09.asciz \09\22host1x_channel_request\22\09\09\09\09\09"
module asm "__kstrtabns_host1x_channel_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.host1x_channel_list = type { ptr, ptr }
%struct.host1x_job = type { %struct.kref, %struct.list_head, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i8, ptr, ptr, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.host1x_channel = type { %struct.kref, i32, %struct.mutex, ptr, ptr, ptr, %struct.host1x_cdma }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.host1x_cdma = type { %struct.mutex, %struct.completion, i32, i32, i32, i32, i32, %struct.push_buffer, %struct.list_head, %struct.buffer_timeout, i8, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.push_buffer = type { ptr, i32, i32, i32, i32, i32, i32 }
%struct.buffer_timeout = type { %struct.delayed_work, i8, ptr, i32, i64, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.host1x = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x %struct.reset_control_bulk_data], i32, ptr, ptr, %struct.iova_domain, i32, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.host1x_channel_list, ptr, %struct.mutex, %struct.list_head, %struct.list_head, %struct.device_dma_parameters, %struct.host1x_bo_cache }
%struct.reset_control_bulk_data = type { ptr, ptr }
%struct.iova_domain = type { %struct.spinlock, %struct.rb_root, ptr, ptr, i32, i32, i32, i32, %struct.iova, [6 x %struct.iova_rcache], %struct.hlist_node }
%struct.rb_root = type { ptr }
%struct.iova = type { %struct.rb_node, i32, i32 }
%struct.iova_rcache = type { %struct.spinlock, i32, [32 x ptr], ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.host1x_bo_cache = type { %struct.list_head, %struct.mutex }
%struct.host1x_channel_ops = type { ptr, ptr }
%struct.host1x_cdma_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.host1x_client = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.mutex, %struct.host1x_bo_cache }

@__kstrtab_host1x_job_submit = external dso_local constant [0 x i8], align 1
@__kstrtabns_host1x_job_submit = external dso_local constant [0 x i8], align 1
@__ksymtab_host1x_job_submit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @host1x_job_submit to i32), ptr @__kstrtab_host1x_job_submit, ptr @__kstrtabns_host1x_job_submit }, section "___ksymtab+host1x_job_submit", align 4
@__kstrtab_host1x_channel_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_host1x_channel_get = external dso_local constant [0 x i8], align 1
@__ksymtab_host1x_channel_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @host1x_channel_get to i32), ptr @__kstrtab_host1x_channel_get, ptr @__kstrtabns_host1x_channel_get }, section "___ksymtab+host1x_channel_get", align 4
@__kstrtab_host1x_channel_stop = external dso_local constant [0 x i8], align 1
@__kstrtabns_host1x_channel_stop = external dso_local constant [0 x i8], align 1
@__ksymtab_host1x_channel_stop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @host1x_channel_stop to i32), ptr @__kstrtab_host1x_channel_stop, ptr @__kstrtabns_host1x_channel_stop }, section "___ksymtab+host1x_channel_stop", align 4
@__kstrtab_host1x_channel_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_host1x_channel_put = external dso_local constant [0 x i8], align 1
@__ksymtab_host1x_channel_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @host1x_channel_put to i32), ptr @__kstrtab_host1x_channel_put, ptr @__kstrtabns_host1x_channel_put }, section "___ksymtab+host1x_channel_put", align 4
@host1x_channel_request.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [21 x i8] c"&channel->submitlock\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to initialize channel\0A\00", align 1
@__kstrtab_host1x_channel_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_host1x_channel_request = external dso_local constant [0 x i8], align 1
@__ksymtab_host1x_channel_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @host1x_channel_request to i32), ptr @__kstrtab_host1x_channel_request, ptr @__kstrtabns_host1x_channel_request }, section "___ksymtab+host1x_channel_request", align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to find free channel\0A\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_host1x_channel_get, ptr @__ksymtab_host1x_channel_put, ptr @__ksymtab_host1x_channel_request, ptr @__ksymtab_host1x_channel_stop, ptr @__ksymtab_host1x_job_submit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @host1x_channel_list_init(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 216) #6
  %4 = extractvalue { i32, i1 } %3, 1
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %2
  store ptr null, ptr %0, align 4
  br label %22

6:                                                ; preds = %2
  %7 = extractvalue { i32, i1 } %3, 0
  %8 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #7
  store ptr %8, ptr %0, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %6
  %11 = add nuw nsw i32 %1, 31
  %12 = lshr i32 %11, 3
  %13 = and i32 %12, 536870908
  %14 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %13, i32 noundef 3520) #7
  %15 = getelementptr inbounds %struct.host1x_channel_list, ptr %0, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  %16 = icmp eq ptr %14, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = load ptr, ptr %0, align 4
  tail call void @kfree(ptr noundef %18) #6
  br label %22

19:                                               ; preds = %10
  %20 = lshr i32 %11, 3
  %21 = and i32 %20, 536870908
  tail call void @llvm.memset.p0.i32(ptr nonnull align 64 %14, i8 0, i32 %21, i1 false) #6
  br label %22

22:                                               ; preds = %19, %17, %6, %5
  %23 = phi i32 [ 0, %19 ], [ -12, %17 ], [ -12, %6 ], [ -12, %5 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @host1x_channel_list_free(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.host1x_channel_list, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #6
  %4 = load ptr, ptr %0, align 4
  tail call void @kfree(ptr noundef %4) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @host1x_job_submit(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.host1x_job, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.host1x_channel, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.host1x, ptr %9, i32 0, i32 17
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.host1x_channel_ops, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 %13(ptr noundef %0) #6
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @host1x_channel_get(ptr noundef returned %0) #0 {
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #6, !srcloc !9
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #6, !srcloc !10
  %3 = extractvalue { i32, i32, i32 } %2, 0
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5, !prof !8

5:                                                ; preds = %1
  %6 = add i32 %3, 1
  %7 = or i32 %6, %3
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %11, label %9, !prof !11

9:                                                ; preds = %5, %1
  %10 = phi i32 [ 2, %1 ], [ 1, %5 ]
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef %10) #6
  br label %11

11:                                               ; preds = %9, %5
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @host1x_channel_get_index(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 23
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr %struct.host1x_channel, ptr %4, i32 %1
  %6 = load volatile i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %18, %2
  %9 = phi i32 [ %16, %18 ], [ %6, %2 ]
  %10 = add i32 %9, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #6, !srcloc !9
  br label %11

11:                                               ; preds = %11, %8
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 %9, i32 %10, ptr elementtype(i32) %5) #6, !srcloc !12
  %13 = extractvalue { i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %11

15:                                               ; preds = %11
  %16 = extractvalue { i32, i32 } %12, 1
  %17 = icmp eq i32 %16, %9
  br i1 %17, label %20, label %18, !prof !11

18:                                               ; preds = %15
  %19 = icmp eq i32 %16, 0
  br i1 %19, label %20, label %8

20:                                               ; preds = %18, %15, %2
  %21 = phi i32 [ 0, %2 ], [ %9, %15 ], [ 0, %18 ]
  %22 = add i32 %21, 1
  %23 = or i32 %22, %21
  %24 = icmp sgt i32 %23, -1
  br i1 %24, label %26, label %25, !prof !11

25:                                               ; preds = %20
  tail call void @refcount_warn_saturate(ptr noundef %5, i32 noundef 0) #6
  br label %26

26:                                               ; preds = %25, %20
  %27 = icmp eq i32 %21, 0
  %28 = select i1 %27, ptr null, ptr %5
  ret ptr %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @host1x_channel_stop(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.host1x_channel, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.host1x_channel, ptr %0, i32 0, i32 6
  %9 = getelementptr inbounds %struct.host1x, ptr %7, i32 0, i32 18
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.host1x_cdma_ops, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void %12(ptr noundef %8) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @host1x_channel_put(ptr noundef %0) #0 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #6, !srcloc !9
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #6, !srcloc !14
  %3 = extractvalue { i32, i32, i32 } %2, 0
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = icmp sgt i32 %3, 0
  br i1 %6, label %25, label %7, !prof !11

7:                                                ; preds = %5
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef 3) #6
  br label %25

8:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !15
  %9 = getelementptr inbounds %struct.host1x_channel, ptr %0, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 8
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.host1x_channel, ptr %0, i32 0, i32 6
  %16 = getelementptr inbounds %struct.host1x, ptr %14, i32 0, i32 18
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.host1x_cdma_ops, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  tail call void %19(ptr noundef %15) #6
  %20 = tail call i32 @host1x_cdma_deinit(ptr noundef %15) #6
  %21 = getelementptr inbounds %struct.host1x_channel, ptr %0, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.host1x, ptr %14, i32 0, i32 23, i32 1
  %24 = load ptr, ptr %23, align 4
  tail call void @_clear_bit(i32 noundef %22, ptr noundef %24) #6
  br label %25

25:                                               ; preds = %8, %7, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @host1x_channel_request(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.host1x_client, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %8, align 8
  %10 = getelementptr inbounds %struct.host1x, ptr %7, i32 0, i32 23, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @_find_first_zero_bit_le(ptr noundef %11, i32 noundef %9) #6
  %13 = icmp ult i32 %12, %9
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.host1x, ptr %7, i32 0, i32 5
  br label %43

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.host1x, ptr %7, i32 0, i32 23
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr %struct.host1x_channel, ptr %18, i32 %12, i32 1
  store i32 %12, ptr %19, align 4
  %20 = load ptr, ptr %10, align 4
  tail call void @_set_bit(i32 noundef %12, ptr noundef %20) #6
  %21 = load ptr, ptr %17, align 4
  %22 = getelementptr %struct.host1x_channel, ptr %21, i32 %12
  %23 = icmp eq ptr %22, null
  br i1 %23, label %47, label %24

24:                                               ; preds = %16
  store volatile i32 1, ptr %22, align 4
  %25 = getelementptr %struct.host1x_channel, ptr %21, i32 %12, i32 2
  tail call void @__mutex_init(ptr noundef %25, ptr noundef nonnull @.str, ptr noundef nonnull @host1x_channel_request.__key) #6
  %26 = getelementptr %struct.host1x_channel, ptr %21, i32 %12, i32 4
  store ptr %0, ptr %26, align 8
  %27 = load ptr, ptr %2, align 4
  %28 = getelementptr %struct.host1x_channel, ptr %21, i32 %12, i32 5
  store ptr %27, ptr %28, align 4
  %29 = getelementptr %struct.host1x_channel, ptr %21, i32 %12, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.host1x, ptr %7, i32 0, i32 17
  %32 = load ptr, ptr %31, align 4
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 %33(ptr noundef nonnull %22, ptr noundef %7, i32 noundef %30) #6
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %24
  %37 = getelementptr %struct.host1x_channel, ptr %21, i32 %12, i32 6
  %38 = tail call i32 @host1x_cdma_init(ptr noundef %37) #6
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %36, %24
  %41 = load i32, ptr %29, align 4
  %42 = load ptr, ptr %10, align 4
  tail call void @_clear_bit(i32 noundef %41, ptr noundef %42) #6
  br label %43

43:                                               ; preds = %40, %14
  %44 = phi ptr [ %15, %14 ], [ %2, %40 ]
  %45 = phi ptr [ @.str.2, %14 ], [ @.str.1, %40 ]
  %46 = load ptr, ptr %44, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull %45) #8
  br label %47

47:                                               ; preds = %43, %36, %16
  %48 = phi ptr [ null, %16 ], [ %22, %36 ], [ null, %43 ]
  ret ptr %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_cdma_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_cdma_deinit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { cold nounwind }

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
!9 = !{i64 757783, i64 2148247754, i64 2148247780, i64 2148247827, i64 2148247849, i64 2148247877, i64 2148247897}
!10 = !{i64 2148260627, i64 2148260659, i64 2148260688, i64 2148260722, i64 2148260753, i64 2148260776}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 743846, i64 743870, i64 743891, i64 743908, i64 743925}
!13 = !{i64 2148360849}
!14 = !{i64 2148262984, i64 2148263016, i64 2148263045, i64 2148263079, i64 2148263110, i64 2148263133}
!15 = !{i64 2149275739}
