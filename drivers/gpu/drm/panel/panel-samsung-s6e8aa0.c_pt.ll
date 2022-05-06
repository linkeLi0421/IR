; ModuleID = '/llk/IR/drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.mipi_dsi_driver = type { %struct.device_driver, ptr, ptr, ptr }
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
%struct.drm_panel_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.s6e8aa0_variant = type { i8, ptr }
%struct.mipi_dsi_device = type { ptr, %struct.device, [20 x i8], i32, i32, i32, i32, i32, i32 }
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
%struct.s6e8aa0 = type { ptr, %struct.drm_panel, [2 x %struct.regulator_bulk_data], ptr, i32, i32, i32, i8, i8, %struct.videomode, i32, i32, i8, i8, ptr, i32, i32 }
%struct.drm_panel = type { ptr, ptr, ptr, i32, %struct.list_head }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.videomode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.71 }
%union.anon.71 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }

@s6e8aa0_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s6e8aa0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author263 = internal constant [42 x i8] c"author=Donghwa Lee <dh09.lee@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author264 = internal constant [39 x i8] c"author=Inki Dae <inki.dae@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author265 = internal constant [47 x i8] c"author=Joongmock Shin <jmock.shin@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author266 = internal constant [46 x i8] c"author=Eunchul Kim <chulspro.kim@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author267 = internal constant [40 x i8] c"author=Tomasz Figa <t.figa@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author268 = internal constant [43 x i8] c"author=Andrzej Hajda <a.hajda@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description269 = internal constant [59 x i8] c"description=MIPI-DSI based s6e8aa0 AMOLED LCD Panel Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license270 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@s6e8aa0_driver = internal global %struct.mipi_dsi_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @s6e8aa0_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @s6e8aa0_probe, ptr @s6e8aa0_remove, ptr null }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [22 x i8] c"panel-samsung-s6e8aa0\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"vdd3\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"vci\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"failed to get regulators: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"cannot get reset-gpios %ld\0A\00", align 1
@s6e8aa0_drm_funcs = internal constant %struct.drm_panel_funcs { ptr @s6e8aa0_prepare, ptr @s6e8aa0_enable, ptr @s6e8aa0_disable, ptr @s6e8aa0_unprepare, ptr @s6e8aa0_get_modes, ptr null }, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"power-on-delay\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"reset-delay\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"init-delay\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"panel-width-mm\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"panel-height-mm\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"flip-horizontal\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"flip-vertical\00", align 1
@s6e8aa0_set_sequence.d = internal constant [1 x i8] c")", align 1
@.str.13 = private unnamed_addr constant [51 x i8] c"error %d setting maximum return packet size to %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"read id failed\0A\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"ID: 0x%2x, 0x%2x, 0x%2x\0A\00", align 1
@s6e8aa0_variants = internal constant [4 x %struct.s6e8aa0_variant] [%struct.s6e8aa0_variant { i8 32, ptr @s6e8aa0_gamma_tables_v32 }, %struct.s6e8aa0_variant { i8 96, ptr @s6e8aa0_gamma_tables_v96 }, %struct.s6e8aa0_variant { i8 -114, ptr @s6e8aa0_gamma_tables_v142 }, %struct.s6e8aa0_variant { i8 -46, ptr @s6e8aa0_gamma_tables_v142 }], align 4
@.str.16 = private unnamed_addr constant [32 x i8] c"unsupported display version %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"error %d reading dcs seq(%#x)\0A\00", align 1
@s6e8aa0_gamma_tables_v32 = internal constant [25 x [26 x i8]] [[26 x i8] c"\FA\01C\14Er^k\A1\A7\9A\B4\CB\B8\92\AC\97\B4\C3\B5\00N\007\00X", [26 x i8] c"\FA\01C\14E\85q}\A6\B6\A1\B5\CA\BA\93\AC\98\B2\C0\AF\00Y\00C\00d", [26 x i8] c"\FA\01C\14E\A4\94\9E\A0\BB\9C\C3\D2\C6\93\AA\95\B7\C2\B4\00e\00P\00t", [26 x i8] c"\FA\01C\14E\AD\A1\A6\A0\B9\9B\C3\D1\C8\90\A6\90\BB\C3\B7\00o\00[\00\80", [26 x i8] c"\FA\01C\14E\A6\9D\9F\9F\B8\9A\C7\D5\CC\90\A5\8F\B8\C1\B6\00t\00`\00\85", [26 x i8] c"\FA\01C\14E\B3\AE\AE\9E\B7\9A\C8\D6\CE\91\A6\90\B6\C0\B3\00x\00e\00\8A", [26 x i8] c"\FA\01C\14E\AD\A9\A8\A3\B9\9E\C4\D3\CB\94\A6\90\B6\BF\B3\00|\00i\00\8E", [26 x i8] c"\FA\01C\14E\AF\AF\A9\A5\BC\A2\C7\D5\CD\93\A5\8F\B4\BD\B1\00\83\00p\00\96", [26 x i8] c"\FA\01C\14E\A9\AB\A3\AA\BF\A7\C5\D3\CB\93\A5\8F\B2\BB\B0\00\86\00t\00\9B", [26 x i8] c"\FA\01C\14E\B1\B5\AB\AB\C0\A9\C7\D4\CC\94\A4\8F\B1\BB\AF\00\8A\00w\00\9E", [26 x i8] c"\FA\01C\14E\AD\B2\A7\AE\C2\AB\C5\D3\CA\93\A4\8F\B1\BA\AE\00\8D\00{\00\A2", [26 x i8] c"\FA\01C\14E\A9\AF\A3\B0\C3\AE\C4\D1\C8\93\A4\8F\B1\BA\AF\00\8F\00}\00\A5", [26 x i8] c"\FA\01C\14E\B4\BD\AF\AE\C1\AB\C2\D0\C6\94\A4\8F\B1\BA\AF\00\92\00\80\00\A8", [26 x i8] c"\FA\01C\14E\B0\B9\AC\AD\C1\AB\C4\D1\C7\95\A4\90\B0\B9\AD\00\95\00\84\00\AC", [26 x i8] c"\FA\01C\14E\AD\B6\A7\AF\C2\AE\C5\D1\C7\93\A3\8E\B0\B9\AD\00\98\00\86\00\AF", [26 x i8] c"\FA\01C\14E\B4\BF\AF\AD\C1\AB\C3\D0\C6\94\A3\8F\AF\B8\AC\00\9A\00\89\00\B2", [26 x i8] c"\FA\01C\14E\B0\BC\AC\AF\C2\AD\C2\CF\C4\94\A3\90\AF\B8\AD\00\9C\00\8B\00\B5", [26 x i8] c"\FA\01C\14E\AD\B9\A7\B1\C4\AF\C3\CF\C5\94\A3\8F\AE\B7\AC\00\9F\00\8E\00\B8", [26 x i8] c"\FA\01C\14E\AD\B9\A7\AF\C2\AD\C1\CE\C3\95\A3\90\AD\B6\AB\00\A2\00\91\00\BB", [26 x i8] c"\FA\01C\14E\B1\BE\AC\B1\C4\AF\C1\CD\C1\95\A4\91\AD\B6\AB\00\A4\00\93\00\BD", [26 x i8] c"\FA\01C\14E\AD\BB\A8\B3\C5\B2\C1\CD\C2\95\A3\90\AD\B6\AB\00\A6\00\95\00\C0", [26 x i8] c"\FA\01C\14E\AD\BB\A8\B0\C3\AF\C2\CE\C2\94\A2\90\AC\B6\AB\00\A8\00\98\00\C3", [26 x i8] c"\FA\01C\14E\A9\B8\A5\B3\C5\B2\C1\CC\C0\95\A2\90\AD\B6\AB\00\AA\00\9A\00\C5", [26 x i8] c"\FA\01C\14E\B0\C0\AC\B0\C3\AF\C1\CD\C1\95\A2\90\AC\B5\A9\00\AC\00\9C\00\C8", [26 x i8] c"\FA\01C\14E\AD\BD\A8\AF\C2\AF\C1\CC\C0\95\A2\90\AC\B5\AA\00\B1\00\A1\00\CC"], align 1
@s6e8aa0_gamma_tables_v96 = internal constant [25 x [26 x i8]] [[26 x i8] c"\FA\01\1F\1F\1F\FF\00\FF\DF\1F\D7\DC\B7\E1\C0\AF\C4\D2\D0\CF\00M\00@\00_", [26 x i8] c"\FA\01\1F\1F\1F\FF\00\FF\D55\CF\DC\C1\E1\BF\B3\C1\D2\D1\CE\00S\00F\00g", [26 x i8] c"\FA\01\1F\1F\1F\FF\00\FF\D2d\CF\DB\C6\E1\BD\B3\BD\D2\D2\CE\00Y\00K\00n", [26 x i8] c"\FA\01\1F\1F\1F\FF\00\FF\D0|\CF\DB\C9\E0\BC\B4\BB\CF\D1\CC\00_\00P\00u", [26 x i8] c"\FA\01\1F\1F\1F\FF\00\FF\D0\8E\D1\DB\CC\DF\BB\B6\B9\D0\D1\CD\00c\00T\00z", [26 x i8] c"\FA\01\1F\1F\1F\FF\00\FF\D1\9E\D5\DA\CD\DD\BB\B7\B9\CE\CE\C9\00h\00Y\00\81", [26 x i8] c"\FA\01\1F\1F\1F\FF\00\FF\D0\A5\D6\DA\CF\DD\BB\B7\B8\CC\CD\C7\00l\00\\\00\86", [26 x i8] c"\FA\01\1F\1F\1F\FF\1F\FE\D0\AE\D7\D9\D0\DB\B9\B6\B5\CA\CC\C5\00t\00c\00\90", [26 x i8] c"\FA\01\1F\1F\1F\FF\1F\F9\CF\B0\D6\D9\D1\DB\B9\B6\B4\CA\CB\C5\00w\00f\00\94", [26 x i8] c"\FA\01\1F\1F\1F\FF\1F\F7\CF\B3\D7\D8\D1\D9\B7\B6\B3\C9\CA\C3\00{\00i\00\99", [26 x i8] c"\FA\01\1F\1F\1F\FD/\F7\DF\B5\D6\D8\D1\D8\B6\B5\B2\CA\CB\C4\00~\00l\00\9D", [26 x i8] c"\FA\01\1F\1F\1F\FA/\F5\CE\B6\D5\D7\D2\D8\B6\B4\B0\C7\C9\C1\00\84\00q\00\A5", [26 x i8] c"\FA\01\1F\1F\1F\F7/\F2\CE\B9\D5\D8\D2\D8\B4\B4\AF\C7\C9\C1\00\87\00s\00\A8", [26 x i8] c"\FA\01\1F\1F\1F\F5/\F0\DF\BA\D5\D7\D2\D7\B4\B4\AF\C5\C7\BF\00\8A\00v\00\AC", [26 x i8] c"\FA\01\1F\1F\1F\F2/\ED\CE\BB\D4\D6\D2\D6\B5\B4\AF\C5\C7\BF\00\8C\00x\00\AF", [26 x i8] c"\FA\01\1F\1F\1F\EF/\EB\CD\BB\D2\D7\D3\D6\B3\B4\AE\C5\C6\BE\00\91\00}\00\B6", [26 x i8] c"\FA\01\1F\1F\1F\EE/\EA\CE\BD\D4\D6\D2\D5\B2\B3\AD\C3\C4\BB\00\94\00\7F\00\BA", [26 x i8] c"\FA\01\1F\1F\1F\EC/\E8\CE\BE\D3\D6\D3\D5\B2\B2\AC\C3\C5\BC\00\96\00\81\00\BD", [26 x i8] c"\FA\01\1F\1F\1F\EB/\E7\CE\BF\D3\D6\D2\D5\B1\B2\AB\C2\C4\BB\00\99\00\83\00\C0", [26 x i8] c"\FA\01\1F\1F\1F\EF_\E9\CA\BF\D3\D5\D2\D4\B2\B2\AB\C1\C4\BA\00\9B\00\85\00\C3", [26 x i8] c"\FA\01\1F\1F\1F\EA_\E8\EE\BF\D2\D5\D2\D4\B1\B2\AB\C1\C2\B9\00\9D\00\87\00\C6", [26 x i8] c"\FA\01\1F\1F\1F\E9_\E7\CD\BF\D2\D6\D2\D4\B1\B2\AB\BE\C0\B7\00\A1\00\8A\00\CA", [26 x i8] c"\FA\01\1F\1F\1F\E8a\E6\CD\BF\D1\D6\D3\D4\AF\B0\A9\BE\C1\B7\00\A3\00\8B\00\CE", [26 x i8] c"\FA\01\1F\1F\1F\E8b\E5\CC\C0\D0\D6\D2\D4\AF\B1\A9\BD\C0\B6\00\A5\00\8D\00\D0", [26 x i8] c"\FA\01\1F\1F\1F\E7\7F\E3\CC\C1\D0\D5\D3\D3\AE\AF\A8\BE\C0\B7\00\A8\00\90\00\D3"], align 1
@s6e8aa0_gamma_tables_v142 = internal constant [25 x [26 x i8]] [[26 x i8] c"\FA\01q1{bUU\AF\B1\B1\BD\CE\B7\9A\B1\90\B2\C4\AE\00`\00@\00p", [26 x i8] c"\FA\01q1{thi\B8\C1\B7\BD\CD\B8\93\AB\88\B4\C4\B1\00k\00M\00}", [26 x i8] c"\FA\01q1{\95\8A\89\B4\C6\B2\C5\D2\BF\90\A8\85\B5\C4\B3\00{\00]\00\8F", [26 x i8] c"\FA\01q1{\9F\98\92\B3\C4\B0\BC\CC\B4\91\A6\87\B5\C5\B4\00\87\00j\00\9E", [26 x i8] c"\FA\01q1{\99\93\8B\B2\C2\B0\BD\CE\B4\90\A6\87\B3\C3\B2\00\8D\00p\00\A4", [26 x i8] c"\FA\01q1{\A7\A5\99\B2\C2\B0\BB\CD\B1\93\A7\8A\B2\C1\B0\00\92\00u\00\AA", [26 x i8] c"\FA\01q1{\A0\A0\93\B6\C4\B4\B5\C8\AA\94\A9\8C\B2\C0\B0\00\97\00z\00\AF", [26 x i8] c"\FA\01q1{\A3\A7\96\B3\C2\B0\BA\CB\B0\94\A8\8C\B0\BF\AF\00\9F\00\83\00\B9", [26 x i8] c"\FA\01q1{\9D\A2\90\B6\C5\B3\B8\C9\AE\94\A8\8D\AF\BD\AD\00\A4\00\88\00\BF", [26 x i8] c"\FA\01q1{\A6\AC\97\B4\C4\B1\BB\CB\B2\93\A7\8D\AE\BC\AD\00\A7\00\8C\00\C3", [26 x i8] c"\FA\01q1{\A2\A9\93\B6\C5\B2\BA\C9\B0\93\A7\8D\AE\BB\AC\00\AB\00\90\00\C8", [26 x i8] c"\FA\01q1{\9E\A6\8F\B7\C6\B3\B8\C8\B0\93\A6\8C\AE\BB\AD\00\AE\00\93\00\CC", [26 x i8] c"\FA\01q1{\AB\B4\9C\B3\C3\AF\B7\C7\AF\93\A6\8C\AF\BC\AD\00\B1\00\97\00\CF", [26 x i8] c"\FA\01q1{\A6\B1\98\B1\C2\AB\BA\C9\B2\93\A6\8D\AE\BA\AB\00\B5\00\9B\00\D4", [26 x i8] c"\FA\01q1{\A3\AE\94\B2\C3\AC\BB\CA\B4\91\A4\8A\AE\BA\AC\00\B8\00\9E\00\D8", [26 x i8] c"\FA\01q1{\AB\B7\9C\AE\C0\A9\BA\C9\B3\92\A5\8B\AD\B9\AB\00\BB\00\A1\00\DC", [26 x i8] c"\FA\01q1{\A7\B4\97\B0\C1\AA\B9\C8\B2\92\A5\8C\AE\B9\AB\00\BE\00\A4\00\DF", [26 x i8] c"\FA\01q1{\A3\B0\94\B0\C2\AB\BB\C9\B3\91\A4\8B\AD\B8\AA\00\C1\00\A8\00\E2", [26 x i8] c"\FA\01q1{\A3\B0\94\AE\BF\A8\B9\C8\B3\92\A4\8B\AD\B7\A9\00\C4\00\AB\00\E6", [26 x i8] c"\FA\01q1{\A7\B6\98\AF\C0\A8\B8\C7\B2\93\A5\8D\AD\B7\A9\00\C7\00\AE\00\E9", [26 x i8] c"\FA\01q1{\A4\B3\95\AF\C1\A9\B9\C8\B3\92\A4\8B\AD\B7\AA\00\C9\00\B0\00\EC", [26 x i8] c"\FA\01q1{\A4\B3\95\AC\BE\A6\BB\C9\B4\90\A3\8A\AD\B7\A9\00\CC\00\B4\00\F0", [26 x i8] c"\FA\01q1{\A0\B0\91\AE\C0\A6\BA\C8\B4\91\A4\8B\AD\B7\A9\00\CF\00\B7\00\F3", [26 x i8] c"\FA\01q1{\A7\B8\98\AB\BD\A4\BB\C9\B5\91\A3\8B\AC\B6\A8\00\D1\00\B9\00\F6", [26 x i8] c"\FA\01q1{\A4\B5\95\A9\BC\A1\BB\C9\B5\91\A3\8A\AD\B6\A8\00\D6\00\BF\00\FC"], align 1
@s6e8aa0_panel_init.d = internal constant [1 x i8] c"\11", align 1
@s6e8aa0_apply_level_1_key.d = internal constant [3 x i8] c"\F0ZZ", align 1
@s6e8aa0_apply_level_2_key.d = internal constant [3 x i8] c"\FCZZ", align 1
@s6e8aa0_panel_cond_set.d = internal constant [39 x i8] c"\F8\195\00\00\00\94\00<x\10'\08n\00\00\00\00\04\08n\00\00\00\00\07\07#n\C0\C1\01\81\C1\00\C3\F6\F6\C1", align 1
@s6e8aa0_panel_cond_set_v142.aids = internal unnamed_addr constant [8 x i8] c"\04\04\04\04\04`\80\A0", align 1
@s6e8aa0_display_condition_set.d = internal constant [4 x i8] c"\F2\80\03\0D", align 1
@s6e8aa0_brightness_set.d = internal constant [2 x i8] c"\F7\03", align 1
@s6e8aa0_etc_source_control.d = internal constant [4 x i8] c"\F6\00\02\00", align 1
@s6e8aa0_etc_pentile_control.pent32 = internal constant [10 x i8] c"\B6\0C\02\032\C0DD\C0\00", align 1
@s6e8aa0_etc_pentile_control.pent142 = internal constant [10 x i8] c"\B6\0C\02\032\FFDD\C0\00", align 1
@s6e8aa0_elvss_nvm_set.d = internal constant [15 x i8] c"\D9\14@\0C\CB\CEn\C4\07@A\C1\00`\19", align 1
@s6e8aa0_etc_power_control.pwr142 = internal constant [8 x i8] c"\F4\CF\0A\12\10\1E3\02", align 1
@s6e8aa0_etc_power_control.pwr32 = internal constant [8 x i8] c"\F4\CF\0A\15\10\193\02", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"error %zd writing dcs seq: %*ph\0A\00", align 1
@s6e8aa0_unprepare.d = internal constant [1 x i8] c"\10", align 1
@s6e8aa0_unprepare.d.19 = internal constant [1 x i8] c"(", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"failed to create a new display mode\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author263, ptr @__UNIQUE_ID_author264, ptr @__UNIQUE_ID_author265, ptr @__UNIQUE_ID_author266, ptr @__UNIQUE_ID_author267, ptr @__UNIQUE_ID_author268, ptr @__UNIQUE_ID_description269, ptr @__UNIQUE_ID_license270], section "llvm.metadata"
@switch.table.s6e8aa0_elvss_nvm_set = private unnamed_addr constant [25 x i8] c"\DF\DF\DF\DF\DF\DF\DF\DD\DD\DD\DD\DD\D9\D9\D9\D9\D0\D0\D0\D0\D0\D0\D0\D0\D0", align 1

@__mod_of__s6e8aa0_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @s6e8aa0_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @mipi_dsi_driver_register_full(ptr noundef nonnull @s6e8aa0_driver, ptr noundef nonnull @__this_module) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @mipi_dsi_driver_unregister(ptr noundef nonnull @s6e8aa0_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_driver_register_full(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s6e8aa0_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 1
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 136, i32 noundef 3520) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %53, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 1, i32 8
  store ptr %3, ptr %6, align 8
  store ptr %2, ptr %3, align 4
  %7 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 4
  store i32 4, ptr %7, align 8
  %8 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 5
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 6
  store i32 1003, ptr %9, align 8
  %10 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 1, i32 25
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.s6e8aa0, ptr %3, i32 0, i32 9
  %13 = tail call i32 @of_get_videomode(ptr noundef %11, ptr noundef %12, i32 noundef 0) #7
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %53, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.s6e8aa0, ptr %3, i32 0, i32 4
  %17 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %11, ptr noundef nonnull @.str.6, ptr noundef %16, i32 noundef 1, i32 noundef 0) #7
  %18 = getelementptr inbounds %struct.s6e8aa0, ptr %3, i32 0, i32 5
  %19 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %11, ptr noundef nonnull @.str.7, ptr noundef %18, i32 noundef 1, i32 noundef 0) #7
  %20 = getelementptr inbounds %struct.s6e8aa0, ptr %3, i32 0, i32 6
  %21 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %11, ptr noundef nonnull @.str.8, ptr noundef %20, i32 noundef 1, i32 noundef 0) #7
  %22 = getelementptr inbounds %struct.s6e8aa0, ptr %3, i32 0, i32 10
  %23 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %11, ptr noundef nonnull @.str.9, ptr noundef %22, i32 noundef 1, i32 noundef 0) #7
  %24 = getelementptr inbounds %struct.s6e8aa0, ptr %3, i32 0, i32 11
  %25 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %11, ptr noundef nonnull @.str.10, ptr noundef %24, i32 noundef 1, i32 noundef 0) #7
  %26 = tail call ptr @of_find_property(ptr noundef %11, ptr noundef nonnull @.str.11, ptr noundef null) #7
  %27 = icmp ne ptr %26, null
  %28 = getelementptr inbounds %struct.s6e8aa0, ptr %3, i32 0, i32 7
  %29 = zext i1 %27 to i8
  store i8 %29, ptr %28, align 4
  %30 = tail call ptr @of_find_property(ptr noundef %11, ptr noundef nonnull @.str.12, ptr noundef null) #7
  %31 = icmp ne ptr %30, null
  %32 = getelementptr inbounds %struct.s6e8aa0, ptr %3, i32 0, i32 8
  %33 = zext i1 %31 to i8
  store i8 %33, ptr %32, align 1
  %34 = getelementptr inbounds %struct.s6e8aa0, ptr %3, i32 0, i32 2
  store ptr @.str.1, ptr %34, align 4
  %35 = getelementptr %struct.s6e8aa0, ptr %3, i32 0, i32 2, i32 1
  store ptr @.str.2, ptr %35, align 4
  %36 = tail call i32 @devm_regulator_bulk_get(ptr noundef %2, i32 noundef 2, ptr noundef %34) #7
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %36) #8
  br label %53

