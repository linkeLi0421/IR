; ModuleID = '/llk/IR/drivers/gpu/drm/rockchip/inno_hdmi.c_pt.bc'
source_filename = "../drivers/gpu/drm/rockchip/inno_hdmi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type {}
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
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.inno_hdmi = type { ptr, ptr, i32, ptr, ptr, %struct.drm_connector, %struct.drm_encoder, ptr, ptr, i32, %struct.hdmi_data_info, %struct.drm_display_mode }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.75 }
%union.anon.75 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.hdmi_data_info = type { i32, i8, i8, i32, i32, i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.inno_hdmi_i2c = type { %struct.i2c_adapter, i8, i8, %struct.mutex, %struct.completion }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.drm_encoder_funcs = type { ptr, ptr, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%union.hdmi_infoframe = type { %struct.hdmi_avi_infoframe }
%struct.hdmi_avi_infoframe = type { i32, i8, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i32, i32, i8, i16, i16, i16, i16 }
%struct.rockchip_crtc_state = type { %struct.drm_crtc_state, i32, i32, i32, i32, i8 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }

@inno_hdmi_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3036-inno-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str = private unnamed_addr constant [18 x i8] c"innohdmi-rockchip\00", align 1
@inno_hdmi_driver = dso_local local_unnamed_addr global %struct.platform_driver { ptr @inno_hdmi_probe, ptr @inno_hdmi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @inno_hdmi_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@inno_hdmi_ops = internal constant %struct.component_ops { ptr @inno_hdmi_bind, ptr @inno_hdmi_unbind }, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"*ERROR* Unable to get HDMI pclk clk\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"*ERROR* Cannot enable HDMI pclk clock: %d\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@inno_hdmi_i2c_adapter.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"&i2c->lock\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@inno_hdmi_algorithm = internal constant %struct.i2c_algorithm { ptr @inno_hdmi_i2c_xfer, ptr null, ptr null, ptr null, ptr @inno_hdmi_i2c_func, ptr null, ptr null }, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"Inno HDMI\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"cannot add %s I2C adapter\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"\016\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"registered %s I2C bus driver\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"xfer: num: %d/%d, len: %d, flags: %#x\0A\00", align 1
@inno_hdmi_encoder_helper_funcs = internal global %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr @inno_hdmi_encoder_mode_fixup, ptr null, ptr null, ptr @inno_hdmi_encoder_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @inno_hdmi_encoder_disable, ptr @inno_hdmi_encoder_enable, ptr @inno_hdmi_encoder_atomic_check }, align 4
@inno_hdmi_connector_helper_funcs = internal global %struct.drm_connector_helper_funcs { ptr @inno_hdmi_connector_get_modes, ptr null, ptr @inno_hdmi_connector_mode_valid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@inno_hdmi_connector_funcs = internal constant %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr @inno_hdmi_connector_detect, ptr null, ptr @inno_hdmi_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @inno_hdmi_connector_destroy, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, align 4
@coeff_csc = internal unnamed_addr constant [6 x [24 x i8]] [[24 x i8] c"\04\A7\00\00\06b\02\CC\04\A7\11\90\13@\00\9A\04\A7\08\12\00\00\03\02", [24 x i8] c"\04\00\00\00\05\9B\02\F8\04\00\11`\12\DB\00\87\04\00\07\16\00\00\02\E3", [24 x i8] c"\04\A7\00\00\07,\02\F8\04\A7\10\DA\12\22\00M\04\A7\08t\00\00\03!", [24 x i8] c"\11_\01\82\10#\00\80\02\1C\00\A1\006\00\1E\11)\10Y\01\82\00\80", [24 x i8] c"\11\98\01\C1\10(\00\80\02t\00\BB\00?\00\10\11Z\10g\01\C1\00\80", [24 x i8] c"\00\00\03o\00\00\00\10\03o\00\00\00\00\00\10\00\00\00\00\03o\00\10"], align 1

@__mod_of__inno_hdmi_dt_ids_device_table = dso_local alias [2 x %struct.of_device_id], ptr @inno_hdmi_dt_ids

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @inno_hdmi_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call i32 @component_add(ptr noundef %2, ptr noundef nonnull @inno_hdmi_ops) #9
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @inno_hdmi_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @component_del(ptr noundef %2, ptr noundef nonnull @inno_hdmi_ops) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @inno_hdmi_bind(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -16
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 1208, i32 noundef 3520) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %156, label %7

7:                                                ; preds = %3
  store ptr %0, ptr %5, align 8
  %8 = getelementptr inbounds %struct.inno_hdmi, ptr %5, i32 0, i32 1
  store ptr %2, ptr %8, align 4
  %9 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %4, i32 noundef 0) #9
  %10 = getelementptr inbounds %struct.inno_hdmi, ptr %5, i32 0, i32 4
  store ptr %9, ptr %10, align 8
  %11 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = ptrtoint ptr %9 to i32
  br label %156

14:                                               ; preds = %7
  %15 = load ptr, ptr %5, align 8
  %16 = tail call ptr @devm_clk_get(ptr noundef %15, ptr noundef nonnull @.str.1) #9
  %17 = getelementptr inbounds %struct.inno_hdmi, ptr %5, i32 0, i32 3
  store ptr %16, ptr %17, align 4
  %18 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %20, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #9
  %21 = load ptr, ptr %17, align 4
  %22 = ptrtoint ptr %21 to i32
  br label %156

23:                                               ; preds = %14
  %24 = tail call i32 @clk_prepare(ptr noundef %16) #9
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = tail call i32 @clk_enable(ptr noundef %16) #9
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  tail call void @clk_unprepare(ptr noundef %16) #9
  br label %30

30:                                               ; preds = %29, %23
  %31 = phi i32 [ %27, %29 ], [ %24, %23 ]
  %32 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %32, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4, i32 noundef %31) #9
  br label %156

33:                                               ; preds = %26
  %34 = tail call i32 @platform_get_irq(ptr noundef %4, i32 noundef 0) #9
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %153, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr %10, align 8
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #9, !srcloc !8
  %39 = and i32 %38, 223
  %40 = or i32 %39, 32
  %41 = load ptr, ptr %10, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %40) #9, !srcloc !9
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 21474800) #9
  %43 = load ptr, ptr %10, align 8
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #9, !srcloc !8
  %45 = and i32 %44, 191
  %46 = or i32 %45, 64
  %47 = load ptr, ptr %10, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %46) #9, !srcloc !9
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 21474800) #9
  %49 = load ptr, ptr %10, align 8
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #9, !srcloc !8
  %51 = and i32 %50, 232
  %52 = or i32 %51, 21
  %53 = load ptr, ptr %10, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %52) #9, !srcloc !9
  %54 = load ptr, ptr %10, align 8
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #9
  %56 = and i32 %55, 253
  %57 = or i32 %56, 2
  %58 = load ptr, ptr %10, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %57) #9, !srcloc !9
  %59 = load ptr, ptr %10, align 8
  %60 = getelementptr i8, ptr %59, i32 908
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 111) #9, !srcloc !9
  %61 = load ptr, ptr %10, align 8
  %62 = getelementptr i8, ptr %61, i32 904
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 187) #9, !srcloc !9
  %63 = load ptr, ptr %10, align 8
  %64 = getelementptr i8, ptr %63, i32 896
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 21) #9, !srcloc !9
  %65 = load ptr, ptr %10, align 8
  %66 = getelementptr i8, ptr %65, i32 896
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 20) #9, !srcloc !9
  %67 = load ptr, ptr %10, align 8
  %68 = getelementptr i8, ptr %67, i32 896
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 16) #9, !srcloc !9
  %69 = load ptr, ptr %10, align 8
  %70 = getelementptr i8, ptr %69, i32 900
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 15) #9, !srcloc !9
  %71 = load ptr, ptr %10, align 8
  %72 = getelementptr i8, ptr %71, i32 824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 0) #9, !srcloc !9
  %73 = load ptr, ptr %10, align 8
  %74 = getelementptr i8, ptr %73, i32 824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 1) #9, !srcloc !9
  %75 = load ptr, ptr %10, align 8
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #9
  %77 = and i32 %76, 253
  %78 = load ptr, ptr %10, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %77) #9, !srcloc !9
  %79 = load ptr, ptr %5, align 8
  %80 = tail call noalias ptr @devm_kmalloc(ptr noundef %79, i32 noundef 696, i32 noundef 3520) #9
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %36
  %83 = getelementptr inbounds %struct.inno_hdmi, ptr %5, i32 0, i32 8
  br label %111

