; ModuleID = '/llk/IR/drivers/media/dvb-core/dmxdev.c_pt.bc'
source_filename = "../drivers/media/dvb-core/dmxdev.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_dmxdev_init:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_dmxdev_init\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_dmxdev_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_dmxdev_release:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_dmxdev_release\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_dmxdev_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

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
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.60 }
%union.anon.60 = type { ptr }
%struct.lock_class_key = type {}
%struct.dvb_device = type { %struct.list_head, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8] }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmxdev_filter = type { %union.anon.65, %union.anon.66, %union.anon.67, i32, i32, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.timer_list, i32, [3 x i8] }
%union.anon.65 = type { ptr }
%union.anon.66 = type { %struct.list_head }
%union.anon.67 = type { %struct.dmx_sct_filter_params }
%struct.dmx_sct_filter_params = type { i16, %struct.dmx_filter, i32, i32 }
%struct.dmx_filter = type { [16 x i8], [16 x i8], [16 x i8] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.dmx_stc = type { i32, i32, i64 }
%struct.dmx_section_feed = type { i32, ptr, ptr, i32, i32, ptr, [4284 x i8], i16, i16, i16, ptr, ptr, ptr, ptr, ptr }
%struct.dmx_ts_feed = type { i32, ptr, ptr, ptr, ptr, ptr }
%struct.dmx_section_filter = type { [18 x i8], [18 x i8], [18 x i8], ptr, ptr }
%struct.dmx_pes_filter_params = type { i16, i32, i32, i32, i32 }
%struct.dmxdev_feed = type { i16, ptr, %struct.list_head }
%struct.dmx_frontend = type { %struct.list_head, i32 }

@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.60 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype228 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug229 = internal constant [48 x i8] c"parm=debug:Turn on/off debugging (default:off).\00", section ".modinfo", align 1
@dvb_dmxdev_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [15 x i8] c"&dmxdev->mutex\00", align 1
@dvbdev_demux = internal constant %struct.dvb_device { %struct.list_head zeroinitializer, ptr @dvb_demux_fops, ptr null, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, %struct.wait_queue_head zeroinitializer, ptr null, ptr null }, align 4
@dvbdev_dvr = internal constant %struct.dvb_device { %struct.list_head zeroinitializer, ptr @dvb_dvr_fops, ptr null, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, %struct.wait_queue_head zeroinitializer, ptr null, ptr null }, align 4
@__kstrtab_dvb_dmxdev_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_dmxdev_init = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_dmxdev_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_dmxdev_init to i32), ptr @__kstrtab_dvb_dmxdev_init, ptr @__kstrtabns_dvb_dmxdev_init }, section "___ksymtab+dvb_dmxdev_init", align 4
@__kstrtab_dvb_dmxdev_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_dmxdev_release = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_dmxdev_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_dmxdev_release to i32), ptr @__kstrtab_dvb_dmxdev_release, ptr @__kstrtabns_dvb_dmxdev_release }, section "___ksymtab+dvb_dmxdev_release", align 4
@dvb_demux_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @default_llseek, ptr @dvb_demux_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dvb_demux_poll, ptr @dvb_demux_ioctl, ptr @dvb_demux_ioctl, ptr null, i32 0, ptr @dvb_demux_open, ptr null, ptr @dvb_demux_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"\013dmxdev: DVB (%s): could not alloc feed\0A\00", align 1
@__func__.dvb_dmxdev_filter_start = private unnamed_addr constant [24 x i8] c"dvb_dmxdev_filter_start\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"\013dmxdev: DVB (%s): could not set feed\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"\017dmxdev: %s: could not get filter\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"\017dmxdev: %s: section callback %*ph\0A\00", align 1
@__func__.dvb_dmxdev_section_callback = private unnamed_addr constant [28 x i8] c"dvb_dmxdev_section_callback\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"\017dmxdev: %s: buffer overflow\0A\00", align 1
@__func__.dvb_dmxdev_buffer_write = private unnamed_addr constant [24 x i8] c"dvb_dmxdev_buffer_write\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.8 = private unnamed_addr constant [54 x i8] c"\017dmxdev: %s: %s: PID=0x%04x, flags=%02x, timeout=%d\0A\00", align 1
@__func__.dvb_dmxdev_filter_set = private unnamed_addr constant [22 x i8] c"dvb_dmxdev_filter_set\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@dvb_demux_open.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"&dmxdevfilter->mutex\00", align 1
@dvb_dvr_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @default_llseek, ptr @dvb_dvr_read, ptr @dvb_dvr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dvb_dvr_poll, ptr @dvb_dvr_ioctl, ptr null, ptr null, i32 0, ptr @dvb_dvr_open, ptr null, ptr @dvb_dvr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.11 = private unnamed_addr constant [18 x i8] c"\017dmxdev: %s: %s\0A\00", align 1
@__func__.dvb_dvr_poll = private unnamed_addr constant [13 x i8] c"dvb_dvr_poll\00", align 1
@__func__.dvb_dvr_set_buffer_size = private unnamed_addr constant [24 x i8] c"dvb_dvr_set_buffer_size\00", align 1
@__func__.dvb_dvr_open = private unnamed_addr constant [13 x i8] c"dvb_dvr_open\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_debug229, ptr @__UNIQUE_ID_debugtype228, ptr @__ksymtab_dvb_dmxdev_init, ptr @__ksymtab_dvb_dmxdev_release, ptr @__param_debug], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dvb_dmxdev_init(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dmxdev, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dmx_demux, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %4) #10
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %58, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.dmxdev, ptr %0, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %11, i32 600) #10
  %13 = extractvalue { i32, i1 } %12, 1
  %14 = extractvalue { i32, i1 } %12, 0
  %15 = select i1 %13, i32 -1, i32 %14
  %16 = tail call noalias ptr @vmalloc(i32 noundef %15) #11
  %17 = getelementptr inbounds %struct.dmxdev, ptr %0, i32 0, i32 2
  store ptr %16, ptr %17, align 4
  %18 = icmp eq ptr %16, null
  br i1 %18, label %58, label %19

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.dmxdev, ptr %0, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %20, ptr noundef nonnull @.str, ptr noundef nonnull @dvb_dmxdev_init.__key) #10
  %21 = getelementptr inbounds %struct.dmxdev, ptr %0, i32 0, i32 11
  store i32 0, ptr %21, align 4
  %22 = load i32, ptr %10, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %24, %19
  %25 = phi i32 [ %39, %24 ], [ 0, %19 ]
  %26 = load ptr, ptr %17, align 4
  %27 = getelementptr %struct.dmxdev_filter, ptr %26, i32 %25, i32 5
  store ptr %0, ptr %27, align 4
  %28 = load ptr, ptr %17, align 4
  %29 = getelementptr %struct.dmxdev_filter, ptr %28, i32 %25, i32 6
  store ptr null, ptr %29, align 4
  %30 = load ptr, ptr %17, align 4
  %31 = getelementptr %struct.dmxdev_filter, ptr %30, i32 %25, i32 5
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.dmxdev, ptr %32, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %33) #10
  %34 = getelementptr %struct.dmxdev_filter, ptr %30, i32 %25, i32 4
  store i32 0, ptr %34, align 4
  %35 = load ptr, ptr %31, align 4
  %36 = getelementptr inbounds %struct.dmxdev, ptr %35, i32 0, i32 11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %37 = load i16, ptr %36, align 4
  %38 = add i16 %37, 1
  store i16 %38, ptr %36, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %39 = add nuw nsw i32 %25, 1
  %40 = load i32, ptr %10, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %24, label %42

42:                                               ; preds = %24, %19
  %43 = phi i32 [ %22, %19 ], [ %40, %24 ]
  %44 = tail call i32 @dvb_register_device(ptr noundef %1, ptr noundef %0, ptr noundef nonnull @dvbdev_demux, ptr noundef %0, i32 noundef 2, i32 noundef %43) #10
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.dmxdev, ptr %0, i32 0, i32 1
  %48 = load i32, ptr %10, align 4
  %49 = tail call i32 @dvb_register_device(ptr noundef %1, ptr noundef %47, ptr noundef nonnull @dvbdev_dvr, ptr noundef %0, i32 noundef 3, i32 noundef %48) #10
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.dmxdev, ptr %0, i32 0, i32 8
  tail call void @dvb_ringbuffer_init(ptr noundef %52, ptr noundef null, i32 noundef 8192) #10
  br label %58

53:                                               ; preds = %46
  %54 = load ptr, ptr %0, align 4
  tail call void @dvb_unregister_device(ptr noundef %54) #10
  br label %55

55:                                               ; preds = %53, %42
  %56 = phi i32 [ %44, %42 ], [ %49, %53 ]
  %57 = load ptr, ptr %17, align 4
  tail call void @vfree(ptr noundef %57) #10
  store ptr null, ptr %17, align 4
  br label %58

58:                                               ; preds = %55, %51, %9, %2
  %59 = phi i32 [ %56, %55 ], [ 0, %51 ], [ -87, %2 ], [ -12, %9 ]
  ret i32 %59
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_ringbuffer_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_unregister_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dvb_dmxdev_release(ptr nocapture noundef %0) #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = alloca %struct.wait_queue_entry, align 4
  %4 = getelementptr inbounds %struct.dmxdev, ptr %0, i32 0, i32 6
  %5 = load i8, ptr %4, align 4
  %6 = or i8 %5, 2
  store i8 %6, ptr %4, align 4
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.dvb_device, ptr %7, i32 0, i32 8
  %9 = load i32, ptr %8, align 4
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %11, label %30

11:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !13
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #10
  %12 = load ptr, ptr %0, align 4
  %13 = getelementptr inbounds %struct.dvb_device, ptr %12, i32 0, i32 9
  %14 = call i32 @prepare_to_wait_event(ptr noundef %13, ptr noundef nonnull %2, i32 noundef 2) #10
  %15 = load ptr, ptr %0, align 4
  %16 = getelementptr inbounds %struct.dvb_device, ptr %15, i32 0, i32 8
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %27, label %19

19:                                               ; preds = %19, %11
  call void @schedule() #10
  %20 = load ptr, ptr %0, align 4
  %21 = getelementptr inbounds %struct.dvb_device, ptr %20, i32 0, i32 9
  %22 = call i32 @prepare_to_wait_event(ptr noundef %21, ptr noundef nonnull %2, i32 noundef 2) #10
  %23 = load ptr, ptr %0, align 4
  %24 = getelementptr inbounds %struct.dvb_device, ptr %23, i32 0, i32 8
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %19

27:                                               ; preds = %19, %11
  %28 = phi ptr [ %15, %11 ], [ %23, %19 ]
  %29 = getelementptr inbounds %struct.dvb_device, ptr %28, i32 0, i32 9
  call void @finish_wait(ptr noundef %29, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #10
  br label %30

30:                                               ; preds = %27, %1
  %31 = getelementptr inbounds %struct.dmxdev, ptr %0, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.dvb_device, ptr %32, i32 0, i32 8
  %34 = load i32, ptr %33, align 4
  %35 = icmp sgt i32 %34, 1
  br i1 %35, label %36, label %55

36:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false), !annotation !13
  call void @init_wait_entry(ptr noundef nonnull %3, i32 noundef 0) #10
  %37 = load ptr, ptr %31, align 4
  %38 = getelementptr inbounds %struct.dvb_device, ptr %37, i32 0, i32 9
  %39 = call i32 @prepare_to_wait_event(ptr noundef %38, ptr noundef nonnull %3, i32 noundef 2) #10
  %40 = load ptr, ptr %31, align 4
  %41 = getelementptr inbounds %struct.dvb_device, ptr %40, i32 0, i32 8
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %52, label %44

44:                                               ; preds = %44, %36
  call void @schedule() #10
  %45 = load ptr, ptr %31, align 4
  %46 = getelementptr inbounds %struct.dvb_device, ptr %45, i32 0, i32 9
  %47 = call i32 @prepare_to_wait_event(ptr noundef %46, ptr noundef nonnull %3, i32 noundef 2) #10
  %48 = load ptr, ptr %31, align 4
  %49 = getelementptr inbounds %struct.dvb_device, ptr %48, i32 0, i32 8
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %44

