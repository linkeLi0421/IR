; ModuleID = '/llk/IR/drivers/gpu/host1x/job.c_pt.bc'
source_filename = "../drivers/gpu/host1x/job.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_host1x_job_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22host1x_job_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_host1x_job_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_host1x_job_get:\09\09\09\09\09"
module asm "\09.asciz \09\22host1x_job_get\22\09\09\09\09\09"
module asm "__kstrtabns_host1x_job_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_host1x_job_put:\09\09\09\09\09"
module asm "\09.asciz \09\22host1x_job_put\22\09\09\09\09\09"
module asm "__kstrtabns_host1x_job_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_host1x_job_add_gather:\09\09\09\09\09"
module asm "\09.asciz \09\22host1x_job_add_gather\22\09\09\09\09\09"
module asm "__kstrtabns_host1x_job_add_gather:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_host1x_job_add_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22host1x_job_add_wait\22\09\09\09\09\09"
module asm "__kstrtabns_host1x_job_add_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_host1x_job_pin:\09\09\09\09\09"
module asm "\09.asciz \09\22host1x_job_pin\22\09\09\09\09\09"
module asm "__kstrtabns_host1x_job_pin:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_host1x_job_unpin:\09\09\09\09\09"
module asm "\09.asciz \09\22host1x_job_unpin\22\09\09\09\09\09"
module asm "__kstrtabns_host1x_job_unpin:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.host1x_job = type { %struct.kref, %struct.list_head, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i8, ptr, ptr, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.host1x_syncpt = type { %struct.kref, i32, %struct.atomic_t, %struct.atomic_t, i32, ptr, i8, ptr, ptr, %struct.host1x_syncpt_intr, i8 }
%struct.host1x_syncpt_intr = type { %struct.spinlock, %struct.list_head, [12 x i8], %struct.work_struct }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.host1x_job_cmd = type { i8, %union.anon.64 }
%union.anon.64 = type { %struct.host1x_job_gather }
%struct.host1x_job_gather = type { i32, i32, ptr, i32, i8 }
%struct.host1x_job_wait = type { i32, i32, i32, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
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
%struct.host1x_client = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.mutex, %struct.host1x_bo_cache }
%struct.host1x_bo_cache = type { %struct.list_head, %struct.mutex }
%struct.host1x_reloc = type { %struct.anon.65, %struct.anon.66, i32, i32 }
%struct.anon.65 = type { ptr, i32 }
%struct.anon.66 = type { ptr, i32 }
%struct.host1x_bo_mapping = type { %struct.kref, ptr, i32, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.list_head }
%struct.host1x_job_unpin_data = type { ptr }
%struct.host1x = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x %struct.reset_control_bulk_data], i32, ptr, ptr, %struct.iova_domain, i32, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.host1x_channel_list, ptr, %struct.mutex, %struct.list_head, %struct.list_head, %struct.device_dma_parameters, %struct.host1x_bo_cache }
%struct.reset_control_bulk_data = type { ptr, ptr }
%struct.iova_domain = type { %struct.spinlock, %struct.rb_root, ptr, ptr, i32, i32, i32, i32, %struct.iova, [6 x %struct.iova_rcache], %struct.hlist_node }
%struct.rb_root = type { ptr }
%struct.iova = type { %struct.rb_node, i32, i32 }
%struct.iova_rcache = type { %struct.spinlock, i32, [32 x ptr], ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.host1x_channel_list = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.host1x_bo_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.host1x_channel = type { %struct.kref, i32, %struct.mutex, ptr, ptr, ptr, %struct.host1x_cdma }
%struct.host1x_cdma = type { %struct.mutex, %struct.completion, i32, i32, i32, i32, i32, %struct.push_buffer, %struct.list_head, %struct.buffer_timeout, i8, i8 }
%struct.push_buffer = type { ptr, i32, i32, i32, i32, i32, i32 }
%struct.buffer_timeout = type { %struct.delayed_work, i8, ptr, i32, i64, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }

@__kstrtab_host1x_job_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_host1x_job_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_host1x_job_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @host1x_job_alloc to i32), ptr @__kstrtab_host1x_job_alloc, ptr @__kstrtabns_host1x_job_alloc }, section "___ksymtab+host1x_job_alloc", align 4
@__kstrtab_host1x_job_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_host1x_job_get = external dso_local constant [0 x i8], align 1
@__ksymtab_host1x_job_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @host1x_job_get to i32), ptr @__kstrtab_host1x_job_get, ptr @__kstrtabns_host1x_job_get }, section "___ksymtab+host1x_job_get", align 4
@__kstrtab_host1x_job_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_host1x_job_put = external dso_local constant [0 x i8], align 1
@__ksymtab_host1x_job_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @host1x_job_put to i32), ptr @__kstrtab_host1x_job_put, ptr @__kstrtabns_host1x_job_put }, section "___ksymtab+host1x_job_put", align 4
@__kstrtab_host1x_job_add_gather = external dso_local constant [0 x i8], align 1
@__kstrtabns_host1x_job_add_gather = external dso_local constant [0 x i8], align 1
@__ksymtab_host1x_job_add_gather = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @host1x_job_add_gather to i32), ptr @__kstrtab_host1x_job_add_gather, ptr @__kstrtabns_host1x_job_add_gather }, section "___ksymtab+host1x_job_add_gather", align 4
@__kstrtab_host1x_job_add_wait = external dso_local constant [0 x i8], align 1
@__kstrtabns_host1x_job_add_wait = external dso_local constant [0 x i8], align 1
@__ksymtab_host1x_job_add_wait = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @host1x_job_add_wait to i32), ptr @__kstrtab_host1x_job_add_wait, ptr @__kstrtabns_host1x_job_add_wait }, section "___ksymtab+host1x_job_add_wait", align 4
@__kstrtab_host1x_job_pin = external dso_local constant [0 x i8], align 1
@__kstrtabns_host1x_job_pin = external dso_local constant [0 x i8], align 1
@__ksymtab_host1x_job_pin = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @host1x_job_pin to i32), ptr @__kstrtab_host1x_job_pin, ptr @__kstrtabns_host1x_job_pin }, section "___ksymtab+host1x_job_pin", align 4
@__kstrtab_host1x_job_unpin = external dso_local constant [0 x i8], align 1
@__kstrtabns_host1x_job_unpin = external dso_local constant [0 x i8], align 1
@__ksymtab_host1x_job_unpin = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @host1x_job_unpin to i32), ptr @__kstrtab_host1x_job_unpin, ptr @__kstrtabns_host1x_job_unpin }, section "___ksymtab+host1x_job_unpin", align 4
@.str = private unnamed_addr constant [39 x i8] c"\013Could not map cmdbuf for relocation\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_host1x_job_add_gather, ptr @__ksymtab_host1x_job_add_wait, ptr @__ksymtab_host1x_job_alloc, ptr @__ksymtab_host1x_job_get, ptr @__ksymtab_host1x_job_pin, ptr @__ksymtab_host1x_job_put, ptr @__ksymtab_host1x_job_unpin], section "llvm.metadata"
@switch.table.host1x_job_pin = private unnamed_addr constant [3 x i32] [i32 1, i32 2, i32 0], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @host1x_job_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) #0 {
  %5 = xor i1 %3, true
  %6 = zext i1 %5 to i8
  %7 = select i1 %3, i32 %1, i32 0
  %8 = add i32 %7, %2
  %9 = zext i32 %2 to i64
  %10 = zext i32 %8 to i64
  %11 = shl nuw nsw i64 %10, 2
  %12 = zext i32 %1 to i64
  %13 = shl nuw nsw i64 %10, 3
  %14 = add nuw nsw i64 %9, %12
  %15 = mul nuw nsw i64 %14, 24
  %16 = add nuw nsw i64 %15, 128
  %17 = add nuw nsw i64 %16, %11
  %18 = add nuw nsw i64 %17, %13
  %19 = icmp ugt i64 %18, 4294967295
  br i1 %19, label %48, label %20