84:                                               ; preds = %36
  %85 = getelementptr inbounds %struct.inno_hdmi_i2c, ptr %80, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %85, ptr noundef nonnull @.str.6, ptr noundef nonnull @inno_hdmi_i2c_adapter.__key) #9
  %86 = getelementptr inbounds %struct.inno_hdmi_i2c, ptr %80, i32 0, i32 4
  store i32 0, ptr %86, align 4
  %87 = getelementptr inbounds %struct.inno_hdmi_i2c, ptr %80, i32 0, i32 4, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %87, ptr noundef nonnull @.str.11, ptr noundef nonnull @init_completion.__key) #9
  %88 = getelementptr inbounds %struct.i2c_adapter, ptr %80, i32 0, i32 1
  store i32 8, ptr %88, align 4
  store ptr @__this_module, ptr %80, align 8
  %89 = load ptr, ptr %5, align 8
  %90 = getelementptr inbounds %struct.i2c_adapter, ptr %80, i32 0, i32 9, i32 1
  store ptr %89, ptr %90, align 4
  %91 = getelementptr inbounds %struct.device, ptr %89, i32 0, i32 25
  %92 = load ptr, ptr %91, align 8
  %93 = getelementptr inbounds %struct.i2c_adapter, ptr %80, i32 0, i32 9, i32 25
  store ptr %92, ptr %93, align 8
  %94 = getelementptr inbounds %struct.i2c_adapter, ptr %80, i32 0, i32 2
  store ptr @inno_hdmi_algorithm, ptr %94, align 8
  %95 = getelementptr inbounds %struct.i2c_adapter, ptr %80, i32 0, i32 12
  %96 = tail call i32 @strlcpy(ptr noundef %95, ptr noundef nonnull @.str.7, i32 noundef 48) #9
  %97 = getelementptr inbounds %struct.i2c_adapter, ptr %80, i32 0, i32 9, i32 8
  store ptr %5, ptr %97, align 8
  %98 = tail call i32 @i2c_add_adapter(ptr noundef nonnull %80) #9
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %84
  %101 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %101, ptr noundef nonnull @.str.8, ptr noundef %95) #10
  %102 = load ptr, ptr %5, align 8
  tail call void @devm_kfree(ptr noundef %102, ptr noundef nonnull %80) #9
  %103 = inttoptr i32 %98 to ptr
  br label %107

104:                                              ; preds = %84
  %105 = getelementptr inbounds %struct.inno_hdmi, ptr %5, i32 0, i32 7
  store ptr %80, ptr %105, align 8
  %106 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %106, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef %95) #9
  br label %107

107:                                              ; preds = %104, %100
  %108 = phi ptr [ %103, %100 ], [ %80, %104 ]
  %109 = getelementptr inbounds %struct.inno_hdmi, ptr %5, i32 0, i32 8
  store ptr %108, ptr %109, align 4
  %110 = icmp ugt ptr %108, inttoptr (i32 -4096 to ptr)
  br i1 %110, label %111, label %115

111:                                              ; preds = %107, %82
  %112 = phi ptr [ %83, %82 ], [ %109, %107 ]
  %113 = phi ptr [ inttoptr (i32 -12 to ptr), %82 ], [ %108, %107 ]
  %114 = ptrtoint ptr %113 to i32
  store ptr null, ptr %112, align 4
  br label %153

115:                                              ; preds = %107
  %116 = load ptr, ptr %17, align 4
  %117 = tail call i32 @clk_get_rate(ptr noundef %116) #9
  %118 = getelementptr inbounds %struct.inno_hdmi, ptr %5, i32 0, i32 9
  store i32 %117, ptr %118, align 8
  tail call fastcc void @inno_hdmi_i2c_init(ptr noundef nonnull %5)
  %119 = tail call fastcc i32 @inno_hdmi_register(ptr noundef %2, ptr noundef nonnull %5)
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %150