52:                                               ; preds = %44, %36
  %53 = phi ptr [ %40, %36 ], [ %48, %44 ]
  %54 = getelementptr inbounds %struct.dvb_device, ptr %53, i32 0, i32 9
  call void @finish_wait(ptr noundef %54, ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #10
  br label %55

55:                                               ; preds = %52, %30
  %56 = load ptr, ptr %0, align 4
  call void @dvb_unregister_device(ptr noundef %56) #10
  %57 = load ptr, ptr %31, align 4
  call void @dvb_unregister_device(ptr noundef %57) #10
  %58 = getelementptr inbounds %struct.dmxdev, ptr %0, i32 0, i32 2
  %59 = load ptr, ptr %58, align 4
  call void @vfree(ptr noundef %59) #10
  store ptr null, ptr %58, align 4
  %60 = getelementptr inbounds %struct.dmxdev, ptr %0, i32 0, i32 3
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.dmx_demux, ptr %61, i32 0, i32 4
  %63 = load ptr, ptr %62, align 4
  %64 = call i32 %63(ptr noundef %61) #10
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dvb_demux_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.dmxdev_filter, ptr %6, i32 0, i32 8
  %8 = tail call i32 @mutex_lock_interruptible(ptr noundef %7) #10
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %90

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.dmxdev_filter, ptr %6, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %82

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.dmxdev_filter, ptr %6, i32 0, i32 10
  %16 = load i32, ptr %15, align 4
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %18, label %66

18:                                               ; preds = %14
  %19 = add nsw i32 %16, 3
  %20 = tail call i32 @llvm.umin.i32(i32 %19, i32 %2) #10
  %21 = getelementptr inbounds %struct.dmxdev_filter, ptr %6, i32 0, i32 6
  %22 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 2048
  %25 = tail call fastcc i32 @dvb_dmxdev_buffer_read(ptr noundef %21, i32 noundef %24, ptr noundef %1, i32 noundef %20) #10
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  store i32 0, ptr %15, align 4
  br label %88

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.dmxdev_filter, ptr %6, i32 0, i32 11
  %30 = load i32, ptr %15, align 4
  %31 = sub i32 0, %30
  %32 = getelementptr i8, ptr %29, i32 %31
  %33 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %25, i32 -1090519040) #12, !srcloc !14
  %34 = extractvalue { i32, i32 } %33, 0
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %43, !prof !15

36:                                               ; preds = %28
  %37 = tail call ptr @llvm.thread.pointer() #10
  %38 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 3
  %39 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %38) #13, !srcloc !16
  %40 = and i32 %39, -13
  %41 = or i32 %40, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %41) #10, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  %42 = tail call i32 @arm_copy_from_user(ptr noundef %32, ptr noundef %1, i32 noundef %25) #10
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %39) #10, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  br label %43

43:                                               ; preds = %36, %28
  %44 = phi i32 [ %42, %36 ], [ %25, %28 ]
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46, !prof !15

46:                                               ; preds = %43
  %47 = sub i32 %25, %44
  %48 = getelementptr i8, ptr %32, i32 %47
  tail call void @llvm.memset.p0.i32(ptr align 1 %48, i8 0, i32 %44, i1 false) #10
  br label %88

49:                                               ; preds = %43
  %50 = load i32, ptr %15, align 4
  %51 = sub i32 %50, %25
  store i32 %51, ptr %15, align 4
  %52 = icmp sgt i32 %51, -3
  br i1 %52, label %88, label %53

53:                                               ; preds = %49
  %54 = sub i32 %2, %25
  %55 = getelementptr i8, ptr %1, i32 %25
  %56 = getelementptr %struct.dmxdev_filter, ptr %6, i32 0, i32 11, i32 1
  %57 = load i8, ptr %56, align 1
  %58 = zext i8 %57 to i32
  %59 = shl nuw nsw i32 %58, 8
  %60 = getelementptr %struct.dmxdev_filter, ptr %6, i32 0, i32 11, i32 2
  %61 = load i8, ptr %60, align 2
  %62 = zext i8 %61 to i32
  %63 = and i32 %59, 3840
  %64 = or i32 %63, %62
  store i32 %64, ptr %15, align 4
  %65 = icmp eq i32 %54, 0
  br i1 %65, label %88, label %66

66:                                               ; preds = %53, %14
  %67 = phi i32 [ %64, %53 ], [ %16, %14 ]
  %68 = phi ptr [ %55, %53 ], [ %1, %14 ]
  %69 = phi i32 [ %54, %53 ], [ %2, %14 ]
  %70 = phi i32 [ %25, %53 ], [ 0, %14 ]
  %71 = tail call i32 @llvm.umin.i32(i32 %69, i32 %67) #10
  %72 = getelementptr inbounds %struct.dmxdev_filter, ptr %6, i32 0, i32 6
  %73 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %74 = load i32, ptr %73, align 4
  %75 = and i32 %74, 2048
  %76 = tail call fastcc i32 @dvb_dmxdev_buffer_read(ptr noundef %72, i32 noundef %75, ptr noundef %68, i32 noundef %71) #10
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %88, label %78

78:                                               ; preds = %66
  %79 = load i32, ptr %15, align 4
  %80 = sub i32 %79, %76
  store i32 %80, ptr %15, align 4
  %81 = add nuw i32 %76, %70
  br label %88

82:                                               ; preds = %10
  %83 = getelementptr inbounds %struct.dmxdev_filter, ptr %6, i32 0, i32 6
  %84 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %85 = load i32, ptr %84, align 4
  %86 = and i32 %85, 2048
  %87 = tail call fastcc i32 @dvb_dmxdev_buffer_read(ptr noundef %83, i32 noundef %86, ptr noundef %1, i32 noundef %2)
  br label %88

88:                                               ; preds = %82, %78, %66, %53, %49, %46, %27
  %89 = phi i32 [ %87, %82 ], [ %25, %27 ], [ %81, %78 ], [ %25, %49 ], [ %25, %53 ], [ %76, %66 ], [ -14, %46 ]
  tail call void @mutex_unlock(ptr noundef %7) #10
  br label %90

90:                                               ; preds = %88, %4
  %91 = phi i32 [ %89, %88 ], [ -512, %4 ]
  ret i32 %91
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dvb_demux_poll(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.dmxdev_filter, ptr %4, i32 0, i32 6
  %6 = getelementptr inbounds %struct.dmxdev_filter, ptr %4, i32 0, i32 6, i32 5
  %7 = icmp eq ptr %1, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %1, align 4
  %10 = icmp ne ptr %9, null
  %11 = icmp ne ptr %6, null
  %12 = and i1 %11, %10
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  tail call void %9(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %1) #10
  br label %14

14:                                               ; preds = %13, %8, %2
  %15 = icmp eq ptr %4, null
  br i1 %15, label %37, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.dmxdev_filter, ptr %4, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.dmxdev, ptr %18, i32 0, i32 6
  %20 = load i8, ptr %19, align 4
  %21 = and i8 %20, 2
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.dmxdev_filter, ptr %4, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, -3
  %27 = icmp ult i32 %26, 3
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.dmxdev_filter, ptr %4, i32 0, i32 6, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i32 0, i32 75
  %33 = tail call i32 @dvb_ringbuffer_empty(ptr noundef %5) #10
  %34 = icmp eq i32 %33, 0
  %35 = or i32 %32, 67
  %36 = select i1 %34, i32 %35, i32 %32
  br label %37

37:                                               ; preds = %28, %23, %16, %14
  %38 = phi i32 [ %36, %28 ], [ 8, %16 ], [ 8, %14 ], [ 0, %23 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dvb_demux_ioctl(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call i32 @dvb_usercopy(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull @dvb_demux_do_ioctl) #10
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dvb_demux_open(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.dvb_device, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dmxdev, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %54, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.dmxdev, ptr %6, i32 0, i32 10
  %12 = tail call i32 @mutex_lock_interruptible(ptr noundef %11) #10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %54

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.dmxdev, ptr %6, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %14
  %19 = load ptr, ptr %7, align 4
  br label %20

20:                                               ; preds = %25, %18
  %21 = phi i32 [ 0, %18 ], [ %26, %25 ]
  %22 = getelementptr %struct.dmxdev_filter, ptr %19, i32 %21, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = add nuw nsw i32 %21, 1
  %27 = icmp eq i32 %26, %16
  br i1 %27, label %52, label %20

28:                                               ; preds = %20, %14
  %29 = phi i32 [ 0, %14 ], [ %21, %20 ]
  %30 = icmp eq i32 %29, %16
  br i1 %30, label %52, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %7, align 4
  %33 = getelementptr %struct.dmxdev_filter, ptr %32, i32 %29
  %34 = getelementptr %struct.dmxdev_filter, ptr %32, i32 %29, i32 8
  tail call void @__mutex_init(ptr noundef %34, ptr noundef nonnull @.str.9, ptr noundef nonnull @dvb_demux_open.__key) #10
  store ptr %33, ptr %3, align 8
  %35 = getelementptr inbounds %struct.dmxdev, ptr %6, i32 0, i32 6
  %36 = load i8, ptr %35, align 4
  %37 = and i8 %36, -2
  store i8 %37, ptr %35, align 4
  %38 = getelementptr %struct.dmxdev_filter, ptr %32, i32 %29, i32 6
  tail call void @dvb_ringbuffer_init(ptr noundef %38, ptr noundef null, i32 noundef 8192) #10
  %39 = getelementptr %struct.dmxdev_filter, ptr %32, i32 %29, i32 3
  store i32 0, ptr %39, align 4
  %40 = getelementptr %struct.dmxdev_filter, ptr %32, i32 %29, i32 5
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.dmxdev, ptr %41, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %42) #10
  %43 = getelementptr %struct.dmxdev_filter, ptr %32, i32 %29, i32 4
  store i32 1, ptr %43, align 4
  %44 = load ptr, ptr %40, align 4
  %45 = getelementptr inbounds %struct.dmxdev, ptr %44, i32 0, i32 11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %46 = load i16, ptr %45, align 4
  %47 = add i16 %46, 1
  store i16 %47, ptr %45, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %48 = getelementptr %struct.dmxdev_filter, ptr %32, i32 %29, i32 9
  tail call void @init_timer_key(ptr noundef %48, ptr noundef nonnull @dvb_dmxdev_filter_timeout, i32 noundef 0, ptr noundef null, ptr noundef null) #10
  %49 = getelementptr inbounds %struct.dvb_device, ptr %4, i32 0, i32 8
  %50 = load i32, ptr %49, align 4
  %51 = add i32 %50, 1
  store i32 %51, ptr %49, align 4
  br label %52

52:                                               ; preds = %31, %28, %25
  %53 = phi i32 [ 0, %31 ], [ -24, %28 ], [ -24, %25 ]
  tail call void @mutex_unlock(ptr noundef %11) #10
  br label %54

54:                                               ; preds = %52, %10, %2
  %55 = phi i32 [ -22, %2 ], [ -512, %10 ], [ %53, %52 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dvb_demux_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.dmxdev_filter, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dmxdev, ptr %6, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %7) #10
  %8 = getelementptr inbounds %struct.dmxdev_filter, ptr %4, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %8) #10
  %9 = tail call fastcc i32 @dvb_dmxdev_filter_stop(ptr noundef %4) #10
  %10 = getelementptr inbounds %struct.dmxdev_filter, ptr %4, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i32 %11, 2
  br i1 %12, label %40, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.dmxdev_filter, ptr %4, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %33

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.dmxdev_filter, ptr %4, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %18
  br i1 %20, label %29, label %21

21:                                               ; preds = %21, %17
  %22 = phi ptr [ %24, %21 ], [ %19, %17 ]
  %23 = getelementptr i8, ptr %22, i32 -8
  %24 = load ptr, ptr %22, align 4
  %25 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  store ptr %26, ptr %27, align 4
  store volatile ptr %24, ptr %26, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %22, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %25, align 4
  tail call void @kfree(ptr noundef %23) #10
  %28 = icmp eq ptr %24, %18
  br i1 %28, label %29, label %21

29:                                               ; preds = %21, %17
  %30 = load volatile ptr, ptr %18, align 4
  %31 = icmp eq ptr %30, %18
  br i1 %31, label %33, label %32, !prof !15

32:                                               ; preds = %29
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/dvb-core/dmxdev.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 595, 0\0A.popsection", ""() #10, !srcloc !19
  unreachable

33:                                               ; preds = %29, %13
  store i32 0, ptr %14, align 4
  %34 = load ptr, ptr %5, align 4
  %35 = getelementptr inbounds %struct.dmxdev, ptr %34, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %35) #10
  store i32 1, ptr %10, align 4
  %36 = load ptr, ptr %5, align 4
  %37 = getelementptr inbounds %struct.dmxdev, ptr %36, i32 0, i32 11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %38 = load i16, ptr %37, align 4
  %39 = add i16 %38, 1
  store i16 %39, ptr %37, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  br label %40

40:                                               ; preds = %33, %2
  %41 = getelementptr inbounds %struct.dmxdev_filter, ptr %4, i32 0, i32 6
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.dmxdev, ptr %6, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %45) #10
  store ptr null, ptr %41, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %46 = load i16, ptr %45, align 4
  %47 = add i16 %46, 1
  store i16 %47, ptr %45, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  tail call void @vfree(ptr noundef nonnull %42) #10
  br label %48