39:                                               ; preds = %15
  %40 = tail call ptr @devm_gpiod_get(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef 7) #7
  %41 = getelementptr inbounds %struct.s6e8aa0, ptr %3, i32 0, i32 3
  store ptr %40, ptr %41, align 4
  %42 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = ptrtoint ptr %40 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef %44) #8
  %45 = load ptr, ptr %41, align 4
  %46 = ptrtoint ptr %45 to i32
  br label %53

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.s6e8aa0, ptr %3, i32 0, i32 15
  store i32 24, ptr %48, align 4
  %49 = getelementptr inbounds %struct.s6e8aa0, ptr %3, i32 0, i32 1
  tail call void @drm_panel_init(ptr noundef %49, ptr noundef %2, ptr noundef nonnull @s6e8aa0_drm_funcs, i32 noundef 16) #7
  tail call void @drm_panel_add(ptr noundef %49) #7
  %50 = tail call i32 @mipi_dsi_attach(ptr noundef %0) #7
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  tail call void @drm_panel_remove(ptr noundef %49) #7
  br label %53

53:                                               ; preds = %52, %47, %43, %38, %5, %1
  %54 = phi i32 [ %36, %38 ], [ %46, %43 ], [ -12, %1 ], [ %50, %52 ], [ %50, %47 ], [ %13, %5 ]
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s6e8aa0_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 1, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @mipi_dsi_detach(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.s6e8aa0, ptr %3, i32 0, i32 1
  tail call void @drm_panel_remove(ptr noundef %5) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_videomode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s6e8aa0_prepare(ptr noundef %0) #2 {
  %2 = alloca [3 x i8], align 1
  %3 = alloca [39 x i8], align 1
  %4 = alloca [3 x i8], align 1
  %5 = getelementptr i8, ptr %0, i32 -4
  %6 = getelementptr i8, ptr %0, i32 24
  %7 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %6) #7
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %325, label %9

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %0, i32 52
  %11 = load i32, ptr %10, align 4
  tail call void @msleep(i32 noundef %11) #7
  %12 = getelementptr i8, ptr %0, i32 48
  %13 = load ptr, ptr %12, align 4
  tail call void @gpiod_set_value(ptr noundef %13, i32 noundef 0) #7
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #7
  %14 = load ptr, ptr %12, align 4
  tail call void @gpiod_set_value(ptr noundef %14, i32 noundef 1) #7
  %15 = getelementptr i8, ptr %0, i32 56
  %16 = load i32, ptr %15, align 4
  tail call void @msleep(i32 noundef %16) #7
  %17 = getelementptr i8, ptr %0, i32 128
  %18 = load i32, ptr %17, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %9
  %21 = load ptr, ptr %5, align 4
  %22 = getelementptr i8, ptr %21, i32 -8
  %23 = tail call i32 @mipi_dsi_set_maximum_return_packet_size(ptr noundef %22, i16 noundef zeroext 3) #7
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.13, i32 noundef %23, i32 noundef 3) #8
  store i32 %23, ptr %17, align 4
  br label %27