121:                                              ; preds = %115
  %122 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr %5, ptr %122, align 8
  %123 = load ptr, ptr %10, align 8
  %124 = getelementptr i8, ptr %123, i32 800
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %124) #9, !srcloc !8
  %126 = and i32 %125, 223
  %127 = or i32 %126, 32
  %128 = load ptr, ptr %10, align 8
  %129 = getelementptr i8, ptr %128, i32 800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %129, i32 %127) #9, !srcloc !9
  %130 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %131 = load ptr, ptr %130, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %135

133:                                              ; preds = %121
  %134 = load ptr, ptr %0, align 4
  br label %135

135:                                              ; preds = %133, %121
  %136 = phi ptr [ %134, %133 ], [ %131, %121 ]
  %137 = tail call i32 @devm_request_threaded_irq(ptr noundef %0, i32 noundef %34, ptr noundef nonnull @inno_hdmi_hardirq, ptr noundef nonnull @inno_hdmi_irq, i32 noundef 128, ptr noundef %136, ptr noundef nonnull %5) #9
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %156

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.inno_hdmi, ptr %5, i32 0, i32 5
  %141 = getelementptr inbounds %struct.inno_hdmi, ptr %5, i32 0, i32 5, i32 21
  %142 = load ptr, ptr %141, align 8
  %143 = getelementptr inbounds %struct.drm_connector_funcs, ptr %142, i32 0, i32 8
  %144 = load ptr, ptr %143, align 4
  tail call void %144(ptr noundef %140) #9
  %145 = getelementptr inbounds %struct.inno_hdmi, ptr %5, i32 0, i32 6
  %146 = getelementptr inbounds %struct.inno_hdmi, ptr %5, i32 0, i32 6, i32 10
  %147 = load ptr, ptr %146, align 8
  %148 = getelementptr inbounds %struct.drm_encoder_funcs, ptr %147, i32 0, i32 1
  %149 = load ptr, ptr %148, align 4
  tail call void %149(ptr noundef %145) #9
  br label %150

150:                                              ; preds = %139, %115
  %151 = phi i32 [ %119, %115 ], [ %137, %139 ]
  %152 = load ptr, ptr %109, align 4
  tail call void @i2c_put_adapter(ptr noundef %152) #9
  br label %153

153:                                              ; preds = %150, %111, %33
  %154 = phi i32 [ %114, %111 ], [ %151, %150 ], [ %34, %33 ]
  %155 = load ptr, ptr %17, align 4
  tail call void @clk_disable(ptr noundef %155) #9
  tail call void @clk_unprepare(ptr noundef %155) #9
  br label %156

156:                                              ; preds = %153, %135, %30, %19, %12, %3
  %157 = phi i32 [ %13, %12 ], [ %22, %19 ], [ %31, %30 ], [ %154, %153 ], [ -12, %3 ], [ 0, %135 ]
  ret i32 %157
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @inno_hdmi_unbind(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.inno_hdmi, ptr %5, i32 0, i32 5
  %7 = getelementptr inbounds %struct.inno_hdmi, ptr %5, i32 0, i32 5, i32 21
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.drm_connector_funcs, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  tail call void %10(ptr noundef %6) #9
  %11 = getelementptr inbounds %struct.inno_hdmi, ptr %5, i32 0, i32 6
  %12 = getelementptr inbounds %struct.inno_hdmi, ptr %5, i32 0, i32 6, i32 10
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.drm_encoder_funcs, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  tail call void %15(ptr noundef %11) #9
  %16 = getelementptr inbounds %struct.inno_hdmi, ptr %5, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  tail call void @i2c_put_adapter(ptr noundef %17) #9
  %18 = getelementptr inbounds %struct.inno_hdmi, ptr %5, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  tail call void @clk_disable(ptr noundef %19) #9
  tail call void @clk_unprepare(ptr noundef %19) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @inno_hdmi_i2c_init(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.inno_hdmi, ptr %0, i32 0, i32 9
  %3 = load i32, ptr %2, align 8
  %4 = udiv i32 %3, 400000
  %5 = and i32 %4, 255
  %6 = getelementptr inbounds %struct.inno_hdmi, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %7, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %5) #9, !srcloc !9
  %9 = lshr i32 %4, 8
  %10 = load ptr, ptr %6, align 8
  %11 = getelementptr i8, ptr %10, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #9, !srcloc !9
  %12 = load ptr, ptr %6, align 8
  %13 = getelementptr i8, ptr %12, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 0) #9, !srcloc !9
  %14 = load ptr, ptr %6, align 8
  %15 = getelementptr i8, ptr %14, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 4) #9, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @inno_hdmi_register(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @drm_of_find_possible_crtcs(ptr noundef %0, ptr noundef %5) #9
  %7 = getelementptr inbounds %struct.inno_hdmi, ptr %1, i32 0, i32 6, i32 6
  store i32 %6, ptr %7, align 4
  %8 = icmp eq i32 %6, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.inno_hdmi, ptr %1, i32 0, i32 6
  %11 = getelementptr inbounds %struct.inno_hdmi, ptr %1, i32 0, i32 6, i32 11
  store ptr @inno_hdmi_encoder_helper_funcs, ptr %11, align 4
  %12 = tail call i32 @drm_simple_encoder_init(ptr noundef %0, ptr noundef %10, i32 noundef 2) #9
  %13 = getelementptr inbounds %struct.inno_hdmi, ptr %1, i32 0, i32 5
  %14 = getelementptr inbounds %struct.inno_hdmi, ptr %1, i32 0, i32 5, i32 33
  store i8 1, ptr %14, align 4
  %15 = getelementptr inbounds %struct.inno_hdmi, ptr %1, i32 0, i32 5, i32 35
  store ptr @inno_hdmi_connector_helper_funcs, ptr %15, align 4
  %16 = getelementptr inbounds %struct.inno_hdmi, ptr %1, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @drm_connector_init_with_ddc(ptr noundef %0, ptr noundef %13, ptr noundef nonnull @inno_hdmi_connector_funcs, i32 noundef 11, ptr noundef %17) #9
  %19 = tail call i32 @drm_connector_attach_encoder(ptr noundef %13, ptr noundef %10) #9
  br label %20