20:                                               ; preds = %4
  %21 = trunc i64 %18 to i32
  %22 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %21, i32 noundef 3520) #8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %48, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.host1x_job, ptr %22, i32 0, i32 31
  store i8 %6, ptr %25, align 4
  store volatile i32 1, ptr %22, align 64
  %26 = getelementptr inbounds %struct.host1x_job, ptr %22, i32 0, i32 2
  store ptr %0, ptr %26, align 4
  %27 = getelementptr i8, ptr %22, i32 128
  %28 = icmp eq i32 %2, 0
  %29 = select i1 %28, ptr null, ptr %27
  %30 = getelementptr inbounds %struct.host1x_job, ptr %22, i32 0, i32 6
  store ptr %29, ptr %30, align 4
  %31 = mul i32 %2, 24
  %32 = getelementptr i8, ptr %27, i32 %31
  %33 = icmp eq i32 %8, 0
  %34 = select i1 %33, ptr null, ptr %32
  %35 = getelementptr inbounds %struct.host1x_job, ptr %22, i32 0, i32 8
  store ptr %34, ptr %35, align 4
  %36 = shl i32 %8, 2
  %37 = getelementptr i8, ptr %32, i32 %36
  %38 = icmp eq i32 %1, 0
  %39 = select i1 %38, ptr null, ptr %37
  %40 = getelementptr inbounds %struct.host1x_job, ptr %22, i32 0, i32 4
  store ptr %39, ptr %40, align 4
  %41 = mul i32 %1, 24
  %42 = getelementptr i8, ptr %37, i32 %41
  %43 = select i1 %33, ptr null, ptr %42
  %44 = getelementptr inbounds %struct.host1x_job, ptr %22, i32 0, i32 10
  store ptr %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.host1x_job, ptr %22, i32 0, i32 12
  store ptr %43, ptr %45, align 4
  %46 = getelementptr i32, ptr %43, i32 %2
  %47 = getelementptr inbounds %struct.host1x_job, ptr %22, i32 0, i32 11
  store ptr %46, ptr %47, align 16
  br label %48

48:                                               ; preds = %24, %20, %4
  %49 = phi ptr [ %22, %24 ], [ null, %4 ], [ null, %20 ]
  ret ptr %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @host1x_job_get(ptr noundef returned %0) #0 {
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #9, !srcloc !8
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #9, !srcloc !9
  %3 = extractvalue { i32, i32, i32 } %2, 0
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5, !prof !10

5:                                                ; preds = %1
  %6 = add i32 %3, 1
  %7 = or i32 %6, %3
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %11, label %9, !prof !11

9:                                                ; preds = %5, %1
  %10 = phi i32 [ 2, %1 ], [ 1, %5 ]
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef %10) #9
  br label %11

11:                                               ; preds = %9, %5
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @host1x_job_put(ptr noundef %0) #0 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #9, !srcloc !8
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #9, !srcloc !13
  %3 = extractvalue { i32, i32, i32 } %2, 0
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = icmp sgt i32 %3, 0
  br i1 %6, label %30, label %7, !prof !11

7:                                                ; preds = %5
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef 3) #9
  br label %30

8:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !14
  %9 = getelementptr inbounds %struct.host1x_job, ptr %0, i32 0, i32 29
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void %10(ptr noundef %0) #9
  br label %13

13:                                               ; preds = %12, %8
  %14 = getelementptr inbounds %struct.host1x_job, ptr %0, i32 0, i32 16
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.host1x_job, ptr %0, i32 0, i32 13
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.host1x_syncpt, ptr %19, i32 0, i32 7
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.host1x_syncpt, ptr %19, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  tail call void @host1x_intr_put_ref(ptr noundef %21, i32 noundef %23, ptr noundef nonnull %15, i1 noundef zeroext false) #9
  br label %24

24:                                               ; preds = %17, %13
  %25 = getelementptr inbounds %struct.host1x_job, ptr %0, i32 0, i32 13
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  tail call void @host1x_syncpt_put(ptr noundef nonnull %26) #9
  br label %29

29:                                               ; preds = %28, %24
  tail call void @kfree(ptr noundef %0) #9
  br label %30

