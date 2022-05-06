; ModuleID = '/llk/IR/drivers/gpu/drm/msm/dp/dp_debug.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/dp/dp_debug.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.dp_debug_private = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dp_debug }
%struct.dp_debug = type { i8, i32, i32, i32, i32 }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.69, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.70, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.71, ptr, %struct.address_space, %struct.list_head, %union.anon.72, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.69 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.70 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.71 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.72 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.dp_panel = type { [16 x i8], [16 x i8], i32, i32, %struct.dp_link_info, %struct.drm_dp_desc, ptr, ptr, %struct.dp_display_mode, i8, i32, i32, i32, i32 }
%struct.dp_link_info = type { i8, i32, i32, i32 }
%struct.drm_dp_desc = type { %struct.drm_dp_dpcd_ident, i32 }
%struct.drm_dp_dpcd_ident = type { [3 x i8], [6 x i8], i8, i8, i8 }
%struct.dp_display_mode = type { %struct.drm_display_mode, i32, i32, i32, i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.dp_link = type { i32, i32, i8, i8, %struct.dp_link_test_video, %struct.dp_link_test_audio, %struct.dp_link_phy_params, %struct.dp_link_info }
%struct.dp_link_test_video = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dp_link_test_audio = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dp_link_phy_params = type { i32, i8, i8 }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.86 }
%union.anon.86 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }

@.str = private unnamed_addr constant [15 x i8] c"invalid input\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"dp_debug\00", align 1
@dp_debug_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @dp_debug_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"msm_dp_test_active\00", align 1
@test_active_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @seq_lseek, ptr @seq_read, ptr @dp_test_active_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @dp_test_active_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"msm_dp_test_data\00", align 1
@dp_test_data_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @dp_test_data_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"msm_dp_test_type\00", align 1
@dp_test_type_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @dp_test_type_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.5 = private unnamed_addr constant [12 x i8] c"\09name = %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"msm_dp\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"\09dp_panel\0A\09\09max_pclk_khz = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"\09drm_dp_link\0A\09\09rate = %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"\09\09num_lanes = %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"\09\09capabilities = %lu\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"\09dp_panel_info:\0A\09\09active = %dx%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"\09\09back_porch = %dx%d\0A\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"\09\09front_porch = %dx%d\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"\09\09sync_width = %dx%d\0A\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"\09\09active_low = %dx%d\0A\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"\09\09h_skew = %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"\09\09refresh rate = %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"\09\09pixel clock khz = %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"\09\09bpp = %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"\09dp_link:\0A\09\09test_requested = %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"\09\09num_lanes = %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"\09\09bw_code = %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"\09\09lclk = %lld\0A\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"\09\09v_level = %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"\09\09p_level = %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"Copied %d bytes from user\0A\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"Got %d for test active\0A\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"hdisplay: %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"vdisplay: %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"bpc: %u\0A\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dp_debug_get(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #0 {
  %7 = icmp ne ptr %0, null
  %8 = icmp ne ptr %1, null
  %9 = and i1 %7, %8
  %10 = icmp ne ptr %2, null
  %11 = and i1 %9, %10
  %12 = icmp ne ptr %3, null
  %13 = and i1 %11, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #3
  br label %41

15:                                               ; preds = %6
  %16 = tail call noalias ptr @devm_kmalloc(ptr noundef nonnull %0, i32 noundef 48, i32 noundef 3520) #3
  %17 = icmp eq ptr %16, null
  br i1 %17, label %41, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.dp_debug_private, ptr %16, i32 0, i32 7
  store i8 0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.dp_debug_private, ptr %16, i32 0, i32 1
  store ptr %2, ptr %20, align 4
  %21 = getelementptr inbounds %struct.dp_debug_private, ptr %16, i32 0, i32 2
  store ptr %3, ptr %21, align 4
  %22 = getelementptr inbounds %struct.dp_debug_private, ptr %16, i32 0, i32 3
  store ptr %1, ptr %22, align 4
  %23 = getelementptr inbounds %struct.dp_debug_private, ptr %16, i32 0, i32 5
  store ptr %0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.drm_minor, ptr %5, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.dp_debug_private, ptr %16, i32 0, i32 6
  store ptr %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.dp_debug_private, ptr %16, i32 0, i32 4
  store ptr %4, ptr %27, align 4
  %28 = getelementptr inbounds %struct.dp_debug_private, ptr %16, i32 0, i32 7, i32 2
  store i32 0, ptr %28, align 4
  %29 = getelementptr inbounds %struct.dp_debug_private, ptr %16, i32 0, i32 7, i32 3
  store i32 0, ptr %29, align 4
  %30 = getelementptr inbounds %struct.dp_debug_private, ptr %16, i32 0, i32 7, i32 4
  store i32 0, ptr %30, align 4
  %31 = getelementptr inbounds %struct.drm_minor, ptr %5, i32 0, i32 4
  %32 = load ptr, ptr %31, align 4
  %33 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.1, i16 noundef zeroext 292, ptr noundef %32, ptr noundef nonnull %16, ptr noundef nonnull @dp_debug_fops) #3
  %34 = load ptr, ptr %31, align 4
  %35 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.2, i16 noundef zeroext 292, ptr noundef %34, ptr noundef nonnull %16, ptr noundef nonnull @test_active_fops) #3
  %36 = load ptr, ptr %31, align 4
  %37 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.3, i16 noundef zeroext 292, ptr noundef %36, ptr noundef nonnull %16, ptr noundef nonnull @dp_test_data_fops) #3
  %38 = load ptr, ptr %31, align 4
  %39 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.4, i16 noundef zeroext 292, ptr noundef %38, ptr noundef nonnull %16, ptr noundef nonnull @dp_test_type_fops) #3
  %40 = load ptr, ptr %31, align 4
  store ptr %40, ptr %16, align 4
  br label %41

