; ModuleID = '/llk/IR/sound/soc/rockchip/rockchip_i2s.c_pt.bc'
source_filename = "../sound/soc/rockchip/rockchip_i2s.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.reg_default = type { i32, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.88, ptr }
%union.anon.88 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.rk_i2s_pins = type { i32, i32 }
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
%struct.rk_i2s_dev = type { ptr, ptr, ptr, %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data, ptr, ptr, i8, i8, i8, i8, i8, ptr, i32, %struct.spinlock }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_soc_dai_link = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i24 }

@__UNIQUE_ID_description233 = internal constant [40 x i8] c"description=ROCKCHIP IIS ASoC Interface\00", section ".modinfo", align 1
@__UNIQUE_ID_author234 = internal constant [39 x i8] c"author=jianqun <jay.xu@rock-chips.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias236 = internal constant [28 x i8] c"alias=platform:rockchip-i2s\00", section ".modinfo", align 1
@rockchip_i2s_match = internal constant [15 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,px30-i2s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk1808-i2s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3036-i2s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3066-i2s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3128-i2s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3188-i2s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3228-i2s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3288-i2s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3308-i2s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3328-i2s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3366-i2s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3368-i2s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3399-i2s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3399_i2s_pins }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rv1126-i2s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@rockchip_i2s_driver = internal global %struct.platform_driver { ptr @rockchip_i2s_probe, ptr @rockchip_i2s_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rockchip_i2s_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rockchip_i2s_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [13 x i8] c"rockchip-i2s\00", align 1
@rockchip_i2s_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @i2s_runtime_suspend, ptr @i2s_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"rockchip,grf\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"i2s_hclk\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Can't retrieve i2s bus clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"hclock enable failed %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"i2s_clk\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Can't retrieve i2s master clock\0A\00", align 1
@rockchip_i2s_regmap_config = internal constant %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr @rockchip_i2s_wr_reg, ptr @rockchip_i2s_rd_reg, ptr @rockchip_i2s_volatile_reg, ptr @rockchip_i2s_precious_reg, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 40, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rockchip_i2s_reg_defaults, i32 5, i32 3, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.7 = private unnamed_addr constant [43 x i8] c"Failed to initialise managed register map\0A\00", align 1
@rockchip_i2s_component = internal constant %struct.snd_soc_component_driver { ptr @.str, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"Could not register DAI\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"Could not register PCM\0A\00", align 1
@rockchip_i2s_reg_defaults = internal constant [5 x %struct.reg_default] [%struct.reg_default { i32 0, i32 15 }, %struct.reg_default { i32 4, i32 15 }, %struct.reg_default { i32 8, i32 466719 }, %struct.reg_default { i32 16, i32 2031616 }, %struct.reg_default { i32 20, i32 32505856 }], align 4
@.str.10 = private unnamed_addr constant [24 x i8] c"clock enable failed %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"dma-names\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@rockchip_i2s_dai = internal global %struct.snd_soc_dai_driver { ptr null, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @rockchip_i2s_dai_probe, ptr null, ptr null, ptr null, ptr @rockchip_i2s_dai_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream zeroinitializer, i8 1, i32 0, i32 0 }, align 8
@.str.14 = private unnamed_addr constant [9 x i8] c"Playback\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"rockchip,playback-channels\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"Capture\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"rockchip,capture-channels\00", align 1
@rockchip_i2s_dai_ops = internal constant %struct.snd_soc_dai_ops { ptr @rockchip_i2s_set_sysclk, ptr null, ptr null, ptr @rockchip_i2s_set_bclk_ratio, ptr @rockchip_i2s_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rockchip_i2s_hw_params, ptr null, ptr null, ptr @rockchip_i2s_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, align 4
@.str.18 = private unnamed_addr constant [21 x i8] c"Fail to set mclk %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"invalid channel: %d\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.20 = private unnamed_addr constant [15 x i8] c"fail to clear\0A\00", align 1
@rk3399_i2s_pins = internal constant %struct.rk_i2s_pins { i32 57888, i32 11 }, align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias236, ptr @__UNIQUE_ID_author234, ptr @__UNIQUE_ID_description233, ptr @__UNIQUE_ID_license235], section "llvm.metadata"
@switch.table.rockchip_i2s_set_fmt = private unnamed_addr constant [5 x i32] [i32 0, i32 0, i32 50331648, i32 67108864, i32 117440512], align 4
@switch.table.rockchip_i2s_set_fmt.21 = private unnamed_addr constant [5 x i32] [i32 0, i32 1024, i32 512, i32 160, i32 32], align 4

@__mod_of__rockchip_i2s_match_device_table = dso_local alias [15 x %struct.of_device_id], ptr @rockchip_i2s_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @rockchip_i2s_driver, ptr noundef nonnull @__this_module) #10
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @rockchip_i2s_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_i2s_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store ptr null, ptr %3, align 4, !annotation !8
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 112, i32 noundef 3520) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %157, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.rk_i2s_dev, ptr %7, i32 0, i32 14
  store i32 0, ptr %10, align 4
  store ptr %4, ptr %7, align 4
  %11 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %6, ptr noundef nonnull @.str.1) #10
  %12 = getelementptr inbounds %struct.rk_i2s_dev, ptr %7, i32 0, i32 6
  store ptr %11, ptr %12, align 4
  %13 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %23, label %14