30:                                               ; preds = %29, %7, %5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @host1x_job_add_gather(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #1 {
  %5 = getelementptr inbounds %struct.host1x_job, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.host1x_job, ptr %0, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr %struct.host1x_job_cmd, ptr %6, i32 %8, i32 1
  store i32 %2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.host1x_job_gather, ptr %9, i32 0, i32 2
  store ptr %1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.host1x_job_gather, ptr %9, i32 0, i32 3
  store i32 %3, ptr %11, align 4
  %12 = load i32, ptr %7, align 4
  %13 = add i32 %12, 1
  store i32 %13, ptr %7, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @host1x_job_add_wait(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef %4) #1 {
  %6 = zext i1 %3 to i8
  %7 = getelementptr inbounds %struct.host1x_job, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.host1x_job, ptr %0, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr %struct.host1x_job_cmd, ptr %8, i32 %10
  store i8 1, ptr %11, align 4
  %12 = getelementptr %struct.host1x_job_cmd, ptr %8, i32 %10, i32 1
  store i32 %1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.host1x_job_wait, ptr %12, i32 0, i32 1
  store i32 %2, ptr %13, align 4
  %14 = getelementptr inbounds %struct.host1x_job_wait, ptr %12, i32 0, i32 2
  store i32 %4, ptr %14, align 4
  %15 = getelementptr inbounds %struct.host1x_job_wait, ptr %12, i32 0, i32 3
  store i8 %6, ptr %15, align 4
  %16 = load i32, ptr %9, align 4
  %17 = add i32 %16, 1
  store i32 %17, ptr %9, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @host1x_job_pin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.host1x_job, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.host1x_client, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.host1x_job, ptr %0, i32 0, i32 9
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.host1x_job, ptr %0, i32 0, i32 7
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %58, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.host1x_job, ptr %0, i32 0, i32 6
  %17 = getelementptr inbounds %struct.host1x_client, ptr %8, i32 0, i32 12
  %18 = getelementptr inbounds %struct.host1x_job, ptr %0, i32 0, i32 10
  %19 = getelementptr inbounds %struct.host1x_job, ptr %0, i32 0, i32 8
  br label %20

20:                                               ; preds = %44, %15
  %21 = phi i32 [ 0, %15 ], [ %55, %44 ]
  %22 = load ptr, ptr %16, align 4
  %23 = getelementptr %struct.host1x_reloc, ptr %22, i32 %21, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %25, align 4
  %27 = tail call ptr %26(ptr noundef %24) #9
  store ptr %27, ptr %23, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %181, label %29

29:                                               ; preds = %20
  %30 = getelementptr %struct.host1x_reloc, ptr %22, i32 %21, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 3
  %33 = add nsw i32 %32, -1
  %34 = icmp ult i32 %33, 3
  br i1 %34, label %35, label %181

35:                                               ; preds = %29
  %36 = getelementptr inbounds [3 x i32], ptr @switch.table.host1x_job_pin, i32 0, i32 %33
  %37 = load i32, ptr %36, align 4
  %38 = tail call ptr @host1x_bo_pin(ptr noundef %10, ptr noundef nonnull %27, i32 noundef %37, ptr noundef %17) #9
  %39 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %39, label %183, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.host1x_bo_mapping, ptr %38, i32 0, i32 6
  %42 = load i32, ptr %41, align 4
  %43 = icmp ugt i32 %42, 1
  br i1 %43, label %181, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.host1x_bo_mapping, ptr %38, i32 0, i32 8
  %46 = load i32, ptr %45, align 4
  %47 = load ptr, ptr %18, align 4
  %48 = load i32, ptr %11, align 4
  %49 = getelementptr i32, ptr %47, i32 %48
  store i32 %46, ptr %49, align 4
  %50 = load ptr, ptr %19, align 4
  %51 = load i32, ptr %11, align 4
  %52 = getelementptr %struct.host1x_job_unpin_data, ptr %50, i32 %51
  store ptr %38, ptr %52, align 4
  %53 = load i32, ptr %11, align 4
  %54 = add i32 %53, 1
  store i32 %54, ptr %11, align 4
  %55 = add nuw i32 %21, 1
  %56 = load i32, ptr %12, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %20, label %58

58:                                               ; preds = %44, %2
  %59 = getelementptr inbounds %struct.host1x_job, ptr %0, i32 0, i32 31
  %60 = load i8, ptr %59, align 4, !range !15
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %192

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.host1x_job, ptr %0, i32 0, i32 5
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %189, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.host1x_job, ptr %0, i32 0, i32 4
  %68 = getelementptr inbounds %struct.host1x, ptr %6, i32 0, i32 5
  %69 = getelementptr inbounds %struct.host1x, ptr %6, i32 0, i32 29
  %70 = getelementptr inbounds %struct.host1x, ptr %6, i32 0, i32 10
  %71 = getelementptr inbounds %struct.host1x, ptr %6, i32 0, i32 11
  %72 = getelementptr inbounds %struct.host1x, ptr %6, i32 0, i32 11, i32 4
  %73 = getelementptr inbounds %struct.host1x, ptr %6, i32 0, i32 12
  %74 = getelementptr inbounds %struct.host1x_job, ptr %0, i32 0, i32 10
  %75 = getelementptr inbounds %struct.host1x_job, ptr %0, i32 0, i32 8
  %76 = getelementptr inbounds %struct.host1x_job, ptr %0, i32 0, i32 11
  br label %77

77:                                               ; preds = %171, %66
  %78 = phi i32 [ %64, %66 ], [ %172, %171 ]
  %79 = phi i32 [ 0, %66 ], [ %173, %171 ]
  %80 = load ptr, ptr %67, align 4
  %81 = getelementptr %struct.host1x_job_cmd, ptr %80, i32 %79
  %82 = load i8, ptr %81, align 4, !range !15
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %171

84:                                               ; preds = %77
  %85 = getelementptr %struct.host1x_job_cmd, ptr %80, i32 %79, i32 1, i32 0, i32 2
  %86 = load ptr, ptr %85, align 4
  %87 = load ptr, ptr %86, align 4
  %88 = load ptr, ptr %87, align 4
  %89 = tail call ptr %88(ptr noundef %86) #9
  store ptr %89, ptr %85, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %181, label %91

91:                                               ; preds = %84
  %92 = load ptr, ptr %68, align 4
  %93 = tail call ptr @host1x_bo_pin(ptr noundef %92, ptr noundef nonnull %89, i32 noundef 1, ptr noundef %69) #9
  %94 = icmp ugt ptr %93, inttoptr (i32 -4096 to ptr)
  br i1 %94, label %183, label %95

95:                                               ; preds = %91
  %96 = load ptr, ptr %70, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.host1x_bo_mapping, ptr %93, i32 0, i32 8
  %100 = load i32, ptr %99, align 4
  br label %156

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.host1x_bo_mapping, ptr %93, i32 0, i32 5
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.sg_table, ptr %103, i32 0, i32 2
  %105 = load i32, ptr %104, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %122, label %107

107:                                              ; preds = %101
  %108 = load ptr, ptr %103, align 4
  br label %109

109:                                              ; preds = %109, %107
  %110 = phi i32 [ %116, %109 ], [ 0, %107 ]
  %111 = phi ptr [ %117, %109 ], [ %108, %107 ]
  %112 = phi i32 [ %115, %109 ], [ 0, %107 ]
  %113 = getelementptr inbounds %struct.scatterlist, ptr %111, i32 0, i32 2
  %114 = load i32, ptr %113, align 4
  %115 = add i32 %114, %112
  %116 = add nuw i32 %110, 1
  %117 = tail call ptr @sg_next(ptr noundef %111) #9
  %118 = load ptr, ptr %102, align 4
  %119 = getelementptr inbounds %struct.sg_table, ptr %118, i32 0, i32 2
  %120 = load i32, ptr %119, align 4
  %121 = icmp ult i32 %116, %120
  br i1 %121, label %109, label %122

122:                                              ; preds = %109, %101
  %123 = phi i32 [ 0, %101 ], [ %115, %109 ]
  %124 = load i32, ptr %72, align 4
  %125 = add i32 %123, -1
  %126 = add i32 %125, %124
  %127 = sub i32 0, %124
  %128 = and i32 %126, %127
  %129 = tail call i32 @llvm.cttz.i32(i32 %124, i1 false) #9, !range !16
  %130 = lshr i32 %128, %129
  %131 = load i32, ptr %73, align 4
  %132 = lshr i32 %131, %129
  %133 = tail call ptr @alloc_iova(ptr noundef %71, i32 noundef %130, i32 noundef %132, i1 noundef zeroext true) #9
  %134 = icmp eq ptr %133, null
  br i1 %134, label %175, label %135

135:                                              ; preds = %122
  %136 = load ptr, ptr %70, align 4
  %137 = getelementptr inbounds %struct.iova, ptr %133, i32 0, i32 2
  %138 = load i32, ptr %137, align 4
  %139 = load i32, ptr %72, align 4
  %140 = tail call i32 @llvm.cttz.i32(i32 %139, i1 false) #9, !range !16
  %141 = shl i32 %138, %140
  %142 = load ptr, ptr %102, align 4
  %143 = load ptr, ptr %142, align 4
  %144 = getelementptr inbounds %struct.sg_table, ptr %142, i32 0, i32 2
  %145 = load i32, ptr %144, align 4
  %146 = tail call i32 @iommu_map_sg(ptr noundef %136, i32 noundef %141, ptr noundef %143, i32 noundef %145, i32 noundef 1) #9
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %135
  tail call void @__free_iova(ptr noundef %71, ptr noundef nonnull %133) #9
  br label %175

149:                                              ; preds = %135
  %150 = load i32, ptr %137, align 4
  %151 = load i32, ptr %72, align 4
  %152 = tail call i32 @llvm.cttz.i32(i32 %151, i1 false) #9, !range !16
  %153 = shl i32 %150, %152
  %154 = getelementptr inbounds %struct.host1x_bo_mapping, ptr %93, i32 0, i32 8
  store i32 %153, ptr %154, align 4
  %155 = getelementptr inbounds %struct.host1x_bo_mapping, ptr %93, i32 0, i32 9
  store i32 %128, ptr %155, align 4
  br label %156

156:                                              ; preds = %149, %98
  %157 = phi i32 [ %153, %149 ], [ %100, %98 ]
  %158 = getelementptr inbounds %struct.host1x_bo_mapping, ptr %93, i32 0, i32 8
  %159 = load ptr, ptr %74, align 4
  %160 = load i32, ptr %11, align 4
  %161 = getelementptr i32, ptr %159, i32 %160
  store i32 %157, ptr %161, align 4
  %162 = load ptr, ptr %75, align 4
  %163 = load i32, ptr %11, align 4
  %164 = getelementptr %struct.host1x_job_unpin_data, ptr %162, i32 %163
  store ptr %93, ptr %164, align 4
  %165 = load i32, ptr %11, align 4
  %166 = add i32 %165, 1
  store i32 %166, ptr %11, align 4
  %167 = load i32, ptr %158, align 4
  %168 = load ptr, ptr %76, align 4
  %169 = getelementptr i32, ptr %168, i32 %79
  store i32 %167, ptr %169, align 4
  %170 = load i32, ptr %63, align 4
  br label %171

171:                                              ; preds = %156, %77
  %172 = phi i32 [ %78, %77 ], [ %170, %156 ]
  %173 = add nuw i32 %79, 1
  %174 = icmp ult i32 %173, %172
  br i1 %174, label %77, label %186

175:                                              ; preds = %148, %122
  %176 = phi i32 [ -22, %148 ], [ -12, %122 ]
  %177 = load ptr, ptr %85, align 4
  %178 = load ptr, ptr %177, align 4
  %179 = getelementptr inbounds %struct.host1x_bo_ops, ptr %178, i32 0, i32 1
  %180 = load ptr, ptr %179, align 4
  tail call void %180(ptr noundef %177) #9
  br label %181

181:                                              ; preds = %175, %84, %40, %29, %20
  %182 = phi i32 [ %176, %175 ], [ -22, %84 ], [ -22, %29 ], [ -22, %40 ], [ -22, %20 ]
  tail call void @host1x_job_unpin(ptr noundef %0) #9
  br label %661

183:                                              ; preds = %91, %35
  %184 = phi ptr [ %93, %91 ], [ %38, %35 ]
  %185 = ptrtoint ptr %184 to i32
  tail call void @host1x_job_unpin(ptr noundef %0) #9
  br label %661

186:                                              ; preds = %171
  %187 = load i8, ptr %59, align 4, !range !15
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %186, %62
  %190 = getelementptr inbounds %struct.host1x_job, ptr %0, i32 0, i32 5
  %191 = load i32, ptr %190, align 4
  br label %530

192:                                              ; preds = %186, %58
  %193 = getelementptr inbounds %struct.host1x, ptr %6, i32 0, i32 5
  %194 = load ptr, ptr %193, align 4
  %195 = getelementptr inbounds %struct.host1x_job, ptr %0, i32 0, i32 6
  %196 = load ptr, ptr %195, align 4
  %197 = load i32, ptr %12, align 4
  %198 = getelementptr inbounds %struct.host1x_job, ptr %0, i32 0, i32 26
  %199 = load i32, ptr %198, align 4
  %200 = getelementptr inbounds %struct.host1x_job, ptr %0, i32 0, i32 5
  %201 = load i32, ptr %200, align 4
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %221, label %203

203:                                              ; preds = %192
  %204 = getelementptr inbounds %struct.host1x_job, ptr %0, i32 0, i32 4
  %205 = load ptr, ptr %204, align 4
  br label %206

206:                                              ; preds = %217, %203
  %207 = phi i32 [ 0, %203 ], [ %219, %217 ]
  %208 = phi i32 [ 0, %203 ], [ %218, %217 ]
  %209 = getelementptr %struct.host1x_job_cmd, ptr %205, i32 %207
  %210 = load i8, ptr %209, align 4, !range !15
  %211 = icmp eq i8 %210, 0
  br i1 %211, label %212, label %217

212:                                              ; preds = %206
  %213 = getelementptr %struct.host1x_job_cmd, ptr %205, i32 %207, i32 1
  %214 = load i32, ptr %213, align 4
  %215 = shl i32 %214, 2
  %216 = add i32 %215, %208
  br label %217

217:                                              ; preds = %212, %206
  %218 = phi i32 [ %216, %212 ], [ %208, %206 ]
  %219 = add nuw i32 %207, 1
  %220 = icmp eq i32 %219, %201
  br i1 %220, label %221, label %206

221:                                              ; preds = %217, %192
  %222 = phi i32 [ 0, %192 ], [ %218, %217 ]
  %223 = getelementptr inbounds %struct.host1x_job, ptr %0, i32 0, i32 22
  %224 = tail call ptr @dma_alloc_attrs(ptr noundef %194, i32 noundef %222, ptr noundef %223, i32 noundef 2048, i32 noundef 4) #9
  %225 = getelementptr inbounds %struct.host1x_job, ptr %0, i32 0, i32 23
  store ptr %224, ptr %225, align 4
  %226 = icmp eq ptr %224, null
  br i1 %226, label %227, label %230

227:                                              ; preds = %221
  %228 = tail call ptr @dma_alloc_attrs(ptr noundef %194, i32 noundef %222, ptr noundef %223, i32 noundef 3264, i32 noundef 4) #9
  store ptr %228, ptr %225, align 4
  %229 = icmp eq ptr %228, null
  br i1 %229, label %661, label %230

230:                                              ; preds = %227, %221
  %231 = getelementptr inbounds %struct.host1x_job, ptr %0, i32 0, i32 21
  store i32 %222, ptr %231, align 4
  %232 = load i32, ptr %200, align 4
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %526, label %234

234:                                              ; preds = %230
  %235 = getelementptr inbounds %struct.host1x_job, ptr %0, i32 0, i32 4
  %236 = getelementptr inbounds %struct.host1x_job, ptr %0, i32 0, i32 24
  %237 = getelementptr inbounds %struct.host1x_job, ptr %0, i32 0, i32 25
  br label %238

238:                                              ; preds = %518, %234
  %239 = phi i32 [ %232, %234 ], [ %519, %518 ]
  %240 = phi i32 [ 0, %234 ], [ %524, %518 ]
  %241 = phi i32 [ 0, %234 ], [ %523, %518 ]
  %242 = phi i32 [ %199, %234 ], [ %522, %518 ]
  %243 = phi ptr [ %196, %234 ], [ %521, %518 ]
  %244 = phi i32 [ %197, %234 ], [ %520, %518 ]
  %245 = load ptr, ptr %235, align 4
  %246 = getelementptr %struct.host1x_job_cmd, ptr %245, i32 %240
  %247 = load i8, ptr %246, align 4, !range !15
  %248 = icmp eq i8 %247, 0
  br i1 %248, label %249, label %518

249:                                              ; preds = %238
  %250 = getelementptr %struct.host1x_job_cmd, ptr %245, i32 %240, i32 1
  %251 = getelementptr inbounds %struct.host1x_job_gather, ptr %250, i32 0, i32 2
  %252 = load ptr, ptr %251, align 4
  %253 = load ptr, ptr %252, align 4
  %254 = getelementptr inbounds %struct.host1x_bo_ops, ptr %253, i32 0, i32 4
  %255 = load ptr, ptr %254, align 4
  %256 = tail call ptr %255(ptr noundef %252) #9
  %257 = load ptr, ptr %225, align 4
  %258 = getelementptr i8, ptr %257, i32 %241
  %259 = getelementptr inbounds %struct.host1x_job_gather, ptr %250, i32 0, i32 3
  %260 = load i32, ptr %259, align 4
  %261 = getelementptr i8, ptr %256, i32 %260
  %262 = load i32, ptr %250, align 4
  %263 = shl i32 %262, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %258, ptr align 1 %261, i32 %263, i1 false) #9
  %264 = load ptr, ptr %251, align 4
  %265 = load ptr, ptr %264, align 4
  %266 = getelementptr inbounds %struct.host1x_bo_ops, ptr %265, i32 0, i32 5
  %267 = load ptr, ptr %266, align 4
  tail call void %267(ptr noundef %264, ptr noundef %256) #9
  %268 = load i32, ptr %223, align 4
  %269 = getelementptr inbounds %struct.host1x_job_gather, ptr %250, i32 0, i32 1
  store i32 %268, ptr %269, align 4
  store i32 %241, ptr %259, align 4
  %270 = load ptr, ptr %225, align 4
  %271 = lshr i32 %241, 2
  %272 = getelementptr i32, ptr %270, i32 %271
  %273 = load i32, ptr %250, align 4
  %274 = load ptr, ptr %251, align 4
  %275 = icmp eq i32 %273, 0
  br i1 %275, label %510, label %276