48:                                               ; preds = %44, %40
  %49 = load ptr, ptr %5, align 4
  %50 = getelementptr inbounds %struct.dmxdev, ptr %49, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %50) #10
  store i32 0, ptr %10, align 4
  %51 = load ptr, ptr %5, align 4
  %52 = getelementptr inbounds %struct.dmxdev, ptr %51, i32 0, i32 11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %53 = load i16, ptr %52, align 4
  %54 = add i16 %53, 1
  store i16 %54, ptr %52, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %55 = getelementptr inbounds %struct.dmxdev_filter, ptr %4, i32 0, i32 6, i32 5
  tail call void @__wake_up(ptr noundef %55, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  tail call void @mutex_unlock(ptr noundef %8) #10
  tail call void @mutex_unlock(ptr noundef %7) #10
  tail call void @mutex_lock(ptr noundef %7) #10
  %56 = load ptr, ptr %6, align 4
  %57 = getelementptr inbounds %struct.dvb_device, ptr %56, i32 0, i32 8
  %58 = load i32, ptr %57, align 4
  %59 = add i32 %58, -1
  store i32 %59, ptr %57, align 4
  %60 = load ptr, ptr %6, align 4
  %61 = getelementptr inbounds %struct.dvb_device, ptr %60, i32 0, i32 8
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %72

64:                                               ; preds = %48
  %65 = getelementptr inbounds %struct.dmxdev, ptr %6, i32 0, i32 6
  %66 = load i8, ptr %65, align 4
  %67 = and i8 %66, 2
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %64
  tail call void @mutex_unlock(ptr noundef %7) #10
  %70 = load ptr, ptr %6, align 4
  %71 = getelementptr inbounds %struct.dvb_device, ptr %70, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %71, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %73

72:                                               ; preds = %64, %48
  tail call void @mutex_unlock(ptr noundef %7) #10
  br label %73

73:                                               ; preds = %72, %69
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dvb_dmxdev_buffer_read(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.wait_queue_entry, align 4
  %6 = load ptr, ptr %0, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %67, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.dvb_ringbuffer, ptr %0, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = icmp eq i32 %3, 0
  br i1 %13, label %61, label %14

14:                                               ; preds = %12
  %15 = icmp eq i32 %1, 0
  %16 = getelementptr inbounds %struct.dvb_ringbuffer, ptr %0, i32 0, i32 5
  br label %18

17:                                               ; preds = %8
  tail call void @dvb_ringbuffer_flush(ptr noundef %0) #10
  br label %67

18:                                               ; preds = %57, %14
  %19 = phi ptr [ %2, %14 ], [ %58, %57 ]
  %20 = phi i32 [ %3, %14 ], [ %59, %57 ]
  br i1 %15, label %24, label %21

21:                                               ; preds = %18
  %22 = call i32 @dvb_ringbuffer_empty(ptr noundef %0) #10
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %61

24:                                               ; preds = %21, %18
  %25 = call i32 @dvb_ringbuffer_empty(ptr noundef %0) #10
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %47, label %27

27:                                               ; preds = %24
  %28 = load i32, ptr %9, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %50

30:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false), !annotation !13
  call void @init_wait_entry(ptr noundef nonnull %5, i32 noundef 0) #10
  %31 = call i32 @prepare_to_wait_event(ptr noundef %16, ptr noundef nonnull %5, i32 noundef 1) #10
  %32 = call i32 @dvb_ringbuffer_empty(ptr noundef %0) #10
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %40, %30
  %35 = phi i32 [ %41, %40 ], [ %31, %30 ]
  %36 = load i32, ptr %9, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = icmp eq i32 %35, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %38
  call void @schedule() #10
  %41 = call i32 @prepare_to_wait_event(ptr noundef %16, ptr noundef nonnull %5, i32 noundef 1) #10
  %42 = call i32 @dvb_ringbuffer_empty(ptr noundef %0) #10
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %34

44:                                               ; preds = %40, %34, %30
  call void @finish_wait(ptr noundef %16, ptr noundef nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #10
  br label %47

45:                                               ; preds = %38
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #10
  %46 = icmp slt i32 %35, 0
  br i1 %46, label %61, label %47

47:                                               ; preds = %45, %44, %24
  %48 = load i32, ptr %9, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %47, %27
  %51 = phi i32 [ %48, %47 ], [ %28, %27 ]
  call void @dvb_ringbuffer_flush(ptr noundef %0) #10
  br label %61

52:                                               ; preds = %47
  %53 = call i32 @dvb_ringbuffer_avail(ptr noundef %0) #10
  %54 = call i32 @llvm.umin.i32(i32 %53, i32 %20)
  %55 = call i32 @dvb_ringbuffer_read_user(ptr noundef %0, ptr noundef %19, i32 noundef %54) #10
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %52
  %58 = getelementptr i8, ptr %19, i32 %55
  %59 = sub i32 %20, %55
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %18

61:                                               ; preds = %57, %52, %50, %45, %21, %12
  %62 = phi i32 [ %20, %50 ], [ 0, %12 ], [ 0, %57 ], [ %20, %45 ], [ %20, %52 ], [ %20, %21 ]
  %63 = phi i32 [ %51, %50 ], [ 0, %12 ], [ %55, %57 ], [ %35, %45 ], [ %55, %52 ], [ -11, %21 ]
  %64 = sub i32 %3, %62
  %65 = icmp eq i32 %62, %3
  %66 = select i1 %65, i32 %63, i32 %64
  br label %67

67:                                               ; preds = %61, %17, %4
  %68 = phi i32 [ %10, %17 ], [ %66, %61 ], [ 0, %4 ]
  ret i32 %68
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_ringbuffer_flush(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_ringbuffer_empty(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_ringbuffer_avail(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_ringbuffer_read_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usercopy(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dvb_demux_do_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.dmxdev_filter, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %2 to i32
  %9 = getelementptr inbounds %struct.dmxdev, ptr %7, i32 0, i32 10
  %10 = tail call i32 @mutex_lock_interruptible(ptr noundef %9) #10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %84

12:                                               ; preds = %3
  switch i32 %1, label %82 [
    i32 28457, label %13
    i32 28458, label %25
    i32 1077702443, label %31
    i32 1075081004, label %37
    i32 28461, label %43
    i32 -2146799825, label %49
    i32 -1072664782, label %57
    i32 1073901363, label %68
    i32 1073901364, label %75
  ]

13:                                               ; preds = %12
  %14 = getelementptr inbounds %struct.dmxdev_filter, ptr %5, i32 0, i32 8
  %15 = tail call i32 @mutex_lock_interruptible(ptr noundef %14) #10
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %82

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.dmxdev_filter, ptr %5, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = icmp ult i32 %19, 2
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = tail call fastcc i32 @dvb_dmxdev_filter_start(ptr noundef %5)
  br label %23

23:                                               ; preds = %21, %17
  %24 = phi i32 [ %22, %21 ], [ -22, %17 ]
  tail call void @mutex_unlock(ptr noundef %14) #10
  br label %82

25:                                               ; preds = %12
  %26 = getelementptr inbounds %struct.dmxdev_filter, ptr %5, i32 0, i32 8
  %27 = tail call i32 @mutex_lock_interruptible(ptr noundef %26) #10
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %82

29:                                               ; preds = %25
  %30 = tail call fastcc i32 @dvb_dmxdev_filter_stop(ptr noundef %5)
  tail call void @mutex_unlock(ptr noundef %26) #10
  br label %82

31:                                               ; preds = %12
  %32 = getelementptr inbounds %struct.dmxdev_filter, ptr %5, i32 0, i32 8
  %33 = tail call i32 @mutex_lock_interruptible(ptr noundef %32) #10
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %82

35:                                               ; preds = %31
  %36 = tail call fastcc i32 @dvb_dmxdev_filter_set(ptr noundef %5, ptr noundef %2)
  tail call void @mutex_unlock(ptr noundef %32) #10
  br label %82

37:                                               ; preds = %12
  %38 = getelementptr inbounds %struct.dmxdev_filter, ptr %5, i32 0, i32 8
  %39 = tail call i32 @mutex_lock_interruptible(ptr noundef %38) #10
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %82

41:                                               ; preds = %37
  %42 = tail call fastcc i32 @dvb_dmxdev_pes_filter_set(ptr noundef %7, ptr noundef %5, ptr noundef %2)
  tail call void @mutex_unlock(ptr noundef %38) #10
  br label %82

43:                                               ; preds = %12
  %44 = getelementptr inbounds %struct.dmxdev_filter, ptr %5, i32 0, i32 8
  %45 = tail call i32 @mutex_lock_interruptible(ptr noundef %44) #10
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %82

47:                                               ; preds = %43
  %48 = tail call fastcc i32 @dvb_dmxdev_set_buffer_size(ptr noundef %5, i32 noundef %8)
  tail call void @mutex_unlock(ptr noundef %44) #10
  br label %82

49:                                               ; preds = %12
  %50 = getelementptr inbounds %struct.dmxdev, ptr %7, i32 0, i32 3
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.dmx_demux, ptr %51, i32 0, i32 15
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %82, label %55

55:                                               ; preds = %49
  %56 = tail call i32 %53(ptr noundef %51, ptr noundef %2) #10
  br label %82

57:                                               ; preds = %12
  %58 = getelementptr inbounds %struct.dmxdev, ptr %7, i32 0, i32 3
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.dmx_demux, ptr %59, i32 0, i32 16
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %82, label %63

63:                                               ; preds = %57
  %64 = load i32, ptr %2, align 8
  %65 = getelementptr inbounds %struct.dmx_stc, ptr %2, i32 0, i32 2
  %66 = getelementptr inbounds %struct.dmx_stc, ptr %2, i32 0, i32 1
  %67 = tail call i32 %61(ptr noundef %59, i32 noundef %64, ptr noundef %65, ptr noundef %66) #10
  br label %82

68:                                               ; preds = %12
  %69 = getelementptr inbounds %struct.dmxdev_filter, ptr %5, i32 0, i32 8
  %70 = tail call i32 @mutex_lock_interruptible(ptr noundef %69) #10
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %68
  %73 = load i16, ptr %2, align 2
  %74 = tail call fastcc i32 @dvb_dmxdev_add_pid(ptr noundef %7, ptr noundef %5, i16 noundef zeroext %73)
  tail call void @mutex_unlock(ptr noundef %69) #10
  br label %82

75:                                               ; preds = %12
  %76 = getelementptr inbounds %struct.dmxdev_filter, ptr %5, i32 0, i32 8
  %77 = tail call i32 @mutex_lock_interruptible(ptr noundef %76) #10
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load i16, ptr %2, align 2
  %81 = tail call fastcc i32 @dvb_dmxdev_remove_pid(ptr noundef %5, i16 noundef zeroext %80)
  tail call void @mutex_unlock(ptr noundef %76) #10
  br label %82

82:                                               ; preds = %79, %75, %72, %68, %63, %57, %55, %49, %47, %43, %41, %37, %35, %31, %29, %25, %23, %13, %12
  %83 = phi i32 [ -512, %13 ], [ -512, %25 ], [ -512, %31 ], [ -512, %37 ], [ -512, %43 ], [ %81, %79 ], [ %74, %72 ], [ %67, %63 ], [ 0, %55 ], [ %48, %47 ], [ %42, %41 ], [ %36, %35 ], [ %30, %29 ], [ %24, %23 ], [ -22, %49 ], [ -22, %57 ], [ -512, %68 ], [ -512, %75 ], [ -25, %12 ]
  tail call void @mutex_unlock(ptr noundef %9) #10
  br label %84

84:                                               ; preds = %82, %3
  %85 = phi i32 [ -512, %3 ], [ %83, %82 ]
  ret i32 %85
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dvb_dmxdev_filter_start(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dmxdev_filter, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dmxdev_filter, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = icmp ult i32 %5, 2
  br i1 %6, label %228, label %7

7:                                                ; preds = %1
  %8 = icmp eq i32 %5, 2
  br i1 %8, label %11, label %9

9:                                                ; preds = %7
  %10 = tail call fastcc i32 @dvb_dmxdev_filter_stop(ptr noundef %0)
  br label %11

11:                                               ; preds = %9, %7
  %12 = getelementptr inbounds %struct.dmxdev_filter, ptr %0, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.dmxdev_filter, ptr %0, i32 0, i32 6, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = tail call noalias ptr @vmalloc(i32 noundef %17) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %228, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %2, align 4
  %22 = getelementptr inbounds %struct.dmxdev, ptr %21, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %22) #10
  store ptr %18, ptr %12, align 4
  %23 = load ptr, ptr %2, align 4
  %24 = getelementptr inbounds %struct.dmxdev, ptr %23, i32 0, i32 11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %25 = load i16, ptr %24, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr %24, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  br label %27

27:                                               ; preds = %20, %11
  tail call void @dvb_ringbuffer_flush(ptr noundef %12) #10
  %28 = getelementptr inbounds %struct.dmxdev_filter, ptr %0, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  switch i32 %29, label %228 [
    i32 1, label %30
    i32 2, label %170
  ]

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.dmxdev_filter, ptr %0, i32 0, i32 2
  %32 = getelementptr inbounds %struct.dmxdev_filter, ptr %0, i32 0, i32 1
  store ptr null, ptr %0, align 4
  store ptr null, ptr %32, align 4
  %33 = getelementptr inbounds %struct.dmxdev, ptr %3, i32 0, i32 4
  %34 = load i32, ptr %33, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %60

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.dmxdev, ptr %3, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  br label %39

39:                                               ; preds = %53, %36
  %40 = phi i32 [ 0, %36 ], [ %54, %53 ]
  %41 = getelementptr %struct.dmxdev_filter, ptr %38, i32 %40, i32 4
  %42 = load i32, ptr %41, align 4
  %43 = icmp ugt i32 %42, 2
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = getelementptr %struct.dmxdev_filter, ptr %38, i32 %40, i32 3
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = getelementptr %struct.dmxdev_filter, ptr %38, i32 %40, i32 2
  %50 = load i16, ptr %49, align 4
  %51 = load i16, ptr %31, align 4
  %52 = icmp eq i16 %50, %51
  br i1 %52, label %56, label %53

53:                                               ; preds = %48, %44, %39
  %54 = add nuw nsw i32 %40, 1
  %55 = icmp eq i32 %54, %34
  br i1 %55, label %60, label %39

56:                                               ; preds = %48
  %57 = getelementptr %struct.dmxdev_filter, ptr %38, i32 %40, i32 1
  %58 = load ptr, ptr %57, align 4
  store ptr %58, ptr %32, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %81

60:                                               ; preds = %56, %53, %30
  %61 = getelementptr inbounds %struct.dmxdev, ptr %3, i32 0, i32 3
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.dmx_demux, ptr %62, i32 0, i32 8
  %64 = load ptr, ptr %63, align 4
  %65 = tail call i32 %64(ptr noundef %62, ptr noundef %32, ptr noundef nonnull @dvb_dmxdev_section_callback) #10
  %66 = load ptr, ptr %32, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dvb_dmxdev_filter_start) #14
  br label %228

70:                                               ; preds = %60
  %71 = getelementptr inbounds %struct.dmx_section_feed, ptr %66, i32 0, i32 10
  %72 = load ptr, ptr %71, align 4
  %73 = load i16, ptr %31, align 4
  %74 = getelementptr inbounds %struct.dmxdev_filter, ptr %0, i32 0, i32 2, i32 0, i32 3
  %75 = load i32, ptr %74, align 4
  %76 = and i32 %75, 1
  %77 = tail call i32 %72(ptr noundef nonnull %66, i16 noundef zeroext %73, i32 noundef %76) #10
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %108

79:                                               ; preds = %70
  %80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.dvb_dmxdev_filter_start) #14
  tail call fastcc void @dvb_dmxdev_feed_restart(ptr noundef %0)
  br label %228

81:                                               ; preds = %56
  %82 = load ptr, ptr %2, align 4
  %83 = getelementptr inbounds %struct.dmxdev, ptr %82, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %83) #10
  store i32 2, ptr %4, align 4
  %84 = load ptr, ptr %2, align 4
  %85 = getelementptr inbounds %struct.dmxdev, ptr %84, i32 0, i32 11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %86 = load i16, ptr %85, align 4
  %87 = add i16 %86, 1
  store i16 %87, ptr %85, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %88 = load i32, ptr %28, align 4
  switch i32 %88, label %108 [
    i32 1, label %89
    i32 2, label %96
  ]

89:                                               ; preds = %81
  %90 = getelementptr inbounds %struct.dmxdev_filter, ptr %0, i32 0, i32 9
  %91 = tail call i32 @del_timer(ptr noundef %90) #10
  %92 = load ptr, ptr %32, align 4
  %93 = getelementptr inbounds %struct.dmx_section_feed, ptr %92, i32 0, i32 14
  %94 = load ptr, ptr %93, align 4
  %95 = tail call i32 %94(ptr noundef %92) #10
  br label %108

96:                                               ; preds = %81
  %97 = load ptr, ptr %32, align 4
  %98 = icmp eq ptr %97, %32
  br i1 %98, label %108, label %99

99:                                               ; preds = %99, %96
  %100 = phi ptr [ %106, %99 ], [ %97, %96 ]
  %101 = getelementptr i8, ptr %100, i32 -4
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.dmx_ts_feed, ptr %102, i32 0, i32 5
  %104 = load ptr, ptr %103, align 4
  %105 = tail call i32 %104(ptr noundef %102) #10
  %106 = load ptr, ptr %100, align 4
  %107 = icmp eq ptr %106, %32
  br i1 %107, label %108, label %99

108:                                              ; preds = %99, %96, %89, %81, %70
  %109 = load ptr, ptr %32, align 4
  %110 = getelementptr inbounds %struct.dmx_section_feed, ptr %109, i32 0, i32 11
  %111 = load ptr, ptr %110, align 4
  %112 = tail call i32 %111(ptr noundef %109, ptr noundef %0) #10
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %108
  tail call fastcc void @dvb_dmxdev_feed_restart(ptr noundef %0)
  %115 = load ptr, ptr %32, align 4
  %116 = getelementptr inbounds %struct.dmx_section_feed, ptr %115, i32 0, i32 13
  %117 = load ptr, ptr %116, align 4
  %118 = tail call i32 %117(ptr noundef %115) #10
  %119 = load i32, ptr @debug, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %228, label %121

121:                                              ; preds = %114
  %122 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.dvb_dmxdev_filter_start) #14
  br label %228

123:                                              ; preds = %108
  %124 = load ptr, ptr %0, align 4
  %125 = getelementptr inbounds %struct.dmx_section_filter, ptr %124, i32 0, i32 4
  store ptr %0, ptr %125, align 4
  %126 = load ptr, ptr %0, align 4
  %127 = getelementptr [18 x i8], ptr %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.dmxdev_filter, ptr %0, i32 0, i32 2, i32 0, i32 1
  %129 = getelementptr %struct.dmxdev_filter, ptr %0, i32 0, i32 2, i32 0, i32 1, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(15) %127, ptr noundef align 1 dereferenceable(15) %129, i32 15, i1 false)
  %130 = load ptr, ptr %0, align 4
  %131 = getelementptr %struct.dmx_section_filter, ptr %130, i32 0, i32 1, i32 3
  %132 = getelementptr inbounds %struct.dmxdev_filter, ptr %0, i32 0, i32 2, i32 0, i32 1, i32 1
  %133 = getelementptr %struct.dmxdev_filter, ptr %0, i32 0, i32 2, i32 0, i32 1, i32 1, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(15) %131, ptr noundef align 1 dereferenceable(15) %133, i32 15, i1 false)
  %134 = load ptr, ptr %0, align 4
  %135 = getelementptr %struct.dmx_section_filter, ptr %134, i32 0, i32 2, i32 3
  %136 = getelementptr inbounds %struct.dmxdev_filter, ptr %0, i32 0, i32 2, i32 0, i32 1, i32 2
  %137 = getelementptr %struct.dmxdev_filter, ptr %0, i32 0, i32 2, i32 0, i32 1, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(15) %135, ptr noundef align 1 dereferenceable(15) %137, i32 15, i1 false)
  %138 = load i8, ptr %128, align 2
  %139 = load ptr, ptr %0, align 4
  store i8 %138, ptr %139, align 4
  %140 = load i8, ptr %132, align 2
  %141 = load ptr, ptr %0, align 4
  %142 = getelementptr inbounds %struct.dmx_section_filter, ptr %141, i32 0, i32 1
  store i8 %140, ptr %142, align 2
  %143 = load i8, ptr %136, align 2
  %144 = load ptr, ptr %0, align 4
  %145 = getelementptr inbounds %struct.dmx_section_filter, ptr %144, i32 0, i32 2
  store i8 %143, ptr %145, align 4
  %146 = load ptr, ptr %0, align 4
  %147 = getelementptr %struct.dmx_section_filter, ptr %146, i32 0, i32 1, i32 1
  store i8 0, ptr %147, align 1
  %148 = load ptr, ptr %0, align 4
  %149 = getelementptr %struct.dmx_section_filter, ptr %148, i32 0, i32 1, i32 2
  store i8 0, ptr %149, align 2
  %150 = getelementptr inbounds %struct.dmxdev_filter, ptr %0, i32 0, i32 10
  store i32 0, ptr %150, align 4
  %151 = load ptr, ptr %32, align 4
  %152 = getelementptr inbounds %struct.dmx_section_feed, ptr %151, i32 0, i32 13
  %153 = load ptr, ptr %152, align 4
  %154 = tail call i32 %153(ptr noundef %151) #10
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %228, label %156

