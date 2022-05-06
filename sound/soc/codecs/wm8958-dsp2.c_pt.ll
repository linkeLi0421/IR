; ModuleID = '/llk/IR/sound/soc/codecs/wm8958-dsp2.c_pt.bc'
source_filename = "../sound/soc/codecs/wm8958-dsp2.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.81, i32 }
%union.anon.81 = type { ptr }
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
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.89, ptr }
%union.anon.89 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
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
%struct.wm8994 = type { %struct.wm8994_pdata, i32, i32, i32, ptr, ptr, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr }
%struct.wm8994_pdata = type { i32, [11 x i32], [2 x %struct.wm8994_ldo_pdata], i32, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, i8, i32, i32, i32, i8, [2 x i32], i16, i8, i8, i8, [3 x i32], i32 }
%struct.wm8994_ldo_pdata = type { ptr }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.wm8994_priv = type { %struct.wm_hubs_data, ptr, [2 x %struct.clk_bulk_data], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x %struct.wm8994_fll_config], [2 x %struct.wm8994_fll_config], [2 x %struct.completion], i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], ptr, [3 x i32], %struct.soc_enum, i32, ptr, [3 x i32], %struct.soc_enum, i32, ptr, %struct.soc_enum, i32, ptr, %struct.soc_enum, i32, ptr, %struct.soc_enum, i32, ptr, %struct.soc_enum, %struct.mutex, [2 x %struct.wm8994_micdet], %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, i16, i8, i8, i32, i8, i32, %struct.delayed_work, i32, ptr, ptr, ptr, ptr, i8, %struct.mutex, i32, ptr, ptr, ptr, ptr }
%struct.wm_hubs_data = type { i32, i32, i32, i32, i32, i32, i8, i8, %struct.list_head, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, %struct.completion, ptr }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.wm8994_fll_config = type { i32, i32, i32 }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8 }
%struct.wm8994_micdet = type { ptr, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.wm8958_enh_eq_cfg = type { ptr, [32 x i16] }
%struct.wm8958_mbc_cfg = type { ptr, [20 x i16], [48 x i16], [56 x i16] }
%struct.wm8958_vss_cfg = type { ptr, [148 x i16] }
%struct.wm8958_vss_hpf_cfg = type { ptr, [2 x i16] }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.71, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.71 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.66, [128 x i8] }
%union.anon.66 = type { %union.anon.68 }
%union.anon.68 = type { [64 x i64] }
%struct.firmware = type { i32, ptr, ptr }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.77, [64 x i8] }
%union.anon.77 = type { %struct.anon.80, [40 x i8] }
%struct.anon.80 = type { i32, i32, [64 x i8], i64, i32 }

@wm8958_mbc_snd_controls = internal constant [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.30, i32 0, i32 3, i32 0, ptr @wm8958_mbc_info, ptr @wm8958_mbc_get, ptr @wm8958_mbc_put, %union.anon.81 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.31, i32 0, i32 3, i32 0, ptr @wm8958_mbc_info, ptr @wm8958_mbc_get, ptr @wm8958_mbc_put, %union.anon.81 zeroinitializer, i32 1 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.32, i32 0, i32 3, i32 0, ptr @wm8958_mbc_info, ptr @wm8958_mbc_get, ptr @wm8958_mbc_put, %union.anon.81 zeroinitializer, i32 2 }], align 4
@wm8958_vss_snd_controls = internal constant [9 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.33, i32 0, i32 3, i32 0, ptr @wm8958_vss_info, ptr @wm8958_vss_get, ptr @wm8958_vss_put, %union.anon.81 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.34, i32 0, i32 3, i32 0, ptr @wm8958_vss_info, ptr @wm8958_vss_get, ptr @wm8958_vss_put, %union.anon.81 zeroinitializer, i32 1 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.35, i32 0, i32 3, i32 0, ptr @wm8958_vss_info, ptr @wm8958_vss_get, ptr @wm8958_vss_put, %union.anon.81 zeroinitializer, i32 2 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.36, i32 0, i32 3, i32 0, ptr @wm8958_hpf_info, ptr @wm8958_hpf_get, ptr @wm8958_hpf_put, %union.anon.81 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 3, i32 0, ptr @wm8958_hpf_info, ptr @wm8958_hpf_get, ptr @wm8958_hpf_put, %union.anon.81 zeroinitializer, i32 1 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.38, i32 0, i32 3, i32 0, ptr @wm8958_hpf_info, ptr @wm8958_hpf_get, ptr @wm8958_hpf_put, %union.anon.81 zeroinitializer, i32 2 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.39, i32 0, i32 3, i32 0, ptr @wm8958_hpf_info, ptr @wm8958_hpf_get, ptr @wm8958_hpf_put, %union.anon.81 zeroinitializer, i32 3 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.40, i32 0, i32 3, i32 0, ptr @wm8958_hpf_info, ptr @wm8958_hpf_get, ptr @wm8958_hpf_put, %union.anon.81 zeroinitializer, i32 4 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.41, i32 0, i32 3, i32 0, ptr @wm8958_hpf_info, ptr @wm8958_hpf_get, ptr @wm8958_hpf_put, %union.anon.81 zeroinitializer, i32 5 }], align 4
@wm8958_enh_eq_snd_controls = internal constant [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.42, i32 0, i32 3, i32 0, ptr @wm8958_enh_eq_info, ptr @wm8958_enh_eq_get, ptr @wm8958_enh_eq_put, %union.anon.81 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.43, i32 0, i32 3, i32 0, ptr @wm8958_enh_eq_info, ptr @wm8958_enh_eq_get, ptr @wm8958_enh_eq_put, %union.anon.81 zeroinitializer, i32 1 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.44, i32 0, i32 3, i32 0, ptr @wm8958_enh_eq_info, ptr @wm8958_enh_eq_get, ptr @wm8958_enh_eq_put, %union.anon.81 zeroinitializer, i32 2 }], align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [15 x i8] c"wm8958_mbc.wfw\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"wm8958_mbc_vss.wfw\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"wm8958_enh_eq.wfw\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"MBC Mode\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Failed to add MBC mode controls: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"VSS Mode\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Failed to add VSS mode controls: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"VSS HPF Mode\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"Failed to add VSS HPFmode controls: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"Enhanced EQ Mode\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"Failed to add enhanced EQ controls: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"sound/soc/codecs/wm8958-dsp2.c\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"Invalid path %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"ENH_EQ\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"%s: firmware too short (%zd bytes)\0A\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"WMFW\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"%s: firmware has bad file magic %08x\0A\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"%s: unsupported firmware version %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"%s: unsupported target device %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"%s: unsupported target core %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"%s timestamp %llx\0A\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"%s short data block of %zd\0A\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"%zd byte block longer than file\0A\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"Zero length block\0A\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"%s: unknown block type %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"%s: got firmware\0A\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"MBC+VSS\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"MBC\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"AIF1DAC1 MBC Switch\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"AIF1DAC2 MBC Switch\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"AIF2DAC MBC Switch\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"AIF1DAC1 VSS Switch\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"AIF1DAC2 VSS Switch\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"AIF2DAC VSS Switch\00", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c"AIF1DAC1 HPF1 Switch\00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c"AIF1DAC2 HPF1 Switch\00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"AIF2DAC HPF1 Switch\00", align 1
@.str.39 = private unnamed_addr constant [21 x i8] c"AIF1DAC1 HPF2 Switch\00", align 1
@.str.40 = private unnamed_addr constant [21 x i8] c"AIF1DAC2 HPF2 Switch\00", align 1
@.str.41 = private unnamed_addr constant [20 x i8] c"AIF2DAC HPF2 Switch\00", align 1
@.str.42 = private unnamed_addr constant [28 x i8] c"AIF1DAC1 Enhanced EQ Switch\00", align 1
@.str.43 = private unnamed_addr constant [28 x i8] c"AIF1DAC2 Enhanced EQ Switch\00", align 1
@.str.44 = private unnamed_addr constant [27 x i8] c"AIF2DAC Enhanced EQ Switch\00", align 1
@switch.table.wm8958_aif_ev = private unnamed_addr constant [8 x i32] [i32 1, i32 1, i32 1, i32 0, i32 1, i32 1, i32 1, i32 0], align 4
@switch.table.wm8958_dsp_apply = private unnamed_addr constant [3 x i32] [i32 768, i32 3072, i32 12288], align 4
@switch.table.wm8958_dsp_apply.45 = private unnamed_addr constant [3 x i32] [i32 16384, i32 16384, i32 20480], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @wm8958_aif_ev(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -104
  %7 = getelementptr i8, ptr %5, i32 -92
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 8
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.wm8994, ptr %12, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %27

16:                                               ; preds = %3
  %17 = add i32 %2, -1
  %18 = icmp ult i32 %17, 8
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = trunc i32 %17 to i8
  %21 = lshr i8 -117, %20
  %22 = and i8 %21, 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds [8 x i32], ptr @switch.table.wm8958_aif_ev, i32 0, i32 %17
  %26 = load i32, ptr %25, align 4
  tail call fastcc void @wm8958_dsp_apply(ptr noundef %6, i32 noundef 0, i32 noundef %26)
  tail call fastcc void @wm8958_dsp_apply(ptr noundef %6, i32 noundef 1, i32 noundef %26)
  tail call fastcc void @wm8958_dsp_apply(ptr noundef %6, i32 noundef 2, i32 noundef %26)
  br label %27

27:                                               ; preds = %24, %19, %16, %3
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @wm8958_dsp_apply(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 5) #10
  %9 = icmp ult i32 %1, 3
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 344, i32 noundef 9, ptr noundef nonnull @.str.12, i32 noundef %1) #10
  br label %212