41:                                               ; preds = %18, %15, %14
  %42 = phi ptr [ %19, %18 ], [ inttoptr (i32 -22 to ptr), %14 ], [ inttoptr (i32 -12 to ptr), %15 ]
  ret ptr %42
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dp_debug_put(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = getelementptr i8, ptr %0, i32 -28
  %5 = load ptr, ptr %4, align 4
  tail call void @debugfs_remove(ptr noundef %5) #3
  %6 = getelementptr i8, ptr %0, i32 -8
  %7 = load ptr, ptr %6, align 4
  tail call void @devm_kfree(ptr noundef %7, ptr noundef %4) #3
  br label %8

8:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dp_debug_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @dp_debug_show, ptr noundef %4) #3
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dp_debug_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %101, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dp_debug_private, ptr %4, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dp_panel, ptr %8, i32 0, i32 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #3
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr inbounds %struct.dp_panel, ptr %10, i32 0, i32 11
  %12 = load i32, ptr %11, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %12) #3
  %13 = load ptr, ptr %7, align 4
  %14 = getelementptr inbounds %struct.dp_panel, ptr %13, i32 0, i32 4, i32 1
  %15 = load i32, ptr %14, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %15) #3
  %16 = load ptr, ptr %7, align 4
  %17 = getelementptr inbounds %struct.dp_panel, ptr %16, i32 0, i32 4, i32 2
  %18 = load i32, ptr %17, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %18) #3
  %19 = load ptr, ptr %7, align 4
  %20 = getelementptr inbounds %struct.dp_panel, ptr %19, i32 0, i32 4, i32 3
  %21 = load i32, ptr %20, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %21) #3
  %22 = getelementptr inbounds %struct.dp_panel, ptr %8, i32 0, i32 8, i32 0, i32 1
  %23 = load i16, ptr %22, align 4
  %24 = zext i16 %23 to i32
  %25 = getelementptr inbounds %struct.dp_panel, ptr %8, i32 0, i32 8, i32 0, i32 6
  %26 = load i16, ptr %25, align 2
  %27 = zext i16 %26 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %24, i32 noundef %27) #3
  %28 = getelementptr inbounds %struct.dp_panel, ptr %8, i32 0, i32 8, i32 0, i32 4
  %29 = load i16, ptr %28, align 2
  %30 = zext i16 %29 to i32
  %31 = getelementptr inbounds %struct.dp_panel, ptr %8, i32 0, i32 8, i32 0, i32 3
  %32 = load i16, ptr %31, align 4
  %33 = zext i16 %32 to i32
  %34 = sub nsw i32 %30, %33
  %35 = getelementptr inbounds %struct.dp_panel, ptr %8, i32 0, i32 8, i32 0, i32 9
  %36 = load i16, ptr %35, align 4
  %37 = zext i16 %36 to i32
  %38 = getelementptr inbounds %struct.dp_panel, ptr %8, i32 0, i32 8, i32 0, i32 8
  %39 = load i16, ptr %38, align 2
  %40 = zext i16 %39 to i32
  %41 = sub nsw i32 %37, %40
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %34, i32 noundef %41) #3
  %42 = getelementptr inbounds %struct.dp_panel, ptr %8, i32 0, i32 8, i32 0, i32 2
  %43 = load i16, ptr %42, align 2
  %44 = zext i16 %43 to i32
  %45 = load i16, ptr %22, align 4
  %46 = zext i16 %45 to i32
  %47 = sub nsw i32 %44, %46
  %48 = getelementptr inbounds %struct.dp_panel, ptr %8, i32 0, i32 8, i32 0, i32 7
  %49 = load i16, ptr %48, align 4
  %50 = zext i16 %49 to i32
  %51 = load i16, ptr %25, align 2
  %52 = zext i16 %51 to i32
  %53 = sub nsw i32 %50, %52
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %47, i32 noundef %53) #3
  %54 = load i16, ptr %31, align 4
  %55 = zext i16 %54 to i32
  %56 = load i16, ptr %42, align 2
  %57 = zext i16 %56 to i32
  %58 = sub nsw i32 %55, %57
  %59 = load i16, ptr %38, align 2
  %60 = zext i16 %59 to i32
  %61 = load i16, ptr %48, align 4
  %62 = zext i16 %61 to i32
  %63 = sub nsw i32 %60, %62
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %58, i32 noundef %63) #3
  %64 = load ptr, ptr %7, align 4
  %65 = getelementptr inbounds %struct.dp_panel, ptr %64, i32 0, i32 8, i32 3
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr inbounds %struct.dp_panel, ptr %64, i32 0, i32 8, i32 4
  %68 = load i32, ptr %67, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.15, i32 noundef %66, i32 noundef %68) #3
  %69 = getelementptr inbounds %struct.dp_panel, ptr %8, i32 0, i32 8, i32 0, i32 5
  %70 = load i16, ptr %69, align 4
  %71 = zext i16 %70 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.16, i32 noundef %71) #3
  %72 = tail call i32 @drm_mode_vrefresh(ptr noundef %9) #3
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef %72) #3
  %73 = load i32, ptr %9, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef %73) #3
  %74 = load ptr, ptr %7, align 4
  %75 = getelementptr inbounds %struct.dp_panel, ptr %74, i32 0, i32 8, i32 2
  %76 = load i32, ptr %75, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef %76) #3
  %77 = getelementptr inbounds %struct.dp_debug_private, ptr %4, i32 0, i32 2
  %78 = load ptr, ptr %77, align 4
  %79 = load i32, ptr %78, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef %79) #3
  %80 = load ptr, ptr %77, align 4
  %81 = getelementptr inbounds %struct.dp_link, ptr %80, i32 0, i32 7, i32 2
  %82 = load i32, ptr %81, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef %82) #3
  %83 = load ptr, ptr %77, align 4
  %84 = getelementptr inbounds %struct.dp_link, ptr %83, i32 0, i32 7, i32 1
  %85 = load i32, ptr %84, align 4
  %86 = tail call zeroext i8 @drm_dp_link_rate_to_bw_code(i32 noundef %85) #3
  %87 = zext i8 %86 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef %87) #3
  %88 = load ptr, ptr %77, align 4
  %89 = getelementptr inbounds %struct.dp_link, ptr %88, i32 0, i32 7, i32 1
  %90 = load i32, ptr %89, align 4
  %91 = mul i32 %90, 1000
  %92 = zext i32 %91 to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.23, i64 noundef %92) #3
  %93 = load ptr, ptr %77, align 4
  %94 = getelementptr inbounds %struct.dp_link, ptr %93, i32 0, i32 6, i32 1
  %95 = load i8, ptr %94, align 4
  %96 = zext i8 %95 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef %96) #3
  %97 = load ptr, ptr %77, align 4
  %98 = getelementptr inbounds %struct.dp_link, ptr %97, i32 0, i32 6, i32 2
  %99 = load i8, ptr %98, align 1
  %100 = zext i8 %99 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.25, i32 noundef %100) #3
  br label %101