156:                                              ; preds = %123
  %157 = getelementptr inbounds %struct.dmxdev_filter, ptr %0, i32 0, i32 9
  %158 = tail call i32 @del_timer(ptr noundef %157) #10
  %159 = getelementptr inbounds %struct.dmxdev_filter, ptr %0, i32 0, i32 2, i32 0, i32 2
  %160 = load i32, ptr %159, align 4
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %221, label %162

162:                                              ; preds = %156
  %163 = load volatile i32, ptr @jiffies, align 64
  %164 = mul i32 %160, 100
  %165 = add i32 %164, 50
  %166 = udiv i32 %165, 1000
  %167 = add nuw nsw i32 %166, 1
  %168 = add i32 %167, %163
  %169 = getelementptr inbounds %struct.dmxdev_filter, ptr %0, i32 0, i32 9, i32 1
  store i32 %168, ptr %169, align 4
  tail call void @add_timer(ptr noundef %157) #10
  br label %221

170:                                              ; preds = %27
  %171 = getelementptr inbounds %struct.dmxdev_filter, ptr %0, i32 0, i32 1
  %172 = getelementptr inbounds %struct.dmxdev_filter, ptr %0, i32 0, i32 2, i32 0, i32 1, i32 0, i32 6
  %173 = getelementptr inbounds %struct.dmxdev_filter, ptr %0, i32 0, i32 2, i32 0, i32 1, i32 0, i32 10
  %174 = getelementptr inbounds %struct.dmxdev, ptr %3, i32 0, i32 3
  br label %175

175:                                              ; preds = %207, %170
  %176 = phi ptr [ %171, %170 ], [ %177, %207 ]
  %177 = load ptr, ptr %176, align 4
  %178 = icmp eq ptr %177, %171
  br i1 %178, label %221, label %179

179:                                              ; preds = %175
  %180 = getelementptr i8, ptr %177, i32 -8
  %181 = getelementptr i8, ptr %177, i32 -4
  store ptr null, ptr %181, align 4
  %182 = load i32, ptr %172, align 4
  %183 = load i32, ptr %173, align 4
  %184 = icmp ult i32 %183, 20
  %185 = select i1 %184, i32 4, i32 0
  switch i32 %182, label %192 [
    i32 2, label %186
    i32 3, label %188
    i32 1, label %190
  ]

186:                                              ; preds = %179
  %187 = or i32 %185, 1
  br label %192

188:                                              ; preds = %179
  %189 = or i32 %185, 9
  br label %192

190:                                              ; preds = %179
  %191 = or i32 %185, 11
  br label %192

192:                                              ; preds = %190, %188, %186, %179
  %193 = phi i32 [ %187, %186 ], [ %189, %188 ], [ %191, %190 ], [ %185, %179 ]
  %194 = load ptr, ptr %174, align 4
  %195 = getelementptr inbounds %struct.dmx_demux, ptr %194, i32 0, i32 6
  %196 = load ptr, ptr %195, align 4
  %197 = tail call i32 %196(ptr noundef %194, ptr noundef %181, ptr noundef nonnull @dvb_dmxdev_ts_callback) #10
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %218, label %199