11:                                               ; preds = %3
  %12 = getelementptr inbounds [3 x i32], ptr @switch.table.wm8958_dsp_apply, i32 0, i32 %1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds [3 x i32], ptr @switch.table.wm8958_dsp_apply.45, i32 0, i32 %1
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %8, %13
  %17 = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 20, i32 %1
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %11
  %21 = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 23, i32 %1
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %20
  %25 = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 21, i32 %1
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 22, i32 %1
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 24, i32 %1
  %34 = load i32, ptr %33, align 4
  %35 = icmp ne i32 %34, 0
  br label %36

36:                                               ; preds = %32, %28, %24, %20, %11
  %37 = phi i1 [ true, %28 ], [ true, %24 ], [ true, %20 ], [ true, %11 ], [ %35, %32 ]
  %38 = icmp ne i32 %16, 0
  %39 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 2304) #10
  %40 = icmp ne i32 %2, 0
  %41 = select i1 %40, i1 %38, i1 false
  %42 = select i1 %41, i1 %37, i1 false
  br i1 %42, label %43, label %199

43:                                               ; preds = %36
  %44 = and i32 %39, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %212

46:                                               ; preds = %43
  %47 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 512) #10
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 516) #10
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %212, label %54

54:                                               ; preds = %50, %46
  %55 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 520, i32 noundef 20480, i32 noundef %15) #10
  %56 = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 24, i32 %1
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %91, label %59

59:                                               ; preds = %54
  %60 = load ptr, ptr %4, align 4
  %61 = getelementptr inbounds %struct.device, ptr %60, i32 0, i32 8
  %62 = load ptr, ptr %61, align 8
  %63 = getelementptr inbounds %struct.wm8994_priv, ptr %62, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.wm8994_priv, ptr %62, i32 0, i32 67
  %66 = load ptr, ptr %65, align 4
  %67 = tail call fastcc i32 @wm8958_dsp2_fw(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef %66, i1 noundef zeroext false) #10
  %68 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 2304, i32 noundef 1, i32 noundef 1) #10
  %69 = getelementptr inbounds %struct.wm8994_pdata, ptr %64, i32 0, i32 15
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %86, label %72

72:                                               ; preds = %59
  %73 = getelementptr inbounds %struct.wm8994_pdata, ptr %64, i32 0, i32 16
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.wm8994_priv, ptr %62, i32 0, i32 41
  %76 = load i32, ptr %75, align 4
  br label %77

77:                                               ; preds = %77, %72
  %78 = phi i32 [ 0, %72 ], [ %84, %77 ]
  %79 = add nuw nsw i32 %78, 8704
  %80 = getelementptr %struct.wm8958_enh_eq_cfg, ptr %74, i32 %76, i32 1, i32 %78
  %81 = load i16, ptr %80, align 2
  %82 = zext i16 %81 to i32
  %83 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef %79, i32 noundef %82) #10
  %84 = add nuw nsw i32 %78, 1
  %85 = icmp eq i32 %84, 32
  br i1 %85, label %86, label %77

86:                                               ; preds = %77, %59
  %87 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 2573, i32 noundef 2) #10
  %88 = shl i32 %1, 4
  %89 = or i32 %88, 1
  %90 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 2305, i32 noundef 49, i32 noundef %89) #10
  br label %197

91:                                               ; preds = %54
  %92 = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 23, i32 %1
  %93 = load i32, ptr %92, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %91
  %96 = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 21, i32 %1
  %97 = load i32, ptr %96, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 22, i32 %1
  %101 = load i32, ptr %100, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %193, label %103

103:                                              ; preds = %99, %95, %91
  %104 = load ptr, ptr %4, align 4
  %105 = getelementptr inbounds %struct.device, ptr %104, i32 0, i32 8
  %106 = load ptr, ptr %105, align 8
  %107 = getelementptr inbounds %struct.wm8994_priv, ptr %106, i32 0, i32 1
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr inbounds %struct.wm8994_priv, ptr %106, i32 0, i32 66
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %114, label %112

112:                                              ; preds = %103
  %113 = tail call fastcc i32 @wm8958_dsp2_fw(ptr noundef %0, ptr noundef nonnull @.str.28, ptr noundef nonnull %110, i1 noundef zeroext false) #10
  br label %114

114:                                              ; preds = %112, %103
  %115 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 2304, i32 noundef 1, i32 noundef 1) #10
  %116 = getelementptr inbounds %struct.wm8994_pdata, ptr %108, i32 0, i32 9
  %117 = load i32, ptr %116, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %133, label %119

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.wm8994_pdata, ptr %108, i32 0, i32 10
  %121 = load ptr, ptr %120, align 4
  %122 = getelementptr inbounds %struct.wm8994_priv, ptr %106, i32 0, i32 32
  %123 = load i32, ptr %122, align 4
  br label %124

124:                                              ; preds = %124, %119
  %125 = phi i32 [ 0, %119 ], [ %131, %124 ]
  %126 = add nuw nsw i32 %125, 10240
  %127 = getelementptr %struct.wm8958_mbc_cfg, ptr %121, i32 %123, i32 3, i32 %125
  %128 = load i16, ptr %127, align 2
  %129 = zext i16 %128 to i32
  %130 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef %126, i32 noundef %129) #10
  %131 = add nuw nsw i32 %125, 1
  %132 = icmp eq i32 %131, 56
  br i1 %132, label %133, label %124

133:                                              ; preds = %124, %114
  %134 = getelementptr inbounds %struct.wm8994_pdata, ptr %108, i32 0, i32 11
  %135 = load i32, ptr %134, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %151, label %137

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.wm8994_pdata, ptr %108, i32 0, i32 12
  %139 = load ptr, ptr %138, align 4
  %140 = getelementptr inbounds %struct.wm8994_priv, ptr %106, i32 0, i32 35
  %141 = load i32, ptr %140, align 4
  br label %142

142:                                              ; preds = %142, %137
  %143 = phi i32 [ 0, %137 ], [ %149, %142 ]
  %144 = add nuw nsw i32 %143, 9728
  %145 = getelementptr %struct.wm8958_vss_cfg, ptr %139, i32 %141, i32 1, i32 %143
  %146 = load i16, ptr %145, align 2
  %147 = zext i16 %146 to i32
  %148 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef %144, i32 noundef %147) #10
  %149 = add nuw nsw i32 %143, 1
  %150 = icmp eq i32 %149, 148
  br i1 %150, label %151, label %142

151:                                              ; preds = %142, %133
  %152 = getelementptr inbounds %struct.wm8994_pdata, ptr %108, i32 0, i32 13
  %153 = load i32, ptr %152, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %168, label %155

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.wm8994_pdata, ptr %108, i32 0, i32 14
  %157 = load ptr, ptr %156, align 4
  %158 = getelementptr inbounds %struct.wm8994_priv, ptr %106, i32 0, i32 38
  %159 = load i32, ptr %158, align 4
  %160 = getelementptr %struct.wm8958_vss_hpf_cfg, ptr %157, i32 %159, i32 1, i32 0
  %161 = load i16, ptr %160, align 2
  %162 = zext i16 %161 to i32
  %163 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 9216, i32 noundef %162) #10
  %164 = getelementptr %struct.wm8958_vss_hpf_cfg, ptr %157, i32 %159, i32 1, i32 1
  %165 = load i16, ptr %164, align 2
  %166 = zext i16 %165 to i32
  %167 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 9217, i32 noundef %166) #10
  br label %168