14:                                               ; preds = %9
  %15 = tail call ptr @of_match_device(ptr noundef nonnull @rockchip_i2s_match, ptr noundef %4) #10
  %16 = icmp eq ptr %15, null
  br i1 %16, label %157, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.of_device_id, ptr %15, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %157, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.rk_i2s_dev, ptr %7, i32 0, i32 12
  store ptr %19, ptr %22, align 4
  br label %23

23:                                               ; preds = %21, %9
  %24 = tail call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull @.str.2) #10
  %25 = getelementptr inbounds %struct.rk_i2s_dev, ptr %7, i32 0, i32 1
  store ptr %24, ptr %25, align 4
  %26 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.3) #11
  %28 = load ptr, ptr %25, align 4
  %29 = ptrtoint ptr %28 to i32
  br label %157

30:                                               ; preds = %23
  %31 = tail call i32 @clk_prepare(ptr noundef %24) #10
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = tail call i32 @clk_enable(ptr noundef %24) #10
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  tail call void @clk_unprepare(ptr noundef %24) #10
  br label %37

37:                                               ; preds = %36, %30
  %38 = phi i32 [ %34, %36 ], [ %31, %30 ]
  %39 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.4, i32 noundef %38) #11
  br label %157

40:                                               ; preds = %33
  %41 = tail call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull @.str.5) #10
  %42 = getelementptr inbounds %struct.rk_i2s_dev, ptr %7, i32 0, i32 2
  store ptr %41, ptr %42, align 4
  %43 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.6) #11
  %45 = load ptr, ptr %42, align 4
  %46 = ptrtoint ptr %45 to i32
  br label %157

47:                                               ; preds = %40
  %48 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %3) #10
  %49 = icmp ugt ptr %48, inttoptr (i32 -4096 to ptr)
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = ptrtoint ptr %48 to i32
  br label %157

52:                                               ; preds = %47
  %53 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %4, ptr noundef null, ptr noundef %48, ptr noundef nonnull @rockchip_i2s_regmap_config, ptr noundef null, ptr noundef null) #10
  %54 = getelementptr inbounds %struct.rk_i2s_dev, ptr %7, i32 0, i32 5
  store ptr %53, ptr %54, align 4
  %55 = icmp ugt ptr %53, inttoptr (i32 -4096 to ptr)
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.7) #11
  %57 = load ptr, ptr %54, align 4
  %58 = ptrtoint ptr %57 to i32
  br label %157

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.rk_i2s_dev, ptr %7, i32 0, i32 13
  store i32 64, ptr %60, align 4
  %61 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %7, ptr %61, align 8
  call void @pm_runtime_enable(ptr noundef %4) #10
  %62 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 15
  %63 = load i16, ptr %62, align 8
  %64 = and i16 %63, 7
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %59
  %67 = call i32 @i2s_runtime_resume(ptr noundef %4)
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %155

69:                                               ; preds = %66, %59
  %70 = load ptr, ptr %3, align 4
  %71 = load ptr, ptr %7, align 4
  %72 = getelementptr inbounds %struct.device, ptr %71, i32 0, i32 25
  %73 = load ptr, ptr %72, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 0, ptr %2, align 4, !annotation !8
  %74 = call ptr @of_find_property(ptr noundef %73, ptr noundef nonnull @.str.11, ptr noundef null) #10
  %75 = call ptr @of_prop_next_string(ptr noundef %74, ptr noundef null) #10
  %76 = icmp eq ptr %75, null
  br i1 %76, label %92, label %77

77:                                               ; preds = %69
  %78 = getelementptr inbounds %struct.rk_i2s_dev, ptr %7, i32 0, i32 8
  %79 = getelementptr inbounds %struct.rk_i2s_dev, ptr %7, i32 0, i32 7
  br label %80

80:                                               ; preds = %89, %77
  %81 = phi ptr [ %75, %77 ], [ %90, %89 ]
  %82 = call i32 @strcmp(ptr noundef nonnull %81, ptr noundef nonnull dereferenceable(3) @.str.12) #10
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  store i8 1, ptr %78, align 1
  br label %85

85:                                               ; preds = %84, %80
  %86 = call i32 @strcmp(ptr noundef nonnull %81, ptr noundef nonnull dereferenceable(3) @.str.13) #10
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  store i8 1, ptr %79, align 4
  br label %89

89:                                               ; preds = %88, %85
  %90 = call ptr @of_prop_next_string(ptr noundef %74, ptr noundef nonnull %81) #10
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %80