199:                                              ; preds = %192
  %200 = load ptr, ptr %181, align 4
  %201 = getelementptr inbounds %struct.dmx_ts_feed, ptr %200, i32 0, i32 2
  store ptr %0, ptr %201, align 4
  %202 = getelementptr inbounds %struct.dmx_ts_feed, ptr %200, i32 0, i32 3
  %203 = load ptr, ptr %202, align 4
  %204 = load i16, ptr %180, align 4
  %205 = tail call i32 %203(ptr noundef %200, i16 noundef zeroext %204, i32 noundef %193, i32 noundef %183, i64 noundef 0) #10
  %206 = icmp slt i32 %205, 0
  br i1 %206, label %212, label %207

207:                                              ; preds = %199
  %208 = getelementptr inbounds %struct.dmx_ts_feed, ptr %200, i32 0, i32 4
  %209 = load ptr, ptr %208, align 4
  %210 = tail call i32 %209(ptr noundef %200) #10
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %212, label %175

212:                                              ; preds = %207, %199
  %213 = phi i32 [ %205, %199 ], [ %210, %207 ]
  %214 = load ptr, ptr %174, align 4
  %215 = getelementptr inbounds %struct.dmx_demux, ptr %214, i32 0, i32 7
  %216 = load ptr, ptr %215, align 4
  %217 = tail call i32 %216(ptr noundef %214, ptr noundef %200) #10
  br label %218

218:                                              ; preds = %212, %192
  %219 = phi i32 [ %213, %212 ], [ %197, %192 ]
  %220 = tail call fastcc i32 @dvb_dmxdev_filter_stop(ptr noundef %0)
  br label %228

221:                                              ; preds = %175, %162, %156
  %222 = load ptr, ptr %2, align 4
  %223 = getelementptr inbounds %struct.dmxdev, ptr %222, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %223) #10
  store i32 3, ptr %4, align 4
  %224 = load ptr, ptr %2, align 4
  %225 = getelementptr inbounds %struct.dmxdev, ptr %224, i32 0, i32 11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %226 = load i16, ptr %225, align 4
  %227 = add i16 %226, 1
  store i16 %227, ptr %225, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  br label %228

228:                                              ; preds = %221, %218, %123, %121, %114, %79, %68, %27, %15, %1
  %229 = phi i32 [ %219, %218 ], [ 0, %221 ], [ -22, %1 ], [ -12, %15 ], [ -22, %27 ], [ %154, %123 ], [ %112, %114 ], [ %112, %121 ], [ %65, %68 ], [ %77, %79 ]
  ret i32 %229
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dvb_dmxdev_filter_stop(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dmxdev_filter, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = icmp ult i32 %3, 3
  br i1 %4, label %98, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dmxdev_filter, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %98 [
    i32 1, label %8
    i32 2, label %49
  ]

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.dmxdev_filter, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %96, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.dmxdev_filter, ptr %0, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.dmxdev, ptr %14, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %15) #10
  store i32 2, ptr %2, align 4
  %16 = load ptr, ptr %13, align 4
  %17 = getelementptr inbounds %struct.dmxdev, ptr %16, i32 0, i32 11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %18 = load i16, ptr %17, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr %17, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %20 = load i32, ptr %6, align 4
  switch i32 %20, label %40 [
    i32 1, label %21
    i32 2, label %28
  ]

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.dmxdev_filter, ptr %0, i32 0, i32 9
  %23 = tail call i32 @del_timer(ptr noundef %22) #10
  %24 = load ptr, ptr %9, align 4
  %25 = getelementptr inbounds %struct.dmx_section_feed, ptr %24, i32 0, i32 14
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 %26(ptr noundef %24) #10
  br label %40

28:                                               ; preds = %12
  %29 = load ptr, ptr %9, align 4
  %30 = icmp eq ptr %29, %9
  br i1 %30, label %40, label %31

31:                                               ; preds = %31, %28
  %32 = phi ptr [ %38, %31 ], [ %29, %28 ]
  %33 = getelementptr i8, ptr %32, i32 -4
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.dmx_ts_feed, ptr %34, i32 0, i32 5
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 %36(ptr noundef %34) #10
  %38 = load ptr, ptr %32, align 4
  %39 = icmp eq ptr %38, %9
  br i1 %39, label %40, label %31

40:                                               ; preds = %31, %28, %21, %12
  %41 = load ptr, ptr %0, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr %9, align 4
  %45 = getelementptr inbounds %struct.dmx_section_feed, ptr %44, i32 0, i32 12
  %46 = load ptr, ptr %45, align 4
  %47 = tail call i32 %46(ptr noundef %44, ptr noundef nonnull %41) #10
  br label %48

48:                                               ; preds = %43, %40
  tail call fastcc void @dvb_dmxdev_feed_restart(ptr noundef %0)
  store ptr null, ptr %9, align 4
  br label %96

49:                                               ; preds = %5
  %50 = getelementptr inbounds %struct.dmxdev_filter, ptr %0, i32 0, i32 5
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.dmxdev, ptr %51, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %52) #10
  store i32 2, ptr %2, align 4
  %53 = load ptr, ptr %50, align 4
  %54 = getelementptr inbounds %struct.dmxdev, ptr %53, i32 0, i32 11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %55 = load i16, ptr %54, align 4
  %56 = add i16 %55, 1
  store i16 %56, ptr %54, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %57 = load i32, ptr %6, align 4
  switch i32 %57, label %79 [
    i32 1, label %58
    i32 2, label %66
  ]

58:                                               ; preds = %49
  %59 = getelementptr inbounds %struct.dmxdev_filter, ptr %0, i32 0, i32 9
  %60 = tail call i32 @del_timer(ptr noundef %59) #10
  %61 = getelementptr inbounds %struct.dmxdev_filter, ptr %0, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.dmx_section_feed, ptr %62, i32 0, i32 14
  %64 = load ptr, ptr %63, align 4
  %65 = tail call i32 %64(ptr noundef %62) #10
  br label %79

66:                                               ; preds = %49
  %67 = getelementptr inbounds %struct.dmxdev_filter, ptr %0, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, %67
  br i1 %69, label %79, label %70

70:                                               ; preds = %70, %66
  %71 = phi ptr [ %77, %70 ], [ %68, %66 ]
  %72 = getelementptr i8, ptr %71, i32 -4
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.dmx_ts_feed, ptr %73, i32 0, i32 5
  %75 = load ptr, ptr %74, align 4
  %76 = tail call i32 %75(ptr noundef %73) #10
  %77 = load ptr, ptr %71, align 4
  %78 = icmp eq ptr %77, %67
  br i1 %78, label %79, label %70

79:                                               ; preds = %70, %66, %58, %49
  %80 = load ptr, ptr %50, align 4
  %81 = getelementptr inbounds %struct.dmxdev, ptr %80, i32 0, i32 3
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.dmxdev_filter, ptr %0, i32 0, i32 1
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, %83
  br i1 %85, label %96, label %86

86:                                               ; preds = %79
  %87 = getelementptr inbounds %struct.dmx_demux, ptr %82, i32 0, i32 7
  br label %88

88:                                               ; preds = %88, %86
  %89 = phi ptr [ %84, %86 ], [ %94, %88 ]
  %90 = load ptr, ptr %87, align 4
  %91 = getelementptr i8, ptr %89, i32 -4
  %92 = load ptr, ptr %91, align 4
  %93 = tail call i32 %90(ptr noundef %82, ptr noundef %92) #10
  store ptr null, ptr %91, align 4
  %94 = load ptr, ptr %89, align 4
  %95 = icmp eq ptr %94, %83
  br i1 %95, label %96, label %88

96:                                               ; preds = %88, %79, %48, %8
  %97 = getelementptr inbounds %struct.dmxdev_filter, ptr %0, i32 0, i32 6
  tail call void @dvb_ringbuffer_flush(ptr noundef %97) #10
  br label %98

98:                                               ; preds = %96, %5, %1
  %99 = phi i32 [ 0, %96 ], [ 0, %1 ], [ -22, %5 ]
  ret i32 %99
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dvb_dmxdev_filter_set(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load i32, ptr @debug, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %2
  %6 = load i16, ptr %1, align 4
  %7 = zext i16 %6 to i32
  %8 = getelementptr inbounds %struct.dmx_sct_filter_params, ptr %1, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dmx_sct_filter_params, ptr %1, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.dvb_dmxdev_filter_set, ptr noundef nonnull @__func__.dvb_dmxdev_filter_set, i32 noundef %7, i32 noundef %9, i32 noundef %11) #14
  br label %13

13:                                               ; preds = %5, %2
  %14 = tail call fastcc i32 @dvb_dmxdev_filter_stop(ptr noundef %0)
  %15 = getelementptr inbounds %struct.dmxdev_filter, ptr %0, i32 0, i32 3
  store i32 1, ptr %15, align 4
  %16 = getelementptr inbounds %struct.dmxdev_filter, ptr %0, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(60) %16, ptr noundef align 4 dereferenceable(60) %1, i32 60, i1 false)
  %17 = getelementptr %struct.dmxdev_filter, ptr %0, i32 0, i32 2, i32 0, i32 1, i32 2
  %18 = load i8, ptr %17, align 1
  %19 = xor i8 %18, -1
  store i8 %19, ptr %17, align 1
  %20 = getelementptr %struct.dmxdev_filter, ptr %0, i32 0, i32 2, i32 0, i32 1, i32 2, i32 1
  %21 = load i8, ptr %20, align 1
  %22 = xor i8 %21, -1
  store i8 %22, ptr %20, align 1
  %23 = getelementptr %struct.dmxdev_filter, ptr %0, i32 0, i32 2, i32 0, i32 1, i32 2, i32 2
  %24 = load i8, ptr %23, align 1
  %25 = xor i8 %24, -1
  store i8 %25, ptr %23, align 1
  %26 = getelementptr %struct.dmxdev_filter, ptr %0, i32 0, i32 2, i32 0, i32 1, i32 2, i32 3
  %27 = load i8, ptr %26, align 1
  %28 = xor i8 %27, -1
  store i8 %28, ptr %26, align 1
  %29 = getelementptr %struct.dmxdev_filter, ptr %0, i32 0, i32 2, i32 0, i32 1, i32 2, i32 4
  %30 = load i8, ptr %29, align 1
  %31 = xor i8 %30, -1
  store i8 %31, ptr %29, align 1
  %32 = getelementptr %struct.dmxdev_filter, ptr %0, i32 0, i32 2, i32 0, i32 1, i32 2, i32 5
  %33 = load i8, ptr %32, align 1
  %34 = xor i8 %33, -1
  store i8 %34, ptr %32, align 1
  %35 = getelementptr %struct.dmxdev_filter, ptr %0, i32 0, i32 2, i32 0, i32 1, i32 2, i32 6
  %36 = load i8, ptr %35, align 1
  %37 = xor i8 %36, -1
  store i8 %37, ptr %35, align 1
  %38 = getelementptr %struct.dmxdev_filter, ptr %0, i32 0, i32 2, i32 0, i32 1, i32 2, i32 7
  %39 = load i8, ptr %38, align 1
  %40 = xor i8 %39, -1
  store i8 %40, ptr %38, align 1
  %41 = getelementptr %struct.dmxdev_filter, ptr %0, i32 0, i32 2, i32 0, i32 1, i32 2, i32 8
  %42 = load i8, ptr %41, align 1
  %43 = xor i8 %42, -1
  store i8 %43, ptr %41, align 1
  %44 = getelementptr %struct.dmxdev_filter, ptr %0, i32 0, i32 2, i32 0, i32 1, i32 2, i32 9
  %45 = load i8, ptr %44, align 1
  %46 = xor i8 %45, -1
  store i8 %46, ptr %44, align 1
  %47 = getelementptr %struct.dmxdev_filter, ptr %0, i32 0, i32 2, i32 0, i32 1, i32 2, i32 10
  %48 = load i8, ptr %47, align 1
  %49 = xor i8 %48, -1
  store i8 %49, ptr %47, align 1
  %50 = getelementptr %struct.dmxdev_filter, ptr %0, i32 0, i32 2, i32 0, i32 1, i32 2, i32 11
  %51 = load i8, ptr %50, align 1
  %52 = xor i8 %51, -1
  store i8 %52, ptr %50, align 1
  %53 = getelementptr %struct.dmxdev_filter, ptr %0, i32 0, i32 2, i32 0, i32 1, i32 2, i32 12
  %54 = load i8, ptr %53, align 1
  %55 = xor i8 %54, -1
  store i8 %55, ptr %53, align 1
  %56 = getelementptr %struct.dmxdev_filter, ptr %0, i32 0, i32 2, i32 0, i32 1, i32 2, i32 13
  %57 = load i8, ptr %56, align 1
  %58 = xor i8 %57, -1
  store i8 %58, ptr %56, align 1
  %59 = getelementptr %struct.dmxdev_filter, ptr %0, i32 0, i32 2, i32 0, i32 1, i32 2, i32 14
  %60 = load i8, ptr %59, align 1
  %61 = xor i8 %60, -1
  store i8 %61, ptr %59, align 1
  %62 = getelementptr %struct.dmxdev_filter, ptr %0, i32 0, i32 2, i32 0, i32 1, i32 2, i32 15
  %63 = load i8, ptr %62, align 1
  %64 = xor i8 %63, -1
  store i8 %64, ptr %62, align 1
  %65 = getelementptr inbounds %struct.dmxdev_filter, ptr %0, i32 0, i32 5
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.dmxdev, ptr %66, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %67) #10
  %68 = getelementptr inbounds %struct.dmxdev_filter, ptr %0, i32 0, i32 4
  store i32 2, ptr %68, align 4
  %69 = load ptr, ptr %65, align 4
  %70 = getelementptr inbounds %struct.dmxdev, ptr %69, i32 0, i32 11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %71 = load i16, ptr %70, align 4
  %72 = add i16 %71, 1
  store i16 %72, ptr %70, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %73 = getelementptr inbounds %struct.dmx_sct_filter_params, ptr %1, i32 0, i32 3
  %74 = load i32, ptr %73, align 4
  %75 = and i32 %74, 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %13
  %78 = tail call fastcc i32 @dvb_dmxdev_filter_start(ptr noundef %0)
  br label %79