20:                                               ; preds = %9, %2
  %21 = phi i32 [ 0, %9 ], [ -517, %2 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @inno_hdmi_hardirq(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.inno_hdmi, ptr %1, i32 0, i32 7
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.inno_hdmi, ptr %1, i32 0, i32 4
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr i8, ptr %8, i32 772
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #9, !srcloc !8
  %11 = and i32 %10, 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %6
  %14 = load ptr, ptr %7, align 8
  %15 = getelementptr i8, ptr %14, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 4) #9, !srcloc !9
  %16 = getelementptr inbounds %struct.inno_hdmi_i2c, ptr %4, i32 0, i32 4
  tail call void @complete(ptr noundef %16) #9
  br label %17

17:                                               ; preds = %13, %6, %2
  %18 = phi i32 [ 0, %2 ], [ 1, %13 ], [ 0, %6 ]
  %19 = getelementptr inbounds %struct.inno_hdmi, ptr %1, i32 0, i32 4
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr i8, ptr %20, i32 800
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #9, !srcloc !8
  %23 = and i32 %22, 2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %17
  %26 = load ptr, ptr %19, align 8
  %27 = getelementptr i8, ptr %26, i32 800
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #9, !srcloc !8
  %29 = and i32 %28, 253
  %30 = or i32 %29, 2
  %31 = load ptr, ptr %19, align 8
  %32 = getelementptr i8, ptr %31, i32 800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #9, !srcloc !9
  br label %33

33:                                               ; preds = %25, %17
  %34 = phi i32 [ 2, %25 ], [ %18, %17 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @inno_hdmi_irq(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.inno_hdmi, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 8
  %5 = tail call zeroext i1 @drm_helper_hpd_irq_event(ptr noundef %4) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_put_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @inno_hdmi_i2c_xfer(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.inno_hdmi, ptr %5, i32 0, i32 7
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.inno_hdmi_i2c, ptr %7, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %8) #9
  %9 = getelementptr inbounds %struct.inno_hdmi, ptr %5, i32 0, i32 4
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr i8, ptr %10, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 4) #9, !srcloc !9
  %12 = load ptr, ptr %9, align 8
  %13 = getelementptr i8, ptr %12, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 4) #9, !srcloc !9
  %14 = icmp sgt i32 %2, 0
  br i1 %14, label %15, label %93

15:                                               ; preds = %91, %3
  %16 = phi i32 [ %18, %91 ], [ 0, %3 ]
  %17 = load ptr, ptr %5, align 8
  %18 = add nuw nsw i32 %16, 1
  %19 = getelementptr %struct.i2c_msg, ptr %1, i32 %16
  %20 = getelementptr %struct.i2c_msg, ptr %1, i32 %16, i32 2
  %21 = load i16, ptr %20, align 4
  %22 = zext i16 %21 to i32
  %23 = getelementptr %struct.i2c_msg, ptr %1, i32 %16, i32 1
  %24 = load i16, ptr %23, align 2
  %25 = zext i16 %24 to i32
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %17, i32 noundef 1, ptr noundef nonnull @.str.12, i32 noundef %18, i32 noundef %2, i32 noundef %22, i32 noundef %25) #9
  %26 = load i16, ptr %23, align 2
  %27 = and i16 %26, 1
  %28 = icmp eq i16 %27, 0
  %29 = load i16, ptr %20, align 4
  br i1 %28, label %51, label %30

30:                                               ; preds = %15
  %31 = getelementptr %struct.i2c_msg, ptr %1, i32 %16, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = load ptr, ptr %6, align 8
  %34 = getelementptr inbounds %struct.inno_hdmi_i2c, ptr %33, i32 0, i32 4
  %35 = tail call i32 @wait_for_completion_timeout(ptr noundef %34, i32 noundef 10) #9
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %93, label %37

37:                                               ; preds = %30
  %38 = icmp eq i16 %29, 0
  br i1 %38, label %91, label %39

39:                                               ; preds = %37
  %40 = zext i16 %29 to i32
  br label %41

41:                                               ; preds = %41, %39
  %42 = phi ptr [ %49, %41 ], [ %32, %39 ]
  %43 = phi i32 [ %44, %41 ], [ %40, %39 ]
  %44 = add nsw i32 %43, -1
  %45 = load ptr, ptr %9, align 8
  %46 = getelementptr i8, ptr %45, i32 320
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #9, !srcloc !8
  %48 = trunc i32 %47 to i8
  %49 = getelementptr i8, ptr %42, i32 1
  store i8 %48, ptr %42, align 1
  %50 = icmp eq i32 %44, 0
  br i1 %50, label %91, label %41

51:                                               ; preds = %15
  %52 = icmp eq i16 %29, 1
  br i1 %52, label %53, label %93

53:                                               ; preds = %51
  %54 = load i16, ptr %19, align 4
  switch i16 %54, label %93 [
    i16 80, label %55
    i16 48, label %55
  ]

55:                                               ; preds = %53, %53
  %56 = load ptr, ptr %6, align 8
  %57 = getelementptr inbounds %struct.inno_hdmi_i2c, ptr %56, i32 0, i32 4
  store i32 0, ptr %57, align 4
  %58 = load i16, ptr %19, align 4
  %59 = icmp eq i16 %58, 48
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = getelementptr %struct.i2c_msg, ptr %1, i32 %16, i32 3
  %62 = load ptr, ptr %61, align 4
  %63 = load i8, ptr %62, align 1
  %64 = load ptr, ptr %6, align 8
  %65 = getelementptr inbounds %struct.inno_hdmi_i2c, ptr %64, i32 0, i32 2
  store i8 %63, ptr %65, align 1
  %66 = load i16, ptr %19, align 4
  br label %67

67:                                               ; preds = %60, %55
  %68 = phi i16 [ %66, %60 ], [ %58, %55 ]
  %69 = icmp eq i16 %68, 80
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = getelementptr %struct.i2c_msg, ptr %1, i32 %16, i32 3
  %72 = load ptr, ptr %71, align 4
  %73 = load i8, ptr %72, align 1
  %74 = load ptr, ptr %6, align 8
  %75 = getelementptr inbounds %struct.inno_hdmi_i2c, ptr %74, i32 0, i32 1
  store i8 %73, ptr %75, align 8
  br label %76