27:                                               ; preds = %25, %9
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %4, i8 0, i32 3, i1 false) #7, !annotation !8
  br label %43

28:                                               ; preds = %20
  %29 = load i32, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %4, i8 0, i32 3, i1 false) #7, !annotation !8
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %43, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %5, align 4
  %33 = getelementptr i8, ptr %32, i32 -8
  %34 = call i32 @mipi_dsi_dcs_read(ptr noundef %33, i8 noundef zeroext -47, ptr noundef nonnull %4, i32 noundef 3) #7
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.17, i32 noundef %34, i32 noundef 209) #8
  store i32 %34, ptr %17, align 4
  br label %43

38:                                               ; preds = %31
  %39 = icmp ult i32 %34, 3
  %40 = load i8, ptr %4, align 1
  %41 = icmp eq i8 %40, 0
  %42 = select i1 %39, i1 true, i1 %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %38, %36, %28, %27
  %44 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.14) #8
  br label %61

45:                                               ; preds = %38
  %46 = zext i8 %40 to i32
  %47 = load ptr, ptr %5, align 4
  %48 = getelementptr inbounds [3 x i8], ptr %4, i32 0, i32 1
  %49 = load i8, ptr %48, align 1
  %50 = zext i8 %49 to i32
  %51 = getelementptr inbounds [3 x i8], ptr %4, i32 0, i32 2
  %52 = load i8, ptr %51, align 1
  %53 = zext i8 %52 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %47, ptr noundef nonnull @.str.15, i32 noundef %46, i32 noundef %50, i32 noundef %53) #8
  %54 = load i8, ptr %48, align 1
  switch i8 %54, label %55 [
    i8 32, label %63
    i8 96, label %58
    i8 -114, label %59
    i8 -46, label %60
  ]