79:                                               ; preds = %77, %13
  %80 = phi i32 [ %78, %77 ], [ 0, %13 ]
  ret i32 %80
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dvb_dmxdev_pes_filter_set(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = tail call fastcc i32 @dvb_dmxdev_filter_stop(ptr noundef %1)
  %5 = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp ult i32 %6, 2
  br i1 %7, label %36, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %28

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %24, label %16

16:                                               ; preds = %16, %12
  %17 = phi ptr [ %19, %16 ], [ %14, %12 ]
  %18 = getelementptr i8, ptr %17, i32 -8
  %19 = load ptr, ptr %17, align 4
  %20 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  store ptr %21, ptr %22, align 4
  store volatile ptr %19, ptr %21, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %17, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %20, align 4
  tail call void @kfree(ptr noundef %18) #10
  %23 = icmp eq ptr %19, %13
  br i1 %23, label %24, label %16

24:                                               ; preds = %16, %12
  %25 = load volatile ptr, ptr %13, align 4
  %26 = icmp eq ptr %25, %13
  br i1 %26, label %28, label %27, !prof !15

27:                                               ; preds = %24
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/dvb-core/dmxdev.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 595, 0\0A.popsection", ""() #10, !srcloc !19
  unreachable

28:                                               ; preds = %24, %8
  store i32 0, ptr %9, align 4
  %29 = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.dmxdev, ptr %30, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %31) #10
  store i32 1, ptr %5, align 4
  %32 = load ptr, ptr %29, align 4
  %33 = getelementptr inbounds %struct.dmxdev, ptr %32, i32 0, i32 11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %34 = load i16, ptr %33, align 4
  %35 = add i16 %34, 1
  store i16 %35, ptr %33, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  br label %36

36:                                               ; preds = %28, %3
  %37 = getelementptr inbounds %struct.dmx_pes_filter_params, ptr %2, i32 0, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = icmp ugt i32 %38, 20
  br i1 %39, label %62, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 3
  store i32 2, ptr %41, align 4
  %42 = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(20) %42, ptr noundef align 4 dereferenceable(20) %2, i32 20, i1 false)
  %43 = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 1
  store volatile ptr %43, ptr %43, align 4
  %44 = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 1, i32 0, i32 1
  store ptr %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 5
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.dmxdev, ptr %46, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %47) #10
  store i32 2, ptr %5, align 4
  %48 = load ptr, ptr %45, align 4
  %49 = getelementptr inbounds %struct.dmxdev, ptr %48, i32 0, i32 11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %50 = load i16, ptr %49, align 4
  %51 = add i16 %50, 1
  store i16 %51, ptr %49, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %52 = load i16, ptr %42, align 4
  %53 = tail call fastcc i32 @dvb_dmxdev_add_pid(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %52)
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %40
  %56 = getelementptr inbounds %struct.dmx_pes_filter_params, ptr %2, i32 0, i32 4
  %57 = load i32, ptr %56, align 4
  %58 = and i32 %57, 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %55
  %61 = tail call fastcc i32 @dvb_dmxdev_filter_start(ptr noundef %1)
  br label %62

62:                                               ; preds = %60, %55, %40, %36
  %63 = phi i32 [ %61, %60 ], [ -22, %36 ], [ %53, %40 ], [ 0, %55 ]
  ret i32 %63
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dvb_dmxdev_set_buffer_size(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dmxdev_filter, ptr %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.dmxdev_filter, ptr %0, i32 0, i32 6, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, %1
  br i1 %6, label %25, label %7

7:                                                ; preds = %2
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.dmxdev_filter, ptr %0, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = icmp ugt i32 %11, 2
  br i1 %12, label %25, label %13

13:                                               ; preds = %9
  %14 = tail call noalias ptr @vmalloc(i32 noundef %1) #11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %3, align 4
  %18 = getelementptr inbounds %struct.dmxdev_filter, ptr %0, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.dmxdev, ptr %19, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %20) #10
  store ptr %14, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  tail call void @dvb_ringbuffer_reset(ptr noundef %3) #10
  %21 = load ptr, ptr %18, align 4
  %22 = getelementptr inbounds %struct.dmxdev, ptr %21, i32 0, i32 11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %23 = load i16, ptr %22, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr %22, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  tail call void @vfree(ptr noundef %17) #10
  br label %25