276:                                              ; preds = %501, %249
  %277 = phi i32 [ %502, %501 ], [ %244, %249 ]
  %278 = phi ptr [ %503, %501 ], [ %243, %249 ]
  %279 = phi i32 [ %505, %501 ], [ %242, %249 ]
  %280 = phi i32 [ %504, %501 ], [ 0, %249 ]
  %281 = phi i32 [ %506, %501 ], [ %273, %249 ]
  %282 = getelementptr i32, ptr %272, i32 %280
  %283 = load i32, ptr %282, align 4
  %284 = lshr i32 %283, 28
  %285 = add i32 %281, -1
  %286 = add i32 %280, 1
  switch i32 %284, label %661 [
    i32 0, label %287
    i32 1, label %351
    i32 2, label %398
    i32 3, label %443
    i32 4, label %501
    i32 14, label %501
  ]

287:                                              ; preds = %276
  %288 = lshr i32 %283, 6
  %289 = and i32 %288, 1023
  %290 = and i32 %283, 63
  %291 = lshr i32 %283, 16
  %292 = and i32 %291, 4095
  %293 = load ptr, ptr %237, align 4
  %294 = icmp eq ptr %293, null
  br i1 %294, label %295, label %297

295:                                              ; preds = %287
  %296 = icmp eq i32 %289, %242
  br i1 %296, label %300, label %661