55:                                               ; preds = %45
  %56 = load ptr, ptr %5, align 4
  %57 = zext i8 %54 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.16, i32 noundef %57) #8
  br label %61

58:                                               ; preds = %45
  br label %63

59:                                               ; preds = %45
  br label %63

60:                                               ; preds = %45
  br label %63

61:                                               ; preds = %55, %43
  %62 = phi i32 [ -22, %55 ], [ -5, %43 ]
  store i32 %62, ptr %17, align 4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #7
  br label %91

63:                                               ; preds = %60, %59, %58, %45
  %64 = phi i32 [ 0, %45 ], [ 1, %58 ], [ 2, %59 ], [ 3, %60 ]
  %65 = getelementptr [4 x %struct.s6e8aa0_variant], ptr @s6e8aa0_variants, i32 0, i32 %64
  %66 = getelementptr i8, ptr %0, i32 120
  store ptr %65, ptr %66, align 4
  %67 = getelementptr i8, ptr %0, i32 116
  store i8 %54, ptr %67, align 4
  %68 = load i8, ptr %51, align 1
  %69 = getelementptr i8, ptr %0, i32 117
  store i8 %68, ptr %69, align 1
  %70 = load i32, ptr %17, align 4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #7
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %91, label %72

72:                                               ; preds = %63
  %73 = load ptr, ptr %5, align 4
  %74 = getelementptr i8, ptr %73, i32 -8
  %75 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %74, ptr noundef nonnull @s6e8aa0_apply_level_1_key.d, i32 noundef 3) #7
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.18, i32 noundef %75, i32 noundef 3, ptr noundef nonnull @s6e8aa0_apply_level_1_key.d) #8
  br label %89