101:                                              ; preds = %6, %2
  %102 = phi i32 [ 0, %6 ], [ -19, %2 ]
  ret i32 %102
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @drm_dp_link_rate_to_bw_code(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dp_test_active_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #3
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.seq_file, ptr %7, i32 0, i32 11
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.dp_debug_private, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %38, label %13

13:                                               ; preds = %4
  %14 = tail call ptr @memdup_user_nul(ptr noundef %1, i32 noundef %2) #3
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = ptrtoint ptr %14 to i32
  br label %38

18:                                               ; preds = %13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.26, i32 noundef %2) #3
  %19 = getelementptr inbounds %struct.drm_connector, ptr %11, i32 0, i32 18
  %20 = load i32, ptr %19, align 8
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %34

22:                                               ; preds = %18
  %23 = call i32 @kstrtoint(ptr noundef %14, i32 noundef 10, ptr noundef nonnull %5) #3
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  call void @kfree(ptr noundef %14) #3
  br label %38

26:                                               ; preds = %22
  %27 = load i32, ptr %5, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.27, i32 noundef %27) #3
  %28 = load i32, ptr %5, align 4
  %29 = icmp eq i32 %28, 1
  %30 = getelementptr inbounds %struct.dp_debug_private, ptr %9, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.dp_panel, ptr %31, i32 0, i32 9
  %33 = zext i1 %29 to i8
  store i8 %33, ptr %32, align 4
  br label %34