297:                                              ; preds = %287
  %298 = tail call i32 %293(i32 noundef %289) #9
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %661, label %300

300:                                              ; preds = %297, %295
  %301 = icmp eq i32 %290, 0
  br i1 %301, label %501, label %302

302:                                              ; preds = %342, %300
  %303 = phi i32 [ %343, %342 ], [ %277, %300 ]
  %304 = phi ptr [ %344, %342 ], [ %278, %300 ]
  %305 = phi i32 [ %345, %342 ], [ %286, %300 ]
  %306 = phi i32 [ %346, %342 ], [ %285, %300 ]
  %307 = phi i32 [ %347, %342 ], [ %285, %300 ]
  %308 = phi i32 [ %349, %342 ], [ %292, %300 ]
  %309 = phi i32 [ %348, %342 ], [ %290, %300 ]
  %310 = icmp eq i32 %307, 0
  br i1 %310, label %661, label %311

311:                                              ; preds = %302
  %312 = and i32 %309, 1
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %342, label %314

314:                                              ; preds = %311
  %315 = load ptr, ptr %236, align 4
  %316 = icmp eq ptr %315, null
  br i1 %316, label %337, label %317

317:                                              ; preds = %314
  %318 = tail call i32 %315(ptr noundef %1, i32 noundef %289, i32 noundef %308) #9
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %337, label %320

320:                                              ; preds = %317
  %321 = icmp eq i32 %303, 0
  br i1 %321, label %661, label %322

322:                                              ; preds = %320
  %323 = load ptr, ptr %304, align 4
  %324 = icmp eq ptr %323, %274
  br i1 %324, label %325, label %661

325:                                              ; preds = %322
  %326 = shl i32 %305, 2
  %327 = getelementptr inbounds %struct.anon.65, ptr %304, i32 0, i32 1
  %328 = load i32, ptr %327, align 4
  %329 = icmp eq i32 %328, %326
  br i1 %329, label %330, label %661

330:                                              ; preds = %325
  %331 = getelementptr inbounds %struct.host1x_reloc, ptr %304, i32 0, i32 2
  %332 = load i32, ptr %331, align 4
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %334, label %661

334:                                              ; preds = %330
  %335 = add i32 %303, -1
  %336 = getelementptr %struct.host1x_reloc, ptr %304, i32 1
  br label %337

337:                                              ; preds = %334, %317, %314
  %338 = phi i32 [ %303, %314 ], [ %303, %317 ], [ %335, %334 ]
  %339 = phi ptr [ %304, %314 ], [ %304, %317 ], [ %336, %334 ]
  %340 = add i32 %306, -1
  %341 = add i32 %305, 1
  br label %342

342:                                              ; preds = %337, %311
  %343 = phi i32 [ %303, %311 ], [ %338, %337 ]
  %344 = phi ptr [ %304, %311 ], [ %339, %337 ]
  %345 = phi i32 [ %305, %311 ], [ %341, %337 ]
  %346 = phi i32 [ %306, %311 ], [ %340, %337 ]
  %347 = phi i32 [ %307, %311 ], [ %340, %337 ]
  %348 = lshr i32 %309, 1
  %349 = add nuw nsw i32 %308, 1
  %350 = icmp ult i32 %309, 2
  br i1 %350, label %501, label %302

351:                                              ; preds = %276
  %352 = and i32 %283, 65535
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %501, label %354

354:                                              ; preds = %351
  %355 = lshr i32 %283, 16
  %356 = and i32 %355, 4095
  %357 = sub i32 %285, %352
  %358 = add i32 %352, %286
  br label %359

359:                                              ; preds = %390, %354
  %360 = phi i32 [ %391, %390 ], [ %277, %354 ]
  %361 = phi ptr [ %392, %390 ], [ %278, %354 ]
  %362 = phi i32 [ %395, %390 ], [ %286, %354 ]
  %363 = phi i32 [ %394, %390 ], [ %285, %354 ]
  %364 = phi i32 [ %393, %390 ], [ %356, %354 ]
  %365 = phi i32 [ %396, %390 ], [ %352, %354 ]
  %366 = icmp eq i32 %363, 0
  br i1 %366, label %661, label %367

367:                                              ; preds = %359
  %368 = load ptr, ptr %236, align 4
  %369 = icmp eq ptr %368, null
  br i1 %369, label %390, label %370

370:                                              ; preds = %367
  %371 = tail call i32 %368(ptr noundef %1, i32 noundef %279, i32 noundef %364) #9
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %390, label %373

373:                                              ; preds = %370
  %374 = icmp eq i32 %360, 0
  br i1 %374, label %661, label %375

375:                                              ; preds = %373
  %376 = load ptr, ptr %361, align 4
  %377 = icmp eq ptr %376, %274
  br i1 %377, label %378, label %661

378:                                              ; preds = %375
  %379 = shl i32 %362, 2
  %380 = getelementptr inbounds %struct.anon.65, ptr %361, i32 0, i32 1
  %381 = load i32, ptr %380, align 4
  %382 = icmp eq i32 %381, %379
  br i1 %382, label %383, label %661

383:                                              ; preds = %378
  %384 = getelementptr inbounds %struct.host1x_reloc, ptr %361, i32 0, i32 2
  %385 = load i32, ptr %384, align 4
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %387, label %661

387:                                              ; preds = %383
  %388 = add i32 %360, -1
  %389 = getelementptr %struct.host1x_reloc, ptr %361, i32 1
  br label %390

390:                                              ; preds = %387, %370, %367
  %391 = phi i32 [ %360, %367 ], [ %388, %387 ], [ %360, %370 ]
  %392 = phi ptr [ %361, %367 ], [ %389, %387 ], [ %361, %370 ]
  %393 = add nuw nsw i32 %364, 1
  %394 = add i32 %363, -1
  %395 = add i32 %362, 1
  %396 = add nsw i32 %365, -1
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %501, label %359