168:                                              ; preds = %155, %151
  %169 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 2573, i32 noundef 2) #10
  %170 = getelementptr %struct.wm8994_priv, ptr %106, i32 0, i32 20, i32 %1
  %171 = load i32, ptr %170, align 4
  %172 = icmp eq i32 %171, 0
  %173 = select i1 %172, i32 0, i32 8
  %174 = getelementptr %struct.wm8994_priv, ptr %106, i32 0, i32 22, i32 %1
  %175 = load i32, ptr %174, align 4
  %176 = icmp eq i32 %175, 0
  %177 = or i32 %173, 4
  %178 = select i1 %176, i32 %173, i32 %177
  %179 = getelementptr %struct.wm8994_priv, ptr %106, i32 0, i32 21, i32 %1
  %180 = load i32, ptr %179, align 4
  %181 = icmp eq i32 %180, 0
  %182 = or i32 %178, 2
  %183 = select i1 %181, i32 %178, i32 %182
  %184 = getelementptr %struct.wm8994_priv, ptr %106, i32 0, i32 23, i32 %1
  %185 = load i32, ptr %184, align 4
  %186 = icmp ne i32 %185, 0
  %187 = zext i1 %186 to i32
  %188 = or i32 %183, %187
  %189 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 8705, i32 noundef %188) #10
  %190 = shl i32 %1, 4
  %191 = or i32 %190, 1
  %192 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 2305, i32 noundef 49, i32 noundef %191) #10
  br label %197

193:                                              ; preds = %99
  %194 = load i32, ptr %17, align 4
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %197, label %196

196:                                              ; preds = %193
  tail call fastcc void @wm8958_dsp_start_mbc(ptr noundef %0, i32 noundef %1)
  br label %197

197:                                              ; preds = %196, %193, %168, %86
  %198 = getelementptr inbounds %struct.wm8994_priv, ptr %7, i32 0, i32 63
  store i32 %1, ptr %198, align 4
  br label %199

199:                                              ; preds = %197, %36
  br i1 %40, label %212, label %200

200:                                              ; preds = %199
  %201 = getelementptr inbounds %struct.wm8994_priv, ptr %7, i32 0, i32 63
  %202 = load i32, ptr %201, align 4
  %203 = icmp ne i32 %202, %1
  %204 = and i32 %39, 1
  %205 = icmp eq i32 %204, 0
  %206 = select i1 %203, i1 true, i1 %205
  br i1 %206, label %212, label %207

207:                                              ; preds = %200
  %208 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 2305, i32 noundef 1, i32 noundef 0) #10
  %209 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 2573, i32 noundef 4) #10
  %210 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 2304, i32 noundef 1, i32 noundef 0) #10
  %211 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 520, i32 noundef 16384, i32 noundef 0) #10
  store i32 -1, ptr %201, align 4
  br label %212

212:                                              ; preds = %207, %200, %199, %50, %43, %10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @wm8958_dsp2_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [1 x %struct.snd_kcontrol_new], align 4
  %3 = alloca [1 x %struct.snd_kcontrol_new], align 4
  %4 = alloca [1 x %struct.snd_kcontrol_new], align 4
  %5 = alloca [1 x %struct.snd_kcontrol_new], align 4
  %6 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.wm8994_priv, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.wm8994_priv, ptr %9, i32 0, i32 63
  store i32 -1, ptr %12, align 4
  %13 = tail call i32 @snd_soc_add_component_controls(ptr noundef %0, ptr noundef nonnull @wm8958_mbc_snd_controls, i32 noundef 3) #10
  %14 = tail call i32 @snd_soc_add_component_controls(ptr noundef %0, ptr noundef nonnull @wm8958_vss_snd_controls, i32 noundef 9) #10
  %15 = tail call i32 @snd_soc_add_component_controls(ptr noundef %0, ptr noundef nonnull @wm8958_enh_eq_snd_controls, i32 noundef 3) #10
  %16 = load ptr, ptr %6, align 4
  %17 = tail call i32 @request_firmware_nowait(ptr noundef nonnull @__this_module, i1 noundef zeroext true, ptr noundef nonnull @.str, ptr noundef %16, i32 noundef 3264, ptr noundef %0, ptr noundef nonnull @wm8958_mbc_loaded) #10
  %18 = load ptr, ptr %6, align 4
  %19 = tail call i32 @request_firmware_nowait(ptr noundef nonnull @__this_module, i1 noundef zeroext true, ptr noundef nonnull @.str.1, ptr noundef %18, i32 noundef 3264, ptr noundef %0, ptr noundef nonnull @wm8958_mbc_vss_loaded) #10
  %20 = load ptr, ptr %6, align 4
  %21 = tail call i32 @request_firmware_nowait(ptr noundef nonnull @__this_module, i1 noundef zeroext true, ptr noundef nonnull @.str.2, ptr noundef %20, i32 noundef 3264, ptr noundef %0, ptr noundef nonnull @wm8958_enh_eq_loaded) #10
  %22 = getelementptr inbounds %struct.wm8994_pdata, ptr %11, i32 0, i32 9
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %84, label %25

25:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #10
  store i32 2, ptr %2, align 4
  %26 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 0, i32 1
  store i32 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 0, i32 2
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 0, i32 3
  store ptr @.str.3, ptr %28, align 4
  %29 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 0, i32 4
  store i32 0, ptr %29, align 4
  %30 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 0, i32 5
  store i32 0, ptr %30, align 4
  %31 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 0, i32 6
  store i32 0, ptr %31, align 4
  %32 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 0, i32 7
  store ptr @snd_soc_info_enum_double, ptr %32, align 4
  %33 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 0, i32 8
  store ptr @wm8958_get_mbc_enum, ptr %33, align 4
  %34 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 0, i32 9
  store ptr @wm8958_put_mbc_enum, ptr %34, align 4
  %35 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 0, i32 10
  store i32 0, ptr %35, align 4
  %36 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 0, i32 11
  %37 = getelementptr inbounds %struct.wm8994_priv, ptr %9, i32 0, i32 34
  %38 = ptrtoint ptr %37 to i32
  store i32 %38, ptr %36, align 4
  %39 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %23, i32 4) #10
  %40 = extractvalue { i32, i1 } %39, 1
  br i1 %40, label %41, label %43, !prof !8

41:                                               ; preds = %25
  %42 = getelementptr inbounds %struct.wm8994_priv, ptr %9, i32 0, i32 33
  store ptr null, ptr %42, align 4
  br label %273

43:                                               ; preds = %25
  %44 = extractvalue { i32, i1 } %39, 0
  %45 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %44, i32 noundef 3264) #11
  %46 = getelementptr inbounds %struct.wm8994_priv, ptr %9, i32 0, i32 33
  store ptr %45, ptr %46, align 4
  %47 = icmp eq ptr %45, null
  br i1 %47, label %273, label %48

48:                                               ; preds = %43
  %49 = load i32, ptr %22, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %70

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.wm8994_pdata, ptr %11, i32 0, i32 10
  %53 = load ptr, ptr %52, align 4
  %54 = load ptr, ptr %53, align 4
  store ptr %54, ptr %45, align 64
  %55 = load i32, ptr %22, align 4
  %56 = icmp sgt i32 %55, 1
  br i1 %56, label %57, label %67

57:                                               ; preds = %57, %51
  %58 = phi i32 [ %64, %57 ], [ 1, %51 ]
  %59 = load ptr, ptr %46, align 4
  %60 = load ptr, ptr %52, align 4
  %61 = getelementptr %struct.wm8958_mbc_cfg, ptr %60, i32 %58
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr ptr, ptr %59, i32 %58
  store ptr %62, ptr %63, align 4
  %64 = add nuw nsw i32 %58, 1
  %65 = load i32, ptr %22, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %57, label %67

