; ModuleID = '/llk/IR/sound/hda/hdac_bus.c_pt.bc'
source_filename = "../sound/hda/hdac_bus.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hdac_bus_init:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hdac_bus_init\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hdac_bus_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hdac_bus_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hdac_bus_exit\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hdac_bus_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hdac_bus_exec_verb_unlocked:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hdac_bus_exec_verb_unlocked\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hdac_bus_exec_verb_unlocked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hdac_aligned_read:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hdac_aligned_read\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hdac_aligned_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hdac_aligned_write:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hdac_aligned_write\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hdac_aligned_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hdac_codec_link_up:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hdac_codec_link_up\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hdac_codec_link_up:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hdac_codec_link_down:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hdac_codec_link_down\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hdac_codec_link_down:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.hdac_bus_ops = type { ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.hdac_bus = type { ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, [16 x ptr], [128 x i32], i32, i32, %struct.work_struct, i32, i32, %struct.hdac_rb, %struct.hdac_rb, [8 x i32], %struct.wait_queue_head, %struct.snd_dma_buffer, %struct.snd_dma_buffer, i32, %struct.list_head, i16, i32, i32, i32, %struct.spinlock, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, i32, %struct.list_head, i8, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.hdac_rb = type { ptr, i32, i16, i16, [8 x i32], [8 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.hdac_driver = type { %struct.device_driver, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.hdac_device = type { %struct.device, i32, ptr, i32, %struct.list_head, i16, i16, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, i32, i16, i16, %struct.atomic_t, %struct.mutex, ptr, ptr, %struct.mutex, %struct.snd_array, i8 }
%struct.snd_array = type { i32, i32, i32, i32, ptr }