398:                                              ; preds = %276
  %399 = lshr i32 %283, 16
  %400 = and i32 %399, 4095
  %401 = and i32 %283, 65535
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %501, label %403

403:                                              ; preds = %398
  %404 = sub i32 %285, %401
  %405 = add i32 %401, %286
  br label %406

406:                                              ; preds = %436, %403
  %407 = phi i32 [ %437, %436 ], [ %277, %403 ]
  %408 = phi ptr [ %438, %436 ], [ %278, %403 ]
  %409 = phi i32 [ %440, %436 ], [ %286, %403 ]
  %410 = phi i32 [ %439, %436 ], [ %285, %403 ]
  %411 = phi i32 [ %441, %436 ], [ %401, %403 ]
  %412 = icmp eq i32 %410, 0
  br i1 %412, label %661, label %413

413:                                              ; preds = %406
  %414 = load ptr, ptr %236, align 4
  %415 = icmp eq ptr %414, null
  br i1 %415, label %436, label %416

416:                                              ; preds = %413
  %417 = tail call i32 %414(ptr noundef %1, i32 noundef %279, i32 noundef %400) #9
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %436, label %419

419:                                              ; preds = %416
  %420 = icmp eq i32 %407, 0
  br i1 %420, label %661, label %421

421:                                              ; preds = %419
  %422 = load ptr, ptr %408, align 4
  %423 = icmp eq ptr %422, %274
  br i1 %423, label %424, label %661

424:                                              ; preds = %421
  %425 = shl i32 %409, 2
  %426 = getelementptr inbounds %struct.anon.65, ptr %408, i32 0, i32 1
  %427 = load i32, ptr %426, align 4
  %428 = icmp eq i32 %427, %425
  br i1 %428, label %429, label %661

429:                                              ; preds = %424
  %430 = getelementptr inbounds %struct.host1x_reloc, ptr %408, i32 0, i32 2
  %431 = load i32, ptr %430, align 4
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %433, label %661

433:                                              ; preds = %429
  %434 = add i32 %407, -1
  %435 = getelementptr %struct.host1x_reloc, ptr %408, i32 1
  br label %436

436:                                              ; preds = %433, %416, %413
  %437 = phi i32 [ %407, %413 ], [ %434, %433 ], [ %407, %416 ]
  %438 = phi ptr [ %408, %413 ], [ %435, %433 ], [ %408, %416 ]
  %439 = add i32 %410, -1
  %440 = add i32 %409, 1
  %441 = add nsw i32 %411, -1
  %442 = icmp eq i32 %441, 0
  br i1 %442, label %501, label %406

443:                                              ; preds = %276
  %444 = and i32 %283, 65535
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %501, label %446

446:                                              ; preds = %443
  %447 = lshr i32 %283, 16
  %448 = and i32 %447, 4095
  br label %449

449:                                              ; preds = %491, %446
  %450 = phi i32 [ %492, %491 ], [ %277, %446 ]
  %451 = phi ptr [ %493, %491 ], [ %278, %446 ]
  %452 = phi i32 [ %494, %491 ], [ %286, %446 ]
  %453 = phi i32 [ %495, %491 ], [ %285, %446 ]
  %454 = phi i32 [ %496, %491 ], [ %286, %446 ]
  %455 = phi i32 [ %497, %491 ], [ %285, %446 ]
  %456 = phi i32 [ %499, %491 ], [ %448, %446 ]
  %457 = phi i32 [ %498, %491 ], [ %444, %446 ]
  %458 = icmp eq i32 %455, 0
  br i1 %458, label %661, label %459

459:                                              ; preds = %449
  %460 = and i32 %457, 1
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %491, label %462

462:                                              ; preds = %459
  %463 = load ptr, ptr %236, align 4
  %464 = icmp eq ptr %463, null
  br i1 %464, label %485, label %465

465:                                              ; preds = %462
  %466 = tail call i32 %463(ptr noundef %1, i32 noundef %279, i32 noundef %456) #9
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %485, label %468

468:                                              ; preds = %465
  %469 = icmp eq i32 %450, 0
  br i1 %469, label %661, label %470

470:                                              ; preds = %468
  %471 = load ptr, ptr %451, align 4
  %472 = icmp eq ptr %471, %274
  br i1 %472, label %473, label %661

473:                                              ; preds = %470
  %474 = shl i32 %452, 2
  %475 = getelementptr inbounds %struct.anon.65, ptr %451, i32 0, i32 1
  %476 = load i32, ptr %475, align 4
  %477 = icmp eq i32 %476, %474
  br i1 %477, label %478, label %661

478:                                              ; preds = %473
  %479 = getelementptr inbounds %struct.host1x_reloc, ptr %451, i32 0, i32 2
  %480 = load i32, ptr %479, align 4
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %482, label %661

482:                                              ; preds = %478
  %483 = add i32 %450, -1
  %484 = getelementptr %struct.host1x_reloc, ptr %451, i32 1
  br label %485

485:                                              ; preds = %482, %465, %462
  %486 = phi i32 [ %450, %462 ], [ %483, %482 ], [ %450, %465 ]
  %487 = phi ptr [ %451, %462 ], [ %484, %482 ], [ %451, %465 ]
  %488 = phi i32 [ %454, %462 ], [ %452, %482 ], [ %452, %465 ]
  %489 = add i32 %453, -1
  %490 = add i32 %488, 1
  br label %491

491:                                              ; preds = %485, %459
  %492 = phi i32 [ %450, %459 ], [ %486, %485 ]
  %493 = phi ptr [ %451, %459 ], [ %487, %485 ]
  %494 = phi i32 [ %452, %459 ], [ %490, %485 ]
  %495 = phi i32 [ %453, %459 ], [ %489, %485 ]
  %496 = phi i32 [ %454, %459 ], [ %490, %485 ]
  %497 = phi i32 [ %455, %459 ], [ %489, %485 ]
  %498 = lshr i32 %457, 1
  %499 = add nuw nsw i32 %456, 1
  %500 = icmp ult i32 %457, 2
  br i1 %500, label %501, label %449

501:                                              ; preds = %491, %443, %436, %398, %390, %351, %342, %300, %276, %276
  %502 = phi i32 [ %277, %276 ], [ %277, %276 ], [ %277, %443 ], [ %277, %398 ], [ %277, %351 ], [ %277, %300 ], [ %343, %342 ], [ %391, %390 ], [ %437, %436 ], [ %492, %491 ]
  %503 = phi ptr [ %278, %276 ], [ %278, %276 ], [ %278, %443 ], [ %278, %398 ], [ %278, %351 ], [ %278, %300 ], [ %344, %342 ], [ %392, %390 ], [ %438, %436 ], [ %493, %491 ]
  %504 = phi i32 [ %286, %276 ], [ %286, %276 ], [ %286, %443 ], [ %286, %398 ], [ %286, %351 ], [ %286, %300 ], [ %345, %342 ], [ %358, %390 ], [ %405, %436 ], [ %494, %491 ]
  %505 = phi i32 [ %279, %276 ], [ %279, %276 ], [ %279, %443 ], [ %279, %398 ], [ %279, %351 ], [ %289, %300 ], [ %289, %342 ], [ %279, %390 ], [ %279, %436 ], [ %279, %491 ]
  %506 = phi i32 [ %285, %276 ], [ %285, %276 ], [ %285, %443 ], [ %285, %398 ], [ %285, %351 ], [ %285, %300 ], [ %347, %342 ], [ %357, %390 ], [ %404, %436 ], [ %497, %491 ]
  %507 = icmp eq i32 %506, 0
  br i1 %507, label %508, label %276

508:                                              ; preds = %501
  %509 = load i32, ptr %250, align 4
  br label %510