67:                                               ; preds = %57, %51
  %68 = phi i32 [ %55, %51 ], [ %65, %57 ]
  %69 = load ptr, ptr %46, align 4
  br label %70

70:                                               ; preds = %67, %48
  %71 = phi ptr [ %45, %48 ], [ %69, %67 ]
  %72 = phi i32 [ %49, %48 ], [ %68, %67 ]
  %73 = getelementptr inbounds %struct.wm8994_priv, ptr %9, i32 0, i32 34, i32 3
  store i32 %72, ptr %73, align 4
  %74 = getelementptr inbounds %struct.wm8994_priv, ptr %9, i32 0, i32 34, i32 5
  store ptr %71, ptr %74, align 4
  %75 = getelementptr inbounds %struct.wm_hubs_data, ptr %9, i32 0, i32 20
  %76 = load ptr, ptr %75, align 4
  %77 = call i32 @snd_soc_add_component_controls(ptr noundef %76, ptr noundef nonnull %2, i32 noundef 1) #10
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %70
  %80 = load ptr, ptr %75, align 4
  %81 = getelementptr inbounds %struct.snd_soc_component, ptr %80, i32 0, i32 3
  %82 = load ptr, ptr %81, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %82, ptr noundef nonnull @.str.4, i32 noundef %77) #12
  br label %83

83:                                               ; preds = %79, %70
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #10
  br label %84

84:                                               ; preds = %83, %1
  %85 = getelementptr inbounds %struct.wm8994_pdata, ptr %11, i32 0, i32 11
  %86 = load i32, ptr %85, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %147, label %88

88:                                               ; preds = %84
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #10
  store i32 2, ptr %3, align 4
  %89 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 0, i32 1
  store i32 0, ptr %89, align 4
  %90 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 0, i32 2
  store i32 0, ptr %90, align 4
  %91 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 0, i32 3
  store ptr @.str.5, ptr %91, align 4
  %92 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 0, i32 4
  store i32 0, ptr %92, align 4
  %93 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 0, i32 5
  store i32 0, ptr %93, align 4
  %94 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 0, i32 6
  store i32 0, ptr %94, align 4
  %95 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 0, i32 7
  store ptr @snd_soc_info_enum_double, ptr %95, align 4
  %96 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 0, i32 8
  store ptr @wm8958_get_vss_enum, ptr %96, align 4
  %97 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 0, i32 9
  store ptr @wm8958_put_vss_enum, ptr %97, align 4
  %98 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 0, i32 10
  store i32 0, ptr %98, align 4
  %99 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 0, i32 11
  %100 = getelementptr inbounds %struct.wm8994_priv, ptr %9, i32 0, i32 37
  %101 = ptrtoint ptr %100 to i32
  store i32 %101, ptr %99, align 4
  %102 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %86, i32 4) #10
  %103 = extractvalue { i32, i1 } %102, 1
  br i1 %103, label %104, label %106, !prof !8

104:                                              ; preds = %88
  %105 = getelementptr inbounds %struct.wm8994_priv, ptr %9, i32 0, i32 36
  store ptr null, ptr %105, align 4
  br label %274

106:                                              ; preds = %88
  %107 = extractvalue { i32, i1 } %102, 0
  %108 = call noalias align 64 ptr @__kmalloc(i32 noundef %107, i32 noundef 3264) #11
  %109 = getelementptr inbounds %struct.wm8994_priv, ptr %9, i32 0, i32 36
  store ptr %108, ptr %109, align 4
  %110 = icmp eq ptr %108, null
  br i1 %110, label %274, label %111

111:                                              ; preds = %106
  %112 = load i32, ptr %85, align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %133

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.wm8994_pdata, ptr %11, i32 0, i32 12
  %116 = load ptr, ptr %115, align 4
  %117 = load ptr, ptr %116, align 4
  store ptr %117, ptr %108, align 64
  %118 = load i32, ptr %85, align 4
  %119 = icmp sgt i32 %118, 1
  br i1 %119, label %120, label %130

120:                                              ; preds = %120, %114
  %121 = phi i32 [ %127, %120 ], [ 1, %114 ]
  %122 = load ptr, ptr %109, align 4
  %123 = load ptr, ptr %115, align 4
  %124 = getelementptr %struct.wm8958_vss_cfg, ptr %123, i32 %121
  %125 = load ptr, ptr %124, align 4
  %126 = getelementptr ptr, ptr %122, i32 %121
  store ptr %125, ptr %126, align 4
  %127 = add nuw nsw i32 %121, 1
  %128 = load i32, ptr %85, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %120, label %130

130:                                              ; preds = %120, %114
  %131 = phi i32 [ %118, %114 ], [ %128, %120 ]
  %132 = load ptr, ptr %109, align 4
  br label %133

133:                                              ; preds = %130, %111
  %134 = phi ptr [ %108, %111 ], [ %132, %130 ]
  %135 = phi i32 [ %112, %111 ], [ %131, %130 ]
  %136 = getelementptr inbounds %struct.wm8994_priv, ptr %9, i32 0, i32 37, i32 3
  store i32 %135, ptr %136, align 4
  %137 = getelementptr inbounds %struct.wm8994_priv, ptr %9, i32 0, i32 37, i32 5
  store ptr %134, ptr %137, align 4
  %138 = getelementptr inbounds %struct.wm_hubs_data, ptr %9, i32 0, i32 20
  %139 = load ptr, ptr %138, align 4
  %140 = call i32 @snd_soc_add_component_controls(ptr noundef %139, ptr noundef nonnull %3, i32 noundef 1) #10
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %146, label %142

142:                                              ; preds = %133
  %143 = load ptr, ptr %138, align 4
  %144 = getelementptr inbounds %struct.snd_soc_component, ptr %143, i32 0, i32 3
  %145 = load ptr, ptr %144, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %145, ptr noundef nonnull @.str.6, i32 noundef %140) #12
  br label %146

146:                                              ; preds = %142, %133
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #10
  br label %147

147:                                              ; preds = %146, %84
  %148 = getelementptr inbounds %struct.wm8994_pdata, ptr %11, i32 0, i32 13
  %149 = load i32, ptr %148, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %210, label %151

151:                                              ; preds = %147
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #10
  store i32 2, ptr %4, align 4
  %152 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %4, i32 0, i32 1
  store i32 0, ptr %152, align 4
  %153 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %4, i32 0, i32 2
  store i32 0, ptr %153, align 4
  %154 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %4, i32 0, i32 3
  store ptr @.str.7, ptr %154, align 4
  %155 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %4, i32 0, i32 4
  store i32 0, ptr %155, align 4
  %156 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %4, i32 0, i32 5
  store i32 0, ptr %156, align 4
  %157 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %4, i32 0, i32 6
  store i32 0, ptr %157, align 4
  %158 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %4, i32 0, i32 7
  store ptr @snd_soc_info_enum_double, ptr %158, align 4
  %159 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %4, i32 0, i32 8
  store ptr @wm8958_get_vss_hpf_enum, ptr %159, align 4
  %160 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %4, i32 0, i32 9
  store ptr @wm8958_put_vss_hpf_enum, ptr %160, align 4
  %161 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %4, i32 0, i32 10
  store i32 0, ptr %161, align 4
  %162 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %4, i32 0, i32 11
  %163 = getelementptr inbounds %struct.wm8994_priv, ptr %9, i32 0, i32 40
  %164 = ptrtoint ptr %163 to i32
  store i32 %164, ptr %162, align 4
  %165 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %149, i32 4) #10
  %166 = extractvalue { i32, i1 } %165, 1
  br i1 %166, label %167, label %169, !prof !8

167:                                              ; preds = %151
  %168 = getelementptr inbounds %struct.wm8994_priv, ptr %9, i32 0, i32 39
  store ptr null, ptr %168, align 4
  br label %275

169:                                              ; preds = %151
  %170 = extractvalue { i32, i1 } %165, 0
  %171 = call noalias align 64 ptr @__kmalloc(i32 noundef %170, i32 noundef 3264) #11
  %172 = getelementptr inbounds %struct.wm8994_priv, ptr %9, i32 0, i32 39
  store ptr %171, ptr %172, align 4
  %173 = icmp eq ptr %171, null
  br i1 %173, label %275, label %174

174:                                              ; preds = %169
  %175 = load i32, ptr %148, align 4
  %176 = icmp sgt i32 %175, 0
  br i1 %176, label %177, label %196