79:                                               ; preds = %72
  %80 = load i32, ptr %17, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %91, label %82

82:                                               ; preds = %79
  %83 = load ptr, ptr %5, align 4
  %84 = getelementptr i8, ptr %83, i32 -8
  %85 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %84, ptr noundef nonnull @s6e8aa0_apply_level_2_key.d, i32 noundef 3) #7
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %88, ptr noundef nonnull @.str.18, i32 noundef %85, i32 noundef 3, ptr noundef nonnull @s6e8aa0_apply_level_2_key.d) #8
  br label %89

89:                                               ; preds = %87, %77
  %90 = phi i32 [ %75, %77 ], [ %85, %87 ]
  store i32 %90, ptr %17, align 4
  br label %91

91:                                               ; preds = %89, %82, %79, %63, %61
  call void @msleep(i32 noundef 20) #7
  %92 = load i32, ptr %17, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %101, label %94

94:                                               ; preds = %91
  %95 = load ptr, ptr %5, align 4
  %96 = getelementptr i8, ptr %95, i32 -8
  %97 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %96, ptr noundef nonnull @s6e8aa0_panel_init.d, i32 noundef 1) #7
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %100, ptr noundef nonnull @.str.18, i32 noundef %97, i32 noundef 1, ptr noundef nonnull @s6e8aa0_panel_init.d) #8
  store i32 %97, ptr %17, align 4
  br label %101

101:                                              ; preds = %99, %94, %91
  call void @msleep(i32 noundef 40) #7
  %102 = getelementptr i8, ptr %0, i32 116
  %103 = load i8, ptr %102, align 4
  %104 = icmp ult i8 %103, -114
  br i1 %104, label %105, label %115

105:                                              ; preds = %101
  %106 = load i32, ptr %17, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %268, label %108

108:                                              ; preds = %105
  %109 = load ptr, ptr %5, align 4
  %110 = getelementptr i8, ptr %109, i32 -8
  %111 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %110, ptr noundef nonnull @s6e8aa0_panel_cond_set.d, i32 noundef 39) #7
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %186

113:                                              ; preds = %108
  %114 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %114, ptr noundef nonnull @.str.18, i32 noundef %111, i32 noundef 39, ptr noundef nonnull @s6e8aa0_panel_cond_set.d) #8
  store i32 %111, ptr %17, align 4
  br label %245

115:                                              ; preds = %101
  %116 = getelementptr i8, ptr %0, i32 117
  %117 = load i8, ptr %116, align 1
  %118 = lshr i8 %117, 5
  %119 = zext i8 %118 to i32
  %120 = getelementptr [8 x i8], ptr @s6e8aa0_panel_cond_set_v142.aids, i32 0, i32 %119
  %121 = load i8, ptr %120, align 1
  %122 = getelementptr i8, ptr %0, i32 65
  %123 = load i8, ptr %122, align 1, !range !9
  %124 = icmp eq i8 %123, 0
  %125 = select i1 %124, i8 61, i8 57
  %126 = getelementptr i8, ptr %0, i32 64
  %127 = load i8, ptr %126, align 4, !range !9
  %128 = icmp eq i8 %127, 0
  %129 = and i8 %125, 29
  %130 = select i1 %128, i8 %125, i8 %129
  %131 = select i1 %128, i1 %124, i1 false
  br i1 %131, label %133, label %132

132:                                              ; preds = %115
  br label %133