76:                                               ; preds = %70, %67
  %77 = load ptr, ptr %9, align 8
  %78 = getelementptr i8, ptr %77, i32 316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 0) #9, !srcloc !9
  %79 = load ptr, ptr %6, align 8
  %80 = getelementptr inbounds %struct.inno_hdmi_i2c, ptr %79, i32 0, i32 1
  %81 = load i8, ptr %80, align 8
  %82 = zext i8 %81 to i32
  %83 = load ptr, ptr %9, align 8
  %84 = getelementptr i8, ptr %83, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %82) #9, !srcloc !9
  %85 = load ptr, ptr %6, align 8
  %86 = getelementptr inbounds %struct.inno_hdmi_i2c, ptr %85, i32 0, i32 2
  %87 = load i8, ptr %86, align 1
  %88 = zext i8 %87 to i32
  %89 = load ptr, ptr %9, align 8
  %90 = getelementptr i8, ptr %89, i32 308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %88) #9, !srcloc !9
  br label %91

91:                                               ; preds = %76, %41, %37
  %92 = icmp eq i32 %18, %2
  br i1 %92, label %93, label %15

93:                                               ; preds = %91, %53, %51, %30, %3
  %94 = phi i32 [ %2, %3 ], [ -11, %30 ], [ -22, %53 ], [ -22, %51 ], [ %2, %91 ]
  %95 = load ptr, ptr %9, align 8
  %96 = getelementptr i8, ptr %95, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 0) #9, !srcloc !9
  tail call void @mutex_unlock(ptr noundef %8) #9
  ret i32 %94
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @inno_hdmi_i2c_func(ptr nocapture noundef readnone %0) #5 {
  ret i32 251592713
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_possible_crtcs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_encoder_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init_with_ddc(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @inno_hdmi_encoder_mode_fixup(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #5 {
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @inno_hdmi_encoder_mode_set(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = alloca [17 x i8], align 1
  %5 = alloca %union.hdmi_infoframe, align 4
  %6 = alloca [17 x i8], align 1
  %7 = alloca %union.hdmi_infoframe, align 4
  %8 = tail call zeroext i8 @drm_match_cea_mode(ptr noundef %2) #9
  %9 = zext i8 %8 to i32
  %10 = getelementptr i8, ptr %0, i32 84
  store i32 %9, ptr %10, align 4
  %11 = getelementptr i8, ptr %0, i32 92
  store i32 0, ptr %11, align 4
  %12 = getelementptr i8, ptr %0, i32 96
  store i32 0, ptr %12, align 4
  switch i8 %8, label %13 [
    i8 6, label %14
    i8 7, label %14
    i8 21, label %14
    i8 22, label %14
    i8 2, label %14
    i8 3, label %14
    i8 17, label %14
    i8 18, label %14
  ]

13:                                               ; preds = %3
  br label %14

14:                                               ; preds = %13, %3, %3, %3, %3, %3, %3, %3, %3
  %15 = phi i32 [ 2, %13 ], [ 1, %3 ], [ 1, %3 ], [ 1, %3 ], [ 1, %3 ], [ 1, %3 ], [ 1, %3 ], [ 1, %3 ], [ 1, %3 ]
  %16 = getelementptr i8, ptr %0, i32 100
  store i32 %15, ptr %16, align 4
  %17 = getelementptr i8, ptr %0, i32 -976
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr i8, ptr %18, i32 20
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #9, !srcloc !8
  %21 = and i32 %20, 252
  %22 = or i32 %21, 3
  %23 = load ptr, ptr %17, align 8
  %24 = getelementptr i8, ptr %23, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #9, !srcloc !9
  %25 = getelementptr i8, ptr %0, i32 88
  %26 = load i8, ptr %25, align 4, !range !10
  %27 = shl nuw nsw i8 %26, 1
  %28 = zext i8 %27 to i32
  %29 = load ptr, ptr %17, align 8
  %30 = getelementptr i8, ptr %29, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #9, !srcloc !9
  %31 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 11
  %32 = load i32, ptr %31, align 4
  %33 = shl i32 %32, 3
  %34 = and i32 %33, 8
  %35 = and i32 %32, 4
  %36 = lshr i32 %32, 3
  %37 = and i32 %36, 2
  %38 = or i32 %35, %34
  %39 = or i32 %38, %37
  %40 = or i32 %39, 1
  %41 = load ptr, ptr %17, align 8
  %42 = getelementptr i8, ptr %41, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #9, !srcloc !9
  %43 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 4
  %44 = load i16, ptr %43, align 2
  %45 = zext i16 %44 to i32
  %46 = and i32 %45, 255
  %47 = load ptr, ptr %17, align 8
  %48 = getelementptr i8, ptr %47, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %46) #9, !srcloc !9
  %49 = lshr i32 %45, 8
  %50 = load ptr, ptr %17, align 8
  %51 = getelementptr i8, ptr %50, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #9, !srcloc !9
  %52 = load i16, ptr %43, align 2
  %53 = zext i16 %52 to i32
  %54 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 1
  %55 = load i16, ptr %54, align 4
  %56 = zext i16 %55 to i32
  %57 = sub nsw i32 %53, %56
  %58 = and i32 %57, 255
  %59 = load ptr, ptr %17, align 8
  %60 = getelementptr i8, ptr %59, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %58) #9, !srcloc !9
  %61 = lshr i32 %57, 8
  %62 = and i32 %61, 255
  %63 = load ptr, ptr %17, align 8
  %64 = getelementptr i8, ptr %63, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %62) #9, !srcloc !9
  %65 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 2
  %66 = load i16, ptr %65, align 2
  %67 = zext i16 %66 to i32
  %68 = load i16, ptr %54, align 4
  %69 = zext i16 %68 to i32
  %70 = sub nsw i32 %67, %69
  %71 = and i32 %70, 255
  %72 = load ptr, ptr %17, align 8
  %73 = getelementptr i8, ptr %72, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %71) #9, !srcloc !9
  %74 = lshr i32 %70, 8
  %75 = and i32 %74, 255
  %76 = load ptr, ptr %17, align 8
  %77 = getelementptr i8, ptr %76, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %75) #9, !srcloc !9
  %78 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 3
  %79 = load i16, ptr %78, align 4
  %80 = zext i16 %79 to i32
  %81 = load i16, ptr %65, align 2
  %82 = zext i16 %81 to i32
  %83 = sub nsw i32 %80, %82
  %84 = and i32 %83, 255
  %85 = load ptr, ptr %17, align 8
  %86 = getelementptr i8, ptr %85, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %84) #9, !srcloc !9
  %87 = lshr i32 %83, 8
  %88 = and i32 %87, 255
  %89 = load ptr, ptr %17, align 8
  %90 = getelementptr i8, ptr %89, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %88) #9, !srcloc !9
  %91 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 9
  %92 = load i16, ptr %91, align 4
  %93 = zext i16 %92 to i32
  %94 = and i32 %93, 255
  %95 = load ptr, ptr %17, align 8
  %96 = getelementptr i8, ptr %95, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 %94) #9, !srcloc !9
  %97 = lshr i32 %93, 8
  %98 = load ptr, ptr %17, align 8
  %99 = getelementptr i8, ptr %98, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 %97) #9, !srcloc !9
  %100 = load i16, ptr %91, align 4
  %101 = zext i16 %100 to i32
  %102 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 6
  %103 = load i16, ptr %102, align 2
  %104 = zext i16 %103 to i32
  %105 = sub nsw i32 %101, %104
  %106 = and i32 %105, 255
  %107 = load ptr, ptr %17, align 8
  %108 = getelementptr i8, ptr %107, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %108, i32 %106) #9, !srcloc !9
  %109 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 7
  %110 = load i16, ptr %109, align 4
  %111 = zext i16 %110 to i32
  %112 = load i16, ptr %102, align 2
  %113 = zext i16 %112 to i32
  %114 = sub nsw i32 %111, %113
  %115 = and i32 %114, 255
  %116 = load ptr, ptr %17, align 8
  %117 = getelementptr i8, ptr %116, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 %115) #9, !srcloc !9
  %118 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 8
  %119 = load i16, ptr %118, align 2
  %120 = zext i16 %119 to i32
  %121 = load i16, ptr %109, align 4
  %122 = zext i16 %121 to i32
  %123 = sub nsw i32 %120, %122
  %124 = and i32 %123, 255
  %125 = load ptr, ptr %17, align 8
  %126 = getelementptr i8, ptr %125, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %126, i32 %124) #9, !srcloc !9
  %127 = load ptr, ptr %17, align 8
  %128 = getelementptr i8, ptr %127, i32 948
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 30) #9, !srcloc !9
  %129 = load ptr, ptr %17, align 8
  %130 = getelementptr i8, ptr %129, i32 924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 44) #9, !srcloc !9
  %131 = load ptr, ptr %17, align 8
  %132 = getelementptr i8, ptr %131, i32 928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %132, i32 1) #9, !srcloc !9
  %133 = load ptr, ptr %17, align 8
  %134 = getelementptr i8, ptr %133, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %134, i32 1) #9, !srcloc !9
  %135 = load ptr, ptr %17, align 8
  %136 = getelementptr i8, ptr %135, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %136, i32 48) #9, !srcloc !9
  %137 = load i32, ptr %11, align 4
  %138 = load i32, ptr %12, align 4
  %139 = icmp ne i32 %137, %138
  %140 = icmp eq i32 %137, 1
  %141 = or i1 %140, %139
  br i1 %141, label %152, label %142