177:                                              ; preds = %174
  %178 = getelementptr inbounds %struct.wm8994_pdata, ptr %11, i32 0, i32 14
  %179 = load ptr, ptr %178, align 4
  %180 = load ptr, ptr %179, align 4
  store ptr %180, ptr %171, align 64
  %181 = load i32, ptr %148, align 4
  %182 = icmp sgt i32 %181, 1
  br i1 %182, label %183, label %193

183:                                              ; preds = %183, %177
  %184 = phi i32 [ %190, %183 ], [ 1, %177 ]
  %185 = load ptr, ptr %172, align 4
  %186 = load ptr, ptr %178, align 4
  %187 = getelementptr %struct.wm8958_vss_hpf_cfg, ptr %186, i32 %184
  %188 = load ptr, ptr %187, align 4
  %189 = getelementptr ptr, ptr %185, i32 %184
  store ptr %188, ptr %189, align 4
  %190 = add nuw nsw i32 %184, 1
  %191 = load i32, ptr %148, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %183, label %193

193:                                              ; preds = %183, %177
  %194 = phi i32 [ %181, %177 ], [ %191, %183 ]
  %195 = load ptr, ptr %172, align 4
  br label %196

196:                                              ; preds = %193, %174
  %197 = phi ptr [ %171, %174 ], [ %195, %193 ]
  %198 = phi i32 [ %175, %174 ], [ %194, %193 ]
  %199 = getelementptr inbounds %struct.wm8994_priv, ptr %9, i32 0, i32 40, i32 3
  store i32 %198, ptr %199, align 4
  %200 = getelementptr inbounds %struct.wm8994_priv, ptr %9, i32 0, i32 40, i32 5
  store ptr %197, ptr %200, align 4
  %201 = getelementptr inbounds %struct.wm_hubs_data, ptr %9, i32 0, i32 20
  %202 = load ptr, ptr %201, align 4
  %203 = call i32 @snd_soc_add_component_controls(ptr noundef %202, ptr noundef nonnull %4, i32 noundef 1) #10
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %209, label %205

205:                                              ; preds = %196
  %206 = load ptr, ptr %201, align 4
  %207 = getelementptr inbounds %struct.snd_soc_component, ptr %206, i32 0, i32 3
  %208 = load ptr, ptr %207, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %208, ptr noundef nonnull @.str.8, i32 noundef %203) #12
  br label %209

209:                                              ; preds = %205, %196
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #10
  br label %210

210:                                              ; preds = %209, %147
  %211 = getelementptr inbounds %struct.wm8994_pdata, ptr %11, i32 0, i32 15
  %212 = load i32, ptr %211, align 4
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %277, label %214

214:                                              ; preds = %210
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #10
  store i32 2, ptr %5, align 4
  %215 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %5, i32 0, i32 1
  store i32 0, ptr %215, align 4
  %216 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %5, i32 0, i32 2
  store i32 0, ptr %216, align 4
  %217 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %5, i32 0, i32 3
  store ptr @.str.9, ptr %217, align 4
  %218 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %5, i32 0, i32 4
  store i32 0, ptr %218, align 4
  %219 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %5, i32 0, i32 5
  store i32 0, ptr %219, align 4
  %220 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %5, i32 0, i32 6
  store i32 0, ptr %220, align 4
  %221 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %5, i32 0, i32 7
  store ptr @snd_soc_info_enum_double, ptr %221, align 4
  %222 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %5, i32 0, i32 8
  store ptr @wm8958_get_enh_eq_enum, ptr %222, align 4
  %223 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %5, i32 0, i32 9
  store ptr @wm8958_put_enh_eq_enum, ptr %223, align 4
  %224 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %5, i32 0, i32 10
  store i32 0, ptr %224, align 4
  %225 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %5, i32 0, i32 11
  %226 = getelementptr inbounds %struct.wm8994_priv, ptr %9, i32 0, i32 43
  %227 = ptrtoint ptr %226 to i32
  store i32 %227, ptr %225, align 4
  %228 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %212, i32 4) #10
  %229 = extractvalue { i32, i1 } %228, 1
  br i1 %229, label %230, label %232, !prof !8

230:                                              ; preds = %214
  %231 = getelementptr inbounds %struct.wm8994_priv, ptr %9, i32 0, i32 42
  store ptr null, ptr %231, align 4
  br label %276

232:                                              ; preds = %214
  %233 = extractvalue { i32, i1 } %228, 0
  %234 = call noalias align 64 ptr @__kmalloc(i32 noundef %233, i32 noundef 3264) #11
  %235 = getelementptr inbounds %struct.wm8994_priv, ptr %9, i32 0, i32 42
  store ptr %234, ptr %235, align 4
  %236 = icmp eq ptr %234, null
  br i1 %236, label %276, label %237

237:                                              ; preds = %232
  %238 = load i32, ptr %211, align 4
  %239 = icmp sgt i32 %238, 0
  br i1 %239, label %240, label %259

240:                                              ; preds = %237
  %241 = getelementptr inbounds %struct.wm8994_pdata, ptr %11, i32 0, i32 16
  %242 = load ptr, ptr %241, align 4
  %243 = load ptr, ptr %242, align 4
  store ptr %243, ptr %234, align 64
  %244 = load i32, ptr %211, align 4
  %245 = icmp sgt i32 %244, 1
  br i1 %245, label %246, label %256

246:                                              ; preds = %246, %240
  %247 = phi i32 [ %253, %246 ], [ 1, %240 ]
  %248 = load ptr, ptr %235, align 4
  %249 = load ptr, ptr %241, align 4
  %250 = getelementptr %struct.wm8958_enh_eq_cfg, ptr %249, i32 %247
  %251 = load ptr, ptr %250, align 4
  %252 = getelementptr ptr, ptr %248, i32 %247
  store ptr %251, ptr %252, align 4
  %253 = add nuw nsw i32 %247, 1
  %254 = load i32, ptr %211, align 4
  %255 = icmp slt i32 %253, %254
  br i1 %255, label %246, label %256

256:                                              ; preds = %246, %240
  %257 = phi i32 [ %244, %240 ], [ %254, %246 ]
  %258 = load ptr, ptr %235, align 4
  br label %259

259:                                              ; preds = %256, %237
  %260 = phi ptr [ %234, %237 ], [ %258, %256 ]
  %261 = phi i32 [ %238, %237 ], [ %257, %256 ]
  %262 = getelementptr inbounds %struct.wm8994_priv, ptr %9, i32 0, i32 43, i32 3
  store i32 %261, ptr %262, align 4
  %263 = getelementptr inbounds %struct.wm8994_priv, ptr %9, i32 0, i32 43, i32 5
  store ptr %260, ptr %263, align 4
  %264 = getelementptr inbounds %struct.wm_hubs_data, ptr %9, i32 0, i32 20
  %265 = load ptr, ptr %264, align 4
  %266 = call i32 @snd_soc_add_component_controls(ptr noundef %265, ptr noundef nonnull %5, i32 noundef 1) #10
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %272, label %268

268:                                              ; preds = %259
  %269 = load ptr, ptr %264, align 4
  %270 = getelementptr inbounds %struct.snd_soc_component, ptr %269, i32 0, i32 3
  %271 = load ptr, ptr %270, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %271, ptr noundef nonnull @.str.10, i32 noundef %266) #12
  br label %272

272:                                              ; preds = %268, %259
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #10
  br label %277

273:                                              ; preds = %43, %41
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #10
  br label %277

274:                                              ; preds = %106, %104
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #10
  br label %277

275:                                              ; preds = %169, %167
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #10
  br label %277

276:                                              ; preds = %232, %230
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #10
  br label %277