92:                                               ; preds = %89, %69
  %93 = load ptr, ptr %7, align 4
  %94 = call ptr @devm_kmemdup(ptr noundef %93, ptr noundef nonnull @rockchip_i2s_dai, i32 noundef 168, i32 noundef 3264) #10
  %95 = icmp eq ptr %94, null
  br i1 %95, label %140, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.rk_i2s_dev, ptr %7, i32 0, i32 8
  %98 = load i8, ptr %97, align 1, !range !9
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %118, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %94, i32 0, i32 11
  store ptr @.str.14, ptr %101, align 8
  %102 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %94, i32 0, i32 11, i32 5
  store i32 2, ptr %102, align 4
  %103 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %94, i32 0, i32 11, i32 6
  store i32 8, ptr %103, align 8
  %104 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %94, i32 0, i32 11, i32 2
  store i32 8190, ptr %104, align 8
  %105 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %94, i32 0, i32 11, i32 1
  store i64 68719477829, ptr %105, align 8
  %106 = load i32, ptr %70, align 4
  %107 = add i32 %106, 36
  %108 = getelementptr inbounds %struct.rk_i2s_dev, ptr %7, i32 0, i32 4
  store i32 %107, ptr %108, align 4
  %109 = getelementptr inbounds %struct.rk_i2s_dev, ptr %7, i32 0, i32 4, i32 1
  store i32 4, ptr %109, align 4
  %110 = getelementptr inbounds %struct.rk_i2s_dev, ptr %7, i32 0, i32 4, i32 2
  store i32 8, ptr %110, align 4
  %111 = call i32 @of_property_read_variable_u32_array(ptr noundef %73, ptr noundef nonnull @.str.15, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #10
  %112 = icmp sgt i32 %111, -1
  br i1 %112, label %113, label %118

113:                                              ; preds = %100
  %114 = load i32, ptr %2, align 4
  %115 = add i32 %114, -2
  %116 = icmp ult i32 %115, 7
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  store i32 %114, ptr %103, align 8
  br label %118

118:                                              ; preds = %117, %113, %100, %96
  %119 = getelementptr inbounds %struct.rk_i2s_dev, ptr %7, i32 0, i32 7
  %120 = load i8, ptr %119, align 4, !range !9
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %141, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %94, i32 0, i32 10
  store ptr @.str.16, ptr %123, align 8
  %124 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %94, i32 0, i32 10, i32 5
  store i32 2, ptr %124, align 4
  %125 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %94, i32 0, i32 10, i32 6
  store i32 8, ptr %125, align 8
  %126 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %94, i32 0, i32 10, i32 2
  store i32 8190, ptr %126, align 8
  %127 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %94, i32 0, i32 10, i32 1
  store i64 68719477829, ptr %127, align 8
  %128 = load i32, ptr %70, align 4
  %129 = add i32 %128, 40
  %130 = getelementptr inbounds %struct.rk_i2s_dev, ptr %7, i32 0, i32 3
  store i32 %129, ptr %130, align 4
  %131 = getelementptr inbounds %struct.rk_i2s_dev, ptr %7, i32 0, i32 3, i32 1
  store i32 4, ptr %131, align 4
  %132 = getelementptr inbounds %struct.rk_i2s_dev, ptr %7, i32 0, i32 3, i32 2
  store i32 8, ptr %132, align 4
  %133 = call i32 @of_property_read_variable_u32_array(ptr noundef %73, ptr noundef nonnull @.str.17, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #10
  %134 = icmp sgt i32 %133, -1
  br i1 %134, label %135, label %141

135:                                              ; preds = %122
  %136 = load i32, ptr %2, align 4
  %137 = add i32 %136, -2
  %138 = icmp ult i32 %137, 7
  br i1 %138, label %139, label %141

139:                                              ; preds = %135
  store i32 %136, ptr %125, align 8
  br label %141

140:                                              ; preds = %92
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  br label %155

141:                                              ; preds = %139, %135, %122, %118
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  %142 = call i32 @devm_snd_soc_register_component(ptr noundef %4, ptr noundef nonnull @rockchip_i2s_component, ptr noundef nonnull %94, i32 noundef 1) #10
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = call i32 @devm_snd_dmaengine_pcm_register(ptr noundef %4, ptr noundef null, i32 noundef 0) #10
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %157, label %147

147:                                              ; preds = %144, %141
  %148 = phi ptr [ @.str.8, %141 ], [ @.str.9, %144 ]
  %149 = phi i32 [ %142, %141 ], [ %145, %144 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull %148) #11
  %150 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 18
  %151 = load i32, ptr %150, align 4
  %152 = icmp eq i32 %151, 2
  br i1 %152, label %155, label %153

153:                                              ; preds = %147
  %154 = call i32 @i2s_runtime_suspend(ptr noundef %4)
  br label %155

155:                                              ; preds = %153, %147, %140, %66
  %156 = phi i32 [ -12, %140 ], [ %149, %147 ], [ %149, %153 ], [ %67, %66 ]
  call void @__pm_runtime_disable(ptr noundef %4, i1 noundef zeroext true) #10
  br label %157

157:                                              ; preds = %155, %144, %56, %50, %44, %37, %27, %17, %14, %1
  %158 = phi i32 [ %29, %27 ], [ %38, %37 ], [ %46, %44 ], [ %51, %50 ], [ %58, %56 ], [ %156, %155 ], [ -12, %1 ], [ -22, %17 ], [ -22, %14 ], [ 0, %144 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret i32 %158
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_i2s_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %4 = load ptr, ptr %3, align 8
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #10
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 18
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 8
  %10 = getelementptr inbounds %struct.rk_i2s_dev, ptr %9, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  tail call void @regcache_cache_only(ptr noundef %11, i1 noundef zeroext true) #10
  %12 = getelementptr inbounds %struct.rk_i2s_dev, ptr %9, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  tail call void @clk_disable(ptr noundef %13) #10
  tail call void @clk_unprepare(ptr noundef %13) #10
  br label %14

14:                                               ; preds = %8, %1
  %15 = getelementptr inbounds %struct.rk_i2s_dev, ptr %4, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  tail call void @clk_disable(ptr noundef %16) #10
  tail call void @clk_unprepare(ptr noundef %16) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2s_runtime_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rk_i2s_dev, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #10
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #10
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  tail call void @clk_unprepare(ptr noundef %5) #10
  br label %12

12:                                               ; preds = %11, %1
  %13 = phi i32 [ %9, %11 ], [ %6, %1 ]
  %14 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.10, i32 noundef %13) #11
  br label %24

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.rk_i2s_dev, ptr %3, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  tail call void @regcache_cache_only(ptr noundef %17, i1 noundef zeroext false) #10
  %18 = load ptr, ptr %16, align 4
  tail call void @regcache_mark_dirty(ptr noundef %18) #10
  %19 = load ptr, ptr %16, align 4
  %20 = tail call i32 @regcache_sync(ptr noundef %19) #10
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %15
  %23 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %23) #10
  tail call void @clk_unprepare(ptr noundef %23) #10
  br label %24

24:                                               ; preds = %22, %15, %12
  %25 = phi i32 [ %13, %12 ], [ %20, %22 ], [ 0, %15 ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_dmaengine_pcm_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2s_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rk_i2s_dev, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  tail call void @regcache_cache_only(ptr noundef %5, i1 noundef zeroext true) #10
  %6 = getelementptr inbounds %struct.rk_i2s_dev, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %7) #10
  tail call void @clk_unprepare(ptr noundef %7) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rockchip_i2s_wr_reg(ptr nocapture noundef readnone %0, i32 noundef %1) #5 {
  %3 = tail call i32 @llvm.fshl.i32(i32 %1, i32 %1, i32 30)
  %4 = icmp ult i32 %3, 10
  %5 = trunc i32 %3 to i10
  %6 = lshr i10 -73, %5
  %7 = and i10 %6, 1
  %8 = icmp ne i10 %7, 0
  %9 = select i1 %4, i1 %8, i1 false
  ret i1 %9
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rockchip_i2s_rd_reg(ptr nocapture noundef readnone %0, i32 noundef %1) #5 {
  %3 = tail call i32 @llvm.fshl.i32(i32 %1, i32 %1, i32 30)
  %4 = icmp ult i32 %3, 11
  ret i1 %4
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rockchip_i2s_volatile_reg(ptr nocapture noundef readnone %0, i32 noundef %1) #5 {
  %3 = add i32 %1, -12
  %4 = tail call i32 @llvm.fshl.i32(i32 %3, i32 %3, i32 30)
  %5 = icmp ult i32 %4, 8
  %6 = trunc i32 %4 to i8
  %7 = lshr i8 -23, %6
  %8 = and i8 %7, 1
  %9 = icmp ne i8 %8, 0
  %10 = select i1 %5, i1 %9, i1 false
  ret i1 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rockchip_i2s_precious_reg(ptr nocapture noundef readnone %0, i32 noundef %1) #6 {
  %3 = icmp eq i32 %1, 40
  ret i1 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_string(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @rockchip_i2s_dai_probe(ptr nocapture noundef %0) #8 {
  %2 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.rk_i2s_dev, ptr %5, i32 0, i32 8
  %7 = load i8, ptr %6, align 1, !range !9
  %8 = icmp eq i8 %7, 0
  %9 = getelementptr inbounds %struct.rk_i2s_dev, ptr %5, i32 0, i32 4
  %10 = select i1 %8, ptr null, ptr %9
  %11 = getelementptr inbounds %struct.rk_i2s_dev, ptr %5, i32 0, i32 7
  %12 = load i8, ptr %11, align 4, !range !9
  %13 = icmp eq i8 %12, 0
  %14 = getelementptr inbounds %struct.rk_i2s_dev, ptr %5, i32 0, i32 3
  %15 = select i1 %13, ptr null, ptr %14
  %16 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 7
  store ptr %10, ptr %16, align 4
  %17 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 8
  store ptr %15, ptr %17, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_i2s_set_sysclk(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq i32 %2, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.rk_i2s_dev, ptr %8, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @clk_set_rate(ptr noundef %12, i32 noundef %2) #10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.18, i32 noundef %13) #11
  br label %17

17:                                               ; preds = %15, %10, %4
  %18 = phi i32 [ 0, %4 ], [ %13, %15 ], [ 0, %10 ]
  ret i32 %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @rockchip_i2s_set_bclk_ratio(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.rk_i2s_dev, ptr %6, i32 0, i32 13
  store i32 %1, ptr %7, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_i2s_set_fmt(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #10
  %8 = trunc i32 %1 to i16
  %9 = and i16 %8, -4096
  switch i16 %9, label %41 [
    i16 16384, label %11
    i16 4096, label %10
  ]

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %10, %2
  %12 = phi i8 [ 0, %10 ], [ 1, %2 ]
  %13 = phi i32 [ 134217728, %10 ], [ 0, %2 ]
  %14 = getelementptr inbounds %struct.rk_i2s_dev, ptr %6, i32 0, i32 11
  store i8 %12, ptr %14, align 4
  %15 = getelementptr inbounds %struct.rk_i2s_dev, ptr %6, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 8, i32 noundef 134217728, i32 noundef %13, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %18 = lshr i32 %1, 8
  %19 = and i32 %18, 15
  %20 = icmp ult i32 %19, 5
  br i1 %20, label %21, label %41

21:                                               ; preds = %11
  %22 = trunc i32 %19 to i8
  %23 = lshr i8 29, %22
  %24 = and i8 %23, 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %41, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds [5 x i32], ptr @switch.table.rockchip_i2s_set_fmt, i32 0, i32 %19
  %28 = load i32, ptr %27, align 4
  %29 = load ptr, ptr %15, align 4
  %30 = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef 8, i32 noundef 117440512, i32 noundef %28, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %31 = and i32 %1, 15
  %32 = add nsw i32 %31, -1
  %33 = icmp ult i32 %32, 5
  br i1 %33, label %34, label %41

34:                                               ; preds = %26
  %35 = getelementptr inbounds [5 x i32], ptr @switch.table.rockchip_i2s_set_fmt.21, i32 0, i32 %32
  %36 = load i32, ptr %35, align 4
  %37 = load ptr, ptr %15, align 4
  %38 = tail call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef 0, i32 noundef 1952, i32 noundef %36, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %39 = load ptr, ptr %15, align 4
  %40 = tail call i32 @regmap_update_bits_base(ptr noundef %39, i32 noundef 4, i32 noundef 1952, i32 noundef %36, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %41

41:                                               ; preds = %34, %26, %21, %11, %2
  %42 = phi i32 [ 0, %34 ], [ -22, %2 ], [ -22, %11 ], [ -22, %26 ], [ -22, %21 ]
  %43 = load ptr, ptr %3, align 4
  %44 = tail call i32 @__pm_runtime_idle(ptr noundef %43, i32 noundef 5) #10
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_i2s_hw_params(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #2 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  %11 = getelementptr inbounds %struct.rk_i2s_dev, ptr %8, i32 0, i32 11
  %12 = load i8, ptr %11, align 4, !range !9
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %39, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.rk_i2s_dev, ptr %8, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @clk_get_rate(ptr noundef %16) #10
  %18 = getelementptr inbounds %struct.rk_i2s_dev, ptr %8, i32 0, i32 13
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = mul i32 %21, %19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %127, label %24

24:                                               ; preds = %14
  %25 = lshr i32 %22, 1
  %26 = add i32 %25, %17
  %27 = udiv i32 %26, %22
  %28 = udiv i32 %22, %21
  %29 = getelementptr inbounds %struct.rk_i2s_dev, ptr %8, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = shl i32 %27, 16
  %32 = add i32 %31, -65536
  %33 = tail call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 8, i32 noundef 16711680, i32 noundef %32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %34 = load ptr, ptr %29, align 4
  %35 = add i32 %28, -1
  %36 = shl i32 %35, 8
  %37 = or i32 %36, %35
  %38 = tail call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef 8, i32 noundef 65535, i32 noundef %37, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %39

39:                                               ; preds = %24, %3
  %40 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %43, %39
  %48 = phi i32 [ 0, %39 ], [ 32, %43 ]
  %49 = phi i32 [ %41, %39 ], [ %45, %43 ]
  %50 = tail call i32 @llvm.cttz.i32(i32 %49, i1 true) #10, !range !10
  %51 = or i32 %50, %48
  switch i32 %51, label %127 [
    i32 0, label %52
    i32 2, label %53
    i32 36, label %54
    i32 6, label %55
    i32 10, label %56
  ]

52:                                               ; preds = %47, %43
  store i32 7, ptr %4, align 4
  br label %57

53:                                               ; preds = %47
  store i32 15, ptr %4, align 4
  br label %57

54:                                               ; preds = %47
  store i32 19, ptr %4, align 4
  br label %57

55:                                               ; preds = %47
  store i32 23, ptr %4, align 4
  br label %57

56:                                               ; preds = %47
  store i32 31, ptr %4, align 4
  br label %57

57:                                               ; preds = %56, %55, %54, %53, %52
  %58 = phi i32 [ 31, %56 ], [ 23, %55 ], [ 19, %54 ], [ 15, %53 ], [ 7, %52 ]
  %59 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 2
  %60 = load i32, ptr %59, align 4
  switch i32 %60, label %67 [
    i32 8, label %61
    i32 6, label %63
    i32 4, label %65
    i32 2, label %69
  ]

61:                                               ; preds = %57
  %62 = or i32 %58, 98304
  store i32 %62, ptr %4, align 4
  br label %69

63:                                               ; preds = %57
  %64 = or i32 %58, 65536
  store i32 %64, ptr %4, align 4
  br label %69

65:                                               ; preds = %57
  %66 = or i32 %58, 32768
  store i32 %66, ptr %4, align 4
  br label %69

67:                                               ; preds = %57
  %68 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.19, i32 noundef %60) #11
  br label %127

69:                                               ; preds = %65, %63, %61, %57
  %70 = phi i32 [ %58, %57 ], [ %66, %65 ], [ %64, %63 ], [ %62, %61 ]
  %71 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %72, 1
  %74 = getelementptr inbounds %struct.rk_i2s_dev, ptr %8, i32 0, i32 5
  %75 = load ptr, ptr %74, align 4
  %76 = select i1 %73, i32 4, i32 0
  %77 = tail call i32 @regmap_update_bits_base(ptr noundef %75, i32 noundef %76, i32 noundef 98335, i32 noundef %70, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %78 = getelementptr inbounds %struct.rk_i2s_dev, ptr %8, i32 0, i32 6
  %79 = load ptr, ptr %78, align 4
  %80 = icmp ugt ptr %79, inttoptr (i32 -4096 to ptr)
  br i1 %80, label %103, label %81

81:                                               ; preds = %69
  %82 = getelementptr inbounds %struct.rk_i2s_dev, ptr %8, i32 0, i32 12
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %103, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.rk_i2s_dev, ptr %8, i32 0, i32 5
  %87 = load ptr, ptr %86, align 4
  %88 = call i32 @regmap_read(ptr noundef %87, i32 noundef 0, ptr noundef nonnull %4) #10
  %89 = load i32, ptr %4, align 4
  %90 = and i32 %89, 98304
  switch i32 %90, label %93 [
    i32 32768, label %94
    i32 65536, label %91
    i32 98304, label %92
  ]

91:                                               ; preds = %85
  br label %94

92:                                               ; preds = %85
  br label %94

93:                                               ; preds = %85
  br label %94

94:                                               ; preds = %93, %92, %91, %85
  %95 = phi i32 [ 458759, %93 ], [ 458752, %92 ], [ 458756, %91 ], [ 458758, %85 ]
  %96 = load ptr, ptr %82, align 4
  %97 = getelementptr inbounds %struct.rk_i2s_pins, ptr %96, i32 0, i32 1
  %98 = load i32, ptr %97, align 4
  %99 = shl i32 %95, %98
  store i32 %99, ptr %4, align 4
  %100 = load ptr, ptr %78, align 4
  %101 = load i32, ptr %96, align 4
  %102 = call i32 @regmap_write(ptr noundef %100, i32 noundef %101, i32 noundef %99) #10
  br label %103

103:                                              ; preds = %94, %81, %69
  %104 = getelementptr inbounds %struct.rk_i2s_dev, ptr %8, i32 0, i32 5
  %105 = load ptr, ptr %104, align 4
  %106 = call i32 @regmap_update_bits_base(ptr noundef %105, i32 noundef 16, i32 noundef 31, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %107 = load ptr, ptr %104, align 4
  %108 = call i32 @regmap_update_bits_base(ptr noundef %107, i32 noundef 16, i32 noundef 2031616, i32 noundef 983040, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  store i32 0, ptr %4, align 4
  %109 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 3
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %110, i32 0, i32 12
  %112 = load i8, ptr %111, align 8
  %113 = and i8 %112, 1
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %123, label %115

115:                                              ; preds = %103
  %116 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %10, i32 0, i32 2
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %117, i32 0, i32 18
  %119 = load i32, ptr %118, align 4
  %120 = and i32 %119, 16
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %115
  store i32 268435456, ptr %4, align 4
  br label %123

123:                                              ; preds = %122, %115, %103
  %124 = phi i32 [ 268435456, %122 ], [ 0, %115 ], [ 0, %103 ]
  %125 = load ptr, ptr %104, align 4
  %126 = call i32 @regmap_update_bits_base(ptr noundef %125, i32 noundef 8, i32 noundef 805306368, i32 noundef %124, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %127

127:                                              ; preds = %123, %67, %47, %14
  %128 = phi i32 [ -22, %67 ], [ 0, %123 ], [ -22, %14 ], [ -22, %47 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret i32 %128
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_i2s_trigger(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  switch i32 %1, label %177 [
    i32 1, label %10
    i32 6, label %10
    i32 4, label %10
    i32 5, label %31
    i32 0, label %31
    i32 3, label %31
  ]

10:                                               ; preds = %3, %3, %3
  %11 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 1
  %14 = getelementptr inbounds %struct.rk_i2s_dev, ptr %9, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %14) #10
  %15 = getelementptr inbounds %struct.rk_i2s_dev, ptr %9, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  br i1 %13, label %17, label %24

17:                                               ; preds = %10
  %18 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 16, i32 noundef 16777216, i32 noundef 16777216, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %19 = load ptr, ptr %15, align 4
  %20 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 28, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %21 = getelementptr inbounds %struct.rk_i2s_dev, ptr %9, i32 0, i32 10
  store i8 1, ptr %21, align 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !11
  %22 = load i16, ptr %14, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr %14, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  br label %177

24:                                               ; preds = %10
  %25 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 16, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %26 = load ptr, ptr %15, align 4
  %27 = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 28, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %28 = getelementptr inbounds %struct.rk_i2s_dev, ptr %9, i32 0, i32 9
  store i8 1, ptr %28, align 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !11
  %29 = load i16, ptr %14, align 4
  %30 = add i16 %29, 1
  store i16 %30, ptr %14, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  br label %177

31:                                               ; preds = %3, %3, %3
  %32 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %106

35:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4
  %36 = getelementptr inbounds %struct.rk_i2s_dev, ptr %9, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %36) #10
  %37 = getelementptr inbounds %struct.rk_i2s_dev, ptr %9, i32 0, i32 10
  store i8 0, ptr %37, align 1
  %38 = getelementptr inbounds %struct.rk_i2s_dev, ptr %9, i32 0, i32 5
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 @regmap_update_bits_base(ptr noundef %39, i32 noundef 16, i32 noundef 16777216, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %41 = getelementptr inbounds %struct.rk_i2s_dev, ptr %9, i32 0, i32 9
  %42 = load i8, ptr %41, align 2, !range !9
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %103

44:                                               ; preds = %35
  %45 = load ptr, ptr %38, align 4
  %46 = tail call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef 28, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 32212200) #10
  %48 = load ptr, ptr %38, align 4
  %49 = tail call i32 @regmap_update_bits_base(ptr noundef %48, i32 noundef 32, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %50 = load ptr, ptr %38, align 4
  %51 = call i32 @regmap_read(ptr noundef %50, i32 noundef 32, ptr noundef nonnull %5) #10
  %52 = load i32, ptr %5, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %103, label %54

54:                                               ; preds = %44
  %55 = load ptr, ptr %38, align 4
  %56 = call i32 @regmap_read(ptr noundef %55, i32 noundef 32, ptr noundef nonnull %5) #10
  %57 = load i32, ptr %5, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %103, label %59

59:                                               ; preds = %54
  %60 = load ptr, ptr %38, align 4
  %61 = call i32 @regmap_read(ptr noundef %60, i32 noundef 32, ptr noundef nonnull %5) #10
  %62 = load i32, ptr %5, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %103, label %64

64:                                               ; preds = %59
  %65 = load ptr, ptr %38, align 4
  %66 = call i32 @regmap_read(ptr noundef %65, i32 noundef 32, ptr noundef nonnull %5) #10
  %67 = load i32, ptr %5, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %103, label %69

69:                                               ; preds = %64
  %70 = load ptr, ptr %38, align 4
  %71 = call i32 @regmap_read(ptr noundef %70, i32 noundef 32, ptr noundef nonnull %5) #10
  %72 = load i32, ptr %5, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %103, label %74

74:                                               ; preds = %69
  %75 = load ptr, ptr %38, align 4
  %76 = call i32 @regmap_read(ptr noundef %75, i32 noundef 32, ptr noundef nonnull %5) #10
  %77 = load i32, ptr %5, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %103, label %79

79:                                               ; preds = %74
  %80 = load ptr, ptr %38, align 4
  %81 = call i32 @regmap_read(ptr noundef %80, i32 noundef 32, ptr noundef nonnull %5) #10
  %82 = load i32, ptr %5, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %103, label %84

84:                                               ; preds = %79
  %85 = load ptr, ptr %38, align 4
  %86 = call i32 @regmap_read(ptr noundef %85, i32 noundef 32, ptr noundef nonnull %5) #10
  %87 = load i32, ptr %5, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %103, label %89

89:                                               ; preds = %84
  %90 = load ptr, ptr %38, align 4
  %91 = call i32 @regmap_read(ptr noundef %90, i32 noundef 32, ptr noundef nonnull %5) #10
  %92 = load i32, ptr %5, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %103, label %94

94:                                               ; preds = %89
  %95 = load ptr, ptr %38, align 4
  %96 = call i32 @regmap_read(ptr noundef %95, i32 noundef 32, ptr noundef nonnull %5) #10
  %97 = load i32, ptr %5, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %94
  %100 = load ptr, ptr %38, align 4
  %101 = call i32 @regmap_read(ptr noundef %100, i32 noundef 32, ptr noundef nonnull %5) #10
  %102 = load ptr, ptr %9, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %102, ptr noundef nonnull @.str.20) #11
  br label %103

103:                                              ; preds = %99, %94, %89, %84, %79, %74, %69, %64, %59, %54, %44, %35
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !11
  %104 = load i16, ptr %36, align 4
  %105 = add i16 %104, 1
  store i16 %105, ptr %36, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !12
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  br label %177

106:                                              ; preds = %31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4
  %107 = getelementptr inbounds %struct.rk_i2s_dev, ptr %9, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %107) #10
  %108 = getelementptr inbounds %struct.rk_i2s_dev, ptr %9, i32 0, i32 9
  store i8 0, ptr %108, align 2
  %109 = getelementptr inbounds %struct.rk_i2s_dev, ptr %9, i32 0, i32 5
  %110 = load ptr, ptr %109, align 4
  %111 = tail call i32 @regmap_update_bits_base(ptr noundef %110, i32 noundef 16, i32 noundef 256, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %112 = getelementptr inbounds %struct.rk_i2s_dev, ptr %9, i32 0, i32 10
  %113 = load i8, ptr %112, align 1, !range !9
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %115, label %174

115:                                              ; preds = %106
  %116 = load ptr, ptr %109, align 4
  %117 = tail call i32 @regmap_update_bits_base(ptr noundef %116, i32 noundef 28, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %118 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %118(i32 noundef 32212200) #10
  %119 = load ptr, ptr %109, align 4
  %120 = tail call i32 @regmap_update_bits_base(ptr noundef %119, i32 noundef 32, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %121 = load ptr, ptr %109, align 4
  %122 = call i32 @regmap_read(ptr noundef %121, i32 noundef 32, ptr noundef nonnull %4) #10
  %123 = load i32, ptr %4, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %174, label %125

125:                                              ; preds = %115
  %126 = load ptr, ptr %109, align 4
  %127 = call i32 @regmap_read(ptr noundef %126, i32 noundef 32, ptr noundef nonnull %4) #10
  %128 = load i32, ptr %4, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %174, label %130

130:                                              ; preds = %125
  %131 = load ptr, ptr %109, align 4
  %132 = call i32 @regmap_read(ptr noundef %131, i32 noundef 32, ptr noundef nonnull %4) #10
  %133 = load i32, ptr %4, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %174, label %135

135:                                              ; preds = %130
  %136 = load ptr, ptr %109, align 4
  %137 = call i32 @regmap_read(ptr noundef %136, i32 noundef 32, ptr noundef nonnull %4) #10
  %138 = load i32, ptr %4, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %174, label %140

140:                                              ; preds = %135
  %141 = load ptr, ptr %109, align 4
  %142 = call i32 @regmap_read(ptr noundef %141, i32 noundef 32, ptr noundef nonnull %4) #10
  %143 = load i32, ptr %4, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %174, label %145

145:                                              ; preds = %140
  %146 = load ptr, ptr %109, align 4
  %147 = call i32 @regmap_read(ptr noundef %146, i32 noundef 32, ptr noundef nonnull %4) #10
  %148 = load i32, ptr %4, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %174, label %150

150:                                              ; preds = %145
  %151 = load ptr, ptr %109, align 4
  %152 = call i32 @regmap_read(ptr noundef %151, i32 noundef 32, ptr noundef nonnull %4) #10
  %153 = load i32, ptr %4, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %174, label %155

155:                                              ; preds = %150
  %156 = load ptr, ptr %109, align 4
  %157 = call i32 @regmap_read(ptr noundef %156, i32 noundef 32, ptr noundef nonnull %4) #10
  %158 = load i32, ptr %4, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %174, label %160

160:                                              ; preds = %155
  %161 = load ptr, ptr %109, align 4
  %162 = call i32 @regmap_read(ptr noundef %161, i32 noundef 32, ptr noundef nonnull %4) #10
  %163 = load i32, ptr %4, align 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %174, label %165

165:                                              ; preds = %160
  %166 = load ptr, ptr %109, align 4
  %167 = call i32 @regmap_read(ptr noundef %166, i32 noundef 32, ptr noundef nonnull %4) #10
  %168 = load i32, ptr %4, align 4
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %174, label %170

170:                                              ; preds = %165
  %171 = load ptr, ptr %109, align 4
  %172 = call i32 @regmap_read(ptr noundef %171, i32 noundef 32, ptr noundef nonnull %4) #10
  %173 = load ptr, ptr %9, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %173, ptr noundef nonnull @.str.20) #11
  br label %174

174:                                              ; preds = %170, %165, %160, %155, %150, %145, %140, %135, %130, %125, %115, %106
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !11
  %175 = load i16, ptr %107, align 4
  %176 = add i16 %175, 1
  store i16 %176, ptr %107, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !12
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  br label %177

177:                                              ; preds = %174, %103, %24, %17, %3
  %178 = phi i32 [ 0, %103 ], [ 0, %174 ], [ 0, %17 ], [ 0, %24 ], [ -22, %3 ]
  ret i32 %178
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #9

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }

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
!8 = !{!"auto-init"}
!9 = !{i8 0, i8 2}
!10 = !{i32 0, i32 33}
!11 = !{i64 2148943005}
!12 = !{i64 2148938829}
!13 = !{i64 2148938904, i64 2148938931, i64 2148938978, i64 2148939000, i64 2148939028, i64 2148939048}
!14 = !{i64 2148966008}