142:                                              ; preds = %14
  %143 = load ptr, ptr %17, align 8
  %144 = getelementptr i8, ptr %143, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %144, i32 24) #9, !srcloc !9
  %145 = load ptr, ptr %17, align 8
  %146 = getelementptr i8, ptr %145, i32 12
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %146) #9, !srcloc !8
  %148 = and i32 %147, 126
  %149 = or i32 %148, 1
  %150 = load ptr, ptr %17, align 8
  %151 = getelementptr i8, ptr %150, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %151, i32 %149) #9, !srcloc !9
  br label %197

152:                                              ; preds = %14
  %153 = load i32, ptr %16, align 4
  %154 = icmp eq i32 %153, 1
  br i1 %154, label %155, label %163

155:                                              ; preds = %152
  switch i32 %137, label %170 [
    i32 0, label %156
    i32 2, label %159
  ]

156:                                              ; preds = %155
  %157 = icmp eq i32 %138, 2
  br i1 %157, label %170, label %158

158:                                              ; preds = %156
  br label %170

159:                                              ; preds = %155
  %160 = icmp eq i32 %138, 0
  %161 = zext i1 %160 to i32
  %162 = select i1 %160, i32 128, i32 0
  br label %170

163:                                              ; preds = %152
  switch i32 %137, label %170 [
    i32 0, label %164
    i32 2, label %167
  ]

164:                                              ; preds = %163
  %165 = icmp eq i32 %138, 2
  br i1 %165, label %170, label %166

166:                                              ; preds = %164
  br label %170

167:                                              ; preds = %163
  %168 = icmp eq i32 %138, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %167
  br label %170

170:                                              ; preds = %169, %167, %166, %164, %163, %159, %158, %156, %155
  %171 = phi i32 [ 1, %169 ], [ 0, %167 ], [ 1, %156 ], [ %161, %159 ], [ 1, %164 ], [ 0, %158 ], [ 0, %166 ], [ 0, %155 ], [ 0, %163 ]
  %172 = phi i32 [ 24, %169 ], [ 24, %167 ], [ 25, %156 ], [ 24, %159 ], [ 25, %164 ], [ 24, %158 ], [ 24, %166 ], [ 24, %155 ], [ 24, %163 ]
  %173 = phi i32 [ 2, %169 ], [ 0, %167 ], [ 3, %156 ], [ 0, %159 ], [ 4, %164 ], [ 0, %158 ], [ 0, %166 ], [ 0, %155 ], [ 0, %163 ]
  %174 = phi i32 [ 128, %169 ], [ 0, %167 ], [ 0, %156 ], [ %162, %159 ], [ 0, %164 ], [ 0, %158 ], [ 0, %166 ], [ 0, %155 ], [ 0, %163 ]
  br label %175