34:                                               ; preds = %26, %18
  call void @kfree(ptr noundef %14) #3
  %35 = zext i32 %2 to i64
  %36 = load i64, ptr %3, align 8
  %37 = add i64 %36, %35
  store i64 %37, ptr %3, align 8
  br label %38

38:                                               ; preds = %34, %25, %16, %4
  %39 = phi i32 [ %17, %16 ], [ %23, %25 ], [ %2, %34 ], [ 0, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #3
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dp_test_active_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @dp_test_active_show, ptr noundef %4) #3
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user_nul(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dp_test_active_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.dp_debug_private, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_connector, ptr %6, i32 0, i32 18
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.dp_debug_private, ptr %4, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.dp_panel, ptr %12, i32 0, i32 9
  %14 = load i8, ptr %13, align 4, !range !8
  %15 = icmp eq i8 %14, 0
  %16 = select i1 %15, ptr @.str.29, ptr @.str.28
  br label %17

17:                                               ; preds = %10, %2
  %18 = phi ptr [ %16, %10 ], [ @.str.29, %2 ]
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %18) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dp_test_data_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @dp_test_data_show, ptr noundef %4) #3
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dp_test_data_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.dp_debug_private, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_connector, ptr %6, i32 0, i32 18
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %25

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.dp_debug_private, ptr %4, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.dp_link, ptr %12, i32 0, i32 4, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.dp_link, ptr %12, i32 0, i32 4, i32 11
  %16 = load i32, ptr %15, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.30, i32 noundef %16) #3
  %17 = load ptr, ptr %11, align 4
  %18 = getelementptr inbounds %struct.dp_link, ptr %17, i32 0, i32 4, i32 12
  %19 = load i32, ptr %18, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.31, i32 noundef %19) #3
  switch i32 %14, label %22 [
    i32 0, label %23
    i32 32, label %20
    i32 64, label %21
  ]

20:                                               ; preds = %10
  br label %23

21:                                               ; preds = %10
  br label %23

22:                                               ; preds = %10
  br label %23

23:                                               ; preds = %22, %21, %20, %10
  %24 = phi i32 [ 0, %22 ], [ 10, %21 ], [ 8, %20 ], [ 6, %10 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.32, i32 noundef %24) #3
  br label %26

25:                                               ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.29) #3
  br label %26

26:                                               ; preds = %25, %23
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dp_test_type_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @dp_test_type_show, ptr noundef %4) #3
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dp_test_type_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.dp_debug_private, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_connector, ptr %6, i32 0, i32 18
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.33, i32 noundef 2) #3
  br label %12

11:                                               ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.29) #3
  br label %12

12:                                               ; preds = %11, %10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }

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