@default_ops = internal constant %struct.hdac_bus_ops { ptr @snd_hdac_bus_send_cmd, ptr @snd_hdac_bus_get_response, ptr @snd_hdac_bus_link_power }, align 4
@snd_hdac_bus_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [16 x i8] c"&bus->cmd_mutex\00", align 1
@snd_hdac_bus_init.__key.1 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"&bus->lock\00", align 1
@snd_hdac_bus_init.__key.3 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"&bus->rirb_wq\00", align 1
@__kstrtab_snd_hdac_bus_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hdac_bus_init = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hdac_bus_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hdac_bus_init to i32), ptr @__kstrtab_snd_hdac_bus_init, ptr @__kstrtabns_snd_hdac_bus_init }, section "___ksymtab_gpl+snd_hdac_bus_init", align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"sound/hda/hdac_bus.c\00", align 1
@__kstrtab_snd_hdac_bus_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hdac_bus_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hdac_bus_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hdac_bus_exit to i32), ptr @__kstrtab_snd_hdac_bus_exit, ptr @__kstrtabns_snd_hdac_bus_exit }, section "___ksymtab_gpl+snd_hdac_bus_exit", align 4
@__kstrtab_snd_hdac_bus_exec_verb_unlocked = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hdac_bus_exec_verb_unlocked = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hdac_bus_exec_verb_unlocked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hdac_bus_exec_verb_unlocked to i32), ptr @__kstrtab_snd_hdac_bus_exec_verb_unlocked, ptr @__kstrtabns_snd_hdac_bus_exec_verb_unlocked }, section "___ksymtab_gpl+snd_hdac_bus_exec_verb_unlocked", align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"address 0x%x is already occupied\0A\00", align 1
@__kstrtab_snd_hdac_aligned_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hdac_aligned_read = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hdac_aligned_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hdac_aligned_read to i32), ptr @__kstrtab_snd_hdac_aligned_read, ptr @__kstrtabns_snd_hdac_aligned_read }, section "___ksymtab_gpl+snd_hdac_aligned_read", align 4
@__kstrtab_snd_hdac_aligned_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hdac_aligned_write = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hdac_aligned_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hdac_aligned_write to i32), ptr @__kstrtab_snd_hdac_aligned_write, ptr @__kstrtabns_snd_hdac_aligned_write }, section "___ksymtab_gpl+snd_hdac_aligned_write", align 4
@__kstrtab_snd_hdac_codec_link_up = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hdac_codec_link_up = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hdac_codec_link_up = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hdac_codec_link_up to i32), ptr @__kstrtab_snd_hdac_codec_link_up, ptr @__kstrtabns_snd_hdac_codec_link_up }, section "___ksymtab_gpl+snd_hdac_codec_link_up", align 4
@__kstrtab_snd_hdac_codec_link_down = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hdac_codec_link_down = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hdac_codec_link_down = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hdac_codec_link_down to i32), ptr @__kstrtab_snd_hdac_codec_link_down, ptr @__kstrtabns_snd_hdac_codec_link_down }, section "___ksymtab_gpl+snd_hdac_codec_link_down", align 4
@__tracepoint_hda_send_cmd = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_hda_get_response = external dso_local global %struct.tracepoint, align 4
@__tracepoint_hda_unsol_event = external dso_local global %struct.tracepoint, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_snd_hdac_aligned_read, ptr @__ksymtab_snd_hdac_aligned_write, ptr @__ksymtab_snd_hdac_bus_exec_verb_unlocked, ptr @__ksymtab_snd_hdac_bus_exit, ptr @__ksymtab_snd_hdac_bus_init, ptr @__ksymtab_snd_hdac_codec_link_down, ptr @__ksymtab_snd_hdac_codec_link_up], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_hdac_bus_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds i8, ptr %0, i32 8
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(1032) %4, i8 0, i32 1024, i1 false)
  store ptr %1, ptr %0, align 4
  %5 = icmp eq ptr %2, null
  %6 = select i1 %5, ptr @default_ops, ptr %2
  %7 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 1
  store ptr %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 26
  store i32 2, ptr %8, align 4
  %9 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 27
  store volatile ptr %9, ptr %9, align 4
  %10 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 27, i32 1
  store ptr %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 11
  store volatile ptr %11, ptr %11, align 4
  %12 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 11, i32 1
  store ptr %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 17
  store i32 -32, ptr %13, align 4
  %14 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 17, i32 1
  store volatile ptr %14, ptr %14, align 4
  %15 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 17, i32 1, i32 1
  store ptr %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 17, i32 2
  store ptr @snd_hdac_bus_process_unsol_events, ptr %16, align 4
  %17 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 32
  store i32 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 33
  tail call void @__mutex_init(ptr noundef %18, ptr noundef nonnull @.str, ptr noundef nonnull @snd_hdac_bus_init.__key) #6
  %19 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 34
  tail call void @__mutex_init(ptr noundef %19, ptr noundef nonnull @.str.2, ptr noundef nonnull @snd_hdac_bus_init.__key.1) #6
  %20 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 40
  store volatile ptr %20, ptr %20, align 4
  %21 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 40, i32 1
  store ptr %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 23
  tail call void @__init_waitqueue_head(ptr noundef %22, ptr noundef nonnull @.str.4, ptr noundef nonnull @snd_hdac_bus_init.__key.3) #6
  %23 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 5
  store i32 -1, ptr %23, align 4
  %24 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 42
  store i32 8, ptr %24, align 4
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_hdac_bus_process_unsol_events(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 312
  tail call void @_raw_spin_lock_irq(ptr noundef %2) #6
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = load i32, ptr %3, align 4
  %6 = load i32, ptr %4, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %48, label %8

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 -520
  %10 = getelementptr i8, ptr %0, i32 -584
  br label %11

11:                                               ; preds = %33, %8
  %12 = phi i32 [ %6, %8 ], [ %34, %33 ]
  %13 = phi i32 [ %5, %8 ], [ %35, %33 ]
  %14 = add i32 %13, 1
  %15 = and i32 %14, 63
  store i32 %15, ptr %3, align 4
  %16 = shl nuw nsw i32 %15, 1
  %17 = getelementptr [128 x i32], ptr %9, i32 0, i32 %16
  %18 = load i32, ptr %17, align 4
  %19 = or i32 %16, 1
  %20 = getelementptr [128 x i32], ptr %9, i32 0, i32 %19
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 16
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %11
  %25 = and i32 %21, 15
  %26 = getelementptr [16 x ptr], ptr %10, i32 0, i32 %25
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 6
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %45, %29, %24, %11
  %34 = phi i32 [ %12, %24 ], [ %12, %29 ], [ %47, %45 ], [ %12, %11 ]
  %35 = phi i32 [ %15, %24 ], [ %15, %29 ], [ %46, %45 ], [ %15, %11 ]
  %36 = icmp eq i32 %35, %34
  br i1 %36, label %48, label %11

37:                                               ; preds = %29
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %38 = load i16, ptr %2, align 4
  %39 = add i16 %38, 1
  store i16 %39, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #6, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !12
  %40 = load ptr, ptr %30, align 8
  %41 = getelementptr inbounds %struct.hdac_driver, ptr %40, i32 0, i32 4
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  tail call void %42(ptr noundef nonnull %27, i32 noundef %18) #6
  br label %45

45:                                               ; preds = %44, %37
  tail call void @_raw_spin_lock_irq(ptr noundef %2) #6
  %46 = load i32, ptr %3, align 4
  %47 = load i32, ptr %4, align 4
  br label %33

48:                                               ; preds = %33, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %49 = load i16, ptr %2, align 4
  %50 = add i16 %49, 1
  store i16 %50, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #6, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_hdac_bus_exit(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 27
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %6, label %5, !prof !13

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 72, i32 noundef 9, ptr noundef null) #6
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 11
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %11, label %10, !prof !13

10:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 73, i32 noundef 9, ptr noundef null) #6
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 17
  %13 = tail call zeroext i1 @cancel_work_sync(ptr noundef %12) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_hdac_bus_exec_verb(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 33
  tail call void @mutex_lock(ptr noundef %5) #6
  %6 = tail call i32 @snd_hdac_bus_exec_verb_unlocked(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3)
  tail call void @mutex_unlock(ptr noundef %5) #6
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_hdac_bus_exec_verb_unlocked(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !14
  %6 = icmp eq i32 %2, -1
  br i1 %6, label %71, label %7

7:                                                ; preds = %4
  %8 = icmp eq ptr %3, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %7
  store i32 -1, ptr %3, align 4
  br label %16

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 28
  %12 = load i16, ptr %11, align 4
  %13 = and i16 %12, 4
  %14 = icmp eq i16 %13, 0
  %15 = select i1 %14, ptr null, ptr %5
  br label %16

16:                                               ; preds = %10, %9
  %17 = phi ptr [ %3, %9 ], [ %15, %10 ]
  %18 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 1
  br label %19

19:                                               ; preds = %40, %16
  %20 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hda_send_cmd, i32 0, i32 1), align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %19
  %23 = tail call ptr @llvm.thread.pointer() #6
  %24 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %25 = load i32, ptr %24, align 8
  %26 = lshr i32 %25, 5
  %27 = getelementptr i32, ptr @__cpu_online_mask, i32 %26
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %25, 31
  %30 = shl nuw i32 1, %29
  %31 = and i32 %30, %28
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %22
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !15
  %34 = call i32 @__traceiter_hda_send_cmd(ptr noundef null, ptr noundef %0, i32 noundef %2) #6
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  br label %35

35:                                               ; preds = %33, %22, %19
  %36 = load ptr, ptr %18, align 4
  %37 = load ptr, ptr %36, align 4
  %38 = call i32 %37(ptr noundef %0, i32 noundef %2) #6
  %39 = icmp eq i32 %38, -11
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load ptr, ptr %18, align 4
  %42 = getelementptr inbounds %struct.hdac_bus_ops, ptr %41, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = call i32 %43(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %5) #6
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %19, label %71

46:                                               ; preds = %35
  %47 = icmp eq i32 %38, 0
  %48 = icmp ne ptr %17, null
  %49 = and i1 %48, %47
  br i1 %49, label %50, label %71

50:                                               ; preds = %46
  %51 = load ptr, ptr %18, align 4
  %52 = getelementptr inbounds %struct.hdac_bus_ops, ptr %51, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = call i32 %53(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %17) #6
  %55 = load i32, ptr %17, align 4
  %56 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hda_get_response, i32 0, i32 1), align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %50
  %59 = tail call ptr @llvm.thread.pointer() #6
  %60 = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 2
  %61 = load i32, ptr %60, align 8
  %62 = lshr i32 %61, 5
  %63 = getelementptr i32, ptr @__cpu_online_mask, i32 %62
  %64 = load volatile i32, ptr %63, align 4
  %65 = and i32 %61, 31
  %66 = shl nuw i32 1, %65
  %67 = and i32 %66, %64
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %58
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !17
  %70 = call i32 @__traceiter_hda_get_response(ptr noundef null, ptr noundef %0, i32 noundef %1, i32 noundef %55) #6
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !18
  br label %71