175:                                              ; preds = %175, %170
  %176 = phi i32 [ 0, %170 ], [ %184, %175 ]
  %177 = getelementptr [6 x [24 x i8]], ptr @coeff_csc, i32 0, i32 %173, i32 %176
  %178 = load i8, ptr %177, align 1
  %179 = zext i8 %178 to i32
  %180 = load ptr, ptr %17, align 8
  %181 = shl i32 %176, 2
  %182 = add nuw nsw i32 %181, 96
  %183 = getelementptr i8, ptr %180, i32 %182
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %183, i32 %179) #9, !srcloc !9
  %184 = add nuw nsw i32 %176, 1
  %185 = icmp eq i32 %184, 24
  br i1 %185, label %186, label %175

186:                                              ; preds = %175
  %187 = load ptr, ptr %17, align 8
  %188 = getelementptr i8, ptr %187, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %188, i32 %172) #9, !srcloc !9
  %189 = or i32 %174, %171
  %190 = load ptr, ptr %17, align 8
  %191 = getelementptr i8, ptr %190, i32 12
  %192 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %191) #9, !srcloc !8
  %193 = and i32 %192, 126
  %194 = or i32 %189, %193
  %195 = load ptr, ptr %17, align 8
  %196 = getelementptr i8, ptr %195, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %196, i32 %194) #9, !srcloc !9
  br label %197

197:                                              ; preds = %186, %142
  %198 = load i8, ptr %25, align 4, !range !10
  %199 = icmp eq i8 %198, 0
  br i1 %199, label %266, label %200

200:                                              ; preds = %197
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %7) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %7, i8 0, i32 68, i1 false) #9, !annotation !11
  %201 = getelementptr i8, ptr %0, i32 -968
  %202 = call i32 @drm_hdmi_avi_infoframe_from_display_mode(ptr noundef nonnull %7, ptr noundef %201, ptr noundef %2) #9
  %203 = load i32, ptr %12, align 4
  %204 = icmp eq i32 %203, 1
  %205 = zext i1 %204 to i32
  %206 = icmp eq i32 %203, 2
  %207 = select i1 %206, i32 2, i32 %205
  %208 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %7, i32 0, i32 3
  store i32 %207, ptr %208, align 4
  %209 = load ptr, ptr %17, align 8
  %210 = getelementptr i8, ptr %209, i32 636
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %210, i32 6) #9, !srcloc !9
  %211 = icmp sgt i32 %202, -1
  br i1 %211, label %212, label %228

212:                                              ; preds = %200
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(17) %6, i8 0, i32 17, i1 false) #9, !annotation !11
  %213 = call i32 @hdmi_infoframe_pack(ptr noundef nonnull %7, ptr noundef nonnull %6, i32 noundef 17) #9
  %214 = icmp slt i32 %213, 1
  br i1 %214, label %227, label %215

215:                                              ; preds = %215, %212
  %216 = phi i32 [ %225, %215 ], [ 0, %212 ]
  %217 = getelementptr [17 x i8], ptr %6, i32 0, i32 %216
  %218 = load i8, ptr %217, align 1
  %219 = zext i8 %218 to i32
  %220 = load ptr, ptr %17, align 8
  %221 = shl i32 %216, 2
  %222 = add i32 %221, 640
  %223 = and i32 %222, 262140
  %224 = getelementptr i8, ptr %220, i32 %223
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %224, i32 %219) #9, !srcloc !9
  %225 = add nuw nsw i32 %216, 1
  %226 = icmp eq i32 %225, %213
  br i1 %226, label %227, label %215

227:                                              ; preds = %215, %212
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %6) #9
  br label %228

228:                                              ; preds = %227, %200
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %5, i8 0, i32 68, i1 false) #9, !annotation !11
  %229 = call i32 @drm_hdmi_vendor_infoframe_from_display_mode(ptr noundef nonnull %5, ptr noundef %201, ptr noundef %2) #9
  %230 = load ptr, ptr %17, align 8
  %231 = getelementptr i8, ptr %230, i32 628
  %232 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %231) #9, !srcloc !8
  %233 = and i32 %232, 239
  %234 = load ptr, ptr %17, align 8
  %235 = getelementptr i8, ptr %234, i32 628
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %235, i32 %233) #9, !srcloc !9
  %236 = load ptr, ptr %17, align 8
  %237 = getelementptr i8, ptr %236, i32 636
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %237, i32 5) #9, !srcloc !9
  %238 = icmp sgt i32 %229, -1
  br i1 %238, label %239, label %265

239:                                              ; preds = %228
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(17) %4, i8 0, i32 17, i1 false) #9, !annotation !11
  %240 = call i32 @hdmi_infoframe_pack(ptr noundef nonnull %5, ptr noundef nonnull %4, i32 noundef 17) #9
  %241 = icmp slt i32 %240, 0
  br i1 %241, label %264, label %242

242:                                              ; preds = %239
  %243 = icmp eq i32 %240, 0
  br i1 %243, label %256, label %244

244:                                              ; preds = %244, %242
  %245 = phi i32 [ %254, %244 ], [ 0, %242 ]
  %246 = getelementptr [17 x i8], ptr %4, i32 0, i32 %245
  %247 = load i8, ptr %246, align 1
  %248 = zext i8 %247 to i32
  %249 = load ptr, ptr %17, align 8
  %250 = shl i32 %245, 2
  %251 = add i32 %250, 640
  %252 = and i32 %251, 262140
  %253 = getelementptr i8, ptr %249, i32 %252
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %253, i32 %248) #9, !srcloc !9
  %254 = add nuw nsw i32 %245, 1
  %255 = icmp eq i32 %254, %240
  br i1 %255, label %256, label %244

256:                                              ; preds = %244, %242
  %257 = load ptr, ptr %17, align 8
  %258 = getelementptr i8, ptr %257, i32 628
  %259 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %258) #9, !srcloc !8
  %260 = and i32 %259, 239
  %261 = or i32 %260, 16
  %262 = load ptr, ptr %17, align 8
  %263 = getelementptr i8, ptr %262, i32 628
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %263, i32 %261) #9, !srcloc !9
  br label %264