277:                                              ; preds = %276, %275, %274, %273, %272, %210
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_add_component_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware_nowait(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @wm8958_mbc_loaded(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %0, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = tail call fastcc i32 @wm8958_dsp2_fw(ptr noundef %1, ptr noundef nonnull @.str.29, ptr noundef nonnull %0, i1 noundef zeroext true)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.wm8994_priv, ptr %6, i32 0, i32 62
  tail call void @mutex_lock(ptr noundef %12) #10
  %13 = getelementptr inbounds %struct.wm8994_priv, ptr %6, i32 0, i32 65
  store ptr %0, ptr %13, align 4
  tail call void @mutex_unlock(ptr noundef %12) #10
  br label %14

14:                                               ; preds = %11, %8, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @wm8958_mbc_vss_loaded(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %0, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = tail call fastcc i32 @wm8958_dsp2_fw(ptr noundef %1, ptr noundef nonnull @.str.28, ptr noundef nonnull %0, i1 noundef zeroext true)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.wm8994_priv, ptr %6, i32 0, i32 62
  tail call void @mutex_lock(ptr noundef %12) #10
  %13 = getelementptr inbounds %struct.wm8994_priv, ptr %6, i32 0, i32 66
  store ptr %0, ptr %13, align 4
  tail call void @mutex_unlock(ptr noundef %12) #10
  br label %14

14:                                               ; preds = %11, %8, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @wm8958_enh_eq_loaded(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %0, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = tail call fastcc i32 @wm8958_dsp2_fw(ptr noundef %1, ptr noundef nonnull @.str.13, ptr noundef nonnull %0, i1 noundef zeroext true)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.wm8994_priv, ptr %6, i32 0, i32 62
  tail call void @mutex_lock(ptr noundef %12) #10
  %13 = getelementptr inbounds %struct.wm8994_priv, ptr %6, i32 0, i32 67
  store ptr %0, ptr %13, align 4
  tail call void @mutex_unlock(ptr noundef %12) #10
  br label %14

14:                                               ; preds = %11, %8, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @wm8958_get_mbc_enum(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #3 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.wm8994_priv, ptr %8, i32 0, i32 32
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %10, ptr %11, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8958_put_mbc_enum(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.wm8994_priv, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = tail call i32 @snd_soc_component_read(ptr noundef %4, i32 noundef 520) #10
  %14 = and i32 %13, -2147467264
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.wm8994_pdata, ptr %10, i32 0, i32 9
  %18 = load i32, ptr %17, align 4
  %19 = icmp slt i32 %12, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.wm8994_priv, ptr %8, i32 0, i32 32
  store i32 %12, ptr %21, align 4
  br label %22

22:                                               ; preds = %20, %16, %2
  %23 = phi i32 [ 0, %20 ], [ -16, %2 ], [ -22, %16 ]
  ret i32 %23
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @wm8958_get_vss_enum(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #3 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.wm8994_priv, ptr %8, i32 0, i32 35
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %10, ptr %11, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8958_put_vss_enum(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.wm8994_priv, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = tail call i32 @snd_soc_component_read(ptr noundef %4, i32 noundef 520) #10
  %14 = and i32 %13, -2147467264
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.wm8994_pdata, ptr %10, i32 0, i32 11
  %18 = load i32, ptr %17, align 4
  %19 = icmp slt i32 %12, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.wm8994_priv, ptr %8, i32 0, i32 35
  store i32 %12, ptr %21, align 4
  br label %22

22:                                               ; preds = %20, %16, %2
  %23 = phi i32 [ 0, %20 ], [ -16, %2 ], [ -22, %16 ]
  ret i32 %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @wm8958_get_vss_hpf_enum(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #3 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.wm8994_priv, ptr %8, i32 0, i32 38
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %10, ptr %11, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8958_put_vss_hpf_enum(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.wm8994_priv, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = tail call i32 @snd_soc_component_read(ptr noundef %4, i32 noundef 520) #10
  %14 = and i32 %13, -2147467264
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.wm8994_pdata, ptr %10, i32 0, i32 13
  %18 = load i32, ptr %17, align 4
  %19 = icmp slt i32 %12, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.wm8994_priv, ptr %8, i32 0, i32 38
  store i32 %12, ptr %21, align 4
  br label %22

22:                                               ; preds = %20, %16, %2
  %23 = phi i32 [ 0, %20 ], [ -16, %2 ], [ -22, %16 ]
  ret i32 %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @wm8958_get_enh_eq_enum(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #3 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.wm8994_priv, ptr %8, i32 0, i32 41
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %10, ptr %11, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8958_put_enh_eq_enum(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.wm8994_priv, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = tail call i32 @snd_soc_component_read(ptr noundef %4, i32 noundef 520) #10
  %14 = and i32 %13, -2147467264
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.wm8994_pdata, ptr %10, i32 0, i32 15
  %18 = load i32, ptr %17, align 4
  %19 = icmp slt i32 %12, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.wm8994_priv, ptr %8, i32 0, i32 41
  store i32 %12, ptr %21, align 4
  br label %22

22:                                               ; preds = %20, %16, %2
  %23 = phi i32 [ 0, %20 ], [ -16, %2 ], [ -22, %16 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @wm8958_dsp_start_mbc(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.wm8994_priv, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 2304) #10
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %51

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.wm8994_priv, ptr %6, i32 0, i32 65
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call fastcc i32 @wm8958_dsp2_fw(ptr noundef %0, ptr noundef nonnull @.str.29, ptr noundef nonnull %14, i1 noundef zeroext false)
  br label %18

18:                                               ; preds = %16, %12
  %19 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 2304, i32 noundef 1, i32 noundef 1) #10
  %20 = getelementptr inbounds %struct.wm8994_pdata, ptr %8, i32 0, i32 9
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %46, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.wm8994_pdata, ptr %8, i32 0, i32 10
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.wm8994_priv, ptr %6, i32 0, i32 32
  %27 = load i32, ptr %26, align 4
  br label %28

28:                                               ; preds = %28, %23
  %29 = phi i32 [ 0, %23 ], [ %35, %28 ]
  %30 = add nuw nsw i32 %29, 9216
  %31 = getelementptr %struct.wm8958_mbc_cfg, ptr %25, i32 %27, i32 2, i32 %29
  %32 = load i16, ptr %31, align 2
  %33 = zext i16 %32 to i32
  %34 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef %30, i32 noundef %33) #10
  %35 = add nuw nsw i32 %29, 1
  %36 = icmp eq i32 %35, 48
  br i1 %36, label %37, label %28

37:                                               ; preds = %37, %28
  %38 = phi i32 [ %44, %37 ], [ 0, %28 ]
  %39 = add nuw nsw i32 %38, 8704
  %40 = getelementptr %struct.wm8958_mbc_cfg, ptr %25, i32 %27, i32 1, i32 %38
  %41 = load i16, ptr %40, align 2
  %42 = zext i16 %41 to i32
  %43 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef %39, i32 noundef %42) #10
  %44 = add nuw nsw i32 %38, 1
  %45 = icmp eq i32 %44, 20
  br i1 %45, label %46, label %37

46:                                               ; preds = %37, %18
  %47 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 2573, i32 noundef 2) #10
  %48 = shl i32 %1, 4
  %49 = or i32 %48, 1
  %50 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 2305, i32 noundef 49, i32 noundef %49) #10
  br label %51

51:                                               ; preds = %46, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @wm8958_dsp2_fw(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.wm8994_priv, ptr %8, i32 0, i32 64
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %2
  br i1 %11, label %117, label %12

12:                                               ; preds = %4
  %13 = load i32, ptr %2, align 4
  %14 = icmp ult i32 %13, 32
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.14, ptr noundef %1, i32 noundef %13) #12
  br label %112

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.firmware, ptr %2, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %18, ptr noundef nonnull dereferenceable(4) @.str.15, i32 4)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, ptr %18, align 1
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.16, ptr noundef %1, i32 noundef %23) #12
  br label %112

24:                                               ; preds = %16
  %25 = getelementptr i8, ptr %18, i32 4
  %26 = load i32, ptr %25, align 1
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #10
  %28 = getelementptr i8, ptr %18, i32 8
  %29 = load i32, ptr %28, align 1
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #10
  %31 = icmp ult i32 %30, 16777216
  br i1 %31, label %34, label %32

32:                                               ; preds = %24
  %33 = lshr i32 %30, 24
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.17, ptr noundef %1, i32 noundef %33) #12
  br label %112

34:                                               ; preds = %24
  %35 = and i32 %30, 65535
  %36 = icmp eq i32 %35, 8958
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.18, ptr noundef %1, i32 noundef %35) #12
  br label %112

38:                                               ; preds = %34
  %39 = lshr i32 %30, 16
  %40 = icmp eq i32 %39, 12
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.19, ptr noundef %1, i32 noundef %39) #12
  br label %112

42:                                               ; preds = %38
  br i1 %3, label %43, label %47

43:                                               ; preds = %42
  %44 = getelementptr i8, ptr %18, i32 24
  %45 = load i64, ptr %44, align 1
  %46 = tail call i64 @llvm.bswap.i64(i64 %45) #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %6, ptr noundef nonnull @.str.20, ptr noundef %1, i64 noundef %46) #12
  br label %50

47:                                               ; preds = %42
  %48 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 258, i32 noundef 2) #10
  %49 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 2304, i32 noundef 2) #10
  br label %50

50:                                               ; preds = %47, %43
  %51 = load i32, ptr %2, align 4
  %52 = sub i32 %51, %27
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %108, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr %17, align 4
  %56 = getelementptr i8, ptr %55, i32 %27
  %57 = getelementptr inbounds %struct.wm8994_priv, ptr %8, i32 0, i32 1
  br label %58

58:                                               ; preds = %102, %54
  %59 = phi i32 [ %52, %54 ], [ %106, %102 ]
  %60 = phi ptr [ %56, %54 ], [ %105, %102 ]
  %61 = icmp ult i32 %59, 12
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.21, ptr noundef %1, i32 noundef %59) #12
  br label %112