510:                                              ; preds = %508, %249
  %511 = phi i32 [ 0, %249 ], [ %509, %508 ]
  %512 = phi i32 [ %244, %249 ], [ %502, %508 ]
  %513 = phi ptr [ %243, %249 ], [ %503, %508 ]
  %514 = phi i32 [ %242, %249 ], [ %505, %508 ]
  %515 = shl i32 %511, 2
  %516 = add i32 %515, %241
  %517 = load i32, ptr %200, align 4
  br label %518

518:                                              ; preds = %510, %238
  %519 = phi i32 [ %239, %238 ], [ %517, %510 ]
  %520 = phi i32 [ %244, %238 ], [ %512, %510 ]
  %521 = phi ptr [ %243, %238 ], [ %513, %510 ]
  %522 = phi i32 [ %242, %238 ], [ %514, %510 ]
  %523 = phi i32 [ %241, %238 ], [ %516, %510 ]
  %524 = add nuw i32 %240, 1
  %525 = icmp ult i32 %524, %519
  br i1 %525, label %238, label %526

526:                                              ; preds = %518, %230
  %527 = phi i32 [ 0, %230 ], [ %519, %518 ]
  %528 = phi i32 [ %197, %230 ], [ %520, %518 ]
  %529 = icmp eq i32 %528, 0
  br i1 %529, label %530, label %661

530:                                              ; preds = %526, %189
  %531 = phi i32 [ %191, %189 ], [ %527, %526 ]
  %532 = getelementptr inbounds %struct.host1x_job, ptr %0, i32 0, i32 5
  %533 = icmp eq i32 %531, 0
  br i1 %533, label %663, label %534

534:                                              ; preds = %530
  %535 = getelementptr inbounds %struct.host1x_job, ptr %0, i32 0, i32 4
  %536 = getelementptr inbounds %struct.host1x_job, ptr %0, i32 0, i32 11
  %537 = getelementptr inbounds %struct.host1x_job, ptr %0, i32 0, i32 6
  %538 = getelementptr inbounds %struct.host1x_job, ptr %0, i32 0, i32 12
  %539 = getelementptr inbounds %struct.host1x_job, ptr %0, i32 0, i32 23
  br label %540

540:                                              ; preds = %657, %534
  %541 = phi i32 [ %531, %534 ], [ %659, %657 ]
  %542 = phi i32 [ 0, %534 ], [ %658, %657 ]
  %543 = load ptr, ptr %535, align 4
  %544 = getelementptr %struct.host1x_job_cmd, ptr %543, i32 %542
  %545 = load i8, ptr %544, align 4, !range !15
  %546 = icmp eq i8 %545, 0
  br i1 %546, label %547, label %657

547:                                              ; preds = %540
  %548 = getelementptr %struct.host1x_job_cmd, ptr %543, i32 %542, i32 1
  %549 = getelementptr inbounds %struct.host1x_job_gather, ptr %548, i32 0, i32 4
  %550 = load i8, ptr %549, align 4, !range !15
  %551 = icmp eq i8 %550, 0
  br i1 %551, label %552, label %657

552:                                              ; preds = %547
  %553 = load i8, ptr %59, align 4, !range !15
  %554 = icmp eq i8 %553, 0
  br i1 %554, label %555, label %561

555:                                              ; preds = %552
  %556 = load ptr, ptr %536, align 4
  %557 = getelementptr i32, ptr %556, i32 %542
  %558 = load i32, ptr %557, align 4
  %559 = getelementptr inbounds %struct.host1x_job_gather, ptr %548, i32 0, i32 1
  store i32 %558, ptr %559, align 4
  %560 = load i32, ptr %532, align 4
  br label %561

561:                                              ; preds = %555, %552
  %562 = phi i32 [ %560, %555 ], [ %541, %552 ]
  %563 = add nuw i32 %542, 1
  %564 = icmp ult i32 %563, %562
  br i1 %564, label %565, label %591

565:                                              ; preds = %561
  %566 = getelementptr inbounds %struct.host1x_job_gather, ptr %548, i32 0, i32 2
  %567 = getelementptr inbounds %struct.host1x_job_gather, ptr %548, i32 0, i32 1
  br label %568

568:                                              ; preds = %587, %565
  %569 = phi i32 [ %562, %565 ], [ %588, %587 ]
  %570 = phi i32 [ %563, %565 ], [ %589, %587 ]
  %571 = load ptr, ptr %535, align 4
  %572 = getelementptr %struct.host1x_job_cmd, ptr %571, i32 %570
  %573 = load i8, ptr %572, align 4, !range !15
  %574 = icmp eq i8 %573, 0
  br i1 %574, label %575, label %587

575:                                              ; preds = %568
  %576 = getelementptr %struct.host1x_job_cmd, ptr %571, i32 %570, i32 1
  %577 = getelementptr inbounds %struct.host1x_job_gather, ptr %576, i32 0, i32 2
  %578 = load ptr, ptr %577, align 4
  %579 = load ptr, ptr %566, align 4
  %580 = icmp eq ptr %578, %579
  br i1 %580, label %581, label %587

581:                                              ; preds = %575
  %582 = getelementptr inbounds %struct.host1x_job_gather, ptr %576, i32 0, i32 4
  store i8 1, ptr %582, align 4
  %583 = load i32, ptr %567, align 4
  %584 = load ptr, ptr %535, align 4
  %585 = getelementptr %struct.host1x_job_cmd, ptr %584, i32 %570, i32 1, i32 0, i32 1
  store i32 %583, ptr %585, align 4
  %586 = load i32, ptr %532, align 4
  br label %587

587:                                              ; preds = %581, %575, %568
  %588 = phi i32 [ %569, %568 ], [ %569, %575 ], [ %586, %581 ]
  %589 = add nuw i32 %570, 1
  %590 = icmp ult i32 %589, %588
  br i1 %590, label %568, label %591

591:                                              ; preds = %587, %561
  %592 = getelementptr inbounds %struct.host1x_job_gather, ptr %548, i32 0, i32 2
  %593 = load ptr, ptr %592, align 4
  %594 = load i32, ptr %12, align 4
  %595 = icmp eq i32 %594, 0
  br i1 %595, label %657, label %596

596:                                              ; preds = %591
  %597 = getelementptr inbounds %struct.host1x_job_gather, ptr %548, i32 0, i32 3
  br label %598

598:                                              ; preds = %644, %596
  %599 = phi i32 [ %594, %596 ], [ %645, %644 ]
  %600 = phi i32 [ 0, %596 ], [ %647, %644 ]
  %601 = phi ptr [ null, %596 ], [ %646, %644 ]
  %602 = load ptr, ptr %537, align 4
  %603 = getelementptr %struct.host1x_reloc, ptr %602, i32 %600
  %604 = load ptr, ptr %538, align 4
  %605 = getelementptr i32, ptr %604, i32 %600
  %606 = load i32, ptr %605, align 4
  %607 = getelementptr %struct.host1x_reloc, ptr %602, i32 %600, i32 1, i32 1
  %608 = load i32, ptr %607, align 4
  %609 = add i32 %608, %606
  %610 = getelementptr %struct.host1x_reloc, ptr %602, i32 %600, i32 2
  %611 = load i32, ptr %610, align 4
  %612 = lshr i32 %609, %611
  %613 = load ptr, ptr %603, align 4
  %614 = icmp eq ptr %593, %613
  br i1 %614, label %615, label %644

615:                                              ; preds = %598
  %616 = load i8, ptr %59, align 4, !range !15
  %617 = icmp eq i8 %616, 0
  br i1 %617, label %627, label %618