133:                                              ; preds = %132, %115
  %134 = phi i8 [ 1, %132 ], [ 8, %115 ]
  %135 = phi i8 [ 65, %132 ], [ 72, %115 ]
  %136 = phi i8 [ -10, %132 ], [ -1, %115 ]
  %137 = phi i8 [ -63, %132 ], [ -56, %115 ]
  call void @llvm.lifetime.start.p0(i64 39, ptr nonnull %3) #7
  store i8 -8, ptr %3, align 1
  %138 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %130, ptr %138, align 1
  %139 = getelementptr inbounds i8, ptr %3, i32 2
  store i8 53, ptr %139, align 1
  %140 = getelementptr inbounds i8, ptr %3, i32 3
  store i8 0, ptr %140, align 1
  %141 = getelementptr inbounds i8, ptr %3, i32 4
  store i8 0, ptr %141, align 1
  %142 = getelementptr inbounds i8, ptr %3, i32 5
  store i8 0, ptr %142, align 1
  %143 = getelementptr inbounds i8, ptr %3, i32 6
  store i8 -109, ptr %143, align 1
  %144 = getelementptr inbounds i8, ptr %3, i32 7
  store i8 0, ptr %144, align 1
  %145 = getelementptr inbounds i8, ptr %3, i32 8
  store i8 60, ptr %145, align 1
  %146 = getelementptr inbounds i8, ptr %3, i32 9
  store i8 120, ptr %146, align 1
  %147 = getelementptr inbounds i8, ptr %3, i32 10
  store i8 8, ptr %147, align 1
  %148 = getelementptr inbounds i8, ptr %3, i32 11
  store i8 39, ptr %148, align 1
  %149 = getelementptr inbounds i8, ptr %3, i32 12
  store i8 125, ptr %149, align 1
  %150 = getelementptr inbounds i8, ptr %3, i32 13
  store i8 63, ptr %150, align 1
  %151 = getelementptr inbounds i8, ptr %3, i32 14
  store i8 0, ptr %151, align 1
  %152 = getelementptr inbounds i8, ptr %3, i32 15
  store i8 0, ptr %152, align 1
  %153 = getelementptr inbounds i8, ptr %3, i32 16
  store i8 0, ptr %153, align 1
  %154 = getelementptr inbounds i8, ptr %3, i32 17
  store i8 32, ptr %154, align 1
  %155 = getelementptr inbounds i8, ptr %3, i32 18
  store i8 %121, ptr %155, align 1
  %156 = getelementptr inbounds i8, ptr %3, i32 19
  store i8 8, ptr %156, align 1
  %157 = getelementptr inbounds i8, ptr %3, i32 20
  store i8 110, ptr %157, align 1
  %158 = getelementptr inbounds i8, ptr %3, i32 21
  store i8 0, ptr %158, align 1
  %159 = getelementptr inbounds i8, ptr %3, i32 22
  store i8 0, ptr %159, align 1
  %160 = getelementptr inbounds i8, ptr %3, i32 23
  store i8 0, ptr %160, align 1
  %161 = getelementptr inbounds i8, ptr %3, i32 24
  store i8 2, ptr %161, align 1
  %162 = getelementptr inbounds i8, ptr %3, i32 25
  store i8 7, ptr %162, align 1
  %163 = getelementptr inbounds i8, ptr %3, i32 26
  store i8 7, ptr %163, align 1
  %164 = getelementptr inbounds i8, ptr %3, i32 27
  store i8 35, ptr %164, align 1
  %165 = getelementptr inbounds i8, ptr %3, i32 28
  store i8 35, ptr %165, align 1
  %166 = getelementptr inbounds i8, ptr %3, i32 29
  store i8 -64, ptr %166, align 1
  %167 = getelementptr inbounds i8, ptr %3, i32 30
  store i8 %137, ptr %167, align 1
  %168 = getelementptr inbounds i8, ptr %3, i32 31
  store i8 %134, ptr %168, align 1
  %169 = getelementptr inbounds i8, ptr %3, i32 32
  store i8 %135, ptr %169, align 1
  %170 = getelementptr inbounds i8, ptr %3, i32 33
  store i8 -63, ptr %170, align 1
  %171 = getelementptr inbounds i8, ptr %3, i32 34
  store i8 0, ptr %171, align 1
  %172 = getelementptr inbounds i8, ptr %3, i32 35
  store i8 -63, ptr %172, align 1
  %173 = getelementptr inbounds i8, ptr %3, i32 36
  store i8 %136, ptr %173, align 1
  %174 = getelementptr inbounds i8, ptr %3, i32 37
  store i8 %136, ptr %174, align 1
  %175 = getelementptr inbounds i8, ptr %3, i32 38
  store i8 %137, ptr %175, align 1
  %176 = load i32, ptr %17, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %185, label %178

178:                                              ; preds = %133
  %179 = load ptr, ptr %5, align 4
  %180 = getelementptr i8, ptr %179, i32 -8
  %181 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %180, ptr noundef nonnull %3, i32 noundef 39) #7
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %178
  %184 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %184, ptr noundef nonnull @.str.18, i32 noundef %181, i32 noundef 39, ptr noundef nonnull %3) #8
  store i32 %181, ptr %17, align 4
  br label %185

185:                                              ; preds = %183, %178, %133
  call void @llvm.lifetime.end.p0(i64 39, ptr nonnull %3) #7
  br label %186

186:                                              ; preds = %185, %108
  %187 = load i32, ptr %17, align 4
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %245, label %189

189:                                              ; preds = %186
  %190 = load ptr, ptr %5, align 4
  %191 = getelementptr i8, ptr %190, i32 -8
  %192 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %191, ptr noundef nonnull @s6e8aa0_display_condition_set.d, i32 noundef 4) #7
  %193 = icmp slt i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %189
  %195 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %195, ptr noundef nonnull @.str.18, i32 noundef %192, i32 noundef 4, ptr noundef nonnull @s6e8aa0_display_condition_set.d) #8
  store i32 %192, ptr %17, align 4
  br label %245

196:                                              ; preds = %189
  %197 = load i32, ptr %17, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %233

199:                                              ; preds = %196
  %200 = getelementptr i8, ptr %0, i32 120
  %201 = load ptr, ptr %200, align 4
  %202 = getelementptr inbounds %struct.s6e8aa0_variant, ptr %201, i32 0, i32 1
  %203 = load ptr, ptr %202, align 4
  %204 = getelementptr i8, ptr %0, i32 124
  %205 = load i32, ptr %204, align 4
  %206 = getelementptr [26 x i8], ptr %203, i32 %205
  %207 = load i8, ptr %102, align 4
  %208 = icmp ugt i8 %207, -115
  br i1 %208, label %209, label %212

209:                                              ; preds = %199
  call fastcc void @s6e8aa0_elvss_nvm_set(ptr noundef %5) #7
  %210 = load i32, ptr %17, align 4
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %245, label %212

212:                                              ; preds = %209, %199
  %213 = load ptr, ptr %5, align 4
  %214 = getelementptr i8, ptr %213, i32 -8
  %215 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %214, ptr noundef %206, i32 noundef 26) #7
  %216 = icmp slt i32 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %212
  %218 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %218, ptr noundef nonnull @.str.18, i32 noundef %215, i32 noundef 26, ptr noundef %206) #8
  br label %231

219:                                              ; preds = %212
  %220 = load i32, ptr %17, align 4
  %221 = icmp slt i32 %220, 0
  br i1 %221, label %245, label %222

222:                                              ; preds = %219
  %223 = load ptr, ptr %5, align 4
  %224 = getelementptr i8, ptr %223, i32 -8
  %225 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %224, ptr noundef nonnull @s6e8aa0_brightness_set.d, i32 noundef 2) #7
  %226 = icmp slt i32 %225, 0
  br i1 %226, label %229, label %227

227:                                              ; preds = %222
  %228 = load i32, ptr %17, align 4
  br label %233

229:                                              ; preds = %222
  %230 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %230, ptr noundef nonnull @.str.18, i32 noundef %225, i32 noundef 2, ptr noundef nonnull @s6e8aa0_brightness_set.d) #8
  br label %231

231:                                              ; preds = %229, %217
  %232 = phi i32 [ %215, %217 ], [ %225, %229 ]
  store i32 %232, ptr %17, align 4
  br label %245

233:                                              ; preds = %227, %196
  %234 = phi i32 [ %197, %196 ], [ %228, %227 ]
  %235 = icmp slt i32 %234, 0
  br i1 %235, label %245, label %236