25:                                               ; preds = %16, %13, %9, %7, %2
  %26 = phi i32 [ 0, %16 ], [ 0, %2 ], [ -22, %7 ], [ -16, %9 ], [ -12, %13 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dvb_dmxdev_add_pid(ptr nocapture noundef readonly %0, ptr noundef %1, i16 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %71

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %71, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 2, i32 0, i32 1, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 3
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 1
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %19, label %71

19:                                               ; preds = %15, %11
  %20 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %21 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 16) #15
  %22 = icmp eq ptr %21, null
  br i1 %22, label %71, label %23

23:                                               ; preds = %19
  store i16 %2, ptr %21, align 8
  %24 = getelementptr inbounds %struct.dmxdev_feed, ptr %21, i32 0, i32 2
  %25 = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  store ptr %24, ptr %27, align 4
  store ptr %26, ptr %24, align 8
  %28 = getelementptr inbounds %struct.dmxdev_feed, ptr %21, i32 0, i32 2, i32 1
  store ptr %25, ptr %28, align 4
  store volatile ptr %24, ptr %25, align 4
  %29 = load i32, ptr %8, align 4
  %30 = icmp ugt i32 %29, 2
  br i1 %30, label %31, label %71

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.dmxdev_feed, ptr %21, i32 0, i32 1
  store ptr null, ptr %32, align 4
  %33 = load i32, ptr %12, align 4
  %34 = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 2, i32 0, i32 1, i32 0, i32 10
  %35 = load i32, ptr %34, align 4
  %36 = icmp ult i32 %35, 20
  %37 = select i1 %36, i32 4, i32 0
  switch i32 %33, label %44 [
    i32 2, label %38
    i32 3, label %40
    i32 1, label %42
  ]

38:                                               ; preds = %31
  %39 = or i32 %37, 1
  br label %44

40:                                               ; preds = %31
  %41 = or i32 %37, 9
  br label %44

42:                                               ; preds = %31
  %43 = or i32 %37, 11
  br label %44

44:                                               ; preds = %42, %40, %38, %31
  %45 = phi i32 [ %39, %38 ], [ %41, %40 ], [ %43, %42 ], [ %37, %31 ]
  %46 = getelementptr inbounds %struct.dmxdev, ptr %0, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.dmx_demux, ptr %47, i32 0, i32 6
  %49 = load ptr, ptr %48, align 4
  %50 = tail call i32 %49(ptr noundef %47, ptr noundef %32, ptr noundef nonnull @dvb_dmxdev_ts_callback) #10
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %71, label %52

52:                                               ; preds = %44
  %53 = load ptr, ptr %32, align 4
  %54 = getelementptr inbounds %struct.dmx_ts_feed, ptr %53, i32 0, i32 2
  store ptr %1, ptr %54, align 4
  %55 = getelementptr inbounds %struct.dmx_ts_feed, ptr %53, i32 0, i32 3
  %56 = load ptr, ptr %55, align 4
  %57 = load i16, ptr %21, align 8
  %58 = tail call i32 %56(ptr noundef %53, i16 noundef zeroext %57, i32 noundef %45, i32 noundef %35, i64 noundef 0) #10
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.dmx_ts_feed, ptr %53, i32 0, i32 4
  %62 = load ptr, ptr %61, align 4
  %63 = tail call i32 %62(ptr noundef %53) #10
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60, %52
  %66 = phi i32 [ %58, %52 ], [ %63, %60 ]
  %67 = load ptr, ptr %46, align 4
  %68 = getelementptr inbounds %struct.dmx_demux, ptr %67, i32 0, i32 7
  %69 = load ptr, ptr %68, align 4
  %70 = tail call i32 %69(ptr noundef %67, ptr noundef %53) #10
  br label %71

71:                                               ; preds = %65, %60, %44, %23, %19, %15, %7, %3
  %72 = phi i32 [ -22, %7 ], [ -22, %3 ], [ -22, %15 ], [ -12, %19 ], [ 0, %23 ], [ %50, %44 ], [ 0, %60 ], [ %66, %65 ]
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dvb_dmxdev_remove_pid(ptr noundef readonly %0, i16 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dmxdev_filter, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %6, label %43

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dmxdev_filter, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp ult i32 %8, 2
  br i1 %9, label %43, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.dmxdev_filter, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  br i1 %13, label %43, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.dmxdev_filter, ptr %0, i32 0, i32 5
  br label %16

16:                                               ; preds = %41, %14
  %17 = phi ptr [ %12, %14 ], [ %19, %41 ]
  %18 = getelementptr i8, ptr %17, i32 -8
  %19 = load ptr, ptr %17, align 4
  %20 = load i16, ptr %18, align 4
  %21 = icmp eq i16 %20, %1
  br i1 %21, label %22, label %41

22:                                               ; preds = %16
  %23 = getelementptr i8, ptr %17, i32 -4
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %41, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.dmx_ts_feed, ptr %24, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 %28(ptr noundef nonnull %24) #10
  %30 = load ptr, ptr %15, align 4
  %31 = getelementptr inbounds %struct.dmxdev, ptr %30, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.dmx_demux, ptr %32, i32 0, i32 7
  %34 = load ptr, ptr %33, align 4
  %35 = load ptr, ptr %23, align 4
  %36 = tail call i32 %34(ptr noundef %32, ptr noundef %35) #10
  %37 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = load ptr, ptr %17, align 4
  %40 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  store ptr %38, ptr %40, align 4
  store volatile ptr %39, ptr %38, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %17, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %37, align 4
  tail call void @kfree(ptr noundef %18) #10
  br label %41

41:                                               ; preds = %26, %22, %16
  %42 = icmp eq ptr %19, %11
  br i1 %42, label %43, label %16

43:                                               ; preds = %41, %10, %6, %2
  %44 = phi i32 [ -22, %6 ], [ -22, %2 ], [ 0, %10 ], [ 0, %41 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dvb_dmxdev_section_callback(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readnone %5) #0 {
  %7 = getelementptr inbounds %struct.dmx_section_filter, ptr %4, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dmxdev_filter, ptr %8, i32 0, i32 6
  %10 = getelementptr inbounds %struct.dmxdev_filter, ptr %8, i32 0, i32 6, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.dmxdev_filter, ptr %8, i32 0, i32 6, i32 5
  tail call void @__wake_up(ptr noundef %14, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %84

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.dmxdev_filter, ptr %8, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.dmxdev, ptr %17, i32 0, i32 11
  tail call void @_raw_spin_lock(ptr noundef %18) #10
  %19 = getelementptr inbounds %struct.dmxdev_filter, ptr %8, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 3
  br i1 %21, label %27, label %22

22:                                               ; preds = %15
  %23 = load ptr, ptr %16, align 4
  %24 = getelementptr inbounds %struct.dmxdev, ptr %23, i32 0, i32 11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %25 = load i16, ptr %24, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr %24, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !20
  br label %84

27:                                               ; preds = %15
  %28 = getelementptr inbounds %struct.dmxdev_filter, ptr %8, i32 0, i32 9
  %29 = tail call i32 @del_timer(ptr noundef %28) #10
  %30 = load i32, ptr @debug, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dvb_dmxdev_section_callback, i32 noundef 6, ptr noundef %0) #14
  br label %34

34:                                               ; preds = %32, %27
  %35 = icmp eq i32 %1, 0
  br i1 %35, label %49, label %36

36:                                               ; preds = %34
  %37 = load ptr, ptr %9, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %49, label %39

39:                                               ; preds = %36
  %40 = tail call i32 @dvb_ringbuffer_free(ptr noundef %9) #10
  %41 = icmp ult i32 %40, %1
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i32, ptr @debug, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.dvb_dmxdev_buffer_write) #14
  br label %49

47:                                               ; preds = %39
  %48 = tail call i32 @dvb_ringbuffer_write(ptr noundef %9, ptr noundef %0, i32 noundef %1) #10
  br label %49

49:                                               ; preds = %47, %45, %42, %36, %34
  %50 = phi i32 [ %48, %47 ], [ 0, %34 ], [ 0, %36 ], [ -75, %45 ], [ -75, %42 ]
  %51 = icmp eq i32 %50, %1
  br i1 %51, label %52, label %67

52:                                               ; preds = %49
  %53 = icmp eq i32 %3, 0
  br i1 %53, label %72, label %54

54:                                               ; preds = %52
  %55 = load ptr, ptr %9, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %72, label %57

57:                                               ; preds = %54
  %58 = tail call i32 @dvb_ringbuffer_free(ptr noundef %9) #10
  %59 = icmp ult i32 %58, %3
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load i32, ptr @debug, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %60
  %64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.dvb_dmxdev_buffer_write) #14
  br label %70

65:                                               ; preds = %57
  %66 = tail call i32 @dvb_ringbuffer_write(ptr noundef %9, ptr noundef %2, i32 noundef %3) #10
  br label %67

67:                                               ; preds = %65, %49
  %68 = phi i32 [ %50, %49 ], [ %66, %65 ]
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67, %63, %60
  %71 = phi i32 [ %68, %67 ], [ -75, %63 ], [ -75, %60 ]
  store i32 %71, ptr %10, align 4
  br label %72

72:                                               ; preds = %70, %67, %54, %52
  %73 = getelementptr inbounds %struct.dmxdev_filter, ptr %8, i32 0, i32 2, i32 0, i32 3
  %74 = load i32, ptr %73, align 4
  %75 = and i32 %74, 2
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %72
  store i32 4, ptr %19, align 4
  br label %78

78:                                               ; preds = %77, %72
  %79 = load ptr, ptr %16, align 4
  %80 = getelementptr inbounds %struct.dmxdev, ptr %79, i32 0, i32 11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %81 = load i16, ptr %80, align 4
  %82 = add i16 %81, 1
  store i16 %82, ptr %80, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !20
  %83 = getelementptr inbounds %struct.dmxdev_filter, ptr %8, i32 0, i32 6, i32 5
  tail call void @__wake_up(ptr noundef %83, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %84

84:                                               ; preds = %78, %22, %13
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dvb_dmxdev_feed_restart(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dmxdev_filter, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dmxdev_filter, ptr %0, i32 0, i32 2
  %5 = load i16, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dmxdev, ptr %3, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %84

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.dmxdev, ptr %3, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  br label %12

12:                                               ; preds = %81, %9
  %13 = phi i32 [ 0, %9 ], [ %82, %81 ]
  %14 = getelementptr %struct.dmxdev_filter, ptr %11, i32 %13, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = icmp ugt i32 %15, 2
  br i1 %16, label %17, label %81

17:                                               ; preds = %12
  %18 = getelementptr %struct.dmxdev_filter, ptr %11, i32 %13, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %81

21:                                               ; preds = %17
  %22 = getelementptr %struct.dmxdev_filter, ptr %11, i32 %13, i32 2
  %23 = load i16, ptr %22, align 4
  %24 = icmp eq i16 %23, %5
  br i1 %24, label %25, label %81

25:                                               ; preds = %21
  %26 = getelementptr %struct.dmxdev_filter, ptr %11, i32 %13, i32 5
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.dmxdev, ptr %27, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %28) #10
  store i32 3, ptr %14, align 4
  %29 = load ptr, ptr %26, align 4
  %30 = getelementptr inbounds %struct.dmxdev, ptr %29, i32 0, i32 11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %31 = load i16, ptr %30, align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr %30, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %33 = load i32, ptr %18, align 4
  switch i32 %33, label %92 [
    i32 1, label %34
    i32 2, label %38
  ]

34:                                               ; preds = %25
  %35 = getelementptr %struct.dmxdev_filter, ptr %11, i32 %13, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.dmx_section_feed, ptr %36, i32 0, i32 13
  br label %76

38:                                               ; preds = %25
  %39 = getelementptr %struct.dmxdev_filter, ptr %11, i32 %13, i32 1
  br label %40

40:                                               ; preds = %44, %38
  %41 = phi ptr [ %39, %38 ], [ %42, %44 ]
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, %39
  br i1 %43, label %92, label %44

44:                                               ; preds = %40
  %45 = getelementptr i8, ptr %42, i32 -4
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.dmx_ts_feed, ptr %46, i32 0, i32 4
  %48 = load ptr, ptr %47, align 4
  %49 = tail call i32 %48(ptr noundef %46) #10
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %40

51:                                               ; preds = %44
  %52 = load ptr, ptr %26, align 4
  %53 = getelementptr inbounds %struct.dmxdev, ptr %52, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %53) #10
  store i32 2, ptr %14, align 4
  %54 = load ptr, ptr %26, align 4
  %55 = getelementptr inbounds %struct.dmxdev, ptr %54, i32 0, i32 11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %56 = load i16, ptr %55, align 4
  %57 = add i16 %56, 1
  store i16 %57, ptr %55, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %58 = load i32, ptr %18, align 4
  switch i32 %58, label %92 [
    i32 1, label %59
    i32 2, label %64
  ]

59:                                               ; preds = %51
  %60 = getelementptr %struct.dmxdev_filter, ptr %11, i32 %13, i32 9
  %61 = tail call i32 @del_timer(ptr noundef %60) #10
  %62 = load ptr, ptr %39, align 4
  %63 = getelementptr inbounds %struct.dmx_section_feed, ptr %62, i32 0, i32 14
  br label %76

64:                                               ; preds = %51
  %65 = load ptr, ptr %39, align 4
  %66 = icmp eq ptr %65, %39
  br i1 %66, label %92, label %67

67:                                               ; preds = %67, %64
  %68 = phi ptr [ %74, %67 ], [ %65, %64 ]
  %69 = getelementptr i8, ptr %68, i32 -4
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.dmx_ts_feed, ptr %70, i32 0, i32 5
  %72 = load ptr, ptr %71, align 4
  %73 = tail call i32 %72(ptr noundef %70) #10
  %74 = load ptr, ptr %68, align 4
  %75 = icmp eq ptr %74, %39
  br i1 %75, label %92, label %67

76:                                               ; preds = %59, %34
  %77 = phi ptr [ %63, %59 ], [ %37, %34 ]
  %78 = phi ptr [ %62, %59 ], [ %36, %34 ]
  %79 = load ptr, ptr %77, align 4
  %80 = tail call i32 %79(ptr noundef %78) #10
  br label %92

81:                                               ; preds = %21, %17, %12
  %82 = add nuw nsw i32 %13, 1
  %83 = icmp eq i32 %82, %7
  br i1 %83, label %84, label %12

84:                                               ; preds = %81, %1
  %85 = getelementptr inbounds %struct.dmxdev, ptr %3, i32 0, i32 3
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.dmx_demux, ptr %86, i32 0, i32 9
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.dmxdev_filter, ptr %0, i32 0, i32 1
  %90 = load ptr, ptr %89, align 4
  %91 = tail call i32 %88(ptr noundef %86, ptr noundef %90) #10
  br label %92

92:                                               ; preds = %84, %76, %67, %64, %51, %40, %25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_ringbuffer_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_ringbuffer_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dvb_dmxdev_ts_callback(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readnone %5) #0 {
  %7 = getelementptr inbounds %struct.dmx_ts_feed, ptr %4, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dmxdev_filter, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.dmxdev, ptr %10, i32 0, i32 11
  tail call void @_raw_spin_lock(ptr noundef %11) #10
  %12 = getelementptr inbounds %struct.dmxdev_filter, ptr %8, i32 0, i32 2, i32 0, i32 1, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  switch i32 %13, label %21 [
    i32 0, label %14
    i32 1, label %19
    i32 3, label %19
  ]

14:                                               ; preds = %6
  %15 = load ptr, ptr %9, align 4
  %16 = getelementptr inbounds %struct.dmxdev, ptr %15, i32 0, i32 11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %17 = load i16, ptr %16, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr %16, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !20
  br label %79

19:                                               ; preds = %6, %6
  %20 = getelementptr inbounds %struct.dmxdev_filter, ptr %8, i32 0, i32 6
  br label %24

21:                                               ; preds = %6
  %22 = load ptr, ptr %9, align 4
  %23 = getelementptr inbounds %struct.dmxdev, ptr %22, i32 0, i32 8
  br label %24

24:                                               ; preds = %21, %19
  %25 = phi ptr [ %20, %19 ], [ %23, %21 ]
  %26 = getelementptr inbounds %struct.dvb_ringbuffer, ptr %25, i32 0, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %24
  %30 = load ptr, ptr %9, align 4
  %31 = getelementptr inbounds %struct.dmxdev, ptr %30, i32 0, i32 11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %32 = load i16, ptr %31, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr %31, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !20
  %34 = getelementptr inbounds %struct.dvb_ringbuffer, ptr %25, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %34, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %79

35:                                               ; preds = %24
  %36 = icmp eq i32 %1, 0
  br i1 %36, label %50, label %37

37:                                               ; preds = %35
  %38 = load ptr, ptr %25, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %50, label %40

40:                                               ; preds = %37
  %41 = tail call i32 @dvb_ringbuffer_free(ptr noundef %25) #10
  %42 = icmp ult i32 %41, %1
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i32, ptr @debug, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  %47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.dvb_dmxdev_buffer_write) #14
  br label %50

48:                                               ; preds = %40
  %49 = tail call i32 @dvb_ringbuffer_write(ptr noundef %25, ptr noundef %0, i32 noundef %1) #10
  br label %50

50:                                               ; preds = %48, %46, %43, %37, %35
  %51 = phi i32 [ %49, %48 ], [ 0, %35 ], [ 0, %37 ], [ -75, %46 ], [ -75, %43 ]
  %52 = icmp eq i32 %51, %1
  br i1 %52, label %53, label %68

53:                                               ; preds = %50
  %54 = icmp eq i32 %3, 0
  br i1 %54, label %73, label %55

55:                                               ; preds = %53
  %56 = load ptr, ptr %25, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %73, label %58

58:                                               ; preds = %55
  %59 = tail call i32 @dvb_ringbuffer_free(ptr noundef %25) #10
  %60 = icmp ult i32 %59, %3
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load i32, ptr @debug, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %61
  %65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.dvb_dmxdev_buffer_write) #14
  br label %71

66:                                               ; preds = %58
  %67 = tail call i32 @dvb_ringbuffer_write(ptr noundef %25, ptr noundef %2, i32 noundef %3) #10
  br label %68

68:                                               ; preds = %66, %50
  %69 = phi i32 [ %51, %50 ], [ %67, %66 ]
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68, %64, %61
  %72 = phi i32 [ %69, %68 ], [ -75, %64 ], [ -75, %61 ]
  store i32 %72, ptr %26, align 4
  br label %73

73:                                               ; preds = %71, %68, %55, %53
  %74 = load ptr, ptr %9, align 4
  %75 = getelementptr inbounds %struct.dmxdev, ptr %74, i32 0, i32 11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %76 = load i16, ptr %75, align 4
  %77 = add i16 %76, 1
  store i16 %77, ptr %75, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !20
  %78 = getelementptr inbounds %struct.dvb_ringbuffer, ptr %25, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %78, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %79