64:                                               ; preds = %58
  %65 = getelementptr i8, ptr %60, i32 4
  %66 = load i32, ptr %65, align 1
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #10
  %68 = add i32 %67, 8
  %69 = icmp ugt i32 %68, %59
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.22, i32 noundef %67) #12
  br label %112

72:                                               ; preds = %64
  %73 = icmp eq i32 %66, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %72
  %75 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.23) #12
  br label %112

76:                                               ; preds = %72
  %77 = load i32, ptr %60, align 1
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #10
  %79 = lshr i32 %78, 24
  %80 = trunc i32 %79 to i8
  switch i8 %80, label %100 [
    i8 -1, label %81
    i8 0, label %91
    i8 1, label %91
    i8 2, label %91
    i8 3, label %91
    i8 6, label %91
    i8 8, label %91
    i8 12, label %91
  ]

81:                                               ; preds = %76
  br i1 %3, label %82, label %102

82:                                               ; preds = %81
  %83 = add i32 %67, 1
  %84 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %83, i32 noundef 3520) #11
  %85 = icmp eq ptr %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %82
  %87 = getelementptr i8, ptr %60, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %84, ptr align 1 %87, i32 %67, i1 false)
  %88 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %88, ptr noundef nonnull @.str.24, ptr noundef %1, ptr noundef nonnull %84) #12
  tail call void @kfree(ptr noundef nonnull %84) #10
  br label %102

89:                                               ; preds = %82
  %90 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.25) #12
  br label %102

91:                                               ; preds = %76, %76, %76, %76, %76, %76, %76
  br i1 %3, label %102, label %92

92:                                               ; preds = %91
  %93 = load ptr, ptr %57, align 4
  %94 = and i32 %67, -2
  %95 = getelementptr i8, ptr %60, i32 8
  %96 = getelementptr inbounds %struct.wm8994, ptr %93, i32 0, i32 5
  %97 = load ptr, ptr %96, align 4
  %98 = and i32 %78, 65535
  %99 = tail call i32 @regmap_raw_write(ptr noundef %97, i32 noundef %98, ptr noundef %95, i32 noundef %94) #10
  br label %102

100:                                              ; preds = %76
  %101 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %101, ptr noundef nonnull @.str.26, ptr noundef %1, i32 noundef %79) #12
  br label %102

102:                                              ; preds = %100, %92, %91, %89, %86, %81
  %103 = and i32 %67, 3
  %104 = add i32 %68, %103
  %105 = getelementptr i8, ptr %60, i32 %104
  %106 = sub i32 %59, %104
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %58

108:                                              ; preds = %102, %50
  br i1 %3, label %110, label %109

109:                                              ; preds = %108
  store ptr %2, ptr %9, align 4
  br label %113

110:                                              ; preds = %108
  %111 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %111, ptr noundef nonnull @.str.27, ptr noundef %1) #12
  br label %117

112:                                              ; preds = %74, %70, %62, %41, %37, %32, %21, %15
  br i1 %3, label %117, label %113

113:                                              ; preds = %112, %109
  %114 = phi i32 [ 0, %109 ], [ -22, %112 ]
  %115 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 2304, i32 noundef 0) #10
  %116 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 258, i32 noundef 0) #10
  br label %117