264:                                              ; preds = %256, %239
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %4) #9
  br label %265

265:                                              ; preds = %264, %228
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %5) #9
  br label %266

266:                                              ; preds = %265, %197
  %267 = load i32, ptr %2, align 4
  %268 = mul i32 %267, 1000
  %269 = getelementptr i8, ptr %0, i32 80
  store i32 %268, ptr %269, align 8
  %270 = udiv i32 %268, 400000
  %271 = and i32 %270, 255
  %272 = load ptr, ptr %17, align 8
  %273 = getelementptr i8, ptr %272, i32 300
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %273, i32 %271) #9, !srcloc !9
  %274 = lshr i32 %270, 8
  %275 = load ptr, ptr %17, align 8
  %276 = getelementptr i8, ptr %275, i32 304
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %276, i32 %274) #9, !srcloc !9
  %277 = load ptr, ptr %17, align 8
  %278 = getelementptr i8, ptr %277, i32 768
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %278, i32 0) #9, !srcloc !9
  %279 = load ptr, ptr %17, align 8
  %280 = getelementptr i8, ptr %279, i32 772
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %280, i32 4) #9, !srcloc !9
  %281 = load ptr, ptr %17, align 8
  %282 = getelementptr i8, ptr %281, i32 20
  %283 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %282) #9, !srcloc !8
  %284 = and i32 %283, 252
  %285 = load ptr, ptr %17, align 8
  %286 = getelementptr i8, ptr %285, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %286, i32 %284) #9, !srcloc !9
  %287 = getelementptr i8, ptr %0, i32 104
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(112) %287, ptr noundef align 4 dereferenceable(112) %2, i32 112, i1 false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @inno_hdmi_encoder_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -976
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #9
  %5 = and i32 %4, 253
  %6 = or i32 %5, 2
  %7 = load ptr, ptr %2, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %6) #9, !srcloc !9
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr i8, ptr %8, i32 904
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #9, !srcloc !9
  %10 = load ptr, ptr %2, align 8
  %11 = getelementptr i8, ptr %10, i32 908
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 0) #9, !srcloc !9
  %12 = load ptr, ptr %2, align 8
  %13 = getelementptr i8, ptr %12, i32 900
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 0) #9, !srcloc !9
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr i8, ptr %14, i32 896
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 21) #9, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @inno_hdmi_encoder_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -976
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #9
  %5 = and i32 %4, 253
  %6 = or i32 %5, 2
  %7 = load ptr, ptr %2, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %6) #9, !srcloc !9
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr i8, ptr %8, i32 908
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 111) #9, !srcloc !9
  %10 = load ptr, ptr %2, align 8
  %11 = getelementptr i8, ptr %10, i32 904
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 187) #9, !srcloc !9
  %12 = load ptr, ptr %2, align 8
  %13 = getelementptr i8, ptr %12, i32 896
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 21) #9, !srcloc !9
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr i8, ptr %14, i32 896
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 20) #9, !srcloc !9
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr i8, ptr %16, i32 896
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 16) #9, !srcloc !9
  %18 = load ptr, ptr %2, align 8
  %19 = getelementptr i8, ptr %18, i32 900
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 15) #9, !srcloc !9
  %20 = load ptr, ptr %2, align 8
  %21 = getelementptr i8, ptr %20, i32 824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 0) #9, !srcloc !9
  %22 = load ptr, ptr %2, align 8
  %23 = getelementptr i8, ptr %22, i32 824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 1) #9, !srcloc !9
  %24 = load ptr, ptr %2, align 8
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #9
  %26 = and i32 %25, 253
  %27 = load ptr, ptr %2, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %26) #9, !srcloc !9
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @inno_hdmi_encoder_atomic_check(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readnone %2) #6 {
  %4 = getelementptr inbounds %struct.rockchip_crtc_state, ptr %1, i32 0, i32 2
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.rockchip_crtc_state, ptr %1, i32 0, i32 1
  store i32 11, ptr %5, align 4
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @drm_match_cea_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_hdmi_avi_infoframe_from_display_mode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_infoframe_pack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_hdmi_vendor_infoframe_from_display_mode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @inno_hdmi_connector_get_modes(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 1044
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @drm_get_edid(ptr noundef %0, ptr noundef nonnull %3) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %5
  %9 = tail call zeroext i1 @drm_detect_hdmi_monitor(ptr noundef nonnull %6) #9
  %10 = getelementptr i8, ptr %0, i32 1056
  %11 = zext i1 %9 to i8
  store i8 %11, ptr %10, align 4
  %12 = tail call zeroext i1 @drm_detect_monitor_audio(ptr noundef nonnull %6) #9
  %13 = getelementptr i8, ptr %0, i32 1057
  %14 = zext i1 %12 to i8
  store i8 %14, ptr %13, align 1
  %15 = tail call i32 @drm_connector_update_edid_property(ptr noundef %0, ptr noundef nonnull %6) #9
  %16 = tail call i32 @drm_add_edid_modes(ptr noundef %0, ptr noundef nonnull %6) #9
  tail call void @kfree(ptr noundef nonnull %6) #9
  br label %17

17:                                               ; preds = %8, %5, %1
  %18 = phi i32 [ 0, %1 ], [ %16, %8 ], [ 0, %5 ]
  ret i32 %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @inno_hdmi_connector_mode_valid(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #5 {
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_edid(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_detect_hdmi_monitor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_detect_monitor_audio(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_update_edid_property(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_edid_modes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @inno_hdmi_connector_detect(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 800
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !8
  %7 = and i32 %6, 128
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, i32 2, i32 1
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @inno_hdmi_probe_single_connector_modes(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call i32 @drm_helper_probe_single_connector_modes(ptr noundef %0, i32 noundef 1920, i32 noundef 1080) #9
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @inno_hdmi_connector_destroy(ptr noundef %0) #0 {
  tail call void @drm_connector_unregister(ptr noundef %0) #9
  tail call void @drm_connector_cleanup(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_helper_hpd_irq_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
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
!8 = !{i64 2480672}
!9 = !{i64 2480254}
!10 = !{i8 0, i8 2}
!11 = !{!"auto-init"}