79:                                               ; preds = %73, %29, %14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_ringbuffer_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dvb_dmxdev_filter_timeout(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -472
  store i32 -110, ptr %2, align 4
  %3 = getelementptr i8, ptr %0, i32 -492
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dmxdev, ptr %4, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %5) #10
  %6 = getelementptr i8, ptr %0, i32 -496
  store i32 5, ptr %6, align 4
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr inbounds %struct.dmxdev, ptr %7, i32 0, i32 11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %9 = load i16, ptr %8, align 4
  %10 = add i16 %9, 1
  store i16 %10, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %11 = getelementptr i8, ptr %0, i32 -468
  tail call void @__wake_up(ptr noundef %11, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dvb_dvr_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.dvb_device, ptr %6, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dmxdev, ptr %8, i32 0, i32 6
  %10 = load i8, ptr %9, align 4
  %11 = and i8 %10, 2
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.dmxdev, ptr %8, i32 0, i32 8
  %15 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 2048
  %18 = tail call fastcc i32 @dvb_dmxdev_buffer_read(ptr noundef %14, i32 noundef %17, ptr noundef %1, i32 noundef %2)
  br label %19

19:                                               ; preds = %13, %4
  %20 = phi i32 [ %18, %13 ], [ -19, %4 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dvb_dvr_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.dvb_device, ptr %6, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dmxdev, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.dmx_demux, ptr %10, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %35, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 3
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %35

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.dmxdev, ptr %8, i32 0, i32 10
  %21 = tail call i32 @mutex_lock_interruptible(ptr noundef %20) #10
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.dmxdev, ptr %8, i32 0, i32 6
  %25 = load i8, ptr %24, align 4
  %26 = and i8 %25, 2
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load ptr, ptr %9, align 4
  %30 = getelementptr inbounds %struct.dmx_demux, ptr %29, i32 0, i32 5
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 %31(ptr noundef %29, ptr noundef %1, i32 noundef %2) #10
  br label %33

33:                                               ; preds = %28, %23
  %34 = phi i32 [ %32, %28 ], [ -19, %23 ]
  tail call void @mutex_unlock(ptr noundef %20) #10
  br label %35

35:                                               ; preds = %33, %19, %14, %4
  %36 = phi i32 [ -95, %4 ], [ -22, %14 ], [ -512, %19 ], [ %34, %33 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dvb_dvr_poll(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.dvb_device, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr @debug, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.dvb_dvr_poll, ptr noundef nonnull @__func__.dvb_dvr_poll) #14
  br label %11

11:                                               ; preds = %9, %2
  %12 = getelementptr inbounds %struct.dmxdev, ptr %6, i32 0, i32 8
  %13 = getelementptr inbounds %struct.dmxdev, ptr %6, i32 0, i32 8, i32 5
  %14 = icmp eq ptr %1, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %1, align 4
  %17 = icmp ne ptr %16, null
  %18 = icmp ne ptr %13, null
  %19 = and i1 %18, %17
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  tail call void %16(ptr noundef %0, ptr noundef nonnull %13, ptr noundef nonnull %1) #10
  br label %21

21:                                               ; preds = %20, %15, %11
  %22 = getelementptr inbounds %struct.dmxdev, ptr %6, i32 0, i32 6
  %23 = load i8, ptr %22, align 4
  %24 = and i8 %23, 2
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 3
  %30 = icmp ne i32 %29, 0
  %31 = and i8 %23, 1
  %32 = icmp eq i8 %31, 0
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %43, label %34

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.dmxdev, ptr %6, i32 0, i32 8, i32 4
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, i32 0, i32 75
  %39 = tail call i32 @dvb_ringbuffer_empty(ptr noundef %12) #10
  %40 = icmp eq i32 %39, 0
  %41 = or i32 %38, 67
  %42 = select i1 %40, i32 %41, i32 %38
  br label %43

43:                                               ; preds = %34, %26, %21
  %44 = phi i32 [ 8, %21 ], [ 262, %26 ], [ %42, %34 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dvb_dvr_ioctl(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call i32 @dvb_usercopy(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull @dvb_dvr_do_ioctl) #10
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dvb_dvr_open(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.dvb_device, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr @debug, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.dvb_dvr_open, ptr noundef nonnull @__func__.dvb_dvr_open) #14
  br label %11

11:                                               ; preds = %9, %2
  %12 = getelementptr inbounds %struct.dmxdev, ptr %6, i32 0, i32 10
  %13 = tail call i32 @mutex_lock_interruptible(ptr noundef %12) #10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %85

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.dmxdev, ptr %6, i32 0, i32 6
  %17 = load i8, ptr %16, align 4
  %18 = and i8 %17, 2
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %83

20:                                               ; preds = %15
  %21 = and i8 %17, -2
  store i8 %21, ptr %16, align 4
  %22 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 7
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 3
  switch i32 %24, label %42 [
    i32 2, label %25
    i32 0, label %30
  ]

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.dmxdev, ptr %6, i32 0, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %83, label %42

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.dvb_device, ptr %4, i32 0, i32 6
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %83, label %34

34:                                               ; preds = %30
  %35 = tail call noalias ptr @vmalloc(i32 noundef 1925120) #11
  %36 = icmp eq ptr %35, null
  br i1 %36, label %83, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.dmxdev, ptr %6, i32 0, i32 8
  tail call void @dvb_ringbuffer_init(ptr noundef %38, ptr noundef nonnull %35, i32 noundef 1925120) #10
  %39 = load i32, ptr %31, align 4
  %40 = add i32 %39, -1
  store i32 %40, ptr %31, align 4
  %41 = load i32, ptr %22, align 4
  br label %42

42:                                               ; preds = %37, %25, %20
  %43 = phi i32 [ %23, %20 ], [ %41, %37 ], [ %23, %25 ]
  %44 = and i32 %43, 3
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %79

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.dmxdev, ptr %6, i32 0, i32 3
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.dmx_demux, ptr %48, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.dmxdev, ptr %6, i32 0, i32 7
  store ptr %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.dmx_demux, ptr %48, i32 0, i32 5
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %83, label %55

55:                                               ; preds = %46
  %56 = getelementptr inbounds %struct.dmx_demux, ptr %48, i32 0, i32 12
  %57 = load ptr, ptr %56, align 4
  %58 = tail call ptr %57(ptr noundef %48) #10
  %59 = icmp eq ptr %58, null
  br i1 %59, label %83, label %60

60:                                               ; preds = %64, %55
  %61 = phi ptr [ %62, %64 ], [ %58, %55 ]
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, %58
  br i1 %63, label %83, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.dmx_frontend, ptr %62, i32 0, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %60

68:                                               ; preds = %64
  %69 = icmp eq ptr %62, null
  br i1 %69, label %83, label %70

70:                                               ; preds = %68
  %71 = load ptr, ptr %47, align 4
  %72 = getelementptr inbounds %struct.dmx_demux, ptr %71, i32 0, i32 14
  %73 = load ptr, ptr %72, align 4
  %74 = tail call i32 %73(ptr noundef %71) #10
  %75 = load ptr, ptr %47, align 4
  %76 = getelementptr inbounds %struct.dmx_demux, ptr %75, i32 0, i32 13
  %77 = load ptr, ptr %76, align 4
  %78 = tail call i32 %77(ptr noundef %75, ptr noundef nonnull %62) #10
  br label %79

79:                                               ; preds = %70, %42
  %80 = getelementptr inbounds %struct.dvb_device, ptr %4, i32 0, i32 8
  %81 = load i32, ptr %80, align 4
  %82 = add i32 %81, 1
  store i32 %82, ptr %80, align 4
  br label %83

83:                                               ; preds = %79, %68, %60, %55, %46, %34, %30, %25, %15
  %84 = phi i32 [ 0, %79 ], [ -19, %15 ], [ -95, %25 ], [ -16, %30 ], [ -12, %34 ], [ -95, %46 ], [ -22, %55 ], [ -22, %68 ], [ -22, %60 ]
  tail call void @mutex_unlock(ptr noundef %12) #10
  br label %85

85:                                               ; preds = %83, %11
  %86 = phi i32 [ -512, %11 ], [ %84, %83 ]
  ret i32 %86
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dvb_dvr_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.dvb_device, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dmxdev, ptr %6, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %7) #10
  %8 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 3
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %26

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.dmxdev, ptr %6, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.dmx_demux, ptr %14, i32 0, i32 14
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 %16(ptr noundef %14) #10
  %18 = load ptr, ptr %13, align 4
  %19 = getelementptr inbounds %struct.dmx_demux, ptr %18, i32 0, i32 13
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.dmxdev, ptr %6, i32 0, i32 7
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 %20(ptr noundef %18, ptr noundef %22) #10
  %24 = load i32, ptr %8, align 4
  %25 = and i32 %24, 3
  br label %26

26:                                               ; preds = %12, %2
  %27 = phi i32 [ %25, %12 ], [ %10, %2 ]
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.dmxdev, ptr %6, i32 0, i32 6
  %31 = load i8, ptr %30, align 4
  %32 = and i8 %31, 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %29, %26
  %35 = getelementptr inbounds %struct.dvb_device, ptr %4, i32 0, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, 1
  store i32 %37, ptr %35, align 4
  %38 = getelementptr inbounds %struct.dmxdev, ptr %6, i32 0, i32 8
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %34
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !21
  tail call void @arm_heavy_mb() #10
  %42 = getelementptr inbounds %struct.dmxdev, ptr %6, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %42) #10
  store ptr null, ptr %38, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %43 = load i16, ptr %42, align 4
  %44 = add i16 %43, 1
  store i16 %44, ptr %42, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  tail call void @vfree(ptr noundef nonnull %39) #10
  br label %45

45:                                               ; preds = %41, %34, %29
  %46 = getelementptr inbounds %struct.dvb_device, ptr %4, i32 0, i32 8
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %47, -1
  store i32 %48, ptr %46, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.dmxdev, ptr %6, i32 0, i32 6
  %52 = load i8, ptr %51, align 4
  %53 = and i8 %52, 2
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %50
  tail call void @mutex_unlock(ptr noundef %7) #10
  %56 = getelementptr inbounds %struct.dvb_device, ptr %4, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %56, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %58

57:                                               ; preds = %50, %45
  tail call void @mutex_unlock(ptr noundef %7) #10
  br label %58

58:                                               ; preds = %57, %55
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dvb_dvr_do_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.dvb_device, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %2 to i32
  %9 = getelementptr inbounds %struct.dmxdev, ptr %7, i32 0, i32 10
  %10 = tail call i32 @mutex_lock_interruptible(ptr noundef %9) #10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %3
  %13 = icmp eq i32 %1, 28461
  br i1 %13, label %14, label %34

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.dmxdev, ptr %7, i32 0, i32 8
  %16 = load i32, ptr @debug, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.dvb_dvr_set_buffer_size, ptr noundef nonnull @__func__.dvb_dvr_set_buffer_size) #14
  br label %20

20:                                               ; preds = %18, %14
  %21 = getelementptr inbounds %struct.dmxdev, ptr %7, i32 0, i32 8, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, %8
  br i1 %23, label %34, label %24

24:                                               ; preds = %20
  %25 = icmp eq ptr %2, null
  br i1 %25, label %34, label %26

26:                                               ; preds = %24
  %27 = tail call noalias ptr @vmalloc(i32 noundef %8) #11
  %28 = icmp eq ptr %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr %15, align 4
  %31 = getelementptr inbounds %struct.dmxdev, ptr %7, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %31) #10
  store ptr %27, ptr %15, align 4
  store i32 %8, ptr %21, align 4
  tail call void @dvb_ringbuffer_reset(ptr noundef %15) #10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %32 = load i16, ptr %31, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr %31, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  tail call void @vfree(ptr noundef %30) #10
  br label %34

34:                                               ; preds = %29, %26, %24, %20, %12
  %35 = phi i32 [ -25, %12 ], [ 0, %29 ], [ 0, %20 ], [ -22, %24 ], [ -12, %26 ]
  tail call void @mutex_unlock(ptr noundef %9) #10
  br label %36

36:                                               ; preds = %34, %3
  %37 = phi i32 [ %35, %34 ], [ -512, %3 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind readnone }
attributes #13 = { nounwind readonly }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

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
!8 = !{i64 2149198246}
!9 = !{i64 2149194070}
!10 = !{i64 2149194145, i64 2149194172, i64 2149194219, i64 2149194241, i64 2149194269, i64 2149194289}
!11 = !{i64 579409}
!12 = !{i64 2149222390}
!13 = !{!"auto-init"}
!14 = !{i64 2151401348, i64 2151401373}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 3897460}
!17 = !{i64 3897657}
!18 = !{i64 2151382936}
!19 = !{i64 2153173815, i64 2153174311, i64 2153173852, i64 2153173908, i64 2153173942, i64 2153173966, i64 2153174007, i64 2153174028, i64 2153174056, i64 2153174090}
!20 = !{i64 2149221249}
!21 = !{i64 2153150934}