236:                                              ; preds = %233
  %237 = load ptr, ptr %5, align 4
  %238 = getelementptr i8, ptr %237, i32 -8
  %239 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %238, ptr noundef nonnull @s6e8aa0_etc_source_control.d, i32 noundef 4) #7
  %240 = icmp slt i32 %239, 0
  br i1 %240, label %243, label %241

241:                                              ; preds = %236
  %242 = load i32, ptr %17, align 4
  br label %245

243:                                              ; preds = %236
  %244 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %244, ptr noundef nonnull @.str.18, i32 noundef %239, i32 noundef 4, ptr noundef nonnull @s6e8aa0_etc_source_control.d) #8
  store i32 %239, ptr %17, align 4
  br label %245

245:                                              ; preds = %243, %241, %233, %231, %219, %209, %194, %186, %113
  %246 = phi i32 [ %234, %233 ], [ %210, %209 ], [ %220, %219 ], [ %232, %231 ], [ %111, %113 ], [ %242, %241 ], [ %239, %243 ], [ %187, %186 ], [ %192, %194 ]
  %247 = load i8, ptr %102, align 4
  %248 = icmp ult i8 %247, -114
  %249 = icmp slt i32 %246, 0
  br i1 %248, label %250, label %258

250:                                              ; preds = %245
  br i1 %249, label %268, label %251

251:                                              ; preds = %250
  %252 = load ptr, ptr %5, align 4
  %253 = getelementptr i8, ptr %252, i32 -8
  %254 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %253, ptr noundef nonnull @s6e8aa0_etc_pentile_control.pent32, i32 noundef 10) #7
  %255 = icmp slt i32 %254, 0
  br i1 %255, label %256, label %268

256:                                              ; preds = %251
  %257 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %257, ptr noundef nonnull @.str.18, i32 noundef %254, i32 noundef 10, ptr noundef nonnull @s6e8aa0_etc_pentile_control.pent32) #8
  br label %266

258:                                              ; preds = %245
  br i1 %249, label %268, label %259

259:                                              ; preds = %258
  %260 = load ptr, ptr %5, align 4
  %261 = getelementptr i8, ptr %260, i32 -8
  %262 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %261, ptr noundef nonnull @s6e8aa0_etc_pentile_control.pent142, i32 noundef 10) #7
  %263 = icmp slt i32 %262, 0
  br i1 %263, label %264, label %268

264:                                              ; preds = %259
  %265 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %265, ptr noundef nonnull @.str.18, i32 noundef %262, i32 noundef 10, ptr noundef nonnull @s6e8aa0_etc_pentile_control.pent142) #8
  br label %266

266:                                              ; preds = %264, %256
  %267 = phi i32 [ %262, %264 ], [ %254, %256 ]
  store i32 %267, ptr %17, align 4
  br label %268

268:                                              ; preds = %266, %259, %258, %251, %250, %105
  call fastcc void @s6e8aa0_elvss_nvm_set(ptr noundef %5) #7
  %269 = load i8, ptr %102, align 4
  %270 = icmp ult i8 %269, -114
  %271 = load i32, ptr %17, align 4
  %272 = icmp slt i32 %271, 0
  br i1 %270, label %273, label %281

273:                                              ; preds = %268
  br i1 %272, label %291, label %274

274:                                              ; preds = %273
  %275 = load ptr, ptr %5, align 4
  %276 = getelementptr i8, ptr %275, i32 -8
  %277 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %276, ptr noundef nonnull @s6e8aa0_etc_power_control.pwr32, i32 noundef 8) #7
  %278 = icmp slt i32 %277, 0
  br i1 %278, label %279, label %291

279:                                              ; preds = %274
  %280 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %280, ptr noundef nonnull @.str.18, i32 noundef %277, i32 noundef 8, ptr noundef nonnull @s6e8aa0_etc_power_control.pwr32) #8
  br label %289

281:                                              ; preds = %268
  br i1 %272, label %291, label %282

282:                                              ; preds = %281
  %283 = load ptr, ptr %5, align 4
  %284 = getelementptr i8, ptr %283, i32 -8
  %285 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %284, ptr noundef nonnull @s6e8aa0_etc_power_control.pwr142, i32 noundef 8) #7
  %286 = icmp slt i32 %285, 0
  br i1 %286, label %287, label %291

287:                                              ; preds = %282
  %288 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %288, ptr noundef nonnull @.str.18, i32 noundef %285, i32 noundef 8, ptr noundef nonnull @s6e8aa0_etc_power_control.pwr142) #8
  br label %289

289:                                              ; preds = %287, %279
  %290 = phi i32 [ %285, %287 ], [ %277, %279 ]
  store i32 %290, ptr %17, align 4
  br label %291

291:                                              ; preds = %289, %282, %281, %274, %273
  %292 = getelementptr i8, ptr %0, i32 117
  %293 = load i8, ptr %292, align 1
  %294 = icmp eq i8 %293, 0
  %295 = select i1 %294, i8 -107, i8 0
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %2) #7
  store i8 -79, ptr %2, align 1
  %296 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 4, ptr %296, align 1
  %297 = getelementptr inbounds i8, ptr %2, i32 2
  store i8 %295, ptr %297, align 1
  %298 = load i32, ptr %17, align 4
  %299 = icmp slt i32 %298, 0
  br i1 %299, label %307, label %300

300:                                              ; preds = %291
  %301 = load ptr, ptr %5, align 4
  %302 = getelementptr i8, ptr %301, i32 -8
  %303 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %302, ptr noundef nonnull %2, i32 noundef 3) #7
  %304 = icmp slt i32 %303, 0
  br i1 %304, label %305, label %307

305:                                              ; preds = %300
  %306 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %306, ptr noundef nonnull @.str.18, i32 noundef %303, i32 noundef 3, ptr noundef nonnull %2) #8
  store i32 %303, ptr %17, align 4
  br label %307

307:                                              ; preds = %305, %300, %291
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #7
  %308 = getelementptr i8, ptr %0, i32 60
  %309 = load i32, ptr %308, align 4
  call void @msleep(i32 noundef %309) #7
  %310 = load i32, ptr %17, align 4
  %311 = icmp slt i32 %310, 0
  br i1 %311, label %322, label %312

312:                                              ; preds = %307
  %313 = load ptr, ptr %5, align 4
  %314 = getelementptr i8, ptr %313, i32 -8
  %315 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %314, ptr noundef nonnull @s6e8aa0_set_sequence.d, i32 noundef 1) #7
  %316 = icmp slt i32 %315, 0
  br i1 %316, label %317, label %319

317:                                              ; preds = %312
  %318 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %318, ptr noundef nonnull @.str.18, i32 noundef %315, i32 noundef 1, ptr noundef nonnull @s6e8aa0_set_sequence.d) #8
  store i32 %315, ptr %17, align 4
  br label %322

319:                                              ; preds = %312
  %320 = load i32, ptr %17, align 4
  %321 = icmp slt i32 %320, 0
  br i1 %321, label %322, label %325