71:                                               ; preds = %69, %58, %50, %46, %40, %4
  %72 = phi i32 [ -22, %4 ], [ %38, %46 ], [ %54, %50 ], [ %54, %58 ], [ %54, %69 ], [ %44, %40 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  ret i32 %72
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_hdac_bus_queue_event(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %33, label %5

5:                                                ; preds = %3
  %6 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hda_unsol_event, i32 0, i32 1), align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %5
  %9 = tail call ptr @llvm.thread.pointer() #6
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 5
  %13 = getelementptr i32, ptr @__cpu_online_mask, i32 %12
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %11, 31
  %16 = shl nuw i32 1, %15
  %17 = and i32 %16, %14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !19
  %20 = tail call i32 @__traceiter_hda_unsol_event(ptr noundef null, ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !20
  br label %21

21:                                               ; preds = %19, %8, %5
  %22 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 16
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, 1
  %25 = and i32 %24, 63
  store i32 %25, ptr %22, align 4
  %26 = shl nuw nsw i32 %25, 1
  %27 = getelementptr %struct.hdac_bus, ptr %0, i32 0, i32 14, i32 %26
  store i32 %1, ptr %27, align 4
  %28 = or i32 %26, 1
  %29 = getelementptr %struct.hdac_bus, ptr %0, i32 0, i32 14, i32 %28
  store i32 %2, ptr %29, align 4
  %30 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 17
  %31 = load ptr, ptr @system_wq, align 4
  %32 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %31, ptr noundef %30) #6
  br label %33

33:                                               ; preds = %21, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_hdac_bus_add_device(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.hdac_device, ptr %1, i32 0, i32 3
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr %struct.hdac_bus, ptr %0, i32 0, i32 13, i32 %4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.6, i32 noundef %4) #7
  br label %23

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.hdac_device, ptr %1, i32 0, i32 4
  %12 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 11
  %13 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 11, i32 1
  %14 = load ptr, ptr %13, align 4
  store ptr %11, ptr %13, align 4
  store ptr %12, ptr %11, align 4
  %15 = getelementptr inbounds %struct.hdac_device, ptr %1, i32 0, i32 4, i32 1
  store ptr %14, ptr %15, align 4
  store volatile ptr %11, ptr %14, align 4
  %16 = load i32, ptr %3, align 8
  %17 = getelementptr %struct.hdac_bus, ptr %0, i32 0, i32 13, i32 %16
  store ptr %1, ptr %17, align 4
  %18 = load i32, ptr %3, align 8
  %19 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 19
  tail call void @_set_bit(i32 noundef %18, ptr noundef %19) #6
  %20 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 12
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, 1
  store i32 %22, ptr %20, align 4
  br label %23

23:                                               ; preds = %10, %8
  %24 = phi i32 [ -16, %8 ], [ 0, %10 ]
  ret i32 %24
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_hdac_bus_remove_device(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.hdac_device, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %7, label %6, !prof !13

6:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 229, i32 noundef 9, ptr noundef null) #6
  br label %7

7:                                                ; preds = %6, %2
  %8 = getelementptr inbounds %struct.hdac_device, ptr %1, i32 0, i32 4
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %25, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.hdac_device, ptr %1, i32 0, i32 4, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %13, ptr %14, align 4
  store volatile ptr %9, ptr %13, align 4
  store volatile ptr %8, ptr %8, align 4
  store ptr %8, ptr %12, align 4
  %15 = getelementptr inbounds %struct.hdac_device, ptr %1, i32 0, i32 3
  %16 = load i32, ptr %15, align 8
  %17 = getelementptr %struct.hdac_bus, ptr %0, i32 0, i32 13, i32 %16
  store ptr null, ptr %17, align 4
  %18 = load i32, ptr %15, align 8
  %19 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 19
  tail call void @_clear_bit(i32 noundef %18, ptr noundef %19) #6
  %20 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 12
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, -1
  store i32 %22, ptr %20, align 4
  %23 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 17
  %24 = tail call zeroext i1 @flush_work(ptr noundef %23) #6
  br label %25

25:                                               ; preds = %11, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_hdac_aligned_read(ptr noundef %0, i32 noundef %1) #0 {
  %3 = ptrtoint ptr %0 to i32
  %4 = and i32 %3, -4
  %5 = inttoptr i32 %4 to ptr
  %6 = shl i32 %3, 3
  %7 = and i32 %6, 24
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !22
  %9 = lshr i32 %8, %7
  %10 = and i32 %9, %1
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_hdac_aligned_write(i32 noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = ptrtoint ptr %1 to i32
  %5 = and i32 %4, -4
  %6 = inttoptr i32 %5 to ptr
  %7 = shl i32 %4, 3
  %8 = and i32 %7, 24
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #6, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !23
  %10 = shl i32 %2, %8
  %11 = xor i32 %10, -1
  %12 = and i32 %9, %11
  %13 = shl i32 %0, %8
  %14 = or i32 %12, %13
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !24
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %14) #6, !srcloc !25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_hdac_codec_link_up(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.hdac_bus, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.hdac_bus_ops, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void %7(ptr noundef %0, i1 noundef zeroext true) #6
  br label %11

10:                                               ; preds = %1
  tail call void @snd_hdac_bus_link_power(ptr noundef %0, i1 noundef zeroext true) #6
  br label %11

11:                                               ; preds = %10, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hdac_bus_link_power(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_hdac_codec_link_down(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.hdac_bus, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.hdac_bus_ops, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void %7(ptr noundef %0, i1 noundef zeroext false) #6
  br label %11

10:                                               ; preds = %1
  tail call void @snd_hdac_bus_link_power(ptr noundef %0, i1 noundef zeroext false) #6
  br label %11

11:                                               ; preds = %10, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_bus_send_cmd(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_bus_get_response(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_hda_send_cmd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_hda_get_response(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_hda_unsol_event(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
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
!8 = !{i64 2148902817}
!9 = !{i64 2148898641}
!10 = !{i64 2148898716, i64 2148898743, i64 2148898790, i64 2148898812, i64 2148898840, i64 2148898860}
!11 = !{i64 507373}
!12 = !{i64 2148926961}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{!"auto-init"}
!15 = !{i64 2153093921}
!16 = !{i64 2153094073}
!17 = !{i64 2153111094}
!18 = !{i64 2153111266}
!19 = !{i64 2153124158}
!20 = !{i64 2153124332}
!21 = !{i64 366609}
!22 = !{i64 2153176732}
!23 = !{i64 2153178408}
!24 = !{i64 2153178586}
!25 = !{i64 366191}