618:                                              ; preds = %615
  %619 = load ptr, ptr %539, align 4
  %620 = getelementptr inbounds %struct.anon.65, ptr %603, i32 0, i32 1
  %621 = load i32, ptr %620, align 4
  %622 = lshr i32 %621, 2
  %623 = getelementptr i32, ptr %619, i32 %622
  %624 = load i32, ptr %597, align 4
  %625 = lshr i32 %624, 2
  %626 = getelementptr i32, ptr %623, i32 %625
  br label %640

627:                                              ; preds = %615
  %628 = icmp eq ptr %601, null
  br i1 %628, label %629, label %635

629:                                              ; preds = %627
  %630 = load ptr, ptr %593, align 4
  %631 = getelementptr inbounds %struct.host1x_bo_ops, ptr %630, i32 0, i32 4
  %632 = load ptr, ptr %631, align 4
  %633 = tail call ptr %632(ptr noundef %593) #9
  %634 = icmp eq ptr %633, null
  br i1 %634, label %655, label %635, !prof !10

635:                                              ; preds = %629, %627
  %636 = phi ptr [ %601, %627 ], [ %633, %629 ]
  %637 = getelementptr inbounds %struct.anon.65, ptr %603, i32 0, i32 1
  %638 = load i32, ptr %637, align 4
  %639 = getelementptr i8, ptr %636, i32 %638
  br label %640

640:                                              ; preds = %635, %618
  %641 = phi ptr [ %601, %618 ], [ %636, %635 ]
  %642 = phi ptr [ %626, %618 ], [ %639, %635 ]
  store i32 %612, ptr %642, align 4
  %643 = load i32, ptr %12, align 4
  br label %644

644:                                              ; preds = %640, %598
  %645 = phi i32 [ %599, %598 ], [ %643, %640 ]
  %646 = phi ptr [ %601, %598 ], [ %641, %640 ]
  %647 = add nuw i32 %600, 1
  %648 = icmp ult i32 %647, %645
  br i1 %648, label %598, label %649

649:                                              ; preds = %644
  %650 = icmp eq ptr %646, null
  br i1 %650, label %657, label %651

651:                                              ; preds = %649
  %652 = load ptr, ptr %593, align 4
  %653 = getelementptr inbounds %struct.host1x_bo_ops, ptr %652, i32 0, i32 5
  %654 = load ptr, ptr %653, align 4
  tail call void %654(ptr noundef %593, ptr noundef nonnull %646) #9
  br label %657

655:                                              ; preds = %629
  %656 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  br label %661

657:                                              ; preds = %651, %649, %591, %547, %540
  %658 = add nuw i32 %542, 1
  %659 = load i32, ptr %532, align 4
  %660 = icmp ult i32 %658, %659
  br i1 %660, label %540, label %663

661:                                              ; preds = %655, %526, %478, %473, %470, %468, %449, %429, %424, %421, %419, %406, %383, %378, %375, %373, %359, %330, %325, %322, %320, %302, %297, %295, %276, %227, %183, %181
  %662 = phi i32 [ %182, %181 ], [ -12, %655 ], [ %185, %183 ], [ -22, %526 ], [ -12, %227 ], [ -22, %322 ], [ -22, %325 ], [ -22, %330 ], [ -22, %320 ], [ -22, %302 ], [ -22, %375 ], [ -22, %378 ], [ -22, %383 ], [ -22, %373 ], [ -22, %359 ], [ -22, %421 ], [ -22, %424 ], [ -22, %429 ], [ -22, %419 ], [ -22, %406 ], [ -22, %470 ], [ -22, %473 ], [ -22, %478 ], [ -22, %468 ], [ -22, %449 ], [ -22, %276 ], [ -22, %295 ], [ -22, %297 ]
  tail call void @host1x_job_unpin(ptr noundef %0)
  br label %663

663:                                              ; preds = %661, %657, %530
  %664 = phi i32 [ %662, %661 ], [ 0, %530 ], [ 0, %657 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  ret i32 %664
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @host1x_job_unpin(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.host1x_job, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.host1x_channel, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.host1x_job, ptr %0, i32 0, i32 9
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %54, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.host1x_job, ptr %0, i32 0, i32 8
  %15 = getelementptr inbounds %struct.host1x_job, ptr %0, i32 0, i32 31
  %16 = getelementptr inbounds %struct.host1x, ptr %9, i32 0, i32 10
  %17 = getelementptr inbounds %struct.host1x_job, ptr %0, i32 0, i32 10
  %18 = getelementptr inbounds %struct.host1x, ptr %9, i32 0, i32 11
  %19 = getelementptr inbounds %struct.host1x, ptr %9, i32 0, i32 11, i32 4
  br label %20

20:                                               ; preds = %47, %13
  %21 = phi i32 [ 0, %13 ], [ %51, %47 ]
  %22 = load ptr, ptr %14, align 4
  %23 = getelementptr %struct.host1x_job_unpin_data, ptr %22, i32 %21
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.host1x_bo_mapping, ptr %24, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = load i8, ptr %15, align 4, !range !15
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.host1x_bo_mapping, ptr %24, i32 0, i32 9
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %47, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %16, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %47, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr %17, align 4
  %38 = getelementptr i32, ptr %37, i32 %21
  %39 = load i32, ptr %38, align 4
  %40 = tail call i32 @iommu_unmap(ptr noundef nonnull %34, i32 noundef %39, i32 noundef %31) #9
  %41 = load ptr, ptr %17, align 4
  %42 = getelementptr i32, ptr %41, i32 %21
  %43 = load i32, ptr %42, align 4
  %44 = load i32, ptr %19, align 4
  %45 = tail call i32 @llvm.cttz.i32(i32 %44, i1 false) #9, !range !16
  %46 = lshr i32 %43, %45
  tail call void @free_iova(ptr noundef %18, i32 noundef %46) #9
  br label %47

47:                                               ; preds = %36, %33, %29, %20
  tail call void @host1x_bo_unpin(ptr noundef %24) #9
  %48 = load ptr, ptr %26, align 4
  %49 = getelementptr inbounds %struct.host1x_bo_ops, ptr %48, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  tail call void %50(ptr noundef %26) #9
  %51 = add nuw i32 %21, 1
  %52 = load i32, ptr %10, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %20, label %54

54:                                               ; preds = %47, %1
  store i32 0, ptr %10, align 4
  %55 = getelementptr inbounds %struct.host1x_job, ptr %0, i32 0, i32 21
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.host1x, ptr %9, i32 0, i32 5
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.host1x_job, ptr %0, i32 0, i32 23
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.host1x_job, ptr %0, i32 0, i32 22
  %64 = load i32, ptr %63, align 4
  tail call void @dma_free_attrs(ptr noundef %60, i32 noundef %56, ptr noundef %62, i32 noundef %64, i32 noundef 4) #9
  br label %65

65:                                               ; preds = %58, %54
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_unmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_iova(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_bo_unpin(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @host1x_job_dump(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #3 {
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_intr_put_ref(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_syncpt_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @host1x_bo_pin(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_iova(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_iova(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_map_sg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { nounwind }
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
!8 = !{i64 622354, i64 2148123920, i64 2148123946, i64 2148123993, i64 2148124015, i64 2148124043, i64 2148124063}
!9 = !{i64 2148188640, i64 2148188672, i64 2148188701, i64 2148188735, i64 2148188766, i64 2148188789}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2148288862}
!13 = !{i64 2148190997, i64 2148191029, i64 2148191058, i64 2148191092, i64 2148191123, i64 2148191146}
!14 = !{i64 2149316241}
!15 = !{i8 0, i8 2}
!16 = !{i32 0, i32 33}
!17 = !{i64 2153390464}