322:                                              ; preds = %319, %317, %307
  %323 = phi i32 [ %320, %319 ], [ %315, %317 ], [ %310, %307 ]
  %324 = call i32 @s6e8aa0_unprepare(ptr noundef %0)
  br label %325

325:                                              ; preds = %322, %319, %1
  %326 = phi i32 [ %323, %322 ], [ %320, %319 ], [ %7, %1 ]
  ret i32 %326
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @s6e8aa0_enable(ptr nocapture noundef readnone %0) #5 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @s6e8aa0_disable(ptr nocapture noundef readnone %0) #5 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s6e8aa0_unprepare(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = getelementptr i8, ptr %0, i32 128
  %4 = load i32, ptr %3, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %25, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 -8
  %9 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %8, ptr noundef nonnull @s6e8aa0_unprepare.d, i32 noundef 1) #7
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.18, i32 noundef %9, i32 noundef 1, ptr noundef nonnull @s6e8aa0_unprepare.d) #8
  br label %23

13:                                               ; preds = %6
  %14 = load i32, ptr %3, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %2, align 4
  %18 = getelementptr i8, ptr %17, i32 -8
  %19 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %18, ptr noundef nonnull @s6e8aa0_unprepare.d.19, i32 noundef 1) #7
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.18, i32 noundef %19, i32 noundef 1, ptr noundef nonnull @s6e8aa0_unprepare.d.19) #8
  br label %23

23:                                               ; preds = %21, %11
  %24 = phi i32 [ %9, %11 ], [ %19, %21 ]
  store i32 %24, ptr %3, align 4
  br label %25

25:                                               ; preds = %23, %16, %13, %1
  tail call void @msleep(i32 noundef 40) #7
  store i32 0, ptr %3, align 4
  %26 = getelementptr i8, ptr %0, i32 24
  %27 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %26) #7
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s6e8aa0_get_modes(ptr noundef %0, ptr noundef %1) #2 {
  %3 = load ptr, ptr %1, align 8
  %4 = tail call ptr @drm_mode_create(ptr noundef %3) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.20) #8
  br label %24

8:                                                ; preds = %2
  %9 = getelementptr i8, ptr %0, i32 68
  tail call void @drm_display_mode_from_videomode(ptr noundef %9, ptr noundef nonnull %4) #7
  %10 = getelementptr i8, ptr %0, i32 108
  %11 = load i32, ptr %10, align 4
  %12 = trunc i32 %11 to i16
  %13 = getelementptr inbounds %struct.drm_display_mode, ptr %4, i32 0, i32 26
  store i16 %12, ptr %13, align 2
  %14 = getelementptr i8, ptr %0, i32 112
  %15 = load i32, ptr %14, align 4
  %16 = trunc i32 %15 to i16
  %17 = getelementptr inbounds %struct.drm_display_mode, ptr %4, i32 0, i32 27
  store i16 %16, ptr %17, align 4
  %18 = and i32 %11, 65535
  %19 = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 20
  store i32 %18, ptr %19, align 8
  %20 = load i16, ptr %17, align 4
  %21 = zext i16 %20 to i32
  %22 = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 20, i32 1
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.drm_display_mode, ptr %4, i32 0, i32 28
  store i8 72, ptr %23, align 2
  tail call void @drm_mode_probed_add(ptr noundef %1, ptr noundef nonnull %4) #7
  br label %24

24:                                               ; preds = %8, %6
  %25 = phi i32 [ 1, %8 ], [ 0, %6 ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_set_maximum_return_packet_size(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_read(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @s6e8aa0_elvss_nvm_set(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = alloca [15 x i8], align 1
  %3 = getelementptr inbounds %struct.s6e8aa0, ptr %0, i32 0, i32 12
  %4 = load i8, ptr %3, align 4
  %5 = icmp ult i8 %4, -114
  br i1 %5, label %6, label %17

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.s6e8aa0, ptr %0, i32 0, i32 16
  %8 = load i32, ptr %7, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %51, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr i8, ptr %11, i32 -8
  %13 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %12, ptr noundef nonnull @s6e8aa0_elvss_nvm_set.d, i32 noundef 15) #7
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %51

15:                                               ; preds = %10
  %16 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.18, i32 noundef %13, i32 noundef 15, ptr noundef nonnull @s6e8aa0_elvss_nvm_set.d) #8
  store i32 %13, ptr %7, align 4
  br label %51

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.s6e8aa0, ptr %0, i32 0, i32 15
  %19 = load i32, ptr %18, align 4
  %20 = icmp ult i32 %19, 25
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = getelementptr inbounds [25 x i8], ptr @switch.table.s6e8aa0_elvss_nvm_set, i32 0, i32 %19
  %23 = load i8, ptr %22, align 1
  br label %24

24:                                               ; preds = %21, %17
  %25 = phi i8 [ %23, %21 ], [ -39, %17 ]
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %2) #7
  store i8 -39, ptr %2, align 1
  %26 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 20, ptr %26, align 1
  %27 = getelementptr inbounds i8, ptr %2, i32 2
  store i8 64, ptr %27, align 1
  %28 = getelementptr inbounds i8, ptr %2, i32 3
  store i8 12, ptr %28, align 1
  %29 = getelementptr inbounds i8, ptr %2, i32 4
  store i8 -53, ptr %29, align 1
  %30 = getelementptr inbounds i8, ptr %2, i32 5
  store i8 -50, ptr %30, align 1
  %31 = getelementptr inbounds i8, ptr %2, i32 6
  store i8 110, ptr %31, align 1
  %32 = getelementptr inbounds i8, ptr %2, i32 7
  store i8 -60, ptr %32, align 1
  %33 = getelementptr inbounds i8, ptr %2, i32 8
  store i8 15, ptr %33, align 1
  %34 = getelementptr inbounds i8, ptr %2, i32 9
  store i8 64, ptr %34, align 1
  %35 = getelementptr inbounds i8, ptr %2, i32 10
  store i8 65, ptr %35, align 1
  %36 = getelementptr inbounds i8, ptr %2, i32 11
  store i8 %25, ptr %36, align 1
  %37 = getelementptr inbounds i8, ptr %2, i32 12
  store i8 0, ptr %37, align 1
  %38 = getelementptr inbounds i8, ptr %2, i32 13
  store i8 96, ptr %38, align 1
  %39 = getelementptr inbounds i8, ptr %2, i32 14
  store i8 25, ptr %39, align 1
  %40 = getelementptr inbounds %struct.s6e8aa0, ptr %0, i32 0, i32 16
  %41 = load i32, ptr %40, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %24
  %44 = load ptr, ptr %0, align 4
  %45 = getelementptr i8, ptr %44, i32 -8
  %46 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %45, ptr noundef nonnull %2, i32 noundef 15) #7
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.18, i32 noundef %46, i32 noundef 15, ptr noundef nonnull %2) #8
  store i32 %46, ptr %40, align 4
  br label %50

50:                                               ; preds = %48, %43, %24
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %2) #7
  br label %51

51:                                               ; preds = %50, %15, %10, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_write_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_display_mode_from_videomode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nounwind }
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
!8 = !{!"auto-init"}
!9 = !{i8 0, i8 2}