117:                                              ; preds = %113, %112, %110, %4
  %118 = phi i32 [ 0, %4 ], [ %114, %113 ], [ -22, %112 ], [ 0, %110 ]
  ret i32 %118
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @wm8958_mbc_info(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #8 {
  %3 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 1
  store i32 1, ptr %3, align 8
  %4 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 3
  store i32 1, ptr %4, align 8
  %5 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5
  store i32 0, ptr %5, align 8
  %6 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5, i32 0, i32 1
  store i32 1, ptr %6, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @wm8958_mbc_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #3 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_soc_component, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 20, i32 %4
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %12, ptr %13, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8958_mbc_put(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_soc_component, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 20, i32 %4
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %77, label %16

16:                                               ; preds = %2
  %17 = icmp sgt i32 %14, 1
  br i1 %17, label %77, label %18

18:                                               ; preds = %16
  %19 = icmp eq i32 %4, 0
  br i1 %19, label %38, label %20

20:                                               ; preds = %18
  %21 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 20, i32 0
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %77

24:                                               ; preds = %20
  %25 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 23, i32 0
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %77

28:                                               ; preds = %24
  %29 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 21, i32 0
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %77

32:                                               ; preds = %28
  %33 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 22, i32 0
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %77

36:                                               ; preds = %32
  %37 = icmp eq i32 %4, 1
  br i1 %37, label %56, label %38

38:                                               ; preds = %36, %18
  %39 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 20, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %77

42:                                               ; preds = %38
  %43 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 23, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %77

46:                                               ; preds = %42
  %47 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 21, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %77

50:                                               ; preds = %46
  %51 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 22, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %77

54:                                               ; preds = %50
  %55 = icmp eq i32 %4, 2
  br i1 %55, label %72, label %56

56:                                               ; preds = %54, %36
  %57 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 20, i32 2
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %77

60:                                               ; preds = %56
  %61 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 23, i32 2
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %60
  %65 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 21, i32 2
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %64
  %69 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 22, i32 2
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %68, %54
  %73 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 24, i32 %4
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  store i32 %14, ptr %11, align 4
  tail call fastcc void @wm8958_dsp_apply(ptr noundef %6, i32 noundef %4, i32 noundef %14)
  br label %77

77:                                               ; preds = %76, %72, %68, %64, %60, %56, %50, %46, %42, %38, %32, %28, %24, %20, %16, %2
  %78 = phi i32 [ 0, %76 ], [ 0, %2 ], [ -22, %16 ], [ -16, %72 ], [ -16, %32 ], [ -16, %28 ], [ -16, %24 ], [ -16, %20 ], [ -16, %38 ], [ -16, %42 ], [ -16, %46 ], [ -16, %50 ], [ -16, %56 ], [ -16, %60 ], [ -16, %64 ], [ -16, %68 ]
  ret i32 %78
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @wm8958_vss_info(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #8 {
  %3 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 1
  store i32 1, ptr %3, align 8
  %4 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 3
  store i32 1, ptr %4, align 8
  %5 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5
  store i32 0, ptr %5, align 8
  %6 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5, i32 0, i32 1
  store i32 1, ptr %6, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @wm8958_vss_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #3 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_soc_component, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 23, i32 %4
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %12, ptr %13, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8958_vss_put(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_soc_component, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 23, i32 %4
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %81, label %16

16:                                               ; preds = %2
  %17 = icmp sgt i32 %14, 1
  br i1 %17, label %81, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.wm8994_priv, ptr %10, i32 0, i32 66
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %81, label %22

22:                                               ; preds = %18
  %23 = icmp eq i32 %4, 0
  br i1 %23, label %42, label %24

24:                                               ; preds = %22
  %25 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 20, i32 0
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %81

28:                                               ; preds = %24
  %29 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 23, i32 0
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %81

32:                                               ; preds = %28
  %33 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 21, i32 0
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %81

36:                                               ; preds = %32
  %37 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 22, i32 0
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %81

40:                                               ; preds = %36
  %41 = icmp eq i32 %4, 1
  br i1 %41, label %60, label %42

42:                                               ; preds = %40, %22
  %43 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 20, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %81

46:                                               ; preds = %42
  %47 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 23, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %81

50:                                               ; preds = %46
  %51 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 21, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %81

54:                                               ; preds = %50
  %55 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 22, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %81

58:                                               ; preds = %54
  %59 = icmp eq i32 %4, 2
  br i1 %59, label %76, label %60

60:                                               ; preds = %58, %40
  %61 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 20, i32 2
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %81

64:                                               ; preds = %60
  %65 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 23, i32 2
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %64
  %69 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 21, i32 2
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %68
  %73 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 22, i32 2
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %72, %58
  %77 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 24, i32 %4
  %78 = load i32, ptr %77, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store i32 %14, ptr %11, align 4
  tail call fastcc void @wm8958_dsp_apply(ptr noundef %6, i32 noundef %4, i32 noundef %14)
  br label %81

81:                                               ; preds = %80, %76, %72, %68, %64, %60, %54, %50, %46, %42, %36, %32, %28, %24, %18, %16, %2
  %82 = phi i32 [ 0, %80 ], [ 0, %2 ], [ -22, %16 ], [ -19, %18 ], [ -16, %76 ], [ -16, %36 ], [ -16, %32 ], [ -16, %28 ], [ -16, %24 ], [ -16, %42 ], [ -16, %46 ], [ -16, %50 ], [ -16, %54 ], [ -16, %60 ], [ -16, %64 ], [ -16, %68 ], [ -16, %72 ]
  ret i32 %82
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @wm8958_hpf_info(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #8 {
  %3 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 1
  store i32 1, ptr %3, align 8
  %4 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 3
  store i32 1, ptr %4, align 8
  %5 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5
  store i32 0, ptr %5, align 8
  %6 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5, i32 0, i32 1
  store i32 1, ptr %6, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @wm8958_hpf_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #3 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_soc_component, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = icmp slt i32 %4, 3
  %12 = srem i32 %4, 3
  %13 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 21, i32 %12
  %14 = urem i32 %4, 3
  %15 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 22, i32 %14
  %16 = select i1 %11, ptr %13, ptr %15
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %17, ptr %18, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8958_hpf_put(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_soc_component, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = icmp slt i32 %4, 3
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = srem i32 %4, 3
  %14 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 21, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %17 = load i32, ptr %16, align 8
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %98, label %26

19:                                               ; preds = %2
  %20 = urem i32 %4, 3
  %21 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 22, i32 %20
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %24 = load i32, ptr %23, align 8
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %98, label %26

26:                                               ; preds = %19, %12
  %27 = phi i32 [ %24, %19 ], [ %17, %12 ]
  %28 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %29 = icmp sgt i32 %27, 1
  br i1 %29, label %98, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.wm8994_priv, ptr %10, i32 0, i32 66
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %98, label %34

34:                                               ; preds = %30
  %35 = srem i32 %4, 3
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %55, label %37

37:                                               ; preds = %34
  %38 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 20, i32 0
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %98

41:                                               ; preds = %37
  %42 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 23, i32 0
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %98

45:                                               ; preds = %41
  %46 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 21, i32 0
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %98

49:                                               ; preds = %45
  %50 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 22, i32 0
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %98

53:                                               ; preds = %49
  %54 = icmp eq i32 %35, 1
  br i1 %54, label %73, label %55

55:                                               ; preds = %53, %34
  %56 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 20, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %98

59:                                               ; preds = %55
  %60 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 23, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %98

63:                                               ; preds = %59
  %64 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 21, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %98

67:                                               ; preds = %63
  %68 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 22, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %98

71:                                               ; preds = %67
  %72 = icmp eq i32 %35, 2
  br i1 %72, label %89, label %73

73:                                               ; preds = %71, %53
  %74 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 20, i32 2
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %98

77:                                               ; preds = %73
  %78 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 23, i32 2
  %79 = load i32, ptr %78, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %98

81:                                               ; preds = %77
  %82 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 21, i32 2
  %83 = load i32, ptr %82, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %81
  %86 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 22, i32 2
  %87 = load i32, ptr %86, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %85, %71
  %90 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 24, i32 %35
  %91 = load i32, ptr %90, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 22, i32 %35
  %95 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 21, i32 %35
  %96 = select i1 %11, ptr %95, ptr %94
  store i32 %27, ptr %96, align 4
  %97 = load i32, ptr %28, align 8
  tail call fastcc void @wm8958_dsp_apply(ptr noundef %6, i32 noundef %35, i32 noundef %97)
  br label %98

98:                                               ; preds = %93, %89, %85, %81, %77, %73, %67, %63, %59, %55, %49, %45, %41, %37, %30, %26, %19, %12
  %99 = phi i32 [ 0, %93 ], [ 0, %12 ], [ 0, %19 ], [ -22, %26 ], [ -19, %30 ], [ -16, %89 ], [ -16, %49 ], [ -16, %45 ], [ -16, %41 ], [ -16, %37 ], [ -16, %55 ], [ -16, %59 ], [ -16, %63 ], [ -16, %67 ], [ -16, %73 ], [ -16, %77 ], [ -16, %81 ], [ -16, %85 ]
  ret i32 %99
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @wm8958_enh_eq_info(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #8 {
  %3 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 1
  store i32 1, ptr %3, align 8
  %4 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 3
  store i32 1, ptr %4, align 8
  %5 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5
  store i32 0, ptr %5, align 8
  %6 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5, i32 0, i32 1
  store i32 1, ptr %6, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @wm8958_enh_eq_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #3 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_soc_component, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 24, i32 %4
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %12, ptr %13, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8958_enh_eq_put(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_soc_component, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 24, i32 %4
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %94, label %16

16:                                               ; preds = %2
  %17 = icmp sgt i32 %14, 1
  br i1 %17, label %94, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.wm8994_priv, ptr %10, i32 0, i32 67
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %94, label %22

22:                                               ; preds = %18
  %23 = icmp eq i32 %4, 0
  br i1 %23, label %42, label %24

24:                                               ; preds = %22
  %25 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 20, i32 0
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %94

28:                                               ; preds = %24
  %29 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 23, i32 0
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %94

32:                                               ; preds = %28
  %33 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 21, i32 0
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %94

36:                                               ; preds = %32
  %37 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 22, i32 0
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %94

40:                                               ; preds = %36
  %41 = icmp eq i32 %4, 1
  br i1 %41, label %60, label %42

42:                                               ; preds = %40, %22
  %43 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 20, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %94

46:                                               ; preds = %42
  %47 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 23, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %94

50:                                               ; preds = %46
  %51 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 21, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %94

54:                                               ; preds = %50
  %55 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 22, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %94

58:                                               ; preds = %54
  %59 = icmp eq i32 %4, 2
  br i1 %59, label %76, label %60

60:                                               ; preds = %58, %40
  %61 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 20, i32 2
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %94

64:                                               ; preds = %60
  %65 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 23, i32 2
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %94

68:                                               ; preds = %64
  %69 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 21, i32 2
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %94

72:                                               ; preds = %68
  %73 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 22, i32 2
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %94

76:                                               ; preds = %72, %58
  %77 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 20, i32 %4
  %78 = load i32, ptr %77, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %76
  %81 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 23, i32 %4
  %82 = load i32, ptr %81, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %80
  %85 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 21, i32 %4
  %86 = load i32, ptr %85, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %84
  %89 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 22, i32 %4
  %90 = load i32, ptr %89, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  store i32 %14, ptr %11, align 4
  %93 = load i32, ptr %13, align 8
  tail call fastcc void @wm8958_dsp_apply(ptr noundef %6, i32 noundef %4, i32 noundef %93)
  br label %94

94:                                               ; preds = %92, %88, %84, %80, %76, %72, %68, %64, %60, %54, %50, %46, %42, %36, %32, %28, %24, %18, %16, %2
  %95 = phi i32 [ 0, %92 ], [ 0, %2 ], [ -22, %16 ], [ -19, %18 ], [ -16, %88 ], [ -16, %84 ], [ -16, %80 ], [ -16, %76 ], [ -16, %36 ], [ -16, %32 ], [ -16, %28 ], [ -16, %24 ], [ -16, %42 ], [ -16, %46 ], [ -16, %50 ], [ -16, %54 ], [ -16, %60 ], [ -16, %64 ], [ -16, %68 ], [ -16, %72 ]
  ret i32 %95
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }

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
