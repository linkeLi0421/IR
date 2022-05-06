; ModuleID = '/llk/IR/drivers/media/dvb-frontends/stv090x.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/stv090x.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stv090x_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22stv090x_attach\22\09\09\09\09\09"
module asm "__kstrtabns_stv090x_attach:\09\09\09\09\09"
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
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.64 }
%union.anon.64 = type { ptr }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.stv090x_tab = type { i32, i32 }
%struct.stv090x_long_frame_crloop = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.stv090x_short_frame_crloop = type { i32, i8, i8, i8, i8, i8 }
%struct.lock_class_key = type {}
%struct.stv090x_reg = type { i16, i8 }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stv090x_state = type { i32, i32, i32, ptr, ptr, ptr, %struct.dvb_frontend, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.71], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.71 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.72 }>
%union.anon.72 = type { i64 }
%struct.stv090x_config = type { i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, i32, i8, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stv090x_internal = type { ptr, i8, %struct.mutex, %struct.mutex, i32, i32, i32 }
%struct.stv090x_dev = type { ptr, ptr }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }
%struct.dvb_diseqc_slave_reply = type { [4 x i8], i8, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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

@__param_str_verbose = internal constant [8 x i8] c"verbose\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@verbose = internal global i32 0, align 4
@__param_verbose = internal constant %struct.kernel_param { ptr @__param_str_verbose, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @verbose } }, section "__param", align 4
@__UNIQUE_ID_verbosetype249 = internal constant [21 x i8] c"parmtype=verbose:int\00", section ".modinfo", align 1
@stv090x_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"STV090x Multistandard\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 0, i32 0, i32 1000000, i32 45000000, i32 0, i32 268436993 }, [8 x i8] c"\05\06\04\00\00\00\00\00", ptr null, ptr @stv090x_release, ptr null, ptr @stv090x_init, ptr @stv090x_sleep, ptr null, ptr null, ptr null, ptr null, ptr @stv090x_frontend_algo, ptr null, ptr null, ptr null, ptr @stv090x_read_status, ptr @stv090x_read_per, ptr @stv090x_read_signal_strength, ptr @stv090x_read_cnr, ptr null, ptr null, ptr @stv090x_send_diseqc_msg, ptr @stv090x_recv_slave_reply, ptr @stv090x_send_diseqc_burst, ptr @stv090x_set_tone, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stv090x_search, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@__kstrtab_stv090x_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_stv090x_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_stv090x_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stv090x_attach to i32), ptr @__kstrtab_stv090x_attach, ptr @__kstrtabns_stv090x_attach }, section "___ksymtab+stv090x_attach", align 4
@stv090x_id_table = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"stv090x\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@__UNIQUE_ID_verbose250 = internal constant [33 x i8] c"parm=verbose:Set Verbosity level\00", section ".modinfo", align 1
@__UNIQUE_ID_author251 = internal constant [20 x i8] c"author=Manu Abraham\00", section ".modinfo", align 1
@__UNIQUE_ID_description252 = internal constant [49 x i8] c"description=STV090x Multi-Std Broadcast frontend\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [25 x i8] c"\013%s: Actually removing\0A\00", align 1
@__func__.stv090x_release = private unnamed_addr constant [16 x i8] c"stv090x_release\00", align 1
@stv090x_first_dev = internal unnamed_addr global ptr null, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"\013%s: Error waking device\0A\00", align 1
@__func__.stv090x_init = private unnamed_addr constant [13 x i8] c"stv090x_init\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"\013%s: I/O error\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"\013%s: Enable Gate\0A\00", align 1
@__func__.stv090x_i2c_gate_ctrl = private unnamed_addr constant [22 x i8] c"stv090x_i2c_gate_ctrl\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"\013%s: Disable Gate\0A\00", align 1
@__func__.stv090x_set_mclk = private unnamed_addr constant [17 x i8] c"stv090x_set_mclk\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"stv090x\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"\013%s: %s [0x%04x]: %*ph\0A\00", align 1
@__func__.stv090x_write_regs = private unnamed_addr constant [19 x i8] c"stv090x_write_regs\00", align 1
@.str.26 = private unnamed_addr constant [60 x i8] c"\013%s: Reg=[0x%04x], Data=[0x%02x ...], Count=%u, Status=%d\0A\00", align 1
@.str.30 = private unnamed_addr constant [32 x i8] c"\013%s: Wake %s(%d) from standby\0A\00", align 1
@__func__.stv090x_wakeup = private unnamed_addr constant [15 x i8] c"stv090x_wakeup\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"STV0900\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"STV0903\00", align 1
@.str.36 = private unnamed_addr constant [26 x i8] c"\013%s: Wrong demodulator!\0A\00", align 1
@__func__.stv090x_ldpc_mode = private unnamed_addr constant [18 x i8] c"stv090x_ldpc_mode\00", align 1
@__func__.stv090x_stop_modcod = private unnamed_addr constant [20 x i8] c"stv090x_stop_modcod\00", align 1
@__func__.stv090x_activate_modcod_single = private unnamed_addr constant [31 x i8] c"stv090x_activate_modcod_single\00", align 1
@.str.40 = private unnamed_addr constant [43 x i8] c"\013%s: Read error, Reg=[0x%02x], Status=%d\0A\00", align 1
@__func__.stv090x_read_reg = private unnamed_addr constant [17 x i8] c"stv090x_read_reg\00", align 1
@.str.44 = private unnamed_addr constant [31 x i8] c"\013%s: Reg=[0x%02x], data=%02x\0A\00", align 1
@__func__.stv0900_set_tspath = private unnamed_addr constant [19 x i8] c"stv0900_set_tspath\00", align 1
@__func__.stv0903_set_tspath = private unnamed_addr constant [19 x i8] c"stv0903_set_tspath\00", align 1
@.str.48 = private unnamed_addr constant [27 x i8] c"\013%s: Set %s(%d) to sleep\0A\00", align 1
@__func__.stv090x_sleep = private unnamed_addr constant [14 x i8] c"stv090x_sleep\00", align 1
@.str.52 = private unnamed_addr constant [39 x i8] c"\013%s: Status: Unlocked (Searching ..)\0A\00", align 1
@__func__.stv090x_read_status = private unnamed_addr constant [20 x i8] c"stv090x_read_status\00", align 1
@.str.56 = private unnamed_addr constant [31 x i8] c"\013%s: Delivery system: DVB-S2\0A\00", align 1
@.str.60 = private unnamed_addr constant [30 x i8] c"\013%s: Delivery system: DVB-S\0A\00", align 1
@__func__.stv090x_read_per = private unnamed_addr constant [17 x i8] c"stv090x_read_per\00", align 1
@stv090x_rf_tab = internal unnamed_addr constant [14 x %struct.stv090x_tab] [%struct.stv090x_tab { i32 -5, i32 51873 }, %struct.stv090x_tab { i32 -10, i32 49705 }, %struct.stv090x_tab { i32 -15, i32 47880 }, %struct.stv090x_tab { i32 -20, i32 46268 }, %struct.stv090x_tab { i32 -25, i32 44378 }, %struct.stv090x_tab { i32 -30, i32 41624 }, %struct.stv090x_tab { i32 -35, i32 39080 }, %struct.stv090x_tab { i32 -40, i32 33673 }, %struct.stv090x_tab { i32 -45, i32 22974 }, %struct.stv090x_tab { i32 -50, i32 14868 }, %struct.stv090x_tab { i32 -55, i32 11537 }, %struct.stv090x_tab { i32 -60, i32 8461 }, %struct.stv090x_tab { i32 -65, i32 41295 }, %struct.stv090x_tab { i32 -70, i32 1962 }], align 4
@stv090x_s2cn_tab = internal unnamed_addr constant [55 x %struct.stv090x_tab] [%struct.stv090x_tab { i32 -30, i32 13348 }, %struct.stv090x_tab { i32 -20, i32 12640 }, %struct.stv090x_tab { i32 -10, i32 11883 }, %struct.stv090x_tab { i32 0, i32 11101 }, %struct.stv090x_tab { i32 5, i32 10718 }, %struct.stv090x_tab { i32 10, i32 10339 }, %struct.stv090x_tab { i32 15, i32 9947 }, %struct.stv090x_tab { i32 20, i32 9552 }, %struct.stv090x_tab { i32 25, i32 9183 }, %struct.stv090x_tab { i32 30, i32 8799 }, %struct.stv090x_tab { i32 35, i32 8422 }, %struct.stv090x_tab { i32 40, i32 8062 }, %struct.stv090x_tab { i32 45, i32 7707 }, %struct.stv090x_tab { i32 50, i32 7353 }, %struct.stv090x_tab { i32 55, i32 7025 }, %struct.stv090x_tab { i32 60, i32 6684 }, %struct.stv090x_tab { i32 65, i32 6331 }, %struct.stv090x_tab { i32 70, i32 6036 }, %struct.stv090x_tab { i32 75, i32 5727 }, %struct.stv090x_tab { i32 80, i32 5437 }, %struct.stv090x_tab { i32 85, i32 5164 }, %struct.stv090x_tab { i32 90, i32 4902 }, %struct.stv090x_tab { i32 95, i32 4653 }, %struct.stv090x_tab { i32 100, i32 4408 }, %struct.stv090x_tab { i32 105, i32 4187 }, %struct.stv090x_tab { i32 110, i32 3961 }, %struct.stv090x_tab { i32 115, i32 3751 }, %struct.stv090x_tab { i32 120, i32 3558 }, %struct.stv090x_tab { i32 125, i32 3368 }, %struct.stv090x_tab { i32 130, i32 3191 }, %struct.stv090x_tab { i32 135, i32 3017 }, %struct.stv090x_tab { i32 140, i32 2862 }, %struct.stv090x_tab { i32 145, i32 2710 }, %struct.stv090x_tab { i32 150, i32 2565 }, %struct.stv090x_tab { i32 160, i32 2300 }, %struct.stv090x_tab { i32 170, i32 2058 }, %struct.stv090x_tab { i32 180, i32 1849 }, %struct.stv090x_tab { i32 190, i32 1663 }, %struct.stv090x_tab { i32 200, i32 1495 }, %struct.stv090x_tab { i32 210, i32 1349 }, %struct.stv090x_tab { i32 220, i32 1222 }, %struct.stv090x_tab { i32 230, i32 1110 }, %struct.stv090x_tab { i32 240, i32 1011 }, %struct.stv090x_tab { i32 250, i32 925 }, %struct.stv090x_tab { i32 260, i32 853 }, %struct.stv090x_tab { i32 270, i32 789 }, %struct.stv090x_tab { i32 280, i32 734 }, %struct.stv090x_tab { i32 290, i32 690 }, %struct.stv090x_tab { i32 300, i32 650 }, %struct.stv090x_tab { i32 310, i32 619 }, %struct.stv090x_tab { i32 320, i32 593 }, %struct.stv090x_tab { i32 330, i32 571 }, %struct.stv090x_tab { i32 400, i32 498 }, %struct.stv090x_tab { i32 450, i32 484 }, %struct.stv090x_tab { i32 500, i32 481 }], align 4
@stv090x_s1cn_tab = internal unnamed_addr constant [52 x %struct.stv090x_tab] [%struct.stv090x_tab { i32 0, i32 8917 }, %struct.stv090x_tab { i32 5, i32 8801 }, %struct.stv090x_tab { i32 10, i32 8667 }, %struct.stv090x_tab { i32 15, i32 8522 }, %struct.stv090x_tab { i32 20, i32 8355 }, %struct.stv090x_tab { i32 25, i32 8175 }, %struct.stv090x_tab { i32 30, i32 7979 }, %struct.stv090x_tab { i32 35, i32 7763 }, %struct.stv090x_tab { i32 40, i32 7530 }, %struct.stv090x_tab { i32 45, i32 7282 }, %struct.stv090x_tab { i32 50, i32 7026 }, %struct.stv090x_tab { i32 55, i32 6781 }, %struct.stv090x_tab { i32 60, i32 6514 }, %struct.stv090x_tab { i32 65, i32 6241 }, %struct.stv090x_tab { i32 70, i32 5965 }, %struct.stv090x_tab { i32 75, i32 5690 }, %struct.stv090x_tab { i32 80, i32 5424 }, %struct.stv090x_tab { i32 85, i32 5161 }, %struct.stv090x_tab { i32 90, i32 4902 }, %struct.stv090x_tab { i32 95, i32 4654 }, %struct.stv090x_tab { i32 100, i32 4417 }, %struct.stv090x_tab { i32 105, i32 4186 }, %struct.stv090x_tab { i32 110, i32 3968 }, %struct.stv090x_tab { i32 115, i32 3757 }, %struct.stv090x_tab { i32 120, i32 3558 }, %struct.stv090x_tab { i32 125, i32 3366 }, %struct.stv090x_tab { i32 130, i32 3185 }, %struct.stv090x_tab { i32 135, i32 3012 }, %struct.stv090x_tab { i32 140, i32 2850 }, %struct.stv090x_tab { i32 145, i32 2698 }, %struct.stv090x_tab { i32 150, i32 2550 }, %struct.stv090x_tab { i32 160, i32 2283 }, %struct.stv090x_tab { i32 170, i32 2042 }, %struct.stv090x_tab { i32 180, i32 1827 }, %struct.stv090x_tab { i32 190, i32 1636 }, %struct.stv090x_tab { i32 200, i32 1466 }, %struct.stv090x_tab { i32 210, i32 1315 }, %struct.stv090x_tab { i32 220, i32 1181 }, %struct.stv090x_tab { i32 230, i32 1064 }, %struct.stv090x_tab { i32 240, i32 960 }, %struct.stv090x_tab { i32 250, i32 869 }, %struct.stv090x_tab { i32 260, i32 792 }, %struct.stv090x_tab { i32 270, i32 724 }, %struct.stv090x_tab { i32 280, i32 665 }, %struct.stv090x_tab { i32 290, i32 616 }, %struct.stv090x_tab { i32 300, i32 573 }, %struct.stv090x_tab { i32 310, i32 537 }, %struct.stv090x_tab { i32 320, i32 507 }, %struct.stv090x_tab { i32 330, i32 483 }, %struct.stv090x_tab { i32 400, i32 398 }, %struct.stv090x_tab { i32 450, i32 381 }, %struct.stv090x_tab { i32 500, i32 377 }], align 4
@__func__.stv090x_send_diseqc_msg = private unnamed_addr constant [24 x i8] c"stv090x_send_diseqc_msg\00", align 1
@__func__.stv090x_send_diseqc_burst = private unnamed_addr constant [26 x i8] c"stv090x_send_diseqc_burst\00", align 1
@__func__.stv090x_set_tone = private unnamed_addr constant [17 x i8] c"stv090x_set_tone\00", align 1
@.str.64 = private unnamed_addr constant [28 x i8] c"\013%s: Search range: 10 MHz\0A\00", align 1
@__func__.stv090x_search = private unnamed_addr constant [15 x i8] c"stv090x_search\00", align 1
@.str.68 = private unnamed_addr constant [27 x i8] c"\013%s: Search range: 5 MHz\0A\00", align 1
@.str.72 = private unnamed_addr constant [23 x i8] c"\013%s: Search success!\0A\00", align 1
@.str.76 = private unnamed_addr constant [22 x i8] c"\013%s: Search failed!\0A\00", align 1
@.str.80 = private unnamed_addr constant [28 x i8] c"\013%s: Set Gold PLS code %d\0A\00", align 1
@__func__.stv090x_set_pls = private unnamed_addr constant [16 x i8] c"stv090x_set_pls\00", align 1
@.str.84 = private unnamed_addr constant [29 x i8] c"\013%s: Disable MIS filtering\0A\00", align 1
@__func__.stv090x_set_mis = private unnamed_addr constant [16 x i8] c"stv090x_set_mis\00", align 1
@.str.88 = private unnamed_addr constant [33 x i8] c"\013%s: Enable MIS filtering - %d\0A\00", align 1
@.str.92 = private unnamed_addr constant [26 x i8] c"\013%s: Tuner phase locked\0A\00", align 1
@__func__.stv090x_algo = private unnamed_addr constant [13 x i8] c"stv090x_algo\00", align 1
@.str.96 = private unnamed_addr constant [22 x i8] c"\013%s: Tuner unlocked\0A\00", align 1
@.str.100 = private unnamed_addr constant [34 x i8] c"\013%s: No Signal: POWER_IQ=0x%02x\0A\00", align 1
@.str.104 = private unnamed_addr constant [20 x i8] c"\013%s: Blind Search\0A\00", align 1
@__func__.stv090x_get_lock_tmg = private unnamed_addr constant [21 x i8] c"stv090x_get_lock_tmg\00", align 1
@.str.108 = private unnamed_addr constant [21 x i8] c"\013%s: Normal Search\0A\00", align 1
@__func__.stv090x_set_srate = private unnamed_addr constant [18 x i8] c"stv090x_set_srate\00", align 1
@__func__.stv090x_set_max_srate = private unnamed_addr constant [22 x i8] c"stv090x_set_max_srate\00", align 1
@__func__.stv090x_set_min_srate = private unnamed_addr constant [22 x i8] c"stv090x_set_min_srate\00", align 1
@__func__.stv090x_delivery_search = private unnamed_addr constant [24 x i8] c"stv090x_delivery_search\00", align 1
@__func__.stv090x_vitclk_ctl = private unnamed_addr constant [19 x i8] c"stv090x_vitclk_ctl\00", align 1
@__func__.stv090x_dvbs_track_crl = private unnamed_addr constant [23 x i8] c"stv090x_dvbs_track_crl\00", align 1
@__func__.stv090x_set_vit_thacq = private unnamed_addr constant [22 x i8] c"stv090x_set_vit_thacq\00", align 1
@__func__.stv090x_set_viterbi = private unnamed_addr constant [20 x i8] c"stv090x_set_viterbi\00", align 1
@__func__.stv090x_activate_modcod = private unnamed_addr constant [24 x i8] c"stv090x_activate_modcod\00", align 1
@__func__.stv090x_set_vit_thtracq = private unnamed_addr constant [24 x i8] c"stv090x_set_vit_thtracq\00", align 1
@__func__.stv090x_start_search = private unnamed_addr constant [21 x i8] c"stv090x_start_search\00", align 1
@__func__.stv090x_blind_search = private unnamed_addr constant [21 x i8] c"stv090x_blind_search\00", align 1
@__func__.stv090x_get_agc2_min_level = private unnamed_addr constant [27 x i8] c"stv090x_get_agc2_min_level\00", align 1
@__func__.stv090x_srate_srch_coarse = private unnamed_addr constant [26 x i8] c"stv090x_srate_srch_coarse\00", align 1
@__func__.stv090x_srate_srch_fine = private unnamed_addr constant [24 x i8] c"stv090x_srate_srch_fine\00", align 1
@__func__.stv090x_get_coldlock = private unnamed_addr constant [21 x i8] c"stv090x_get_coldlock\00", align 1
@.str.112 = private unnamed_addr constant [32 x i8] c"\013%s: Demodulator searching ..\0A\00", align 1
@__func__.stv090x_get_dmdlock = private unnamed_addr constant [20 x i8] c"stv090x_get_dmdlock\00", align 1
@.str.116 = private unnamed_addr constant [33 x i8] c"\013%s: Demodulator acquired LOCK\0A\00", align 1
@__func__.stv090x_chk_tmg = private unnamed_addr constant [16 x i8] c"stv090x_chk_tmg\00", align 1
@__func__.stv090x_sw_algo = private unnamed_addr constant [16 x i8] c"stv090x_sw_algo\00", align 1
@__func__.stv090x_search_car_loop = private unnamed_addr constant [24 x i8] c"stv090x_search_car_loop\00", align 1
@__func__.stv090x_get_sig_params = private unnamed_addr constant [23 x i8] c"stv090x_get_sig_params\00", align 1
@__func__.stv090x_optimize_track = private unnamed_addr constant [23 x i8] c"stv090x_optimize_track\00", align 1
@stv090x_s2_crl_cut20 = internal unnamed_addr constant [14 x %struct.stv090x_long_frame_crloop] [%struct.stv090x_long_frame_crloop { i32 4, i8 31, i8 63, i8 30, i8 63, i8 61, i8 31, i8 61, i8 62, i8 61, i8 30 }, %struct.stv090x_long_frame_crloop { i32 5, i8 47, i8 63, i8 46, i8 47, i8 61, i8 15, i8 14, i8 46, i8 61, i8 14 }, %struct.stv090x_long_frame_crloop { i32 6, i8 47, i8 63, i8 46, i8 47, i8 14, i8 15, i8 14, i8 30, i8 61, i8 61 }, %struct.stv090x_long_frame_crloop { i32 7, i8 63, i8 63, i8 62, i8 31, i8 14, i8 62, i8 14, i8 30, i8 61, i8 61 }, %struct.stv090x_long_frame_crloop { i32 8, i8 63, i8 63, i8 62, i8 31, i8 14, i8 62, i8 14, i8 30, i8 61, i8 61 }, %struct.stv090x_long_frame_crloop { i32 9, i8 63, i8 63, i8 62, i8 31, i8 14, i8 62, i8 14, i8 30, i8 61, i8 61 }, %struct.stv090x_long_frame_crloop { i32 10, i8 63, i8 63, i8 62, i8 31, i8 30, i8 62, i8 14, i8 30, i8 61, i8 61 }, %struct.stv090x_long_frame_crloop { i32 11, i8 63, i8 63, i8 62, i8 31, i8 30, i8 62, i8 14, i8 30, i8 61, i8 61 }, %struct.stv090x_long_frame_crloop { i32 12, i8 60, i8 62, i8 28, i8 46, i8 12, i8 30, i8 43, i8 45, i8 27, i8 29 }, %struct.stv090x_long_frame_crloop { i32 13, i8 29, i8 62, i8 60, i8 46, i8 44, i8 30, i8 12, i8 45, i8 43, i8 29 }, %struct.stv090x_long_frame_crloop { i32 14, i8 14, i8 62, i8 61, i8 46, i8 13, i8 30, i8 44, i8 45, i8 12, i8 29 }, %struct.stv090x_long_frame_crloop { i32 15, i8 46, i8 62, i8 30, i8 46, i8 45, i8 30, i8 60, i8 45, i8 44, i8 29 }, %struct.stv090x_long_frame_crloop { i32 16, i8 62, i8 62, i8 30, i8 46, i8 61, i8 30, i8 13, i8 45, i8 60, i8 29 }, %struct.stv090x_long_frame_crloop { i32 17, i8 62, i8 62, i8 30, i8 46, i8 61, i8 30, i8 29, i8 45, i8 13, i8 29 }], align 4
@stv090x_s2_lowqpsk_crl_cut20 = internal unnamed_addr constant [3 x %struct.stv090x_long_frame_crloop] [%struct.stv090x_long_frame_crloop { i32 1, i8 15, i8 63, i8 14, i8 63, i8 45, i8 47, i8 45, i8 31, i8 61, i8 62 }, %struct.stv090x_long_frame_crloop { i32 2, i8 15, i8 63, i8 14, i8 63, i8 45, i8 47, i8 61, i8 15, i8 61, i8 46 }, %struct.stv090x_long_frame_crloop { i32 3, i8 31, i8 63, i8 30, i8 63, i8 61, i8 31, i8 61, i8 62, i8 61, i8 46 }], align 4
@stv090x_s2_apsk_crl_cut20 = internal unnamed_addr constant [11 x %struct.stv090x_long_frame_crloop] [%struct.stv090x_long_frame_crloop { i32 18, i8 12, i8 12, i8 12, i8 12, i8 29, i8 12, i8 60, i8 12, i8 44, i8 12 }, %struct.stv090x_long_frame_crloop { i32 19, i8 12, i8 12, i8 12, i8 12, i8 14, i8 12, i8 45, i8 12, i8 29, i8 12 }, %struct.stv090x_long_frame_crloop { i32 20, i8 12, i8 12, i8 12, i8 12, i8 30, i8 12, i8 61, i8 12, i8 45, i8 12 }, %struct.stv090x_long_frame_crloop { i32 21, i8 12, i8 12, i8 12, i8 12, i8 30, i8 12, i8 61, i8 12, i8 45, i8 12 }, %struct.stv090x_long_frame_crloop { i32 22, i8 12, i8 12, i8 12, i8 12, i8 46, i8 12, i8 14, i8 12, i8 61, i8 12 }, %struct.stv090x_long_frame_crloop { i32 23, i8 12, i8 12, i8 12, i8 12, i8 46, i8 12, i8 14, i8 12, i8 61, i8 12 }, %struct.stv090x_long_frame_crloop { i32 24, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12 }, %struct.stv090x_long_frame_crloop { i32 25, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12 }, %struct.stv090x_long_frame_crloop { i32 26, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12 }, %struct.stv090x_long_frame_crloop { i32 27, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12 }, %struct.stv090x_long_frame_crloop { i32 28, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12 }], align 4
@stv090x_s2_crl_cut30 = internal unnamed_addr constant [14 x %struct.stv090x_long_frame_crloop] [%struct.stv090x_long_frame_crloop { i32 4, i8 60, i8 44, i8 12, i8 44, i8 27, i8 44, i8 27, i8 28, i8 11, i8 59 }, %struct.stv090x_long_frame_crloop { i32 5, i8 13, i8 13, i8 12, i8 13, i8 27, i8 60, i8 27, i8 28, i8 11, i8 59 }, %struct.stv090x_long_frame_crloop { i32 6, i8 29, i8 13, i8 12, i8 29, i8 43, i8 60, i8 27, i8 28, i8 11, i8 59 }, %struct.stv090x_long_frame_crloop { i32 7, i8 29, i8 29, i8 12, i8 29, i8 43, i8 60, i8 27, i8 28, i8 11, i8 59 }, %struct.stv090x_long_frame_crloop { i32 8, i8 45, i8 29, i8 28, i8 29, i8 43, i8 60, i8 43, i8 12, i8 27, i8 59 }, %struct.stv090x_long_frame_crloop { i32 9, i8 45, i8 29, i8 28, i8 29, i8 43, i8 60, i8 43, i8 12, i8 27, i8 59 }, %struct.stv090x_long_frame_crloop { i32 10, i8 61, i8 45, i8 28, i8 29, i8 59, i8 60, i8 43, i8 12, i8 27, i8 59 }, %struct.stv090x_long_frame_crloop { i32 11, i8 61, i8 45, i8 28, i8 29, i8 59, i8 60, i8 43, i8 12, i8 27, i8 59 }, %struct.stv090x_long_frame_crloop { i32 12, i8 57, i8 41, i8 57, i8 25, i8 25, i8 25, i8 25, i8 25, i8 9, i8 25 }, %struct.stv090x_long_frame_crloop { i32 13, i8 42, i8 57, i8 26, i8 10, i8 57, i8 10, i8 41, i8 57, i8 41, i8 10 }, %struct.stv090x_long_frame_crloop { i32 14, i8 43, i8 58, i8 27, i8 27, i8 58, i8 27, i8 26, i8 11, i8 26, i8 58 }, %struct.stv090x_long_frame_crloop { i32 15, i8 12, i8 27, i8 59, i8 59, i8 27, i8 59, i8 58, i8 59, i8 58, i8 27 }, %struct.stv090x_long_frame_crloop { i32 16, i8 13, i8 60, i8 44, i8 44, i8 43, i8 12, i8 11, i8 59, i8 11, i8 27 }, %struct.stv090x_long_frame_crloop { i32 17, i8 13, i8 13, i8 44, i8 60, i8 59, i8 28, i8 11, i8 59, i8 11, i8 27 }], align 4
@stv090x_s2_lowqpsk_crl_cut30 = internal unnamed_addr constant [3 x %struct.stv090x_long_frame_crloop] [%struct.stv090x_long_frame_crloop { i32 1, i8 12, i8 60, i8 11, i8 60, i8 42, i8 44, i8 42, i8 28, i8 58, i8 59 }, %struct.stv090x_long_frame_crloop { i32 2, i8 12, i8 60, i8 11, i8 60, i8 42, i8 44, i8 58, i8 12, i8 58, i8 43 }, %struct.stv090x_long_frame_crloop { i32 3, i8 28, i8 60, i8 27, i8 60, i8 58, i8 28, i8 58, i8 59, i8 58, i8 43 }], align 4
@stv090x_s2_apsk_crl_cut30 = internal unnamed_addr constant [11 x %struct.stv090x_long_frame_crloop] [%struct.stv090x_long_frame_crloop { i32 18, i8 10, i8 10, i8 10, i8 10, i8 26, i8 10, i8 58, i8 10, i8 42, i8 10 }, %struct.stv090x_long_frame_crloop { i32 19, i8 10, i8 10, i8 10, i8 10, i8 11, i8 10, i8 59, i8 10, i8 27, i8 10 }, %struct.stv090x_long_frame_crloop { i32 20, i8 10, i8 10, i8 10, i8 10, i8 27, i8 10, i8 59, i8 10, i8 43, i8 10 }, %struct.stv090x_long_frame_crloop { i32 21, i8 10, i8 10, i8 10, i8 10, i8 27, i8 10, i8 59, i8 10, i8 43, i8 10 }, %struct.stv090x_long_frame_crloop { i32 22, i8 10, i8 10, i8 10, i8 10, i8 43, i8 10, i8 12, i8 10, i8 59, i8 10 }, %struct.stv090x_long_frame_crloop { i32 23, i8 10, i8 10, i8 10, i8 10, i8 43, i8 10, i8 12, i8 10, i8 59, i8 10 }, %struct.stv090x_long_frame_crloop { i32 24, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10 }, %struct.stv090x_long_frame_crloop { i32 25, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10 }, %struct.stv090x_long_frame_crloop { i32 26, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10 }, %struct.stv090x_long_frame_crloop { i32 27, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10 }, %struct.stv090x_long_frame_crloop { i32 28, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10 }], align 4
@stv090x_s2_short_crl_cut30 = internal unnamed_addr constant [4 x %struct.stv090x_short_frame_crloop] [%struct.stv090x_short_frame_crloop { i32 0, i8 44, i8 43, i8 11, i8 11, i8 58 }, %struct.stv090x_short_frame_crloop { i32 1, i8 59, i8 11, i8 42, i8 10, i8 57 }, %struct.stv090x_short_frame_crloop { i32 2, i8 27, i8 27, i8 27, i8 58, i8 42 }, %struct.stv090x_short_frame_crloop { i32 3, i8 27, i8 27, i8 27, i8 58, i8 42 }], align 4
@stv090x_s2_short_crl_cut20 = internal unnamed_addr constant [4 x %struct.stv090x_short_frame_crloop] [%struct.stv090x_short_frame_crloop { i32 0, i8 47, i8 46, i8 14, i8 14, i8 61 }, %struct.stv090x_short_frame_crloop { i32 1, i8 62, i8 14, i8 45, i8 13, i8 60 }, %struct.stv090x_short_frame_crloop { i32 2, i8 30, i8 30, i8 30, i8 61, i8 45 }, %struct.stv090x_short_frame_crloop { i32 3, i8 30, i8 30, i8 30, i8 61, i8 45 }], align 4
@__func__.stv090x_set_s2rolloff = private unnamed_addr constant [22 x i8] c"stv090x_set_s2rolloff\00", align 1
@.str.120 = private unnamed_addr constant [17 x i8] c"\013%s: No Signal\0A\00", align 1
@__func__.stv090x_chk_signal = private unnamed_addr constant [19 x i8] c"stv090x_chk_signal\00", align 1
@.str.124 = private unnamed_addr constant [20 x i8] c"\013%s: Found Signal\0A\00", align 1
@.str.128 = private unnamed_addr constant [33 x i8] c"\013%s: Found Internal Structure!\0A\00", align 1
@__func__.stv090x_setup_compound = private unnamed_addr constant [23 x i8] c"stv090x_setup_compound\00", align 1
@.str.132 = private unnamed_addr constant [38 x i8] c"\013%s: Create New Internal Structure!\0A\00", align 1
@stv090x_setup_compound.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.136 = private unnamed_addr constant [29 x i8] c"&state->internal->demod_lock\00", align 1
@stv090x_setup_compound.__key.137 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.138 = private unnamed_addr constant [29 x i8] c"&state->internal->tuner_lock\00", align 1
@.str.139 = private unnamed_addr constant [31 x i8] c"\013%s: Error setting up device\0A\00", align 1
@.str.143 = private unnamed_addr constant [45 x i8] c"\013%s: Probing %s demodulator(%d) Cut=0x%02x\0A\00", align 1
@.str.147 = private unnamed_addr constant [28 x i8] c"\013%s: Initializing STV0900\0A\00", align 1
@__func__.stv090x_setup = private unnamed_addr constant [14 x i8] c"stv090x_setup\00", align 1
@stv0900_initval = internal unnamed_addr constant [161 x %struct.stv090x_reg] [%struct.stv090x_reg { i16 -3812, i8 0 }, %struct.stv090x_reg { i16 -3811, i8 -1 }, %struct.stv090x_reg { i16 -3758, i8 17 }, %struct.stv090x_reg { i16 -3754, i8 19 }, %struct.stv090x_reg { i16 -2448, i8 20 }, %struct.stv090x_reg { i16 -3615, i8 33 }, %struct.stv090x_reg { i16 -3613, i8 33 }, %struct.stv090x_reg { i16 -3696, i8 34 }, %struct.stv090x_reg { i16 -3687, i8 -64 }, %struct.stv090x_reg { i16 -3686, i8 -64 }, %struct.stv090x_reg { i16 -3695, i8 0 }, %struct.stv090x_reg { i16 -3564, i8 -7 }, %struct.stv090x_reg { i16 -3568, i8 8 }, %struct.stv090x_reg { i16 -3554, i8 -60 }, %struct.stv090x_reg { i16 -3523, i8 -19 }, %struct.stv090x_reg { i16 -3521, i8 -48 }, %struct.stv090x_reg { i16 -3520, i8 -72 }, %struct.stv090x_reg { i16 -3504, i8 -46 }, %struct.stv090x_reg { i16 -3501, i8 32 }, %struct.stv090x_reg { i16 -2992, i8 -46 }, %struct.stv090x_reg { i16 -3500, i8 0 }, %struct.stv090x_reg { i16 -3168, i8 -120 }, %struct.stv090x_reg { i16 -3166, i8 58 }, %struct.stv090x_reg { i16 -3160, i8 0 }, %struct.stv090x_reg { i16 -3150, i8 16 }, %struct.stv090x_reg { i16 -3176, i8 53 }, %struct.stv090x_reg { i16 -3172, i8 -63 }, %struct.stv090x_reg { i16 -3519, i8 -8 }, %struct.stv090x_reg { i16 -3583, i8 28 }, %struct.stv090x_reg { i16 -3561, i8 32 }, %struct.stv090x_reg { i16 -3552, i8 112 }, %struct.stv090x_reg { i16 -3551, i8 -120 }, %struct.stv090x_reg { i16 -3540, i8 91 }, %struct.stv090x_reg { i16 -3539, i8 56 }, %struct.stv090x_reg { i16 -3528, i8 -28 }, %struct.stv090x_reg { i16 -3527, i8 26 }, %struct.stv090x_reg { i16 -3526, i8 9 }, %struct.stv090x_reg { i16 -3522, i8 8 }, %struct.stv090x_reg { i16 -3496, i8 -63 }, %struct.stv090x_reg { i16 -3499, i8 -16 }, %struct.stv090x_reg { i16 -3498, i8 112 }, %struct.stv090x_reg { i16 -3495, i8 88 }, %struct.stv090x_reg { i16 -3494, i8 1 }, %struct.stv090x_reg { i16 -3440, i8 38 }, %struct.stv090x_reg { i16 -3428, i8 -122 }, %struct.stv090x_reg { i16 -3427, i8 -122 }, %struct.stv090x_reg { i16 -3328, i8 119 }, %struct.stv090x_reg { i16 -3327, i8 -123 }, %struct.stv090x_reg { i16 -3326, i8 119 }, %struct.stv090x_reg { i16 -3212, i8 32 }, %struct.stv090x_reg { i16 -3563, i8 59 }, %struct.stv090x_reg { i16 -3408, i8 -1 }, %struct.stv090x_reg { i16 -3407, i8 -1 }, %struct.stv090x_reg { i16 -3406, i8 -1 }, %struct.stv090x_reg { i16 -3405, i8 -1 }, %struct.stv090x_reg { i16 -3404, i8 -1 }, %struct.stv090x_reg { i16 -3403, i8 -1 }, %struct.stv090x_reg { i16 -3402, i8 -1 }, %struct.stv090x_reg { i16 -3401, i8 -52 }, %struct.stv090x_reg { i16 -3400, i8 -52 }, %struct.stv090x_reg { i16 -3399, i8 -52 }, %struct.stv090x_reg { i16 -3398, i8 -52 }, %struct.stv090x_reg { i16 -3397, i8 -52 }, %struct.stv090x_reg { i16 -3396, i8 -52 }, %struct.stv090x_reg { i16 -3395, i8 -52 }, %struct.stv090x_reg { i16 -3394, i8 -52 }, %struct.stv090x_reg { i16 -3393, i8 -49 }, %struct.stv090x_reg { i16 -3680, i8 34 }, %struct.stv090x_reg { i16 -3671, i8 -64 }, %struct.stv090x_reg { i16 -3670, i8 -64 }, %struct.stv090x_reg { i16 -3679, i8 0 }, %struct.stv090x_reg { i16 -3052, i8 -7 }, %struct.stv090x_reg { i16 -3056, i8 8 }, %struct.stv090x_reg { i16 -3042, i8 -60 }, %struct.stv090x_reg { i16 -3049, i8 32 }, %struct.stv090x_reg { i16 -3011, i8 -19 }, %struct.stv090x_reg { i16 -3009, i8 -48 }, %struct.stv090x_reg { i16 -3008, i8 -72 }, %struct.stv090x_reg { i16 -2992, i8 -46 }, %struct.stv090x_reg { i16 -2989, i8 32 }, %struct.stv090x_reg { i16 -2988, i8 0 }, %struct.stv090x_reg { i16 -2987, i8 -16 }, %struct.stv090x_reg { i16 -2986, i8 112 }, %struct.stv090x_reg { i16 -2700, i8 32 }, %struct.stv090x_reg { i16 -2656, i8 -120 }, %struct.stv090x_reg { i16 -2654, i8 58 }, %struct.stv090x_reg { i16 -2648, i8 0 }, %struct.stv090x_reg { i16 -2638, i8 16 }, %struct.stv090x_reg { i16 -2664, i8 53 }, %struct.stv090x_reg { i16 -2660, i8 -63 }, %struct.stv090x_reg { i16 -3007, i8 -8 }, %struct.stv090x_reg { i16 -3071, i8 28 }, %struct.stv090x_reg { i16 -3040, i8 112 }, %struct.stv090x_reg { i16 -3039, i8 -120 }, %struct.stv090x_reg { i16 -3028, i8 91 }, %struct.stv090x_reg { i16 -3027, i8 56 }, %struct.stv090x_reg { i16 -3016, i8 -28 }, %struct.stv090x_reg { i16 -3015, i8 26 }, %struct.stv090x_reg { i16 -3014, i8 9 }, %struct.stv090x_reg { i16 -3010, i8 8 }, %struct.stv090x_reg { i16 -2984, i8 -63 }, %struct.stv090x_reg { i16 -2983, i8 88 }, %struct.stv090x_reg { i16 -2982, i8 1 }, %struct.stv090x_reg { i16 -2928, i8 38 }, %struct.stv090x_reg { i16 -2916, i8 -122 }, %struct.stv090x_reg { i16 -2915, i8 -122 }, %struct.stv090x_reg { i16 -2816, i8 119 }, %struct.stv090x_reg { i16 -2815, i8 -123 }, %struct.stv090x_reg { i16 -2814, i8 119 }, %struct.stv090x_reg { i16 -3051, i8 59 }, %struct.stv090x_reg { i16 -2896, i8 -1 }, %struct.stv090x_reg { i16 -2895, i8 -1 }, %struct.stv090x_reg { i16 -2894, i8 -1 }, %struct.stv090x_reg { i16 -2893, i8 -1 }, %struct.stv090x_reg { i16 -2892, i8 -1 }, %struct.stv090x_reg { i16 -2891, i8 -1 }, %struct.stv090x_reg { i16 -2890, i8 -1 }, %struct.stv090x_reg { i16 -2889, i8 -52 }, %struct.stv090x_reg { i16 -2888, i8 -52 }, %struct.stv090x_reg { i16 -2887, i8 -52 }, %struct.stv090x_reg { i16 -2886, i8 -52 }, %struct.stv090x_reg { i16 -2885, i8 -52 }, %struct.stv090x_reg { i16 -2884, i8 -52 }, %struct.stv090x_reg { i16 -2883, i8 -52 }, %struct.stv090x_reg { i16 -2882, i8 -52 }, %struct.stv090x_reg { i16 -2881, i8 -49 }, %struct.stv090x_reg { i16 -1402, i8 29 }, %struct.stv090x_reg { i16 -1533, i8 55 }, %struct.stv090x_reg { i16 -1532, i8 41 }, %struct.stv090x_reg { i16 -1531, i8 55 }, %struct.stv090x_reg { i16 -1530, i8 51 }, %struct.stv090x_reg { i16 -1529, i8 49 }, %struct.stv090x_reg { i16 -1528, i8 47 }, %struct.stv090x_reg { i16 -1527, i8 57 }, %struct.stv090x_reg { i16 -1526, i8 58 }, %struct.stv090x_reg { i16 -1525, i8 41 }, %struct.stv090x_reg { i16 -1524, i8 55 }, %struct.stv090x_reg { i16 -1523, i8 51 }, %struct.stv090x_reg { i16 -1522, i8 47 }, %struct.stv090x_reg { i16 -1521, i8 57 }, %struct.stv090x_reg { i16 -1520, i8 58 }, %struct.stv090x_reg { i16 -1473, i8 4 }, %struct.stv090x_reg { i16 -1469, i8 12 }, %struct.stv090x_reg { i16 -1468, i8 15 }, %struct.stv090x_reg { i16 -1467, i8 17 }, %struct.stv090x_reg { i16 -1466, i8 20 }, %struct.stv090x_reg { i16 -1465, i8 23 }, %struct.stv090x_reg { i16 -1464, i8 25 }, %struct.stv090x_reg { i16 -1463, i8 32 }, %struct.stv090x_reg { i16 -1462, i8 33 }, %struct.stv090x_reg { i16 -1461, i8 13 }, %struct.stv090x_reg { i16 -1460, i8 15 }, %struct.stv090x_reg { i16 -1459, i8 19 }, %struct.stv090x_reg { i16 -1458, i8 26 }, %struct.stv090x_reg { i16 -1457, i8 31 }, %struct.stv090x_reg { i16 -1456, i8 33 }, %struct.stv090x_reg { i16 -2560, i8 32 }, %struct.stv090x_reg { i16 -2765, i8 1 }, %struct.stv090x_reg { i16 -3277, i8 1 }, %struct.stv090x_reg { i16 -2756, i8 47 }, %struct.stv090x_reg { i16 -3268, i8 47 }], align 2
@stv0900_cut20_val = internal unnamed_addr constant [32 x %struct.stv090x_reg] [%struct.stv090x_reg { i16 -3554, i8 -24 }, %struct.stv090x_reg { i16 -3553, i8 16 }, %struct.stv090x_reg { i16 -3523, i8 56 }, %struct.stv090x_reg { i16 -3522, i8 32 }, %struct.stv090x_reg { i16 -3496, i8 90 }, %struct.stv090x_reg { i16 -3328, i8 6 }, %struct.stv090x_reg { i16 -3327, i8 0 }, %struct.stv090x_reg { i16 -3326, i8 4 }, %struct.stv090x_reg { i16 -3583, i8 12 }, %struct.stv090x_reg { i16 -3042, i8 -24 }, %struct.stv090x_reg { i16 -3041, i8 16 }, %struct.stv090x_reg { i16 -3011, i8 56 }, %struct.stv090x_reg { i16 -3010, i8 32 }, %struct.stv090x_reg { i16 -2984, i8 90 }, %struct.stv090x_reg { i16 -2816, i8 6 }, %struct.stv090x_reg { i16 -2815, i8 0 }, %struct.stv090x_reg { i16 -2814, i8 4 }, %struct.stv090x_reg { i16 -3071, i8 12 }, %struct.stv090x_reg { i16 -1469, i8 33 }, %struct.stv090x_reg { i16 -1468, i8 33 }, %struct.stv090x_reg { i16 -1467, i8 32 }, %struct.stv090x_reg { i16 -1466, i8 31 }, %struct.stv090x_reg { i16 -1465, i8 30 }, %struct.stv090x_reg { i16 -1464, i8 30 }, %struct.stv090x_reg { i16 -1463, i8 29 }, %struct.stv090x_reg { i16 -1462, i8 27 }, %struct.stv090x_reg { i16 -1461, i8 32 }, %struct.stv090x_reg { i16 -1460, i8 32 }, %struct.stv090x_reg { i16 -1459, i8 32 }, %struct.stv090x_reg { i16 -1458, i8 32 }, %struct.stv090x_reg { i16 -1457, i8 32 }, %struct.stv090x_reg { i16 -1456, i8 33 }], align 2
@.str.151 = private unnamed_addr constant [28 x i8] c"\013%s: Initializing STV0903\0A\00", align 1
@stv0903_initval = internal unnamed_addr constant [99 x %struct.stv090x_reg] [%struct.stv090x_reg { i16 -3812, i8 0 }, %struct.stv090x_reg { i16 -3758, i8 17 }, %struct.stv090x_reg { i16 -3646, i8 72 }, %struct.stv090x_reg { i16 -3645, i8 20 }, %struct.stv090x_reg { i16 -3616, i8 39 }, %struct.stv090x_reg { i16 -3615, i8 33 }, %struct.stv090x_reg { i16 -3680, i8 34 }, %struct.stv090x_reg { i16 -3671, i8 -64 }, %struct.stv090x_reg { i16 -3670, i8 -64 }, %struct.stv090x_reg { i16 -3679, i8 0 }, %struct.stv090x_reg { i16 -3052, i8 -7 }, %struct.stv090x_reg { i16 -3056, i8 8 }, %struct.stv090x_reg { i16 -3042, i8 -60 }, %struct.stv090x_reg { i16 -3011, i8 -19 }, %struct.stv090x_reg { i16 -2847, i8 -126 }, %struct.stv090x_reg { i16 -3009, i8 -48 }, %struct.stv090x_reg { i16 -3008, i8 -72 }, %struct.stv090x_reg { i16 -2992, i8 -46 }, %struct.stv090x_reg { i16 -2989, i8 32 }, %struct.stv090x_reg { i16 -2988, i8 0 }, %struct.stv090x_reg { i16 -2987, i8 -16 }, %struct.stv090x_reg { i16 -2986, i8 112 }, %struct.stv090x_reg { i16 -2700, i8 32 }, %struct.stv090x_reg { i16 -2656, i8 -120 }, %struct.stv090x_reg { i16 -2654, i8 58 }, %struct.stv090x_reg { i16 -2648, i8 0 }, %struct.stv090x_reg { i16 -2638, i8 16 }, %struct.stv090x_reg { i16 -2664, i8 53 }, %struct.stv090x_reg { i16 -2660, i8 -63 }, %struct.stv090x_reg { i16 -3007, i8 -8 }, %struct.stv090x_reg { i16 -3071, i8 28 }, %struct.stv090x_reg { i16 -3049, i8 32 }, %struct.stv090x_reg { i16 -3040, i8 112 }, %struct.stv090x_reg { i16 -3039, i8 -120 }, %struct.stv090x_reg { i16 -3028, i8 91 }, %struct.stv090x_reg { i16 -3027, i8 56 }, %struct.stv090x_reg { i16 -3016, i8 -28 }, %struct.stv090x_reg { i16 -3015, i8 26 }, %struct.stv090x_reg { i16 -3014, i8 9 }, %struct.stv090x_reg { i16 -3010, i8 8 }, %struct.stv090x_reg { i16 -2984, i8 -63 }, %struct.stv090x_reg { i16 -2983, i8 88 }, %struct.stv090x_reg { i16 -2982, i8 1 }, %struct.stv090x_reg { i16 -2928, i8 38 }, %struct.stv090x_reg { i16 -2916, i8 -122 }, %struct.stv090x_reg { i16 -2915, i8 -122 }, %struct.stv090x_reg { i16 -2816, i8 119 }, %struct.stv090x_reg { i16 -2815, i8 -123 }, %struct.stv090x_reg { i16 -2814, i8 119 }, %struct.stv090x_reg { i16 -3051, i8 59 }, %struct.stv090x_reg { i16 -2896, i8 -1 }, %struct.stv090x_reg { i16 -2895, i8 -1 }, %struct.stv090x_reg { i16 -2894, i8 -1 }, %struct.stv090x_reg { i16 -2893, i8 -1 }, %struct.stv090x_reg { i16 -2892, i8 -1 }, %struct.stv090x_reg { i16 -2891, i8 -1 }, %struct.stv090x_reg { i16 -2890, i8 -1 }, %struct.stv090x_reg { i16 -2889, i8 -52 }, %struct.stv090x_reg { i16 -2888, i8 -52 }, %struct.stv090x_reg { i16 -2887, i8 -52 }, %struct.stv090x_reg { i16 -2886, i8 -52 }, %struct.stv090x_reg { i16 -2885, i8 -52 }, %struct.stv090x_reg { i16 -2884, i8 -52 }, %struct.stv090x_reg { i16 -2883, i8 -52 }, %struct.stv090x_reg { i16 -2882, i8 -52 }, %struct.stv090x_reg { i16 -2881, i8 -49 }, %struct.stv090x_reg { i16 -1402, i8 28 }, %struct.stv090x_reg { i16 -1533, i8 55 }, %struct.stv090x_reg { i16 -1532, i8 41 }, %struct.stv090x_reg { i16 -1531, i8 55 }, %struct.stv090x_reg { i16 -1530, i8 51 }, %struct.stv090x_reg { i16 -1529, i8 49 }, %struct.stv090x_reg { i16 -1528, i8 47 }, %struct.stv090x_reg { i16 -1527, i8 57 }, %struct.stv090x_reg { i16 -1526, i8 58 }, %struct.stv090x_reg { i16 -1525, i8 41 }, %struct.stv090x_reg { i16 -1524, i8 55 }, %struct.stv090x_reg { i16 -1523, i8 51 }, %struct.stv090x_reg { i16 -1522, i8 47 }, %struct.stv090x_reg { i16 -1521, i8 57 }, %struct.stv090x_reg { i16 -1520, i8 58 }, %struct.stv090x_reg { i16 -1473, i8 4 }, %struct.stv090x_reg { i16 -1469, i8 12 }, %struct.stv090x_reg { i16 -1468, i8 15 }, %struct.stv090x_reg { i16 -1467, i8 17 }, %struct.stv090x_reg { i16 -1466, i8 20 }, %struct.stv090x_reg { i16 -1465, i8 23 }, %struct.stv090x_reg { i16 -1464, i8 25 }, %struct.stv090x_reg { i16 -1463, i8 32 }, %struct.stv090x_reg { i16 -1462, i8 33 }, %struct.stv090x_reg { i16 -1461, i8 13 }, %struct.stv090x_reg { i16 -1460, i8 15 }, %struct.stv090x_reg { i16 -1459, i8 19 }, %struct.stv090x_reg { i16 -1458, i8 26 }, %struct.stv090x_reg { i16 -1457, i8 31 }, %struct.stv090x_reg { i16 -1456, i8 33 }, %struct.stv090x_reg { i16 -2560, i8 32 }, %struct.stv090x_reg { i16 -2765, i8 1 }, %struct.stv090x_reg { i16 -2756, i8 47 }], align 2
@stv0903_cut20_val = internal unnamed_addr constant [23 x %struct.stv090x_reg] [%struct.stv090x_reg { i16 -3042, i8 -24 }, %struct.stv090x_reg { i16 -3041, i8 16 }, %struct.stv090x_reg { i16 -3011, i8 56 }, %struct.stv090x_reg { i16 -3010, i8 32 }, %struct.stv090x_reg { i16 -2984, i8 90 }, %struct.stv090x_reg { i16 -2816, i8 6 }, %struct.stv090x_reg { i16 -2815, i8 0 }, %struct.stv090x_reg { i16 -2814, i8 4 }, %struct.stv090x_reg { i16 -3071, i8 12 }, %struct.stv090x_reg { i16 -1469, i8 33 }, %struct.stv090x_reg { i16 -1468, i8 33 }, %struct.stv090x_reg { i16 -1467, i8 32 }, %struct.stv090x_reg { i16 -1466, i8 31 }, %struct.stv090x_reg { i16 -1465, i8 30 }, %struct.stv090x_reg { i16 -1464, i8 30 }, %struct.stv090x_reg { i16 -1463, i8 29 }, %struct.stv090x_reg { i16 -1462, i8 27 }, %struct.stv090x_reg { i16 -1461, i8 32 }, %struct.stv090x_reg { i16 -1460, i8 32 }, %struct.stv090x_reg { i16 -1459, i8 32 }, %struct.stv090x_reg { i16 -1458, i8 32 }, %struct.stv090x_reg { i16 -1457, i8 32 }, %struct.stv090x_reg { i16 -1456, i8 33 }], align 2
@.str.155 = private unnamed_addr constant [33 x i8] c"\013%s: Setting up initial values\0A\00", align 1
@.str.159 = private unnamed_addr constant [41 x i8] c"\013%s: Setting up Cut 2.0 initial values\0A\00", align 1
@.str.163 = private unnamed_addr constant [39 x i8] c"\013%s: ERROR: Unsupported Cut: 0x%02x!\0A\00", align 1
@stv090x_driver = internal global %struct.i2c_driver { i32 0, ptr @stv090x_probe, ptr @stv090x_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.21, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @stv090x_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author251, ptr @__UNIQUE_ID_description252, ptr @__UNIQUE_ID_license253, ptr @__UNIQUE_ID_verbose250, ptr @__UNIQUE_ID_verbosetype249, ptr @__ksymtab_stv090x_attach, ptr @__param_verbose], section "llvm.metadata"
@switch.table.stv090x_search = private unnamed_addr constant [3 x i32] [i32 3, i32 1, i32 2], align 4
@switch.table.stv090x_get_sig_params = private unnamed_addr constant [14 x i32] [i32 0, i32 9, i32 9, i32 9, i32 9, i32 1, i32 9, i32 9, i32 2, i32 9, i32 9, i32 4, i32 5, i32 6], align 4

@__mod_i2c__stv090x_id_table_device_table = dso_local alias [2 x %struct.i2c_device_id], ptr @stv090x_id_table

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @stv090x_attach(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 1132) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %23, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.stv090x_state, ptr %5, i32 0, i32 7
  store ptr @verbose, ptr %8, align 8
  %9 = getelementptr inbounds %struct.stv090x_state, ptr %5, i32 0, i32 5
  store ptr %0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.stv090x_state, ptr %5, i32 0, i32 4
  store ptr %1, ptr %10, align 8
  %11 = getelementptr inbounds %struct.stv090x_state, ptr %5, i32 0, i32 6, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %11, ptr noundef nonnull align 4 dereferenceable(544) @stv090x_ops, i32 544, i1 false)
  %12 = getelementptr inbounds %struct.stv090x_state, ptr %5, i32 0, i32 6, i32 3
  store ptr %5, ptr %12, align 8
  %13 = getelementptr inbounds %struct.stv090x_state, ptr %5, i32 0, i32 1
  store i32 %2, ptr %13, align 4
  %14 = getelementptr inbounds %struct.stv090x_config, ptr %0, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.stv090x_state, ptr %5, i32 0, i32 2
  store i32 %15, ptr %16, align 8
  %17 = load i32, ptr %0, align 4
  store i32 %17, ptr %5, align 8
  %18 = getelementptr inbounds %struct.stv090x_state, ptr %5, i32 0, i32 15
  store i32 0, ptr %18, align 8
  %19 = tail call fastcc i32 @stv090x_setup_compound(ptr noundef nonnull %5)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %7
  %22 = getelementptr inbounds %struct.stv090x_state, ptr %5, i32 0, i32 6
  br label %24

23:                                               ; preds = %7, %3
  tail call void @kfree(ptr noundef %5) #12
  br label %24

24:                                               ; preds = %23, %21
  %25 = phi ptr [ null, %23 ], [ %22, %21 ]
  ret ptr %25
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stv090x_setup_compound(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.stv090x_config, ptr %5, i32 0, i32 5
  %7 = load i8, ptr %6, align 4
  %8 = load ptr, ptr @stv090x_first_dev, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %36, label %10

10:                                               ; preds = %19, %1
  %11 = phi ptr [ %21, %19 ], [ %8, %1 ]
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %3
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.stv090x_internal, ptr %12, i32 0, i32 1
  %17 = load i8, ptr %16, align 4
  %18 = icmp eq i8 %17, %7
  br i1 %18, label %23, label %19

19:                                               ; preds = %15, %10
  %20 = getelementptr inbounds %struct.stv090x_dev, ptr %11, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %36, label %10

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 3
  store ptr %12, ptr %28, align 4
  %29 = getelementptr inbounds %struct.stv090x_internal, ptr %12, i32 0, i32 6
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, 1
  store i32 %31, ptr %29, align 4
  %32 = load i32, ptr @verbose, align 4
  %33 = icmp ugt i32 %32, 2
  br i1 %33, label %34, label %243

34:                                               ; preds = %27
  %35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef nonnull @__func__.stv090x_setup_compound) #13
  br label %243

36:                                               ; preds = %23, %19, %1
  %37 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %38 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %37, i32 noundef 3264, i32 noundef 60) #11
  %39 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 3
  store ptr %38, ptr %39, align 4
  %40 = icmp eq ptr %38, null
  br i1 %40, label %315, label %41

41:                                               ; preds = %36
  %42 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %43 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %42, i32 noundef 3264, i32 noundef 8) #11
  %44 = icmp eq ptr %43, null
  br i1 %44, label %56, label %45

45:                                               ; preds = %41
  store ptr %38, ptr %43, align 8
  %46 = getelementptr inbounds %struct.stv090x_dev, ptr %43, i32 0, i32 1
  store ptr null, ptr %46, align 4
  %47 = load ptr, ptr @stv090x_first_dev, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %58, label %49

49:                                               ; preds = %49, %45
  %50 = phi ptr [ %52, %49 ], [ %47, %45 ]
  %51 = getelementptr inbounds %struct.stv090x_dev, ptr %50, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %49

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.stv090x_dev, ptr %50, i32 0, i32 1
  br label %58

56:                                               ; preds = %41
  %57 = load ptr, ptr %39, align 4
  tail call void @kfree(ptr noundef %57) #12
  br label %315

58:                                               ; preds = %54, %45
  %59 = phi ptr [ %55, %54 ], [ @stv090x_first_dev, %45 ]
  store ptr %43, ptr %59, align 4
  %60 = load ptr, ptr %39, align 4
  %61 = getelementptr inbounds %struct.stv090x_internal, ptr %60, i32 0, i32 6
  store i32 1, ptr %61, align 4
  %62 = load ptr, ptr %39, align 4
  %63 = getelementptr inbounds %struct.stv090x_internal, ptr %62, i32 0, i32 4
  store i32 0, ptr %63, align 4
  %64 = load ptr, ptr %39, align 4
  %65 = getelementptr inbounds %struct.stv090x_internal, ptr %64, i32 0, i32 5
  store i32 0, ptr %65, align 4
  %66 = load ptr, ptr %2, align 4
  %67 = load ptr, ptr %39, align 4
  store ptr %66, ptr %67, align 4
  %68 = load ptr, ptr %4, align 4
  %69 = getelementptr inbounds %struct.stv090x_config, ptr %68, i32 0, i32 5
  %70 = load i8, ptr %69, align 4
  %71 = load ptr, ptr %39, align 4
  %72 = getelementptr inbounds %struct.stv090x_internal, ptr %71, i32 0, i32 1
  store i8 %70, ptr %72, align 4
  %73 = load i32, ptr @verbose, align 4
  %74 = icmp ugt i32 %73, 2
  br i1 %74, label %75, label %77

75:                                               ; preds = %58
  %76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, ptr noundef nonnull @__func__.stv090x_setup_compound) #13
  br label %77

77:                                               ; preds = %75, %58
  %78 = load ptr, ptr %39, align 4
  %79 = getelementptr inbounds %struct.stv090x_internal, ptr %78, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %79, ptr noundef nonnull @.str.136, ptr noundef nonnull @stv090x_setup_compound.__key) #12
  %80 = load ptr, ptr %39, align 4
  %81 = getelementptr inbounds %struct.stv090x_internal, ptr %80, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %81, ptr noundef nonnull @.str.138, ptr noundef nonnull @stv090x_setup_compound.__key.137) #12
  %82 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 6, i32 3
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.stv090x_state, ptr %83, i32 0, i32 5
  %85 = load ptr, ptr %84, align 4
  %86 = load i32, ptr %83, align 4
  switch i32 %86, label %100 [
    i32 1, label %87
    i32 0, label %90
  ]

87:                                               ; preds = %77
  %88 = load i32, ptr @verbose, align 4
  %89 = icmp ugt i32 %88, 3
  br i1 %89, label %93, label %100

90:                                               ; preds = %77
  %91 = load i32, ptr @verbose, align 4
  %92 = icmp ugt i32 %91, 3
  br i1 %92, label %93, label %100

93:                                               ; preds = %90, %87
  %94 = phi ptr [ @.str.147, %87 ], [ @.str.151, %90 ]
  %95 = phi i32 [ 32, %87 ], [ 23, %90 ]
  %96 = phi i32 [ 161, %87 ], [ 99, %90 ]
  %97 = phi ptr [ @stv0900_cut20_val, %87 ], [ @stv0903_cut20_val, %90 ]
  %98 = phi ptr [ @stv0900_initval, %87 ], [ @stv0903_initval, %90 ]
  %99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %94, ptr noundef nonnull @__func__.stv090x_setup) #13
  br label %100

100:                                              ; preds = %93, %90, %87, %77
  %101 = phi i1 [ true, %90 ], [ false, %77 ], [ true, %87 ], [ true, %93 ]
  %102 = phi i32 [ 23, %90 ], [ 0, %77 ], [ 32, %87 ], [ %95, %93 ]
  %103 = phi i32 [ 99, %90 ], [ 0, %77 ], [ 161, %87 ], [ %96, %93 ]
  %104 = phi ptr [ @stv0903_cut20_val, %90 ], [ null, %77 ], [ @stv0900_cut20_val, %87 ], [ %97, %93 ]
  %105 = phi ptr [ @stv0903_initval, %90 ], [ null, %77 ], [ @stv0900_initval, %87 ], [ %98, %93 ]
  %106 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %83, i32 noundef 62486, i8 noundef zeroext 92) #12
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %234, label %108

108:                                              ; preds = %100
  %109 = load i32, ptr %83, align 4
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %83, i32 noundef 61974, i8 noundef zeroext 92) #12
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %234, label %114

114:                                              ; preds = %111, %108
  tail call void @msleep(i32 noundef 5) #12
  %115 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %83, i32 noundef 62688, i8 noundef zeroext 108) #12
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %234, label %117

117:                                              ; preds = %114
  %118 = load i32, ptr %83, align 4
  %119 = icmp eq i32 %118, 1
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %83, i32 noundef 62176, i8 noundef zeroext 108) #12
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %234, label %123

123:                                              ; preds = %120, %117
  %124 = getelementptr inbounds %struct.stv090x_config, ptr %85, i32 0, i32 11
  %125 = load i32, ptr %124, align 4
  %126 = trunc i32 %125 to i8
  %127 = shl i8 %126, 4
  %128 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %83, i32 noundef 61738, i8 noundef zeroext %127) #12
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %234, label %130

130:                                              ; preds = %123
  %131 = load i32, ptr %83, align 4
  %132 = icmp eq i32 %131, 1
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %83, i32 noundef 61739, i8 noundef zeroext %127) #12
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %234, label %136

136:                                              ; preds = %133, %130
  %137 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %83, i32 noundef 61875, i8 noundef zeroext 19) #12
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %234, label %139

139:                                              ; preds = %136
  tail call void @msleep(i32 noundef 5) #12
  %140 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %83, i32 noundef 61737, i8 noundef zeroext 8) #12
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %234, label %142

142:                                              ; preds = %139
  %143 = getelementptr inbounds %struct.stv090x_config, ptr %85, i32 0, i32 2
  %144 = load i32, ptr %143, align 4
  %145 = trunc i32 %144 to i8
  %146 = or i8 %145, 32
  %147 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %83, i32 noundef 61878, i8 noundef zeroext %146) #12
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %234, label %149

149:                                              ; preds = %142
  tail call void @msleep(i32 noundef 5) #12
  %150 = load i32, ptr @verbose, align 4
  %151 = icmp ugt i32 %150, 3
  br i1 %151, label %152, label %154

152:                                              ; preds = %149
  %153 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.155, ptr noundef nonnull @__func__.stv090x_setup) #13
  br label %154

154:                                              ; preds = %152, %149
  br i1 %101, label %155, label %169

155:                                              ; preds = %154
  %156 = tail call i32 @llvm.umax.i32(i32 %103, i32 1) #12
  br label %160

157:                                              ; preds = %160
  %158 = add nuw nsw i32 %161, 1
  %159 = icmp eq i32 %158, %156
  br i1 %159, label %169, label %160

160:                                              ; preds = %157, %155
  %161 = phi i32 [ %158, %157 ], [ 0, %155 ]
  %162 = getelementptr %struct.stv090x_reg, ptr %105, i32 %161
  %163 = load i16, ptr %162, align 2
  %164 = zext i16 %163 to i32
  %165 = getelementptr %struct.stv090x_reg, ptr %105, i32 %161, i32 1
  %166 = load i8, ptr %165, align 2
  %167 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %83, i32 noundef %164, i8 noundef zeroext %166) #12
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %234, label %157

169:                                              ; preds = %157, %154
  %170 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %83, i32 noundef 61696) #12
  %171 = getelementptr inbounds %struct.stv090x_state, ptr %83, i32 0, i32 3
  %172 = load ptr, ptr %171, align 4
  %173 = getelementptr inbounds %struct.stv090x_internal, ptr %172, i32 0, i32 5
  store i32 %170, ptr %173, align 4
  %174 = load ptr, ptr %171, align 4
  %175 = getelementptr inbounds %struct.stv090x_internal, ptr %174, i32 0, i32 5
  %176 = load i32, ptr %175, align 4
  %177 = icmp ugt i32 %176, 31
  br i1 %177, label %178, label %201

178:                                              ; preds = %169
  %179 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %83, i32 noundef 63024, i8 noundef zeroext 12) #12
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %234, label %181

181:                                              ; preds = %178
  %182 = load i32, ptr @verbose, align 4
  %183 = icmp ugt i32 %182, 3
  br i1 %183, label %184, label %186

184:                                              ; preds = %181
  %185 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @__func__.stv090x_setup) #13
  br label %186

186:                                              ; preds = %184, %181
  br i1 %101, label %187, label %206

187:                                              ; preds = %186
  %188 = tail call i32 @llvm.umax.i32(i32 %102, i32 1) #12
  br label %192

189:                                              ; preds = %192
  %190 = add nuw nsw i32 %193, 1
  %191 = icmp eq i32 %190, %188
  br i1 %191, label %206, label %192

192:                                              ; preds = %189, %187
  %193 = phi i32 [ %190, %189 ], [ 0, %187 ]
  %194 = getelementptr %struct.stv090x_reg, ptr %104, i32 %193
  %195 = load i16, ptr %194, align 2
  %196 = zext i16 %195 to i32
  %197 = getelementptr %struct.stv090x_reg, ptr %104, i32 %193, i32 1
  %198 = load i8, ptr %197, align 2
  %199 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %83, i32 noundef %196, i8 noundef zeroext %198) #12
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %234, label %189

201:                                              ; preds = %169
  %202 = load i32, ptr @verbose, align 4
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %278, label %204

204:                                              ; preds = %201
  %205 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.163, ptr noundef nonnull @__func__.stv090x_setup, i32 noundef %176) #13
  br label %234

206:                                              ; preds = %189, %186
  %207 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %83, i32 noundef 61920) #12
  %208 = and i32 %207, 254
  %209 = getelementptr inbounds %struct.stv090x_config, ptr %85, i32 0, i32 13
  %210 = load i32, ptr %209, align 4
  %211 = icmp ne i32 %210, 1
  %212 = zext i1 %211 to i32
  %213 = or i32 %208, %212
  %214 = trunc i32 %213 to i8
  %215 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %83, i32 noundef 61920, i8 noundef zeroext %214) #12
  %216 = icmp slt i32 %215, 0
  br i1 %216, label %234, label %217

217:                                              ; preds = %206
  %218 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %83, i32 noundef 61922) #12
  %219 = and i32 %218, 254
  %220 = getelementptr inbounds %struct.stv090x_config, ptr %85, i32 0, i32 14
  %221 = load i32, ptr %220, align 4
  %222 = icmp ne i32 %221, 1
  %223 = zext i1 %222 to i32
  %224 = or i32 %219, %223
  %225 = trunc i32 %224 to i8
  %226 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %83, i32 noundef 61922, i8 noundef zeroext %225) #12
  %227 = icmp slt i32 %226, 0
  br i1 %227, label %234, label %228

228:                                              ; preds = %217
  %229 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %83, i32 noundef 65297, i8 noundef zeroext -128) #12
  %230 = icmp slt i32 %229, 0
  br i1 %230, label %234, label %231

231:                                              ; preds = %228
  %232 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %83, i32 noundef 65297, i8 noundef zeroext 0) #12
  %233 = icmp slt i32 %232, 0
  br i1 %233, label %234, label %243

234:                                              ; preds = %231, %228, %217, %206, %204, %192, %178, %160, %142, %139, %136, %133, %123, %120, %114, %111, %100
  %235 = load i32, ptr @verbose, align 4
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %278, label %237

237:                                              ; preds = %234
  %238 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv090x_setup) #13
  %239 = load i32, ptr @verbose, align 4
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %278, label %241

241:                                              ; preds = %237
  %242 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, ptr noundef nonnull @__func__.stv090x_setup_compound) #13
  br label %278

243:                                              ; preds = %231, %34, %27
  %244 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 3
  %245 = load ptr, ptr %244, align 4
  %246 = getelementptr inbounds %struct.stv090x_internal, ptr %245, i32 0, i32 5
  %247 = load i32, ptr %246, align 4
  %248 = icmp ugt i32 %247, 47
  br i1 %248, label %249, label %253

249:                                              ; preds = %243
  %250 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 6, i32 1, i32 0, i32 8
  %251 = load i32, ptr %250, align 4
  %252 = or i32 %251, 67108864
  store i32 %252, ptr %250, align 4
  br label %253

253:                                              ; preds = %249, %243
  %254 = load ptr, ptr %4, align 4
  %255 = getelementptr inbounds %struct.stv090x_config, ptr %254, i32 0, i32 15
  %256 = load i8, ptr %255, align 4, !range !8
  %257 = icmp eq i8 %256, 0
  br i1 %257, label %262, label %258

258:                                              ; preds = %253
  %259 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 6
  %260 = tail call i32 @stv090x_send_diseqc_burst(ptr noundef %259, i32 noundef 0)
  %261 = load ptr, ptr %4, align 4
  br label %262

262:                                              ; preds = %258, %253
  %263 = phi ptr [ %261, %258 ], [ %254, %253 ]
  %264 = getelementptr inbounds %struct.stv090x_config, ptr %263, i32 0, i32 28
  store ptr @stv090x_set_gpio, ptr %264, align 4
  %265 = load i32, ptr @verbose, align 4
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %315, label %267

267:                                              ; preds = %262
  %268 = load i32, ptr %0, align 4
  %269 = icmp eq i32 %268, 1
  %270 = select i1 %269, ptr @.str.31, ptr @.str.32
  %271 = load ptr, ptr %4, align 4
  %272 = getelementptr inbounds %struct.stv090x_config, ptr %271, i32 0, i32 3
  %273 = load i32, ptr %272, align 4
  %274 = load ptr, ptr %244, align 4
  %275 = getelementptr inbounds %struct.stv090x_internal, ptr %274, i32 0, i32 5
  %276 = load i32, ptr %275, align 4
  %277 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143, ptr noundef nonnull @__func__.stv090x_setup_compound, ptr noundef nonnull %270, i32 noundef %273, i32 noundef %276) #13
  br label %315

278:                                              ; preds = %241, %237, %234, %201
  %279 = load ptr, ptr %39, align 4
  %280 = load ptr, ptr @stv090x_first_dev, align 4
  %281 = load ptr, ptr %279, align 4
  %282 = getelementptr inbounds %struct.stv090x_internal, ptr %279, i32 0, i32 1
  %283 = load i8, ptr %282, align 4
  %284 = icmp eq ptr %280, null
  br i1 %284, label %313, label %285

285:                                              ; preds = %294, %278
  %286 = phi ptr [ %296, %294 ], [ %280, %278 ]
  %287 = load ptr, ptr %286, align 4
  %288 = load ptr, ptr %287, align 4
  %289 = icmp eq ptr %288, %281
  br i1 %289, label %290, label %294

290:                                              ; preds = %285
  %291 = getelementptr inbounds %struct.stv090x_internal, ptr %287, i32 0, i32 1
  %292 = load i8, ptr %291, align 4
  %293 = icmp eq i8 %292, %283
  br i1 %293, label %298, label %294

294:                                              ; preds = %290, %285
  %295 = getelementptr inbounds %struct.stv090x_dev, ptr %286, i32 0, i32 1
  %296 = load ptr, ptr %295, align 4
  %297 = icmp eq ptr %296, null
  br i1 %297, label %313, label %285

298:                                              ; preds = %290
  %299 = icmp eq ptr %286, %280
  br i1 %299, label %307, label %300

300:                                              ; preds = %300, %298
  %301 = phi ptr [ %303, %300 ], [ %280, %298 ]
  %302 = getelementptr inbounds %struct.stv090x_dev, ptr %301, i32 0, i32 1
  %303 = load ptr, ptr %302, align 4
  %304 = icmp eq ptr %303, %286
  br i1 %304, label %305, label %300

305:                                              ; preds = %300
  %306 = getelementptr inbounds %struct.stv090x_dev, ptr %301, i32 0, i32 1
  br label %307

307:                                              ; preds = %305, %298
  %308 = phi ptr [ %280, %298 ], [ %286, %305 ]
  %309 = phi ptr [ @stv090x_first_dev, %298 ], [ %306, %305 ]
  %310 = getelementptr inbounds %struct.stv090x_dev, ptr %308, i32 0, i32 1
  %311 = load ptr, ptr %310, align 4
  store ptr %311, ptr %309, align 4
  tail call void @kfree(ptr noundef nonnull %286) #12
  %312 = load ptr, ptr %39, align 4
  br label %313

313:                                              ; preds = %307, %294, %278
  %314 = phi ptr [ %279, %278 ], [ %312, %307 ], [ %279, %294 ]
  tail call void @kfree(ptr noundef %314) #12
  br label %315

315:                                              ; preds = %313, %267, %262, %56, %36
  %316 = phi i32 [ -19, %313 ], [ 0, %262 ], [ 0, %267 ], [ -12, %36 ], [ -12, %56 ]
  ret i32 %316
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #4 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @stv090x_driver) #12
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #4 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @stv090x_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stv090x_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.stv090x_state, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.stv090x_internal, ptr %5, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, -1
  store i32 %8, ptr %6, align 4
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr inbounds %struct.stv090x_internal, ptr %9, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %13, label %56

13:                                               ; preds = %1
  %14 = load i32, ptr @verbose, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv090x_release) #13
  %18 = load ptr, ptr %4, align 4
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi ptr [ %9, %13 ], [ %18, %16 ]
  %21 = load ptr, ptr @stv090x_first_dev, align 4
  %22 = load ptr, ptr %20, align 4
  %23 = getelementptr inbounds %struct.stv090x_internal, ptr %20, i32 0, i32 1
  %24 = load i8, ptr %23, align 4
  %25 = icmp eq ptr %21, null
  br i1 %25, label %54, label %26

26:                                               ; preds = %35, %19
  %27 = phi ptr [ %37, %35 ], [ %21, %19 ]
  %28 = load ptr, ptr %27, align 4
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %22
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.stv090x_internal, ptr %28, i32 0, i32 1
  %33 = load i8, ptr %32, align 4
  %34 = icmp eq i8 %33, %24
  br i1 %34, label %39, label %35

35:                                               ; preds = %31, %26
  %36 = getelementptr inbounds %struct.stv090x_dev, ptr %27, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %54, label %26

39:                                               ; preds = %31
  %40 = icmp eq ptr %27, %21
  br i1 %40, label %48, label %41

41:                                               ; preds = %41, %39
  %42 = phi ptr [ %44, %41 ], [ %21, %39 ]
  %43 = getelementptr inbounds %struct.stv090x_dev, ptr %42, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, %27
  br i1 %45, label %46, label %41

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.stv090x_dev, ptr %42, i32 0, i32 1
  br label %48

48:                                               ; preds = %46, %39
  %49 = phi ptr [ %21, %39 ], [ %27, %46 ]
  %50 = phi ptr [ @stv090x_first_dev, %39 ], [ %47, %46 ]
  %51 = getelementptr inbounds %struct.stv090x_dev, ptr %49, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  store ptr %52, ptr %50, align 4
  tail call void @kfree(ptr noundef nonnull %27) #12
  %53 = load ptr, ptr %4, align 4
  br label %54

54:                                               ; preds = %48, %35, %19
  %55 = phi ptr [ %20, %19 ], [ %53, %48 ], [ %20, %35 ]
  tail call void @kfree(ptr noundef %55) #12
  br label %56

56:                                               ; preds = %54, %1
  tail call void @kfree(ptr noundef %3) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv090x_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.stv090x_state, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.stv090x_state, ptr %3, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.stv090x_internal, ptr %7, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %88

11:                                               ; preds = %1
  %12 = tail call fastcc i32 @stv090x_i2c_gate_ctrl(ptr noundef %3, i32 noundef 1)
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %509, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.stv090x_config, ptr %5, i32 0, i32 16
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = tail call i32 %16(ptr noundef %0) #12
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %507, label %21

21:                                               ; preds = %18, %14
  %22 = tail call fastcc i32 @stv090x_i2c_gate_ctrl(ptr noundef %3, i32 noundef 0)
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %509, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %4, align 4
  %26 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %3, i32 noundef 61878) #12
  %27 = and i32 %26, 32
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, i32 810000000, i32 540000000
  %30 = getelementptr inbounds %struct.stv090x_config, ptr %25, i32 0, i32 4
  %31 = load i32, ptr %30, align 4
  %32 = udiv i32 %29, %31
  %33 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %3, i32 noundef 61875) #12
  %34 = trunc i32 %32 to i8
  %35 = add i8 %34, -1
  %36 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %3, i32 noundef 61875, i8 noundef zeroext %35) #12
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %72, label %38

38:                                               ; preds = %24
  %39 = load ptr, ptr %4, align 4
  %40 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %3, i32 noundef 61875) #12
  %41 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %3, i32 noundef 61878) #12
  %42 = and i32 %41, 32
  %43 = icmp eq i32 %42, 0
  %44 = add i32 %40, 1
  %45 = getelementptr inbounds %struct.stv090x_config, ptr %39, i32 0, i32 4
  %46 = load i32, ptr %45, align 4
  %47 = mul i32 %46, %44
  %48 = select i1 %43, i32 6, i32 4
  %49 = udiv i32 %47, %48
  %50 = load ptr, ptr %6, align 4
  %51 = getelementptr inbounds %struct.stv090x_internal, ptr %50, i32 0, i32 4
  store i32 %49, ptr %51, align 4
  %52 = load ptr, ptr %6, align 4
  %53 = getelementptr inbounds %struct.stv090x_internal, ptr %52, i32 0, i32 4
  %54 = load i32, ptr %53, align 4
  %55 = sdiv i32 %54, 704000
  %56 = getelementptr inbounds %struct.stv090x_state, ptr %3, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 2
  %59 = trunc i32 %55 to i8
  %60 = select i1 %58, i32 61849, i32 61865
  %61 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %3, i32 noundef %60, i8 noundef zeroext %59) #12
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %38
  %64 = load i32, ptr %56, align 4
  %65 = icmp eq i32 %64, 2
  %66 = select i1 %65, i32 61850, i32 61866
  %67 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %3, i32 noundef %66, i8 noundef zeroext %59) #12
  %68 = icmp sgt i32 %67, -1
  %69 = load i32, ptr @verbose, align 4
  %70 = icmp eq i32 %69, 0
  %71 = select i1 %68, i1 true, i1 %70
  br i1 %71, label %77, label %75

72:                                               ; preds = %38, %24
  %73 = load i32, ptr @verbose, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %72, %63
  %76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv090x_set_mclk) #13
  br label %77

77:                                               ; preds = %75, %72, %63
  tail call void @msleep(i32 noundef 5) #12
  %78 = getelementptr inbounds %struct.stv090x_config, ptr %5, i32 0, i32 2
  %79 = load i32, ptr %78, align 4
  %80 = trunc i32 %79 to i8
  %81 = or i8 %80, 32
  %82 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %3, i32 noundef 61878, i8 noundef zeroext %81)
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %509, label %84

84:                                               ; preds = %77
  %85 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %3, i32 noundef 61875) #12
  %86 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %3, i32 noundef 61878) #12
  %87 = load ptr, ptr %2, align 4
  br label %88

88:                                               ; preds = %84, %1
  %89 = phi ptr [ %87, %84 ], [ %3, %1 ]
  %90 = load i32, ptr @verbose, align 4
  %91 = icmp ugt i32 %90, 3
  br i1 %91, label %92, label %99

92:                                               ; preds = %88
  %93 = load i32, ptr %89, align 4
  %94 = icmp eq i32 %93, 1
  %95 = select i1 %94, ptr @.str.31, ptr @.str.32
  %96 = getelementptr inbounds %struct.stv090x_state, ptr %89, i32 0, i32 1
  %97 = load i32, ptr %96, align 4
  %98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.stv090x_wakeup, ptr noundef nonnull %95, i32 noundef %97) #13
  br label %99

99:                                               ; preds = %92, %88
  %100 = getelementptr inbounds %struct.stv090x_state, ptr %89, i32 0, i32 3
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.stv090x_internal, ptr %101, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %102) #12
  %103 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %89, i32 noundef 61878) #12
  %104 = trunc i32 %103 to i8
  %105 = and i8 %104, 127
  %106 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %89, i32 noundef 61878, i8 noundef zeroext %105) #12
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %164, label %108

108:                                              ; preds = %99
  %109 = getelementptr inbounds %struct.stv090x_state, ptr %89, i32 0, i32 1
  %110 = load i32, ptr %109, align 4
  switch i32 %110, label %159 [
    i32 1, label %111
    i32 2, label %135
  ]

111:                                              ; preds = %108
  %112 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %89, i32 noundef 61920) #12
  %113 = trunc i32 %112 to i8
  %114 = or i8 %113, 2
  %115 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %89, i32 noundef 61920, i8 noundef zeroext %114) #12
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %164, label %117

117:                                              ; preds = %111
  %118 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %89, i32 noundef 61921) #12
  %119 = trunc i32 %118 to i8
  %120 = or i8 %119, 32
  %121 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %89, i32 noundef 61921, i8 noundef zeroext %120) #12
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %164, label %123

123:                                              ; preds = %117
  %124 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %89, i32 noundef 61890) #12
  %125 = trunc i32 %124 to i8
  %126 = and i8 %125, -51
  %127 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %89, i32 noundef 61890, i8 noundef zeroext %126) #12
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %164, label %129

129:                                              ; preds = %123
  %130 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %89, i32 noundef 61891) #12
  %131 = trunc i32 %130 to i8
  %132 = and i8 %131, -12
  %133 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %89, i32 noundef 61891, i8 noundef zeroext %132) #12
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %164, label %175

135:                                              ; preds = %108
  %136 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %89, i32 noundef 61922) #12
  %137 = trunc i32 %136 to i8
  %138 = or i8 %137, 2
  %139 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %89, i32 noundef 61922, i8 noundef zeroext %138) #12
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %164, label %141

141:                                              ; preds = %135
  %142 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %89, i32 noundef 61923) #12
  %143 = trunc i32 %142 to i8
  %144 = or i8 %143, 32
  %145 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %89, i32 noundef 61923, i8 noundef zeroext %144) #12
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %164, label %147

147:                                              ; preds = %141
  %148 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %89, i32 noundef 61890) #12
  %149 = trunc i32 %148 to i8
  %150 = and i8 %149, -89
  %151 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %89, i32 noundef 61890, i8 noundef zeroext %150) #12
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %164, label %153

153:                                              ; preds = %147
  %154 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %89, i32 noundef 61891) #12
  %155 = trunc i32 %154 to i8
  %156 = and i8 %155, -22
  %157 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %89, i32 noundef 61891, i8 noundef zeroext %156) #12
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %164, label %175

159:                                              ; preds = %108
  %160 = load i32, ptr @verbose, align 4
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %175, label %162

162:                                              ; preds = %159
  %163 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.stv090x_wakeup) #13
  br label %175

164:                                              ; preds = %153, %147, %141, %135, %129, %123, %117, %111, %99
  %165 = load ptr, ptr %100, align 4
  %166 = getelementptr inbounds %struct.stv090x_internal, ptr %165, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %166) #12
  %167 = load i32, ptr @verbose, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %514, label %169

169:                                              ; preds = %164
  %170 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv090x_wakeup) #13
  %171 = load i32, ptr @verbose, align 4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %514, label %173

173:                                              ; preds = %169
  %174 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.stv090x_init) #13
  br label %509

175:                                              ; preds = %162, %159, %153, %129
  %176 = load ptr, ptr %100, align 4
  %177 = getelementptr inbounds %struct.stv090x_internal, ptr %176, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %177) #12
  %178 = getelementptr inbounds %struct.stv090x_state, ptr %3, i32 0, i32 2
  %179 = load i32, ptr %178, align 4
  %180 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %3, i32 noundef 64134) #12
  %181 = icmp eq i32 %179, 1
  br i1 %181, label %298, label %182

182:                                              ; preds = %175
  %183 = load i32, ptr %178, align 4
  %184 = icmp ne i32 %183, 0
  %185 = and i32 %180, 1
  %186 = icmp eq i32 %185, 0
  %187 = select i1 %184, i1 true, i1 %186
  br i1 %187, label %188, label %446

188:                                              ; preds = %182
  %189 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %3, i32 noundef 64134, i8 noundef zeroext 29) #12
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %441, label %191

191:                                              ; preds = %188
  store i32 0, ptr %178, align 4
  %192 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %3, i32 noundef 65297) #12
  %193 = trunc i32 %192 to i8
  %194 = or i8 %193, -128
  %195 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %3, i32 noundef 65297, i8 noundef zeroext %194) #12
  %196 = icmp slt i32 %195, 0
  br i1 %196, label %441, label %197

197:                                              ; preds = %191
  %198 = and i8 %193, 127
  %199 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %3, i32 noundef 65297, i8 noundef zeroext %198) #12
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %441, label %201

201:                                              ; preds = %197
  %202 = getelementptr inbounds %struct.stv090x_state, ptr %3, i32 0, i32 1
  %203 = load i32, ptr %202, align 4
  %204 = icmp eq i32 %203, 2
  %205 = select i1 %204, i32 62128, i32 62640
  %206 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %3, i32 noundef %205, i8 noundef zeroext -1) #12
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %441, label %208

208:                                              ; preds = %201
  %209 = load i32, ptr %202, align 4
  %210 = icmp eq i32 %209, 2
  %211 = select i1 %210, i32 62129, i32 62641
  %212 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %3, i32 noundef %211, i8 noundef zeroext -1) #12
  %213 = icmp slt i32 %212, 0
  br i1 %213, label %441, label %214

214:                                              ; preds = %208
  %215 = load i32, ptr %202, align 4
  %216 = icmp eq i32 %215, 2
  %217 = select i1 %216, i32 62130, i32 62642
  %218 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %3, i32 noundef %217, i8 noundef zeroext -1) #12
  %219 = icmp slt i32 %218, 0
  br i1 %219, label %441, label %220

220:                                              ; preds = %214
  %221 = load i32, ptr %202, align 4
  %222 = icmp eq i32 %221, 2
  %223 = select i1 %222, i32 62131, i32 62643
  %224 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %3, i32 noundef %223, i8 noundef zeroext -1) #12
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %441, label %226

226:                                              ; preds = %220
  %227 = load i32, ptr %202, align 4
  %228 = icmp eq i32 %227, 2
  %229 = select i1 %228, i32 62132, i32 62644
  %230 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %3, i32 noundef %229, i8 noundef zeroext -1) #12
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %441, label %232

232:                                              ; preds = %226
  %233 = load i32, ptr %202, align 4
  %234 = icmp eq i32 %233, 2
  %235 = select i1 %234, i32 62133, i32 62645
  %236 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %3, i32 noundef %235, i8 noundef zeroext -1) #12
  %237 = icmp slt i32 %236, 0
  br i1 %237, label %441, label %238

238:                                              ; preds = %232
  %239 = load i32, ptr %202, align 4
  %240 = icmp eq i32 %239, 2
  %241 = select i1 %240, i32 62134, i32 62646
  %242 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %3, i32 noundef %241, i8 noundef zeroext -1) #12
  %243 = icmp slt i32 %242, 0
  br i1 %243, label %441, label %244

244:                                              ; preds = %238
  %245 = load i32, ptr %202, align 4
  %246 = icmp eq i32 %245, 2
  %247 = select i1 %246, i32 62135, i32 62647
  %248 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %3, i32 noundef %247, i8 noundef zeroext -52) #12
  %249 = icmp slt i32 %248, 0
  br i1 %249, label %441, label %250

250:                                              ; preds = %244
  %251 = load i32, ptr %202, align 4
  %252 = icmp eq i32 %251, 2
  %253 = select i1 %252, i32 62136, i32 62648
  %254 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %3, i32 noundef %253, i8 noundef zeroext -52) #12
  %255 = icmp slt i32 %254, 0
  br i1 %255, label %441, label %256

256:                                              ; preds = %250
  %257 = load i32, ptr %202, align 4
  %258 = icmp eq i32 %257, 2
  %259 = select i1 %258, i32 62137, i32 62649
  %260 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %3, i32 noundef %259, i8 noundef zeroext -52) #12
  %261 = icmp slt i32 %260, 0
  br i1 %261, label %441, label %262

262:                                              ; preds = %256
  %263 = load i32, ptr %202, align 4
  %264 = icmp eq i32 %263, 2
  %265 = select i1 %264, i32 62138, i32 62650
  %266 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %3, i32 noundef %265, i8 noundef zeroext -52) #12
  %267 = icmp slt i32 %266, 0
  br i1 %267, label %441, label %268

268:                                              ; preds = %262
  %269 = load i32, ptr %202, align 4
  %270 = icmp eq i32 %269, 2
  %271 = select i1 %270, i32 62139, i32 62651
  %272 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %3, i32 noundef %271, i8 noundef zeroext -52) #12
  %273 = icmp slt i32 %272, 0
  br i1 %273, label %441, label %274

274:                                              ; preds = %268
  %275 = load i32, ptr %202, align 4
  %276 = icmp eq i32 %275, 2
  %277 = select i1 %276, i32 62140, i32 62652
  %278 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %3, i32 noundef %277, i8 noundef zeroext -52) #12
  %279 = icmp slt i32 %278, 0
  br i1 %279, label %441, label %280

280:                                              ; preds = %274
  %281 = load i32, ptr %202, align 4
  %282 = icmp eq i32 %281, 2
  %283 = select i1 %282, i32 62141, i32 62653
  %284 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %3, i32 noundef %283, i8 noundef zeroext -52) #12
  %285 = icmp slt i32 %284, 0
  br i1 %285, label %441, label %286

286:                                              ; preds = %280
  %287 = load i32, ptr %202, align 4
  %288 = icmp eq i32 %287, 2
  %289 = select i1 %288, i32 62142, i32 62654
  %290 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %3, i32 noundef %289, i8 noundef zeroext -1) #12
  %291 = icmp slt i32 %290, 0
  br i1 %291, label %441, label %292

292:                                              ; preds = %286
  %293 = load i32, ptr %202, align 4
  %294 = icmp eq i32 %293, 2
  %295 = select i1 %294, i32 62143, i32 62655
  %296 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %3, i32 noundef %295, i8 noundef zeroext -49) #12
  %297 = icmp slt i32 %296, 0
  br i1 %297, label %441, label %446

298:                                              ; preds = %175
  %299 = getelementptr inbounds %struct.stv090x_state, ptr %3, i32 0, i32 1
  %300 = load i32, ptr %299, align 4
  %301 = icmp eq i32 %300, 2
  %302 = select i1 %301, i32 62128, i32 62640
  %303 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %3, i32 noundef %302, i8 noundef zeroext -1) #12
  %304 = icmp slt i32 %303, 0
  br i1 %304, label %395, label %305

305:                                              ; preds = %298
  %306 = load i32, ptr %299, align 4
  %307 = icmp eq i32 %306, 2
  %308 = select i1 %307, i32 62129, i32 62641
  %309 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %3, i32 noundef %308, i8 noundef zeroext -1) #12
  %310 = icmp slt i32 %309, 0
  br i1 %310, label %395, label %311

311:                                              ; preds = %305
  %312 = load i32, ptr %299, align 4
  %313 = icmp eq i32 %312, 2
  %314 = select i1 %313, i32 62130, i32 62642
  %315 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %3, i32 noundef %314, i8 noundef zeroext -1) #12
  %316 = icmp slt i32 %315, 0
  br i1 %316, label %395, label %317

317:                                              ; preds = %311
  %318 = load i32, ptr %299, align 4
  %319 = icmp eq i32 %318, 2
  %320 = select i1 %319, i32 62131, i32 62643
  %321 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %3, i32 noundef %320, i8 noundef zeroext -1) #12
  %322 = icmp slt i32 %321, 0
  br i1 %322, label %395, label %323

323:                                              ; preds = %317
  %324 = load i32, ptr %299, align 4
  %325 = icmp eq i32 %324, 2
  %326 = select i1 %325, i32 62132, i32 62644
  %327 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %3, i32 noundef %326, i8 noundef zeroext -1) #12
  %328 = icmp slt i32 %327, 0
  br i1 %328, label %395, label %329

329:                                              ; preds = %323
  %330 = load i32, ptr %299, align 4
  %331 = icmp eq i32 %330, 2
  %332 = select i1 %331, i32 62133, i32 62645
  %333 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %3, i32 noundef %332, i8 noundef zeroext -1) #12
  %334 = icmp slt i32 %333, 0
  br i1 %334, label %395, label %335

335:                                              ; preds = %329
  %336 = load i32, ptr %299, align 4
  %337 = icmp eq i32 %336, 2
  %338 = select i1 %337, i32 62134, i32 62646
  %339 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %3, i32 noundef %338, i8 noundef zeroext -1) #12
  %340 = icmp slt i32 %339, 0
  br i1 %340, label %395, label %341

341:                                              ; preds = %335
  %342 = load i32, ptr %299, align 4
  %343 = icmp eq i32 %342, 2
  %344 = select i1 %343, i32 62135, i32 62647
  %345 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %3, i32 noundef %344, i8 noundef zeroext -1) #12
  %346 = icmp slt i32 %345, 0
  br i1 %346, label %395, label %347

347:                                              ; preds = %341
  %348 = load i32, ptr %299, align 4
  %349 = icmp eq i32 %348, 2
  %350 = select i1 %349, i32 62136, i32 62648
  %351 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %3, i32 noundef %350, i8 noundef zeroext -1) #12
  %352 = icmp slt i32 %351, 0
  br i1 %352, label %395, label %353

353:                                              ; preds = %347
  %354 = load i32, ptr %299, align 4
  %355 = icmp eq i32 %354, 2
  %356 = select i1 %355, i32 62137, i32 62649
  %357 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %3, i32 noundef %356, i8 noundef zeroext -1) #12
  %358 = icmp slt i32 %357, 0
  br i1 %358, label %395, label %359

359:                                              ; preds = %353
  %360 = load i32, ptr %299, align 4
  %361 = icmp eq i32 %360, 2
  %362 = select i1 %361, i32 62138, i32 62650
  %363 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %3, i32 noundef %362, i8 noundef zeroext -1) #12
  %364 = icmp slt i32 %363, 0
  br i1 %364, label %395, label %365

365:                                              ; preds = %359
  %366 = load i32, ptr %299, align 4
  %367 = icmp eq i32 %366, 2
  %368 = select i1 %367, i32 62139, i32 62651
  %369 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %3, i32 noundef %368, i8 noundef zeroext -1) #12
  %370 = icmp slt i32 %369, 0
  br i1 %370, label %395, label %371

371:                                              ; preds = %365
  %372 = load i32, ptr %299, align 4
  %373 = icmp eq i32 %372, 2
  %374 = select i1 %373, i32 62140, i32 62652
  %375 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %3, i32 noundef %374, i8 noundef zeroext -1) #12
  %376 = icmp slt i32 %375, 0
  br i1 %376, label %395, label %377

377:                                              ; preds = %371
  %378 = load i32, ptr %299, align 4
  %379 = icmp eq i32 %378, 2
  %380 = select i1 %379, i32 62141, i32 62653
  %381 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %3, i32 noundef %380, i8 noundef zeroext -1) #12
  %382 = icmp slt i32 %381, 0
  br i1 %382, label %395, label %383

383:                                              ; preds = %377
  %384 = load i32, ptr %299, align 4
  %385 = icmp eq i32 %384, 2
  %386 = select i1 %385, i32 62142, i32 62654
  %387 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %3, i32 noundef %386, i8 noundef zeroext -1) #12
  %388 = icmp slt i32 %387, 0
  br i1 %388, label %395, label %389

389:                                              ; preds = %383
  %390 = load i32, ptr %299, align 4
  %391 = icmp eq i32 %390, 2
  %392 = select i1 %391, i32 62143, i32 62655
  %393 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %3, i32 noundef %392, i8 noundef zeroext -1) #12
  %394 = icmp slt i32 %393, 0
  br i1 %394, label %395, label %400

395:                                              ; preds = %389, %383, %377, %371, %365, %359, %353, %347, %341, %335, %329, %323, %317, %311, %305, %298
  %396 = load i32, ptr @verbose, align 4
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %514, label %398

398:                                              ; preds = %395
  %399 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv090x_stop_modcod) #13
  br label %441

400:                                              ; preds = %389
  %401 = tail call fastcc i32 @stv090x_activate_modcod_single(ptr noundef %3) #12
  %402 = icmp slt i32 %401, 0
  br i1 %402, label %441, label %403

403:                                              ; preds = %400
  %404 = load i32, ptr %299, align 4
  %405 = icmp eq i32 %404, 2
  br i1 %405, label %406, label %409

406:                                              ; preds = %403
  %407 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %3, i32 noundef 64134, i8 noundef zeroext 6) #12
  %408 = icmp slt i32 %407, 0
  br i1 %408, label %441, label %412

409:                                              ; preds = %403
  %410 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %3, i32 noundef 64134, i8 noundef zeroext 4) #12
  %411 = icmp slt i32 %410, 0
  br i1 %411, label %441, label %412

412:                                              ; preds = %409, %406
  %413 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %3, i32 noundef 65297) #12
  %414 = trunc i32 %413 to i8
  %415 = or i8 %414, -128
  %416 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %3, i32 noundef 65297, i8 noundef zeroext %415) #12
  %417 = icmp slt i32 %416, 0
  br i1 %417, label %441, label %418

418:                                              ; preds = %412
  %419 = and i8 %414, 127
  %420 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %3, i32 noundef 65297, i8 noundef zeroext %419) #12
  %421 = icmp slt i32 %420, 0
  br i1 %421, label %441, label %422

422:                                              ; preds = %418
  %423 = load i32, ptr %299, align 4
  %424 = icmp eq i32 %423, 2
  %425 = select i1 %424, i32 62288, i32 62800
  %426 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %3, i32 noundef %425) #12
  %427 = load i32, ptr %299, align 4
  %428 = icmp eq i32 %427, 2
  %429 = select i1 %428, i32 62288, i32 62800
  %430 = trunc i32 %426 to i8
  %431 = or i8 %430, 1
  %432 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %3, i32 noundef %429, i8 noundef zeroext %431) #12
  %433 = icmp slt i32 %432, 0
  br i1 %433, label %441, label %434

434:                                              ; preds = %422
  %435 = load i32, ptr %299, align 4
  %436 = icmp eq i32 %435, 2
  %437 = and i8 %430, -2
  %438 = select i1 %436, i32 62288, i32 62800
  %439 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %3, i32 noundef %438, i8 noundef zeroext %437) #12
  %440 = icmp slt i32 %439, 0
  br i1 %440, label %441, label %446

441:                                              ; preds = %434, %422, %418, %412, %409, %406, %400, %398, %292, %286, %280, %274, %268, %262, %256, %250, %244, %238, %232, %226, %220, %214, %208, %201, %197, %191, %188
  %442 = load i32, ptr @verbose, align 4
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %514, label %444

444:                                              ; preds = %441
  %445 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv090x_ldpc_mode) #13
  br label %509

446:                                              ; preds = %434, %292, %182
  %447 = getelementptr inbounds %struct.stv090x_state, ptr %3, i32 0, i32 1
  %448 = load i32, ptr %447, align 4
  %449 = icmp eq i32 %448, 2
  %450 = select i1 %449, i32 62177, i32 62689
  %451 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %3, i32 noundef %450)
  %452 = and i32 %451, 127
  %453 = getelementptr inbounds %struct.stv090x_state, ptr %3, i32 0, i32 16
  %454 = load i32, ptr %453, align 4
  %455 = shl i32 %454, 7
  %456 = or i32 %455, %452
  %457 = load i32, ptr %447, align 4
  %458 = icmp eq i32 %457, 2
  %459 = select i1 %458, i32 62177, i32 62689
  %460 = trunc i32 %456 to i8
  %461 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %3, i32 noundef %459, i8 noundef zeroext %460)
  %462 = icmp slt i32 %461, 0
  br i1 %462, label %509, label %463

463:                                              ; preds = %446
  %464 = load i32, ptr %447, align 4
  %465 = icmp eq i32 %464, 2
  %466 = select i1 %465, i32 61968, i32 62480
  %467 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %3, i32 noundef %466)
  %468 = and i32 %467, 252
  %469 = getelementptr inbounds %struct.stv090x_state, ptr %3, i32 0, i32 15
  %470 = load i32, ptr %469, align 4
  %471 = or i32 %468, %470
  %472 = load i32, ptr %447, align 4
  %473 = icmp eq i32 %472, 2
  %474 = select i1 %473, i32 61968, i32 62480
  %475 = trunc i32 %471 to i8
  %476 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %3, i32 noundef %474, i8 noundef zeroext %475)
  %477 = icmp slt i32 %476, 0
  br i1 %477, label %509, label %478

478:                                              ; preds = %463
  %479 = tail call fastcc i32 @stv090x_i2c_gate_ctrl(ptr noundef %3, i32 noundef 1)
  %480 = icmp slt i32 %479, 0
  br i1 %480, label %509, label %481

481:                                              ; preds = %478
  %482 = getelementptr inbounds %struct.stv090x_config, ptr %5, i32 0, i32 18
  %483 = load ptr, ptr %482, align 4
  %484 = icmp eq ptr %483, null
  br i1 %484, label %488, label %485

485:                                              ; preds = %481
  %486 = tail call i32 %483(ptr noundef %0, i32 noundef 2) #12
  %487 = icmp slt i32 %486, 0
  br i1 %487, label %507, label %488

488:                                              ; preds = %485, %481
  %489 = getelementptr inbounds %struct.stv090x_config, ptr %5, i32 0, i32 16
  %490 = load ptr, ptr %489, align 4
  %491 = icmp eq ptr %490, null
  br i1 %491, label %495, label %492

492:                                              ; preds = %488
  %493 = tail call i32 %490(ptr noundef %0) #12
  %494 = icmp slt i32 %493, 0
  br i1 %494, label %507, label %495

495:                                              ; preds = %492, %488
  %496 = tail call fastcc i32 @stv090x_i2c_gate_ctrl(ptr noundef %3, i32 noundef 0)
  %497 = icmp slt i32 %496, 0
  br i1 %497, label %509, label %498

498:                                              ; preds = %495
  %499 = load i32, ptr %3, align 4
  %500 = icmp eq i32 %499, 1
  br i1 %500, label %501, label %504

501:                                              ; preds = %498
  %502 = tail call fastcc i32 @stv0900_set_tspath(ptr noundef %3)
  %503 = icmp slt i32 %502, 0
  br i1 %503, label %509, label %514

504:                                              ; preds = %498
  %505 = tail call fastcc i32 @stv0903_set_tspath(ptr noundef %3)
  %506 = icmp slt i32 %505, 0
  br i1 %506, label %509, label %514

507:                                              ; preds = %492, %485, %18
  %508 = tail call fastcc i32 @stv090x_i2c_gate_ctrl(ptr noundef %3, i32 noundef 0)
  br label %509

509:                                              ; preds = %507, %504, %501, %495, %478, %463, %446, %444, %173, %77, %21, %11
  %510 = load i32, ptr @verbose, align 4
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %514, label %512

512:                                              ; preds = %509
  %513 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv090x_init) #13
  br label %514

514:                                              ; preds = %512, %509, %504, %501, %441, %395, %169, %164
  %515 = phi i32 [ 0, %504 ], [ 0, %501 ], [ -1, %509 ], [ -1, %512 ], [ -1, %169 ], [ -1, %164 ], [ -1, %395 ], [ -1, %441 ]
  ret i32 %515
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv090x_sleep(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = tail call fastcc i32 @stv090x_i2c_gate_ctrl(ptr noundef %3, i32 noundef 1)
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %114, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.stv090x_state, ptr %3, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.stv090x_config, ptr %8, i32 0, i32 17
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %6
  %13 = tail call i32 %10(ptr noundef %0) #12
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %109, label %15

15:                                               ; preds = %12, %6
  %16 = tail call fastcc i32 @stv090x_i2c_gate_ctrl(ptr noundef %3, i32 noundef 0)
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %114, label %18

18:                                               ; preds = %15
  %19 = load i32, ptr @verbose, align 4
  %20 = icmp ugt i32 %19, 3
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load i32, ptr %3, align 4
  %23 = icmp eq i32 %22, 1
  %24 = select i1 %23, ptr @.str.31, ptr @.str.32
  %25 = getelementptr inbounds %struct.stv090x_state, ptr %3, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @__func__.stv090x_sleep, ptr noundef nonnull %24, i32 noundef %26) #13
  br label %28

28:                                               ; preds = %21, %18
  %29 = getelementptr inbounds %struct.stv090x_state, ptr %3, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.stv090x_internal, ptr %30, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %31) #12
  %32 = getelementptr inbounds %struct.stv090x_state, ptr %3, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  switch i32 %33, label %92 [
    i32 1, label %34
    i32 2, label %63
  ]

34:                                               ; preds = %28
  %35 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %3, i32 noundef 61920)
  %36 = trunc i32 %35 to i8
  %37 = and i8 %36, -3
  %38 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %3, i32 noundef 61920, i8 noundef zeroext %37)
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %111, label %40

40:                                               ; preds = %34
  %41 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %3, i32 noundef 61921)
  %42 = trunc i32 %41 to i8
  %43 = and i8 %42, -33
  %44 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %3, i32 noundef 61921, i8 noundef zeroext %43)
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %111, label %46

46:                                               ; preds = %40
  %47 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %3, i32 noundef 61922)
  %48 = and i32 %47, 2
  %49 = icmp eq i32 %48, 0
  %50 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %3, i32 noundef 61890)
  %51 = select i1 %49, i32 50, i32 34
  %52 = or i32 %51, %50
  %53 = trunc i32 %52 to i8
  %54 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %3, i32 noundef 61890, i8 noundef zeroext %53)
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %111, label %56

56:                                               ; preds = %46
  %57 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %3, i32 noundef 61891)
  %58 = select i1 %49, i32 11, i32 10
  %59 = or i32 %57, %58
  %60 = trunc i32 %59 to i8
  %61 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %3, i32 noundef 61891, i8 noundef zeroext %60)
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %111, label %97

63:                                               ; preds = %28
  %64 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %3, i32 noundef 61922)
  %65 = trunc i32 %64 to i8
  %66 = and i8 %65, -3
  %67 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %3, i32 noundef 61922, i8 noundef zeroext %66)
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %111, label %69

69:                                               ; preds = %63
  %70 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %3, i32 noundef 61923)
  %71 = trunc i32 %70 to i8
  %72 = and i8 %71, -33
  %73 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %3, i32 noundef 61923, i8 noundef zeroext %72)
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %111, label %75

75:                                               ; preds = %69
  %76 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %3, i32 noundef 61920)
  %77 = and i32 %76, 2
  %78 = icmp eq i32 %77, 0
  %79 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %3, i32 noundef 61890)
  %80 = select i1 %78, i32 88, i32 72
  %81 = or i32 %80, %79
  %82 = trunc i32 %81 to i8
  %83 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %3, i32 noundef 61890, i8 noundef zeroext %82)
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %111, label %85

85:                                               ; preds = %75
  %86 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %3, i32 noundef 61891)
  %87 = select i1 %78, i32 21, i32 20
  %88 = or i32 %86, %87
  %89 = trunc i32 %88 to i8
  %90 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %3, i32 noundef 61891, i8 noundef zeroext %89)
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %111, label %97

92:                                               ; preds = %28
  %93 = load i32, ptr @verbose, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %106, label %95

95:                                               ; preds = %92
  %96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.stv090x_sleep) #13
  br label %106

97:                                               ; preds = %85, %56
  %98 = phi i32 [ %77, %85 ], [ %48, %56 ]
  %99 = icmp eq i32 %98, 2
  br i1 %99, label %106, label %100

100:                                              ; preds = %97
  %101 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %3, i32 noundef 61878)
  %102 = trunc i32 %101 to i8
  %103 = or i8 %102, -128
  %104 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %3, i32 noundef 61878, i8 noundef zeroext %103)
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %100, %97, %95, %92
  %107 = load ptr, ptr %29, align 4
  %108 = getelementptr inbounds %struct.stv090x_internal, ptr %107, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %108) #12
  br label %119

109:                                              ; preds = %12
  %110 = tail call fastcc i32 @stv090x_i2c_gate_ctrl(ptr noundef %3, i32 noundef 0)
  br label %114

111:                                              ; preds = %100, %85, %75, %69, %63, %56, %46, %40, %34
  %112 = load ptr, ptr %29, align 4
  %113 = getelementptr inbounds %struct.stv090x_internal, ptr %112, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %113) #12
  br label %114

114:                                              ; preds = %111, %109, %15, %1
  %115 = load i32, ptr @verbose, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %114
  %118 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv090x_sleep) #13
  br label %119

119:                                              ; preds = %117, %114, %106
  %120 = phi i32 [ 0, %106 ], [ -1, %114 ], [ -1, %117 ]
  ret i32 %120
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @stv090x_frontend_algo(ptr nocapture noundef readnone %0) #6 {
  ret i32 4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv090x_read_status(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  store i32 0, ptr %1, align 4
  %5 = getelementptr inbounds %struct.stv090x_state, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 2
  %8 = select i1 %7, i32 61970, i32 62482
  %9 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %4, i32 noundef %8)
  %10 = and i32 %9, 128
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, ptr %1, align 4
  %14 = or i32 %13, 3
  store i32 %14, ptr %1, align 4
  br label %15

15:                                               ; preds = %12, %2
  %16 = load i32, ptr %5, align 4
  %17 = icmp eq i32 %16, 2
  %18 = select i1 %17, i32 61979, i32 62491
  %19 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %4, i32 noundef %18)
  %20 = lshr i32 %19, 5
  %21 = and i32 %20, 3
  switch i32 %21, label %22 [
    i32 3, label %54
    i32 2, label %27
  ]

22:                                               ; preds = %15
  %23 = load i32, ptr @verbose, align 4
  %24 = icmp ugt i32 %23, 3
  br i1 %24, label %25, label %81

25:                                               ; preds = %22
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @__func__.stv090x_read_status) #13
  br label %81

27:                                               ; preds = %15
  %28 = load i32, ptr @verbose, align 4
  %29 = icmp ugt i32 %28, 3
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.stv090x_read_status) #13
  br label %32

32:                                               ; preds = %30, %27
  %33 = and i32 %9, 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %81, label %35

35:                                               ; preds = %32
  %36 = load i32, ptr %5, align 4
  %37 = icmp eq i32 %36, 2
  %38 = select i1 %37, i32 62313, i32 62825
  %39 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %4, i32 noundef %38)
  %40 = and i32 %39, 2
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %81, label %42

42:                                               ; preds = %35
  %43 = load i32, ptr %1, align 4
  %44 = or i32 %43, 4
  store i32 %44, ptr %1, align 4
  %45 = load i32, ptr %5, align 4
  %46 = icmp eq i32 %45, 2
  %47 = select i1 %46, i32 62337, i32 62849
  %48 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %4, i32 noundef %47)
  %49 = and i32 %48, 128
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %81, label %51

51:                                               ; preds = %42
  %52 = load i32, ptr %1, align 4
  %53 = or i32 %52, 24
  store i32 %53, ptr %1, align 4
  br label %81

54:                                               ; preds = %15
  %55 = load i32, ptr @verbose, align 4
  %56 = icmp ugt i32 %55, 3
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @__func__.stv090x_read_status) #13
  br label %59

59:                                               ; preds = %57, %54
  %60 = and i32 %9, 8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %81, label %62

62:                                               ; preds = %59
  %63 = load i32, ptr %5, align 4
  %64 = icmp eq i32 %63, 2
  %65 = select i1 %64, i32 62270, i32 62782
  %66 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %4, i32 noundef %65)
  %67 = and i32 %66, 8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %81, label %69

69:                                               ; preds = %62
  %70 = load i32, ptr %1, align 4
  %71 = or i32 %70, 4
  store i32 %71, ptr %1, align 4
  %72 = load i32, ptr %5, align 4
  %73 = icmp eq i32 %72, 2
  %74 = select i1 %73, i32 62337, i32 62849
  %75 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %4, i32 noundef %74)
  %76 = and i32 %75, 128
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %69
  %79 = load i32, ptr %1, align 4
  %80 = or i32 %79, 24
  store i32 %80, ptr %1, align 4
  br label %81

81:                                               ; preds = %78, %69, %62, %59, %51, %42, %35, %32, %25, %22
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv090x_read_per(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !9
  %6 = call i32 @stv090x_read_status(ptr noundef %0, ptr noundef nonnull %3)
  %7 = load i32, ptr %3, align 4
  %8 = and i32 %7, 16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %63, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.stv090x_state, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 2
  %14 = select i1 %13, i32 62365, i32 62877
  %15 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %5, i32 noundef %14)
  %16 = load i32, ptr %11, align 4
  %17 = icmp eq i32 %16, 2
  %18 = select i1 %17, i32 62366, i32 62878
  %19 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %5, i32 noundef %18)
  %20 = load i32, ptr %11, align 4
  %21 = icmp eq i32 %20, 2
  %22 = select i1 %21, i32 62367, i32 62879
  %23 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %5, i32 noundef %22)
  %24 = and i32 %23, 255
  %25 = shl i32 %15, 16
  %26 = and i32 %25, 8323072
  %27 = shl i32 %19, 8
  %28 = and i32 %27, 65280
  %29 = or i32 %28, %26
  %30 = or i32 %29, %24
  store i32 %30, ptr %1, align 4
  %31 = load i32, ptr %11, align 4
  %32 = icmp eq i32 %31, 2
  %33 = select i1 %32, i32 62376, i32 62888
  %34 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %5, i32 noundef %33)
  %35 = load i32, ptr %11, align 4
  %36 = icmp eq i32 %35, 2
  %37 = select i1 %36, i32 62377, i32 62889
  %38 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %5, i32 noundef %37)
  %39 = load i32, ptr %11, align 4
  %40 = icmp eq i32 %39, 2
  %41 = select i1 %40, i32 62378, i32 62890
  %42 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %5, i32 noundef %41)
  %43 = load i32, ptr %11, align 4
  %44 = icmp eq i32 %43, 2
  %45 = select i1 %44, i32 62379, i32 62891
  %46 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %5, i32 noundef %45)
  %47 = load i32, ptr %11, align 4
  %48 = icmp eq i32 %47, 2
  %49 = select i1 %48, i32 62380, i32 62892
  %50 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %5, i32 noundef %49)
  %51 = icmp ne i32 %34, 0
  %52 = icmp ne i32 %38, 0
  %53 = select i1 %51, i1 true, i1 %52
  br i1 %53, label %65, label %54

54:                                               ; preds = %10
  %55 = shl i32 %42, 16
  %56 = and i32 %55, 16711680
  %57 = shl i32 %46, 8
  %58 = and i32 %57, 65280
  %59 = or i32 %58, %56
  %60 = and i32 %50, 255
  %61 = or i32 %59, %60
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %54, %2
  %64 = phi i32 [ 8388608, %2 ], [ 1, %54 ]
  store i32 %64, ptr %1, align 4
  br label %65

65:                                               ; preds = %63, %54, %10
  %66 = getelementptr inbounds %struct.stv090x_state, ptr %5, i32 0, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 2
  %69 = select i1 %68, i32 62376, i32 62888
  %70 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %5, i32 noundef %69, i8 noundef zeroext 0)
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %65
  %73 = load i32, ptr %66, align 4
  %74 = icmp eq i32 %73, 2
  %75 = select i1 %74, i32 62364, i32 62876
  %76 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %5, i32 noundef %75, i8 noundef zeroext -63)
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %72, %65
  %79 = load i32, ptr @verbose, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %78
  %82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv090x_read_per) #13
  br label %83

83:                                               ; preds = %81, %78, %72
  %84 = phi i32 [ 0, %72 ], [ -1, %78 ], [ -1, %81 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret i32 %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv090x_read_signal_strength(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.stv090x_state, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 2
  %8 = select i1 %7, i32 61966, i32 62478
  %9 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %4, i32 noundef %8)
  %10 = load i32, ptr %5, align 4
  %11 = icmp eq i32 %10, 2
  %12 = select i1 %11, i32 61967, i32 62479
  %13 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %4, i32 noundef %12)
  %14 = and i32 %13, 255
  %15 = shl i32 %9, 8
  %16 = and i32 %15, 65280
  %17 = or i32 %14, %16
  %18 = icmp ugt i32 %17, 51872
  %19 = add nsw i32 %17, -51873
  %20 = icmp ult i32 %19, -49911
  %21 = select i1 %18, i16 -3278, i16 19660
  br i1 %20, label %59, label %22

22:                                               ; preds = %35, %2
  %23 = phi i32 [ %41, %35 ], [ 51873, %2 ]
  %24 = phi i32 [ %37, %35 ], [ 0, %2 ]
  %25 = phi i32 [ %36, %35 ], [ 13, %2 ]
  %26 = add i32 %25, %24
  %27 = sdiv i32 %26, 2
  %28 = icmp sgt i32 %23, %17
  %29 = getelementptr %struct.stv090x_tab, ptr @stv090x_rf_tab, i32 %27, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = icmp sgt i32 %30, %17
  br i1 %28, label %33, label %32

32:                                               ; preds = %22
  br i1 %31, label %35, label %34

33:                                               ; preds = %22
  br i1 %31, label %34, label %35

34:                                               ; preds = %33, %32
  br label %35

35:                                               ; preds = %34, %33, %32
  %36 = phi i32 [ %25, %34 ], [ %27, %32 ], [ %27, %33 ]
  %37 = phi i32 [ %27, %34 ], [ %24, %32 ], [ %24, %33 ]
  %38 = sub i32 %36, %37
  %39 = icmp sgt i32 %38, 1
  %40 = getelementptr %struct.stv090x_tab, ptr @stv090x_rf_tab, i32 %37, i32 1
  %41 = load i32, ptr %40, align 4
  br i1 %39, label %22, label %42

42:                                               ; preds = %35
  %43 = getelementptr %struct.stv090x_tab, ptr @stv090x_rf_tab, i32 %36, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr %struct.stv090x_tab, ptr @stv090x_rf_tab, i32 %37
  %46 = sub i32 %17, %41
  %47 = getelementptr %struct.stv090x_tab, ptr @stv090x_rf_tab, i32 %36
  %48 = load i32, ptr %47, align 4
  %49 = load i32, ptr %45, align 4
  %50 = sub i32 %48, %49
  %51 = mul i32 %50, %46
  %52 = sub i32 %44, %41
  %53 = sdiv i32 %51, %52
  %54 = add i32 %53, %49
  %55 = mul i32 %54, 65535
  %56 = add i32 %55, 6553500
  %57 = sdiv i32 %56, 100
  %58 = trunc i32 %57 to i16
  br label %59

59:                                               ; preds = %42, %2
  %60 = phi i16 [ %58, %42 ], [ %21, %2 ]
  %61 = icmp ugt i32 %17, 51873
  %62 = icmp ult i32 %17, 1962
  %63 = select i1 %62, i16 0, i16 %60
  %64 = select i1 %61, i16 -1, i16 %63
  store i16 %64, ptr %1, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv090x_read_cnr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.stv090x_state, ptr %4, i32 0, i32 8
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %150 [
    i32 2, label %7
    i32 1, label %79
    i32 3, label %79
  ]

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.stv090x_state, ptr %4, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 2
  %11 = select i1 %10, i32 61970, i32 62482
  %12 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %4, i32 noundef %11)
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %150, label %15

15:                                               ; preds = %7
  tail call void @msleep(i32 noundef 5) #12
  br label %16

16:                                               ; preds = %16, %15
  %17 = phi i32 [ 0, %15 ], [ %31, %16 ]
  %18 = phi i32 [ 0, %15 ], [ %32, %16 ]
  %19 = load i32, ptr %8, align 4
  %20 = icmp eq i32 %19, 2
  %21 = select i1 %20, i32 62084, i32 62596
  %22 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %4, i32 noundef %21)
  %23 = load i32, ptr %8, align 4
  %24 = icmp eq i32 %23, 2
  %25 = select i1 %24, i32 62085, i32 62597
  %26 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %4, i32 noundef %25)
  %27 = and i32 %26, 255
  %28 = shl i32 %22, 8
  %29 = and i32 %28, 65280
  %30 = add i32 %29, %17
  %31 = add i32 %30, %27
  tail call void @msleep(i32 noundef 1) #12
  %32 = add nuw nsw i32 %18, 1
  %33 = icmp eq i32 %32, 16
  br i1 %33, label %34, label %16

34:                                               ; preds = %16
  %35 = sdiv i32 %31, 16
  %36 = icmp sgt i32 %31, 213567
  %37 = add i32 %31, -213568
  %38 = icmp ult i32 %37, -205872
  %39 = select i1 %36, i32 -30, i32 500
  br i1 %38, label %73, label %40

40:                                               ; preds = %53, %34
  %41 = phi i32 [ %59, %53 ], [ 13348, %34 ]
  %42 = phi i32 [ %55, %53 ], [ 0, %34 ]
  %43 = phi i32 [ %54, %53 ], [ 54, %34 ]
  %44 = add i32 %43, %42
  %45 = sdiv i32 %44, 2
  %46 = icmp sgt i32 %41, %35
  %47 = getelementptr %struct.stv090x_tab, ptr @stv090x_s2cn_tab, i32 %45, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = icmp sgt i32 %48, %35
  br i1 %46, label %51, label %50

50:                                               ; preds = %40
  br i1 %49, label %53, label %52

51:                                               ; preds = %40
  br i1 %49, label %52, label %53

52:                                               ; preds = %51, %50
  br label %53

53:                                               ; preds = %52, %51, %50
  %54 = phi i32 [ %43, %52 ], [ %45, %50 ], [ %45, %51 ]
  %55 = phi i32 [ %45, %52 ], [ %42, %50 ], [ %42, %51 ]
  %56 = sub i32 %54, %55
  %57 = icmp sgt i32 %56, 1
  %58 = getelementptr %struct.stv090x_tab, ptr @stv090x_s2cn_tab, i32 %55, i32 1
  %59 = load i32, ptr %58, align 4
  br i1 %57, label %40, label %60

60:                                               ; preds = %53
  %61 = getelementptr %struct.stv090x_tab, ptr @stv090x_s2cn_tab, i32 %54, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr %struct.stv090x_tab, ptr @stv090x_s2cn_tab, i32 %55
  %64 = sub i32 %35, %59
  %65 = getelementptr %struct.stv090x_tab, ptr @stv090x_s2cn_tab, i32 %54
  %66 = load i32, ptr %65, align 4
  %67 = load i32, ptr %63, align 4
  %68 = sub i32 %66, %67
  %69 = mul i32 %68, %64
  %70 = sub i32 %62, %59
  %71 = sdiv i32 %69, %70
  %72 = add i32 %71, %67
  br label %73

73:                                               ; preds = %60, %34
  %74 = phi i32 [ %72, %60 ], [ %39, %34 ]
  %75 = tail call i32 @llvm.smax.i32(i32 %74, i32 0)
  %76 = mul i32 %75, 65535
  %77 = sdiv i32 %76, 500
  %78 = trunc i32 %77 to i16
  br label %148

79:                                               ; preds = %2, %2
  %80 = getelementptr inbounds %struct.stv090x_state, ptr %4, i32 0, i32 1
  %81 = load i32, ptr %80, align 4
  %82 = icmp eq i32 %81, 2
  %83 = select i1 %82, i32 61970, i32 62482
  %84 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %4, i32 noundef %83)
  %85 = and i32 %84, 8
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %150, label %87

87:                                               ; preds = %79
  tail call void @msleep(i32 noundef 5) #12
  br label %88

88:                                               ; preds = %88, %87
  %89 = phi i32 [ 0, %87 ], [ %103, %88 ]
  %90 = phi i32 [ 0, %87 ], [ %104, %88 ]
  %91 = load i32, ptr %80, align 4
  %92 = icmp eq i32 %91, 2
  %93 = select i1 %92, i32 62088, i32 62600
  %94 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %4, i32 noundef %93)
  %95 = load i32, ptr %80, align 4
  %96 = icmp eq i32 %95, 2
  %97 = select i1 %96, i32 62089, i32 62601
  %98 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %4, i32 noundef %97)
  %99 = and i32 %98, 255
  %100 = shl i32 %94, 8
  %101 = and i32 %100, 65280
  %102 = add i32 %101, %89
  %103 = add i32 %102, %99
  tail call void @msleep(i32 noundef 1) #12
  %104 = add nuw nsw i32 %90, 1
  %105 = icmp eq i32 %104, 16
  br i1 %105, label %106, label %88

106:                                              ; preds = %88
  %107 = sdiv i32 %103, 16
  %108 = icmp slt i32 %103, 142672
  %109 = add i32 %103, -142672
  %110 = icmp ult i32 %109, -136640
  %111 = sext i1 %108 to i16
  br i1 %110, label %148, label %112

112:                                              ; preds = %125, %106
  %113 = phi i32 [ %131, %125 ], [ 8917, %106 ]
  %114 = phi i32 [ %127, %125 ], [ 0, %106 ]
  %115 = phi i32 [ %126, %125 ], [ 51, %106 ]
  %116 = add i32 %115, %114
  %117 = sdiv i32 %116, 2
  %118 = icmp sgt i32 %113, %107
  %119 = getelementptr %struct.stv090x_tab, ptr @stv090x_s1cn_tab, i32 %117, i32 1
  %120 = load i32, ptr %119, align 4
  %121 = icmp sgt i32 %120, %107
  br i1 %118, label %123, label %122

122:                                              ; preds = %112
  br i1 %121, label %125, label %124

123:                                              ; preds = %112
  br i1 %121, label %124, label %125

124:                                              ; preds = %123, %122
  br label %125

125:                                              ; preds = %124, %123, %122
  %126 = phi i32 [ %115, %124 ], [ %117, %122 ], [ %117, %123 ]
  %127 = phi i32 [ %117, %124 ], [ %114, %122 ], [ %114, %123 ]
  %128 = sub i32 %126, %127
  %129 = icmp sgt i32 %128, 1
  %130 = getelementptr %struct.stv090x_tab, ptr @stv090x_s1cn_tab, i32 %127, i32 1
  %131 = load i32, ptr %130, align 4
  br i1 %129, label %112, label %132

132:                                              ; preds = %125
  %133 = getelementptr %struct.stv090x_tab, ptr @stv090x_s1cn_tab, i32 %126, i32 1
  %134 = load i32, ptr %133, align 4
  %135 = getelementptr %struct.stv090x_tab, ptr @stv090x_s1cn_tab, i32 %127
  %136 = sub i32 %107, %131
  %137 = getelementptr %struct.stv090x_tab, ptr @stv090x_s1cn_tab, i32 %126
  %138 = load i32, ptr %137, align 4
  %139 = load i32, ptr %135, align 4
  %140 = sub i32 %138, %139
  %141 = mul i32 %140, %136
  %142 = sub i32 %134, %131
  %143 = sdiv i32 %141, %142
  %144 = add i32 %143, %139
  %145 = mul i32 %144, 65535
  %146 = sdiv i32 %145, 500
  %147 = trunc i32 %146 to i16
  br label %148

148:                                              ; preds = %132, %106, %73
  %149 = phi i16 [ %78, %73 ], [ %147, %132 ], [ %111, %106 ]
  store i16 %149, ptr %1, align 2
  br label %150

150:                                              ; preds = %148, %79, %7, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv090x_send_diseqc_msg(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.stv090x_state, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 2
  %8 = select i1 %7, i32 61840, i32 61856
  %9 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %4, i32 noundef %8)
  %10 = and i32 %9, -72
  %11 = getelementptr inbounds %struct.stv090x_state, ptr %4, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.stv090x_config, ptr %12, i32 0, i32 15
  %14 = load i8, ptr %13, align 4, !range !8
  %15 = icmp eq i8 %14, 0
  %16 = select i1 %15, i32 2, i32 4
  %17 = or i32 %16, %10
  %18 = load i32, ptr %5, align 4
  %19 = icmp eq i32 %18, 2
  %20 = select i1 %19, i32 61840, i32 61856
  %21 = trunc i32 %17 to i8
  %22 = or i8 %21, 64
  %23 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %4, i32 noundef %20, i8 noundef zeroext %22)
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %90, label %25

25:                                               ; preds = %2
  %26 = load i32, ptr %5, align 4
  %27 = icmp eq i32 %26, 2
  %28 = trunc i32 %17 to i8
  %29 = select i1 %27, i32 61840, i32 61856
  %30 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %4, i32 noundef %29, i8 noundef zeroext %28)
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %90, label %32

32:                                               ; preds = %25
  %33 = load i32, ptr %5, align 4
  %34 = icmp eq i32 %33, 2
  %35 = trunc i32 %17 to i8
  %36 = or i8 %35, 8
  %37 = select i1 %34, i32 61840, i32 61856
  %38 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %4, i32 noundef %37, i8 noundef zeroext %36)
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %90, label %40

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, ptr %1, i32 0, i32 1
  %42 = load i8, ptr %41, align 1
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %67, label %49

44:                                               ; preds = %59
  %45 = add nuw nsw i32 %50, 1
  %46 = load i8, ptr %41, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp ult i32 %45, %47
  br i1 %48, label %49, label %67

49:                                               ; preds = %44, %40
  %50 = phi i32 [ %45, %44 ], [ 0, %40 ]
  %51 = phi i1 [ true, %44 ], [ false, %40 ]
  br i1 %51, label %59, label %52

52:                                               ; preds = %52, %49
  %53 = load i32, ptr %5, align 4
  %54 = icmp eq i32 %53, 2
  %55 = select i1 %54, i32 61848, i32 61864
  %56 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %4, i32 noundef %55)
  %57 = and i32 %56, 64
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %52

59:                                               ; preds = %52, %49
  %60 = load i32, ptr %5, align 4
  %61 = icmp eq i32 %60, 2
  %62 = getelementptr [6 x i8], ptr %1, i32 0, i32 %50
  %63 = load i8, ptr %62, align 1
  %64 = select i1 %61, i32 61847, i32 61863
  %65 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %4, i32 noundef %64, i8 noundef zeroext %63)
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %90, label %44

67:                                               ; preds = %44, %40
  %68 = load i32, ptr %5, align 4
  %69 = icmp eq i32 %68, 2
  %70 = select i1 %69, i32 61840, i32 61856
  %71 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %4, i32 noundef %70)
  %72 = load i32, ptr %5, align 4
  %73 = icmp eq i32 %72, 2
  %74 = select i1 %73, i32 61840, i32 61856
  %75 = trunc i32 %71 to i8
  %76 = and i8 %75, -9
  %77 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %4, i32 noundef %74, i8 noundef zeroext %76)
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %90, label %79

79:                                               ; preds = %79, %67
  %80 = phi i32 [ %85, %79 ], [ 0, %67 ]
  %81 = load i32, ptr %5, align 4
  %82 = icmp eq i32 %81, 2
  %83 = select i1 %82, i32 61848, i32 61864
  %84 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %4, i32 noundef %83)
  tail call void @msleep(i32 noundef 10) #12
  %85 = add nuw nsw i32 %80, 1
  %86 = and i32 %84, 32
  %87 = icmp eq i32 %86, 0
  %88 = icmp ult i32 %80, 9
  %89 = select i1 %87, i1 %88, i1 false
  br i1 %89, label %79, label %95

90:                                               ; preds = %67, %59, %32, %25, %2
  %91 = load i32, ptr @verbose, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %90
  %94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv090x_send_diseqc_msg) #13
  br label %95

95:                                               ; preds = %93, %90, %79
  %96 = phi i32 [ -1, %90 ], [ -1, %93 ], [ 0, %79 ]
  ret i32 %96
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv090x_recv_slave_reply(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.stv090x_state, ptr %4, i32 0, i32 1
  br label %6

6:                                                ; preds = %6, %2
  %7 = phi i32 [ 0, %2 ], [ %8, %6 ]
  tail call void @msleep(i32 noundef 10) #12
  %8 = add nuw nsw i32 %7, 1
  %9 = load i32, ptr %5, align 4
  %10 = icmp eq i32 %9, 2
  %11 = select i1 %10, i32 61844, i32 61860
  %12 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %4, i32 noundef %11)
  %13 = and i32 %12, 128
  %14 = icmp eq i32 %13, 0
  %15 = icmp ult i32 %7, 9
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %6, label %17

17:                                               ; preds = %6
  br i1 %14, label %35, label %18

18:                                               ; preds = %17
  %19 = trunc i32 %12 to i8
  %20 = and i8 %19, 15
  %21 = getelementptr inbounds %struct.dvb_diseqc_slave_reply, ptr %1, i32 0, i32 1
  store i8 %20, ptr %21, align 4
  %22 = icmp eq i8 %20, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %23, %18
  %24 = phi i32 [ %31, %23 ], [ 0, %18 ]
  %25 = load i32, ptr %5, align 4
  %26 = icmp eq i32 %25, 2
  %27 = select i1 %26, i32 61846, i32 61862
  %28 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %4, i32 noundef %27)
  %29 = trunc i32 %28 to i8
  %30 = getelementptr [4 x i8], ptr %1, i32 0, i32 %24
  store i8 %29, ptr %30, align 1
  %31 = add nuw nsw i32 %24, 1
  %32 = load i8, ptr %21, align 4
  %33 = zext i8 %32 to i32
  %34 = icmp ult i32 %31, %33
  br i1 %34, label %23, label %35

35:                                               ; preds = %23, %18, %17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv090x_send_diseqc_burst(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.stv090x_state, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 2
  %8 = select i1 %7, i32 61840, i32 61856
  %9 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %4, i32 noundef %8)
  %10 = icmp eq i32 %1, 0
  %11 = getelementptr inbounds %struct.stv090x_state, ptr %4, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.stv090x_config, ptr %12, i32 0, i32 15
  %14 = load i8, ptr %13, align 4, !range !8
  %15 = icmp eq i8 %14, 0
  %16 = select i1 %15, i32 3, i32 5
  %17 = select i1 %15, i32 2, i32 4
  %18 = select i1 %10, i32 %16, i32 %17
  %19 = xor i1 %10, true
  %20 = sext i1 %19 to i8
  %21 = and i32 %9, -72
  %22 = or i32 %18, %21
  %23 = load i32, ptr %5, align 4
  %24 = icmp eq i32 %23, 2
  %25 = trunc i32 %22 to i8
  %26 = or i8 %25, 64
  %27 = select i1 %24, i32 61840, i32 61856
  %28 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %4, i32 noundef %27, i8 noundef zeroext %26)
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %81, label %30

30:                                               ; preds = %2
  %31 = load i32, ptr %5, align 4
  %32 = icmp eq i32 %31, 2
  %33 = trunc i32 %22 to i8
  %34 = select i1 %32, i32 61840, i32 61856
  %35 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %4, i32 noundef %34, i8 noundef zeroext %33)
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %81, label %37

37:                                               ; preds = %30
  %38 = load i32, ptr %5, align 4
  %39 = icmp eq i32 %38, 2
  %40 = trunc i32 %22 to i8
  %41 = or i8 %40, 8
  %42 = select i1 %39, i32 61840, i32 61856
  %43 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %4, i32 noundef %42, i8 noundef zeroext %41)
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %81, label %45

45:                                               ; preds = %45, %37
  %46 = load i32, ptr %5, align 4
  %47 = icmp eq i32 %46, 2
  %48 = select i1 %47, i32 61848, i32 61864
  %49 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %4, i32 noundef %48)
  %50 = and i32 %49, 64
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %45

52:                                               ; preds = %45
  %53 = load i32, ptr %5, align 4
  %54 = icmp eq i32 %53, 2
  %55 = select i1 %54, i32 61847, i32 61863
  %56 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %4, i32 noundef %55, i8 noundef zeroext %20)
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %81, label %58

58:                                               ; preds = %52
  %59 = load i32, ptr %5, align 4
  %60 = icmp eq i32 %59, 2
  %61 = select i1 %60, i32 61840, i32 61856
  %62 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %4, i32 noundef %61)
  %63 = load i32, ptr %5, align 4
  %64 = icmp eq i32 %63, 2
  %65 = select i1 %64, i32 61840, i32 61856
  %66 = trunc i32 %62 to i8
  %67 = and i8 %66, -9
  %68 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %4, i32 noundef %65, i8 noundef zeroext %67)
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %81, label %70

70:                                               ; preds = %70, %58
  %71 = phi i32 [ %76, %70 ], [ 0, %58 ]
  %72 = load i32, ptr %5, align 4
  %73 = icmp eq i32 %72, 2
  %74 = select i1 %73, i32 61848, i32 61864
  %75 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %4, i32 noundef %74)
  tail call void @msleep(i32 noundef 10) #12
  %76 = add nuw nsw i32 %71, 1
  %77 = and i32 %75, 32
  %78 = icmp eq i32 %77, 0
  %79 = icmp ult i32 %71, 9
  %80 = select i1 %78, i1 %79, i1 false
  br i1 %80, label %70, label %86

81:                                               ; preds = %58, %52, %37, %30, %2
  %82 = load i32, ptr @verbose, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %81
  %85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv090x_send_diseqc_burst) #13
  br label %86

86:                                               ; preds = %84, %81, %70
  %87 = phi i32 [ -1, %81 ], [ -1, %84 ], [ 0, %70 ]
  ret i32 %87
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv090x_set_tone(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.stv090x_state, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 2
  %8 = select i1 %7, i32 61840, i32 61856
  %9 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %4, i32 noundef %8)
  switch i32 %1, label %40 [
    i32 0, label %10
    i32 1, label %26
  ]

10:                                               ; preds = %2
  %11 = and i32 %9, -72
  %12 = load i32, ptr %5, align 4
  %13 = icmp eq i32 %12, 2
  %14 = trunc i32 %11 to i8
  %15 = or i8 %14, 64
  %16 = select i1 %13, i32 61840, i32 61856
  %17 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %4, i32 noundef %16, i8 noundef zeroext %15)
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %35, label %19

19:                                               ; preds = %10
  %20 = load i32, ptr %5, align 4
  %21 = icmp eq i32 %20, 2
  %22 = trunc i32 %11 to i8
  %23 = select i1 %21, i32 61840, i32 61856
  %24 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %4, i32 noundef %23, i8 noundef zeroext %22)
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %35, label %40

26:                                               ; preds = %2
  %27 = load i32, ptr %5, align 4
  %28 = icmp eq i32 %27, 2
  %29 = trunc i32 %9 to i8
  %30 = and i8 %29, -72
  %31 = or i8 %30, 64
  %32 = select i1 %28, i32 61840, i32 61856
  %33 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %4, i32 noundef %32, i8 noundef zeroext %31)
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %26, %19, %10
  %36 = load i32, ptr @verbose, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv090x_set_tone) #13
  br label %40

40:                                               ; preds = %38, %35, %26, %19, %2
  %41 = phi i32 [ -22, %2 ], [ 0, %26 ], [ 0, %19 ], [ -1, %35 ], [ -1, %38 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv090x_search(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %617, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, -4
  %12 = icmp ult i32 %11, 3
  br i1 %12, label %13, label %617

13:                                               ; preds = %8
  %14 = getelementptr inbounds [3 x i32], ptr @switch.table.stv090x_search, i32 0, i32 %11
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.stv090x_state, ptr %4, i32 0, i32 8
  store i32 %15, ptr %16, align 4
  %17 = load i32, ptr %5, align 4
  %18 = getelementptr inbounds %struct.stv090x_state, ptr %4, i32 0, i32 18
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 10
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.stv090x_state, ptr %4, i32 0, i32 19
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.stv090x_state, ptr %4, i32 0, i32 12
  store i32 3, ptr %22, align 4
  %23 = getelementptr inbounds %struct.stv090x_state, ptr %4, i32 0, i32 17
  store i32 1, ptr %23, align 4
  %24 = getelementptr inbounds %struct.stv090x_state, ptr %4, i32 0, i32 9
  store i32 9, ptr %24, align 4
  %25 = icmp ugt i32 %20, 10000000
  %26 = load i32, ptr @verbose, align 4
  %27 = icmp ugt i32 %26, 3
  %28 = select i1 %25, i32 10000000, i32 5000000
  br i1 %27, label %29, label %32

29:                                               ; preds = %13
  %30 = select i1 %25, ptr @.str.64, ptr @.str.68
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %30, ptr noundef nonnull @__func__.stv090x_search) #13
  br label %32

32:                                               ; preds = %29, %13
  %33 = getelementptr inbounds %struct.stv090x_state, ptr %4, i32 0, i32 21
  store i32 %28, ptr %33, align 4
  %34 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 25
  %35 = load i32, ptr %34, align 4
  %36 = load i32, ptr @verbose, align 4
  %37 = icmp ugt i32 %36, 3
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @__func__.stv090x_set_pls, i32 noundef %35) #13
  br label %40

40:                                               ; preds = %38, %32
  %41 = getelementptr inbounds %struct.stv090x_state, ptr %4, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 2
  %44 = trunc i32 %35 to i8
  %45 = select i1 %43, i32 62126, i32 62638
  %46 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %4, i32 noundef %45, i8 noundef zeroext %44) #12
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %68, label %48

48:                                               ; preds = %40
  %49 = load i32, ptr %41, align 4
  %50 = icmp eq i32 %49, 2
  %51 = lshr i32 %35, 8
  %52 = trunc i32 %51 to i8
  %53 = select i1 %50, i32 62125, i32 62637
  %54 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %4, i32 noundef %53, i8 noundef zeroext %52) #12
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %68, label %56

56:                                               ; preds = %48
  %57 = load i32, ptr %41, align 4
  %58 = icmp eq i32 %57, 2
  %59 = lshr i32 %35, 16
  %60 = trunc i32 %59 to i8
  %61 = or i8 %60, 4
  %62 = select i1 %58, i32 62124, i32 62636
  %63 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %4, i32 noundef %62, i8 noundef zeroext %61) #12
  %64 = icmp sgt i32 %63, -1
  %65 = load i32, ptr @verbose, align 4
  %66 = icmp eq i32 %65, 0
  %67 = select i1 %64, i1 true, i1 %66
  br i1 %67, label %74, label %71

68:                                               ; preds = %48, %40
  %69 = load i32, ptr @verbose, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %68, %56
  %72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv090x_set_pls) #13
  %73 = load i32, ptr @verbose, align 4
  br label %74

74:                                               ; preds = %71, %68, %56
  %75 = phi i32 [ %65, %56 ], [ 0, %68 ], [ %73, %71 ]
  %76 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 24
  %77 = load i32, ptr %76, align 4
  %78 = icmp ugt i32 %77, 255
  %79 = icmp ugt i32 %75, 3
  br i1 %78, label %80, label %95

80:                                               ; preds = %74
  br i1 %79, label %81, label %83

81:                                               ; preds = %80
  %82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef nonnull @__func__.stv090x_set_mis) #13
  br label %83

83:                                               ; preds = %81, %80
  %84 = load i32, ptr %41, align 4
  %85 = icmp eq i32 %84, 2
  %86 = select i1 %85, i32 62288, i32 62800
  %87 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %4, i32 noundef %86) #12
  %88 = load i32, ptr %41, align 4
  %89 = icmp eq i32 %88, 2
  %90 = select i1 %89, i32 62288, i32 62800
  %91 = trunc i32 %87 to i8
  %92 = and i8 %91, -33
  %93 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %4, i32 noundef %90, i8 noundef zeroext %92) #12
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %123, label %128

95:                                               ; preds = %74
  br i1 %79, label %96, label %98

96:                                               ; preds = %95
  %97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef nonnull @__func__.stv090x_set_mis, i32 noundef %77) #13
  br label %98

98:                                               ; preds = %96, %95
  %99 = load i32, ptr %41, align 4
  %100 = icmp eq i32 %99, 2
  %101 = select i1 %100, i32 62288, i32 62800
  %102 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %4, i32 noundef %101) #12
  %103 = load i32, ptr %41, align 4
  %104 = icmp eq i32 %103, 2
  %105 = select i1 %104, i32 62288, i32 62800
  %106 = trunc i32 %102 to i8
  %107 = or i8 %106, 32
  %108 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %4, i32 noundef %105, i8 noundef zeroext %107) #12
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %123, label %110

110:                                              ; preds = %98
  %111 = load i32, ptr %41, align 4
  %112 = icmp eq i32 %111, 2
  %113 = trunc i32 %77 to i8
  %114 = select i1 %112, i32 62302, i32 62814
  %115 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %4, i32 noundef %114, i8 noundef zeroext %113) #12
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %123, label %117

117:                                              ; preds = %110
  %118 = load i32, ptr %41, align 4
  %119 = icmp eq i32 %118, 2
  %120 = select i1 %119, i32 62303, i32 62815
  %121 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %4, i32 noundef %120, i8 noundef zeroext -1) #12
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %117, %110, %98, %83
  %124 = load i32, ptr @verbose, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %123
  %127 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv090x_set_mis) #13
  br label %128

128:                                              ; preds = %126, %123, %117, %83
  %129 = getelementptr inbounds %struct.stv090x_state, ptr %4, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  %130 = load i32, ptr %41, align 4
  %131 = icmp eq i32 %130, 2
  %132 = select i1 %131, i32 62322, i32 62834
  %133 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %4, i32 noundef %132) #12
  %134 = or i32 %133, 1
  store i32 %134, ptr %2, align 4
  %135 = load i32, ptr %41, align 4
  %136 = icmp eq i32 %135, 2
  %137 = select i1 %136, i32 62322, i32 62834
  %138 = trunc i32 %134 to i8
  %139 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %4, i32 noundef %137, i8 noundef zeroext %138) #12
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %601, label %141

141:                                              ; preds = %128
  %142 = load i32, ptr %41, align 4
  %143 = icmp eq i32 %142, 2
  %144 = select i1 %143, i32 61974, i32 62486
  %145 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %4, i32 noundef %144, i8 noundef zeroext 92) #12
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %601, label %147

147:                                              ; preds = %141
  %148 = getelementptr inbounds %struct.stv090x_state, ptr %4, i32 0, i32 3
  %149 = load ptr, ptr %148, align 4
  %150 = getelementptr inbounds %struct.stv090x_internal, ptr %149, i32 0, i32 5
  %151 = load i32, ptr %150, align 4
  %152 = icmp ugt i32 %151, 31
  br i1 %152, label %153, label %165

153:                                              ; preds = %147
  %154 = load i32, ptr %21, align 4
  %155 = icmp ugt i32 %154, 5000000
  %156 = load i32, ptr %41, align 4
  %157 = icmp eq i32 %156, 2
  %158 = select i1 %157, i32 61985, i32 62497
  br i1 %155, label %159, label %162

159:                                              ; preds = %153
  %160 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %4, i32 noundef %158, i8 noundef zeroext -98) #12
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %601, label %165

162:                                              ; preds = %153
  %163 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %4, i32 noundef %158, i8 noundef zeroext -126) #12
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %601, label %165

165:                                              ; preds = %162, %159, %147
  tail call fastcc void @stv090x_get_lock_tmg(ptr noundef %4) #12
  %166 = load i32, ptr %23, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %207

168:                                              ; preds = %165
  %169 = getelementptr inbounds %struct.stv090x_state, ptr %4, i32 0, i32 20
  store i32 72000000, ptr %169, align 4
  %170 = load i32, ptr %41, align 4
  %171 = icmp eq i32 %170, 2
  %172 = select i1 %171, i32 62042, i32 62554
  %173 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %4, i32 noundef %172, i8 noundef zeroext -64) #12
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %601, label %175

175:                                              ; preds = %168
  %176 = load i32, ptr %41, align 4
  %177 = icmp eq i32 %176, 2
  %178 = select i1 %177, i32 61984, i32 62496
  %179 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %4, i32 noundef %178, i8 noundef zeroext 112) #12
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %601, label %181

181:                                              ; preds = %175
  %182 = load ptr, ptr %148, align 4
  %183 = getelementptr inbounds %struct.stv090x_internal, ptr %182, i32 0, i32 4
  %184 = load i32, ptr %183, align 4
  %185 = ashr i32 %184, 7
  %186 = udiv i32 512000000, %185
  %187 = load i32, ptr %41, align 4
  %188 = icmp eq i32 %187, 2
  %189 = select i1 %188, i32 62046, i32 62558
  %190 = lshr i32 %186, 8
  %191 = trunc i32 %190 to i8
  %192 = and i8 %191, 127
  %193 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %4, i32 noundef %189, i8 noundef zeroext %192) #12
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %202, label %195

195:                                              ; preds = %181
  %196 = load i32, ptr %41, align 4
  %197 = icmp eq i32 %196, 2
  %198 = trunc i32 %186 to i8
  %199 = select i1 %197, i32 62047, i32 62559
  %200 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %4, i32 noundef %199, i8 noundef zeroext %198) #12
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %202, label %300

202:                                              ; preds = %195, %181
  %203 = load i32, ptr @verbose, align 4
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %611, label %205

205:                                              ; preds = %202
  %206 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv090x_set_srate) #13
  br label %601

207:                                              ; preds = %165
  %208 = load i32, ptr %41, align 4
  %209 = icmp eq i32 %208, 2
  %210 = select i1 %209, i32 61975, i32 62487
  %211 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %4, i32 noundef %210, i8 noundef zeroext 32) #12
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %601, label %213

213:                                              ; preds = %207
  %214 = load i32, ptr %41, align 4
  %215 = icmp eq i32 %214, 2
  %216 = select i1 %215, i32 62032, i32 62544
  %217 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %4, i32 noundef %216, i8 noundef zeroext -46) #12
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %601, label %219

219:                                              ; preds = %213
  %220 = load i32, ptr %21, align 4
  %221 = icmp ult i32 %220, 2000000
  %222 = load i32, ptr %41, align 4
  %223 = icmp eq i32 %222, 2
  %224 = select i1 %223, i32 61984, i32 62496
  br i1 %221, label %225, label %228

225:                                              ; preds = %219
  %226 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %4, i32 noundef %224, i8 noundef zeroext 99) #12
  %227 = icmp slt i32 %226, 0
  br i1 %227, label %601, label %231

228:                                              ; preds = %219
  %229 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %4, i32 noundef %224, i8 noundef zeroext 112) #12
  %230 = icmp slt i32 %229, 0
  br i1 %230, label %601, label %231

231:                                              ; preds = %228, %225
  %232 = load i32, ptr %41, align 4
  %233 = icmp eq i32 %232, 2
  %234 = select i1 %233, i32 61997, i32 62509
  %235 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %4, i32 noundef %234, i8 noundef zeroext 56) #12
  %236 = icmp slt i32 %235, 0
  br i1 %236, label %601, label %237

237:                                              ; preds = %231
  %238 = load ptr, ptr %148, align 4
  %239 = getelementptr inbounds %struct.stv090x_internal, ptr %238, i32 0, i32 5
  %240 = load i32, ptr %239, align 4
  %241 = icmp ugt i32 %240, 31
  br i1 %241, label %242, label %279

242:                                              ; preds = %237
  %243 = load i32, ptr %41, align 4
  %244 = icmp eq i32 %243, 2
  %245 = select i1 %244, i32 62040, i32 62552
  %246 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %4, i32 noundef %245, i8 noundef zeroext 90) #12
  %247 = icmp slt i32 %246, 0
  br i1 %247, label %601, label %248

248:                                              ; preds = %242
  %249 = load i32, ptr %23, align 4
  switch i32 %249, label %279 [
    i32 1, label %250
    i32 2, label %264
  ]

250:                                              ; preds = %248
  %251 = load i32, ptr %21, align 4
  %252 = getelementptr inbounds %struct.stv090x_state, ptr %4, i32 0, i32 15
  %253 = load i32, ptr %252, align 4
  %254 = icmp eq i32 %253, 1
  %255 = select i1 %254, i32 25, i32 35
  %256 = icmp eq i32 %253, 2
  %257 = select i1 %256, i32 20, i32 %255
  %258 = mul i32 %257, %251
  %259 = udiv i32 %258, 100
  %260 = add i32 %259, %251
  %261 = mul i32 %260, 15
  %262 = add i32 %261, 150000000
  %263 = udiv i32 %262, 10
  br label %276

264:                                              ; preds = %248
  %265 = load i32, ptr %21, align 4
  %266 = getelementptr inbounds %struct.stv090x_state, ptr %4, i32 0, i32 15
  %267 = load i32, ptr %266, align 4
  %268 = icmp eq i32 %267, 1
  %269 = select i1 %268, i32 25, i32 35
  %270 = icmp eq i32 %267, 2
  %271 = select i1 %270, i32 20, i32 %269
  %272 = mul i32 %271, %265
  %273 = udiv i32 %272, 100
  %274 = add i32 %265, 10000000
  %275 = add i32 %274, %273
  br label %276

276:                                              ; preds = %264, %250
  %277 = phi i32 [ %263, %250 ], [ %275, %264 ]
  %278 = getelementptr inbounds %struct.stv090x_state, ptr %4, i32 0, i32 20
  store i32 %277, ptr %278, align 4
  br label %279

279:                                              ; preds = %276, %248, %237
  %280 = load i32, ptr %41, align 4
  %281 = icmp eq i32 %280, 2
  %282 = select i1 %281, i32 62042, i32 62554
  %283 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %4, i32 noundef %282, i8 noundef zeroext -63) #12
  %284 = icmp slt i32 %283, 0
  br i1 %284, label %601, label %285

285:                                              ; preds = %279
  %286 = load i32, ptr %21, align 4
  %287 = tail call fastcc i32 @stv090x_set_srate(ptr noundef %4, i32 noundef %286) #12
  %288 = icmp slt i32 %287, 0
  br i1 %288, label %601, label %289

289:                                              ; preds = %285
  %290 = load i32, ptr %21, align 4
  %291 = tail call fastcc i32 @stv090x_set_max_srate(ptr noundef %4, i32 noundef %290) #12
  %292 = icmp slt i32 %291, 0
  br i1 %292, label %601, label %293

293:                                              ; preds = %289
  %294 = load i32, ptr %21, align 4
  %295 = tail call fastcc i32 @stv090x_set_min_srate(ptr noundef %4, i32 noundef %294) #12
  %296 = icmp slt i32 %295, 0
  br i1 %296, label %601, label %297

297:                                              ; preds = %293
  %298 = load i32, ptr %21, align 4
  %299 = icmp ult i32 %298, 10000000
  br label %300

300:                                              ; preds = %297, %195
  %301 = phi i1 [ %299, %297 ], [ false, %195 ]
  %302 = tail call fastcc i32 @stv090x_i2c_gate_ctrl(ptr noundef %4, i32 noundef 1) #12
  %303 = icmp slt i32 %302, 0
  br i1 %303, label %601, label %304

304:                                              ; preds = %300
  %305 = getelementptr inbounds %struct.stv090x_state, ptr %4, i32 0, i32 5
  %306 = load ptr, ptr %305, align 4
  %307 = getelementptr inbounds %struct.stv090x_config, ptr %306, i32 0, i32 23
  %308 = load ptr, ptr %307, align 4
  %309 = icmp eq ptr %308, null
  br i1 %309, label %320, label %310

310:                                              ; preds = %304
  %311 = getelementptr inbounds %struct.stv090x_config, ptr %306, i32 0, i32 12
  %312 = load i8, ptr %311, align 4
  %313 = icmp eq i8 %312, 0
  %314 = select i1 %313, i8 10, i8 %312
  %315 = zext i8 %314 to i32
  store i32 %315, ptr %2, align 4
  %316 = tail call i32 %308(ptr noundef %129, i32 noundef %315) #12
  %317 = icmp slt i32 %316, 0
  br i1 %317, label %599, label %318

318:                                              ; preds = %310
  %319 = load ptr, ptr %305, align 4
  br label %320

320:                                              ; preds = %318, %304
  %321 = phi ptr [ %319, %318 ], [ %306, %304 ]
  %322 = getelementptr inbounds %struct.stv090x_config, ptr %321, i32 0, i32 19
  %323 = load ptr, ptr %322, align 4
  %324 = icmp eq ptr %323, null
  br i1 %324, label %331, label %325

325:                                              ; preds = %320
  %326 = load i32, ptr %18, align 4
  %327 = tail call i32 %323(ptr noundef %129, i32 noundef %326) #12
  %328 = icmp slt i32 %327, 0
  br i1 %328, label %599, label %329

329:                                              ; preds = %325
  %330 = load ptr, ptr %305, align 4
  br label %331

331:                                              ; preds = %329, %320
  %332 = phi ptr [ %330, %329 ], [ %321, %320 ]
  %333 = getelementptr inbounds %struct.stv090x_config, ptr %332, i32 0, i32 21
  %334 = load ptr, ptr %333, align 4
  %335 = icmp eq ptr %334, null
  br i1 %335, label %341, label %336

336:                                              ; preds = %331
  %337 = getelementptr inbounds %struct.stv090x_state, ptr %4, i32 0, i32 20
  %338 = load i32, ptr %337, align 4
  %339 = tail call i32 %334(ptr noundef %129, i32 noundef %338) #12
  %340 = icmp slt i32 %339, 0
  br i1 %340, label %599, label %341

341:                                              ; preds = %336, %331
  %342 = tail call fastcc i32 @stv090x_i2c_gate_ctrl(ptr noundef %4, i32 noundef 0) #12
  %343 = icmp slt i32 %342, 0
  br i1 %343, label %601, label %344

344:                                              ; preds = %341
  tail call void @msleep(i32 noundef 50) #12
  %345 = load ptr, ptr %305, align 4
  %346 = getelementptr inbounds %struct.stv090x_config, ptr %345, i32 0, i32 26
  %347 = load ptr, ptr %346, align 4
  %348 = icmp eq ptr %347, null
  br i1 %348, label %372, label %349

349:                                              ; preds = %344
  %350 = tail call fastcc i32 @stv090x_i2c_gate_ctrl(ptr noundef %4, i32 noundef 1) #12
  %351 = icmp slt i32 %350, 0
  br i1 %351, label %601, label %352

352:                                              ; preds = %349
  %353 = load ptr, ptr %305, align 4
  %354 = getelementptr inbounds %struct.stv090x_config, ptr %353, i32 0, i32 26
  %355 = load ptr, ptr %354, align 4
  %356 = call i32 %355(ptr noundef %129, ptr noundef nonnull %2) #12
  %357 = icmp slt i32 %356, 0
  br i1 %357, label %599, label %358

358:                                              ; preds = %352
  %359 = call fastcc i32 @stv090x_i2c_gate_ctrl(ptr noundef %4, i32 noundef 0) #12
  %360 = icmp slt i32 %359, 0
  br i1 %360, label %601, label %361

361:                                              ; preds = %358
  %362 = load i32, ptr %2, align 4
  %363 = icmp eq i32 %362, 0
  %364 = load i32, ptr @verbose, align 4
  %365 = icmp ugt i32 %364, 3
  br i1 %363, label %369, label %366

366:                                              ; preds = %361
  br i1 %365, label %367, label %372

367:                                              ; preds = %366
  %368 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef nonnull @__func__.stv090x_algo) #13
  br label %372

369:                                              ; preds = %361
  br i1 %365, label %370, label %611

370:                                              ; preds = %369
  %371 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef nonnull @__func__.stv090x_algo) #13
  br label %612

372:                                              ; preds = %367, %366, %344
  call void @msleep(i32 noundef 10) #12
  %373 = load i32, ptr %41, align 4
  %374 = icmp eq i32 %373, 2
  %375 = select i1 %374, i32 61966, i32 62478
  %376 = call fastcc i32 @stv090x_read_reg(ptr noundef %4, i32 noundef %375) #12
  %377 = shl i32 %376, 8
  %378 = load i32, ptr %41, align 4
  %379 = icmp eq i32 %378, 2
  %380 = select i1 %379, i32 61967, i32 62479
  %381 = call fastcc i32 @stv090x_read_reg(ptr noundef %4, i32 noundef %380) #12
  %382 = or i32 %381, %377
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %384, label %446

384:                                              ; preds = %372
  %385 = load i32, ptr %41, align 4
  %386 = icmp eq i32 %385, 2
  %387 = select i1 %386, i32 61962, i32 62474
  %388 = call fastcc i32 @stv090x_read_reg(ptr noundef %4, i32 noundef %387) #12
  %389 = load i32, ptr %41, align 4
  %390 = icmp eq i32 %389, 2
  %391 = select i1 %390, i32 61963, i32 62475
  %392 = call fastcc i32 @stv090x_read_reg(ptr noundef %4, i32 noundef %391) #12
  %393 = add i32 %392, %388
  %394 = ashr i32 %393, 1
  %395 = load i32, ptr %41, align 4
  %396 = icmp eq i32 %395, 2
  %397 = select i1 %396, i32 61962, i32 62474
  %398 = call fastcc i32 @stv090x_read_reg(ptr noundef %4, i32 noundef %397) #12
  %399 = load i32, ptr %41, align 4
  %400 = icmp eq i32 %399, 2
  %401 = select i1 %400, i32 61963, i32 62475
  %402 = call fastcc i32 @stv090x_read_reg(ptr noundef %4, i32 noundef %401) #12
  %403 = add i32 %402, %398
  %404 = ashr i32 %403, 1
  %405 = add nsw i32 %404, %394
  %406 = load i32, ptr %41, align 4
  %407 = icmp eq i32 %406, 2
  %408 = select i1 %407, i32 61962, i32 62474
  %409 = call fastcc i32 @stv090x_read_reg(ptr noundef %4, i32 noundef %408) #12
  %410 = load i32, ptr %41, align 4
  %411 = icmp eq i32 %410, 2
  %412 = select i1 %411, i32 61963, i32 62475
  %413 = call fastcc i32 @stv090x_read_reg(ptr noundef %4, i32 noundef %412) #12
  %414 = add i32 %413, %409
  %415 = ashr i32 %414, 1
  %416 = add i32 %405, %415
  %417 = load i32, ptr %41, align 4
  %418 = icmp eq i32 %417, 2
  %419 = select i1 %418, i32 61962, i32 62474
  %420 = call fastcc i32 @stv090x_read_reg(ptr noundef %4, i32 noundef %419) #12
  %421 = load i32, ptr %41, align 4
  %422 = icmp eq i32 %421, 2
  %423 = select i1 %422, i32 61963, i32 62475
  %424 = call fastcc i32 @stv090x_read_reg(ptr noundef %4, i32 noundef %423) #12
  %425 = add i32 %424, %420
  %426 = ashr i32 %425, 1
  %427 = add i32 %416, %426
  %428 = load i32, ptr %41, align 4
  %429 = icmp eq i32 %428, 2
  %430 = select i1 %429, i32 61962, i32 62474
  %431 = call fastcc i32 @stv090x_read_reg(ptr noundef %4, i32 noundef %430) #12
  %432 = load i32, ptr %41, align 4
  %433 = icmp eq i32 %432, 2
  %434 = select i1 %433, i32 61963, i32 62475
  %435 = call fastcc i32 @stv090x_read_reg(ptr noundef %4, i32 noundef %434) #12
  %436 = add i32 %435, %431
  %437 = ashr i32 %436, 1
  %438 = add i32 %427, %437
  %439 = sdiv i32 %438, 5
  %440 = icmp slt i32 %438, 150
  br i1 %440, label %441, label %446

441:                                              ; preds = %384
  %442 = load i32, ptr @verbose, align 4
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %611, label %444

444:                                              ; preds = %441
  %445 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef nonnull @__func__.stv090x_algo, i32 noundef %439) #13
  br label %612

446:                                              ; preds = %384, %372
  %447 = load i32, ptr %41, align 4
  %448 = icmp eq i32 %447, 2
  %449 = select i1 %448, i32 61968, i32 62480
  %450 = call fastcc i32 @stv090x_read_reg(ptr noundef %4, i32 noundef %449) #12
  %451 = and i32 %450, -49
  %452 = getelementptr inbounds %struct.stv090x_state, ptr %4, i32 0, i32 16
  %453 = load i32, ptr %452, align 4
  %454 = shl i32 %453, 4
  %455 = or i32 %454, %451
  %456 = load ptr, ptr %148, align 4
  %457 = getelementptr inbounds %struct.stv090x_internal, ptr %456, i32 0, i32 5
  %458 = load i32, ptr %457, align 4
  %459 = icmp ult i32 %458, 33
  %460 = select i1 %459, i32 4, i32 128
  %461 = or i32 %455, %460
  store i32 %461, ptr %2, align 4
  %462 = load i32, ptr %41, align 4
  %463 = icmp eq i32 %462, 2
  %464 = select i1 %463, i32 61968, i32 62480
  %465 = trunc i32 %461 to i8
  %466 = call fastcc i32 @stv090x_write_reg(ptr noundef %4, i32 noundef %464, i8 noundef zeroext %465) #12
  %467 = icmp slt i32 %466, 0
  br i1 %467, label %601, label %468

468:                                              ; preds = %446
  %469 = call fastcc i32 @stv090x_delivery_search(ptr noundef %4) #12
  %470 = icmp slt i32 %469, 0
  br i1 %470, label %601, label %471

471:                                              ; preds = %468
  %472 = load i32, ptr %23, align 4
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %479, label %474

474:                                              ; preds = %471
  %475 = call fastcc i32 @stv090x_start_search(ptr noundef %4) #12
  %476 = icmp slt i32 %475, 0
  br i1 %476, label %601, label %477

477:                                              ; preds = %474
  %478 = load i32, ptr %23, align 4
  switch i32 %478, label %612 [
    i32 0, label %479
    i32 1, label %481
    i32 2, label %485
  ]

479:                                              ; preds = %477, %471
  %480 = call fastcc i32 @stv090x_blind_search(ptr noundef %4) #12
  br label %489

481:                                              ; preds = %477
  %482 = getelementptr inbounds %struct.stv090x_state, ptr %4, i32 0, i32 22
  %483 = load i32, ptr %482, align 4
  %484 = call fastcc i32 @stv090x_get_coldlock(ptr noundef %4, i32 noundef %483) #12
  br label %489

485:                                              ; preds = %477
  %486 = getelementptr inbounds %struct.stv090x_state, ptr %4, i32 0, i32 22
  %487 = load i32, ptr %486, align 4
  %488 = call fastcc i32 @stv090x_get_dmdlock(ptr noundef %4, i32 noundef %487) #12
  br label %489

489:                                              ; preds = %485, %481, %479
  %490 = phi i32 [ %480, %479 ], [ %484, %481 ], [ %488, %485 ]
  %491 = icmp eq i32 %490, 0
  br i1 %491, label %492, label %502

492:                                              ; preds = %489
  %493 = load i32, ptr %23, align 4
  %494 = icmp ne i32 %493, 1
  %495 = or i1 %301, %494
  br i1 %495, label %612, label %496

496:                                              ; preds = %492
  %497 = call fastcc i32 @stv090x_chk_tmg(ptr noundef %4) #12
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %612, label %499

499:                                              ; preds = %496
  %500 = call fastcc i32 @stv090x_sw_algo(ptr noundef %4) #12
  %501 = icmp eq i32 %500, 0
  br i1 %501, label %612, label %502

502:                                              ; preds = %499, %489
  %503 = call fastcc i32 @stv090x_get_sig_params(ptr noundef %4) #12
  %504 = icmp eq i32 %503, 4
  br i1 %504, label %505, label %612

505:                                              ; preds = %502
  call fastcc void @stv090x_optimize_track(ptr noundef %4) #12
  %506 = load ptr, ptr %148, align 4
  %507 = getelementptr inbounds %struct.stv090x_internal, ptr %506, i32 0, i32 5
  %508 = load i32, ptr %507, align 4
  %509 = icmp ugt i32 %508, 31
  br i1 %509, label %510, label %540

510:                                              ; preds = %505
  %511 = load i32, ptr %41, align 4
  %512 = icmp eq i32 %511, 2
  %513 = select i1 %512, i32 62322, i32 62834
  %514 = call fastcc i32 @stv090x_read_reg(ptr noundef %4, i32 noundef %513) #12
  %515 = and i32 %514, -2
  store i32 %515, ptr %2, align 4
  %516 = load i32, ptr %41, align 4
  %517 = icmp eq i32 %516, 2
  %518 = select i1 %517, i32 62322, i32 62834
  %519 = trunc i32 %515 to i8
  %520 = call fastcc i32 @stv090x_write_reg(ptr noundef %4, i32 noundef %518, i8 noundef zeroext %519) #12
  %521 = icmp slt i32 %520, 0
  br i1 %521, label %601, label %522

522:                                              ; preds = %510
  call void @msleep(i32 noundef 3) #12
  %523 = load i32, ptr %2, align 4
  %524 = or i32 %523, 1
  store i32 %524, ptr %2, align 4
  %525 = load i32, ptr %41, align 4
  %526 = icmp eq i32 %525, 2
  %527 = trunc i32 %524 to i8
  %528 = select i1 %526, i32 62322, i32 62834
  %529 = call fastcc i32 @stv090x_write_reg(ptr noundef %4, i32 noundef %528, i8 noundef zeroext %527) #12
  %530 = icmp slt i32 %529, 0
  br i1 %530, label %601, label %531

531:                                              ; preds = %522
  %532 = load i32, ptr %2, align 4
  %533 = and i32 %532, -2
  store i32 %533, ptr %2, align 4
  %534 = load i32, ptr %41, align 4
  %535 = icmp eq i32 %534, 2
  %536 = trunc i32 %533 to i8
  %537 = select i1 %535, i32 62322, i32 62834
  %538 = call fastcc i32 @stv090x_write_reg(ptr noundef %4, i32 noundef %537, i8 noundef zeroext %536) #12
  %539 = icmp slt i32 %538, 0
  br i1 %539, label %601, label %540

540:                                              ; preds = %531, %505
  %541 = getelementptr inbounds %struct.stv090x_state, ptr %4, i32 0, i32 23
  %542 = load i32, ptr %541, align 4
  %543 = call fastcc i32 @stv090x_get_lock(ptr noundef %4, i32 noundef %542, i32 noundef %542) #12
  %544 = icmp eq i32 %543, 0
  br i1 %544, label %597, label %545

545:                                              ; preds = %540
  %546 = getelementptr inbounds %struct.stv090x_state, ptr %4, i32 0, i32 8
  %547 = load i32, ptr %546, align 4
  %548 = icmp eq i32 %547, 2
  br i1 %548, label %549, label %579

549:                                              ; preds = %545
  call fastcc void @stv090x_set_s2rolloff(ptr noundef %4) #12
  %550 = load i32, ptr %41, align 4
  %551 = icmp eq i32 %550, 2
  %552 = select i1 %551, i32 62289, i32 62801
  %553 = call fastcc i32 @stv090x_read_reg(ptr noundef %4, i32 noundef %552) #12
  %554 = or i32 %553, 64
  store i32 %554, ptr %2, align 4
  %555 = load i32, ptr %41, align 4
  %556 = icmp eq i32 %555, 2
  %557 = select i1 %556, i32 62289, i32 62801
  %558 = trunc i32 %554 to i8
  %559 = call fastcc i32 @stv090x_write_reg(ptr noundef %4, i32 noundef %557, i8 noundef zeroext %558) #12
  %560 = icmp slt i32 %559, 0
  br i1 %560, label %601, label %561

561:                                              ; preds = %549
  %562 = load i32, ptr %41, align 4
  %563 = icmp eq i32 %562, 2
  %564 = select i1 %563, i32 62289, i32 62801
  %565 = call fastcc i32 @stv090x_read_reg(ptr noundef %4, i32 noundef %564) #12
  %566 = and i32 %565, -65
  store i32 %566, ptr %2, align 4
  %567 = load i32, ptr %41, align 4
  %568 = icmp eq i32 %567, 2
  %569 = select i1 %568, i32 62289, i32 62801
  %570 = trunc i32 %566 to i8
  %571 = call fastcc i32 @stv090x_write_reg(ptr noundef %4, i32 noundef %569, i8 noundef zeroext %570) #12
  %572 = icmp slt i32 %571, 0
  br i1 %572, label %601, label %573

573:                                              ; preds = %561
  %574 = load i32, ptr %41, align 4
  %575 = icmp eq i32 %574, 2
  %576 = select i1 %575, i32 62360, i32 62872
  %577 = call fastcc i32 @stv090x_write_reg(ptr noundef %4, i32 noundef %576, i8 noundef zeroext 103) #12
  %578 = icmp slt i32 %577, 0
  br i1 %578, label %601, label %585

579:                                              ; preds = %545
  %580 = load i32, ptr %41, align 4
  %581 = icmp eq i32 %580, 2
  %582 = select i1 %581, i32 62360, i32 62872
  %583 = call fastcc i32 @stv090x_write_reg(ptr noundef %4, i32 noundef %582, i8 noundef zeroext 117) #12
  %584 = icmp slt i32 %583, 0
  br i1 %584, label %601, label %585

585:                                              ; preds = %579, %573
  %586 = load i32, ptr %41, align 4
  %587 = icmp eq i32 %586, 2
  %588 = select i1 %587, i32 62376, i32 62888
  %589 = call fastcc i32 @stv090x_write_reg(ptr noundef %4, i32 noundef %588, i8 noundef zeroext 0) #12
  %590 = icmp slt i32 %589, 0
  br i1 %590, label %601, label %591

591:                                              ; preds = %585
  %592 = load i32, ptr %41, align 4
  %593 = icmp eq i32 %592, 2
  %594 = select i1 %593, i32 62364, i32 62876
  %595 = call fastcc i32 @stv090x_write_reg(ptr noundef %4, i32 noundef %594, i8 noundef zeroext -63) #12
  %596 = icmp slt i32 %595, 0
  br i1 %596, label %601, label %606

597:                                              ; preds = %540
  %598 = call fastcc i32 @stv090x_chk_signal(ptr noundef %4) #12
  br label %612

599:                                              ; preds = %352, %336, %325, %310
  %600 = call fastcc i32 @stv090x_i2c_gate_ctrl(ptr noundef %4, i32 noundef 0) #12
  br label %601

601:                                              ; preds = %599, %591, %585, %579, %573, %561, %549, %531, %522, %510, %474, %468, %446, %358, %349, %341, %300, %293, %289, %285, %279, %242, %231, %228, %225, %213, %207, %205, %175, %168, %162, %159, %141, %128
  %602 = load i32, ptr @verbose, align 4
  %603 = icmp eq i32 %602, 0
  br i1 %603, label %611, label %604

604:                                              ; preds = %601
  %605 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv090x_algo) #13
  br label %612

606:                                              ; preds = %591
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  %607 = load i32, ptr @verbose, align 4
  %608 = icmp ugt i32 %607, 3
  br i1 %608, label %609, label %617

609:                                              ; preds = %606
  %610 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef nonnull @__func__.stv090x_search) #13
  br label %617

611:                                              ; preds = %601, %441, %369, %202
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  br label %617

612:                                              ; preds = %604, %597, %502, %499, %496, %492, %477, %444, %370
  %613 = load i32, ptr @verbose, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  %614 = icmp ugt i32 %613, 3
  br i1 %614, label %615, label %617

615:                                              ; preds = %612
  %616 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @__func__.stv090x_search) #13
  br label %617

617:                                              ; preds = %615, %612, %611, %609, %606, %8, %1
  %618 = phi i32 [ 8, %1 ], [ 8, %8 ], [ 1, %606 ], [ 1, %609 ], [ 4, %612 ], [ 4, %615 ], [ 4, %611 ]
  ret i32 %618
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stv090x_i2c_gate_ctrl(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %16, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.stv090x_config, ptr %6, i32 0, i32 27
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 6
  tail call void %8(ptr noundef %11, i32 noundef 1) #12
  br label %16

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.stv090x_internal, ptr %14, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %15) #12
  br label %16

16:                                               ; preds = %12, %10, %2
  %17 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 2
  %20 = select i1 %19, i32 61739, i32 61738
  %21 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %20)
  %22 = load i32, ptr @verbose, align 4
  %23 = icmp ugt i32 %22, 3
  br i1 %3, label %35, label %24

24:                                               ; preds = %16
  br i1 %23, label %25, label %27

25:                                               ; preds = %24
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.stv090x_i2c_gate_ctrl) #13
  br label %27

27:                                               ; preds = %25, %24
  %28 = load i32, ptr %17, align 4
  %29 = icmp eq i32 %28, 2
  %30 = trunc i32 %21 to i8
  %31 = or i8 %30, -128
  %32 = select i1 %29, i32 61739, i32 61738
  %33 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %32, i8 noundef zeroext %31)
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %58, label %75

35:                                               ; preds = %16
  br i1 %23, label %36, label %38

36:                                               ; preds = %35
  %37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.stv090x_i2c_gate_ctrl) #13
  br label %38

38:                                               ; preds = %36, %35
  %39 = load i32, ptr %17, align 4
  %40 = icmp eq i32 %39, 2
  %41 = trunc i32 %21 to i8
  %42 = and i8 %41, 127
  %43 = select i1 %40, i32 61739, i32 61738
  %44 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %43, i8 noundef zeroext %42)
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 5
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.stv090x_config, ptr %48, i32 0, i32 27
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 6
  tail call void %50(ptr noundef %53, i32 noundef 0) #12
  br label %75

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 3
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.stv090x_internal, ptr %56, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %57) #12
  br label %75

58:                                               ; preds = %38, %27
  %59 = load i32, ptr @verbose, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %58
  %62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv090x_i2c_gate_ctrl) #13
  br label %63

63:                                               ; preds = %61, %58
  %64 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 5
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.stv090x_config, ptr %65, i32 0, i32 27
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 6
  tail call void %67(ptr noundef %70, i32 noundef 0) #12
  br label %75

71:                                               ; preds = %63
  %72 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 3
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.stv090x_internal, ptr %73, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %74) #12
  br label %75

75:                                               ; preds = %71, %69, %54, %52, %27
  %76 = phi i32 [ 0, %52 ], [ 0, %54 ], [ -1, %71 ], [ -1, %69 ], [ 0, %27 ]
  ret i32 %76
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stv090x_write_reg(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca [64 x i8], align 1
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #12
  store i8 %2, ptr %6, align 1
  %7 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #12
  %9 = getelementptr inbounds i8, ptr %4, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %9, i8 0, i32 61, i1 false) #12, !annotation !9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #12
  %10 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 3, ptr %10, align 4, !annotation !9
  %11 = getelementptr inbounds %struct.stv090x_config, ptr %8, i32 0, i32 5
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i16
  store i16 %13, ptr %5, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %14, align 2
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %15, align 4
  %16 = lshr i32 %1, 8
  %17 = trunc i32 %16 to i8
  store i8 %17, ptr %4, align 1
  %18 = trunc i32 %1 to i8
  %19 = getelementptr inbounds [64 x i8], ptr %4, i32 0, i32 1
  store i8 %18, ptr %19, align 1
  %20 = getelementptr inbounds [64 x i8], ptr %4, i32 0, i32 2
  store i8 %2, ptr %20, align 1
  %21 = load i32, ptr @verbose, align 4
  %22 = icmp ugt i32 %21, 4
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.stv090x_write_regs, ptr noundef nonnull @__func__.stv090x_write_regs, i32 noundef %1, i32 noundef 1, ptr noundef nonnull %6) #13
  br label %25

25:                                               ; preds = %23, %3
  %26 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %5, i32 noundef 1) #12
  switch i32 %28, label %29 [
    i32 1, label %39
    i32 -512, label %36
  ]

29:                                               ; preds = %25
  %30 = load i32, ptr @verbose, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = load i8, ptr %6, align 1
  %34 = zext i8 %33 to i32
  %35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.stv090x_write_regs, i32 noundef %1, i32 noundef %34, i32 noundef 1, i32 noundef %28) #13
  br label %36

36:                                               ; preds = %32, %29, %25
  %37 = icmp slt i32 %28, 0
  %38 = select i1 %37, i32 %28, i32 -121
  br label %39

39:                                               ; preds = %36, %25
  %40 = phi i32 [ %38, %36 ], [ 0, %25 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #12
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stv090x_read_reg(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca i8, align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #12
  %8 = lshr i32 %1, 8
  %9 = trunc i32 %8 to i8
  store i8 %9, ptr %3, align 2
  %10 = getelementptr inbounds i8, ptr %3, i32 1
  %11 = trunc i32 %1 to i8
  store i8 %11, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #12
  store i8 0, ptr %4, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
  %12 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %12, i8 0, i32 16, i1 false), !annotation !9
  %13 = getelementptr inbounds %struct.stv090x_config, ptr %7, i32 0, i32 5
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i16
  store i16 %15, ptr %5, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %16, align 2
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 2
  store i16 2, ptr %17, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %18, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %15, ptr %19, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %20, align 2
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %22, align 4
  %23 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 4
  %24 = load ptr, ptr %23, align 4
  %25 = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %5, i32 noundef 2) #12
  switch i32 %25, label %26 [
    i32 2, label %34
    i32 -512, label %31
  ]

26:                                               ; preds = %2
  %27 = load i32, ptr @verbose, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__.stv090x_read_reg, i32 noundef %1, i32 noundef %25) #13
  br label %31

31:                                               ; preds = %29, %26, %2
  %32 = icmp slt i32 %25, 0
  %33 = select i1 %32, i32 %25, i32 -121
  br label %49

34:                                               ; preds = %2
  %35 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 7
  %36 = load ptr, ptr %35, align 4
  %37 = load i32, ptr %36, align 4
  %38 = icmp ugt i32 %37, 3
  br i1 %38, label %39, label %46, !prof !10

39:                                               ; preds = %34
  %40 = load i32, ptr @verbose, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load i8, ptr %4, align 1
  %44 = zext i8 %43 to i32
  %45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__.stv090x_read_reg, i32 noundef %1, i32 noundef %44) #13
  br label %46

46:                                               ; preds = %42, %39, %34
  %47 = load i8, ptr %4, align 1
  %48 = zext i8 %47 to i32
  br label %49

49:                                               ; preds = %46, %31
  %50 = phi i32 [ %33, %31 ], [ %48, %46 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #12
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stv0900_set_tspath(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.stv090x_internal, ptr %3, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, 31
  %7 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.stv090x_config, ptr %8, i32 0, i32 6
  %10 = load i8, ptr %9, align 1
  %11 = add i8 %10, -3
  %12 = icmp ult i8 %11, 2
  %13 = getelementptr inbounds %struct.stv090x_config, ptr %8, i32 0, i32 7
  %14 = load i8, ptr %13, align 2
  %15 = add i8 %14, -3
  %16 = icmp ult i8 %15, 2
  br i1 %6, label %17, label %49

17:                                               ; preds = %1
  br i1 %12, label %18, label %42

18:                                               ; preds = %17
  br i1 %16, label %21, label %19

19:                                               ; preds = %18
  %20 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef 63024, i8 noundef zeroext 0)
  br label %77

21:                                               ; preds = %18
  %22 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef 63024, i8 noundef zeroext 6)
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %275, label %24

24:                                               ; preds = %21
  %25 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef 62835)
  %26 = trunc i32 %25 to i8
  %27 = or i8 %26, -64
  %28 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef 62835, i8 noundef zeroext %27)
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %275, label %30

30:                                               ; preds = %24
  %31 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef 62323)
  %32 = trunc i32 %31 to i8
  %33 = or i8 %32, -64
  %34 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef 62323, i8 noundef zeroext %33)
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %275, label %36

36:                                               ; preds = %30
  %37 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef 62848, i8 noundef zeroext 20)
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %275, label %39

39:                                               ; preds = %36
  %40 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef 62336, i8 noundef zeroext 40)
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %275, label %77

42:                                               ; preds = %17
  br i1 %16, label %46, label %43

43:                                               ; preds = %42
  %44 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef 63024, i8 noundef zeroext 12)
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %275, label %77

46:                                               ; preds = %42
  %47 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef 63024, i8 noundef zeroext 10)
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %275, label %77

49:                                               ; preds = %1
  br i1 %12, label %50, label %72

50:                                               ; preds = %49
  br i1 %16, label %53, label %51

51:                                               ; preds = %50
  %52 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef 63088, i8 noundef zeroext 16)
  br label %77

53:                                               ; preds = %50
  %54 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef 63088, i8 noundef zeroext 22)
  %55 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef 62835)
  %56 = trunc i32 %55 to i8
  %57 = or i8 %56, -64
  %58 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef 62835, i8 noundef zeroext %57)
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %275, label %60

60:                                               ; preds = %53
  %61 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef 62835)
  %62 = trunc i32 %61 to i8
  %63 = and i8 %62, 63
  %64 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef 62835, i8 noundef zeroext %63)
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %275, label %66

66:                                               ; preds = %60
  %67 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef 62848, i8 noundef zeroext 20)
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %275, label %69

69:                                               ; preds = %66
  %70 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef 62336, i8 noundef zeroext 40)
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %275, label %77

72:                                               ; preds = %49
  br i1 %16, label %75, label %73

73:                                               ; preds = %72
  %74 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef 63088, i8 noundef zeroext 20)
  br label %77

75:                                               ; preds = %72
  %76 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef 63088, i8 noundef zeroext 18)
  br label %77

77:                                               ; preds = %75, %73, %69, %51, %46, %43, %39, %19
  %78 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 5
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.stv090x_config, ptr %79, i32 0, i32 6
  %81 = load i8, ptr %80, align 1
  switch i8 %81, label %132 [
    i8 3, label %82
    i8 4, label %94
    i8 1, label %107
    i8 2, label %120
  ]

82:                                               ; preds = %77
  %83 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef 62834)
  %84 = load ptr, ptr %78, align 4
  %85 = getelementptr inbounds %struct.stv090x_config, ptr %84, i32 0, i32 10
  %86 = load i8, ptr %85, align 4
  %87 = shl i8 %86, 5
  %88 = and i8 %87, 32
  %89 = trunc i32 %83 to i8
  %90 = and i8 %89, 31
  %91 = or i8 %88, %90
  %92 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef 62834, i8 noundef zeroext %91)
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %275, label %132

94:                                               ; preds = %77
  %95 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef 62834)
  %96 = load ptr, ptr %78, align 4
  %97 = getelementptr inbounds %struct.stv090x_config, ptr %96, i32 0, i32 10
  %98 = load i8, ptr %97, align 4
  %99 = shl i8 %98, 5
  %100 = and i8 %99, 32
  %101 = trunc i32 %95 to i8
  %102 = and i8 %101, 31
  %103 = or i8 %102, %100
  %104 = or i8 %103, -128
  %105 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef 62834, i8 noundef zeroext %104)
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %275, label %132

107:                                              ; preds = %77
  %108 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef 62834)
  %109 = load ptr, ptr %78, align 4
  %110 = getelementptr inbounds %struct.stv090x_config, ptr %109, i32 0, i32 10
  %111 = load i8, ptr %110, align 4
  %112 = shl i8 %111, 5
  %113 = and i8 %112, 32
  %114 = trunc i32 %108 to i8
  %115 = and i8 %114, 31
  %116 = or i8 %115, %113
  %117 = or i8 %116, 64
  %118 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef 62834, i8 noundef zeroext %117)
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %275, label %132

120:                                              ; preds = %77
  %121 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef 62834)
  %122 = load ptr, ptr %78, align 4
  %123 = getelementptr inbounds %struct.stv090x_config, ptr %122, i32 0, i32 10
  %124 = load i8, ptr %123, align 4
  %125 = shl i8 %124, 5
  %126 = trunc i32 %121 to i8
  %127 = and i8 %126, 31
  %128 = or i8 %125, %127
  %129 = or i8 %128, -64
  %130 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef 62834, i8 noundef zeroext %129)
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %275, label %132

132:                                              ; preds = %120, %107, %94, %82, %77
  %133 = load ptr, ptr %78, align 4
  %134 = getelementptr inbounds %struct.stv090x_config, ptr %133, i32 0, i32 7
  %135 = load i8, ptr %134, align 2
  switch i8 %135, label %187 [
    i8 3, label %136
    i8 4, label %148
    i8 1, label %161
    i8 2, label %174
  ]

136:                                              ; preds = %132
  %137 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef 62322)
  %138 = load ptr, ptr %78, align 4
  %139 = getelementptr inbounds %struct.stv090x_config, ptr %138, i32 0, i32 10
  %140 = load i8, ptr %139, align 4
  %141 = shl i8 %140, 4
  %142 = and i8 %141, 32
  %143 = trunc i32 %137 to i8
  %144 = and i8 %143, 31
  %145 = or i8 %142, %144
  %146 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef 62322, i8 noundef zeroext %145)
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %275, label %187

148:                                              ; preds = %132
  %149 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef 62322)
  %150 = load ptr, ptr %78, align 4
  %151 = getelementptr inbounds %struct.stv090x_config, ptr %150, i32 0, i32 10
  %152 = load i8, ptr %151, align 4
  %153 = shl i8 %152, 4
  %154 = and i8 %153, 32
  %155 = trunc i32 %149 to i8
  %156 = and i8 %155, 31
  %157 = or i8 %156, %154
  %158 = or i8 %157, -128
  %159 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef 62322, i8 noundef zeroext %158)
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %275, label %187

161:                                              ; preds = %132
  %162 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef 62322)
  %163 = load ptr, ptr %78, align 4
  %164 = getelementptr inbounds %struct.stv090x_config, ptr %163, i32 0, i32 10
  %165 = load i8, ptr %164, align 4
  %166 = shl i8 %165, 4
  %167 = and i8 %166, 32
  %168 = trunc i32 %162 to i8
  %169 = and i8 %168, 31
  %170 = or i8 %169, %167
  %171 = or i8 %170, 64
  %172 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef 62322, i8 noundef zeroext %171)
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %275, label %187

174:                                              ; preds = %132
  %175 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef 62322)
  %176 = load ptr, ptr %78, align 4
  %177 = getelementptr inbounds %struct.stv090x_config, ptr %176, i32 0, i32 10
  %178 = load i8, ptr %177, align 4
  %179 = shl i8 %178, 4
  %180 = and i8 %179, 32
  %181 = trunc i32 %175 to i8
  %182 = and i8 %181, 31
  %183 = or i8 %182, %180
  %184 = or i8 %183, -64
  %185 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef 62322, i8 noundef zeroext %184)
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %275, label %187

187:                                              ; preds = %174, %161, %148, %136, %132
  %188 = load ptr, ptr %78, align 4
  %189 = getelementptr inbounds %struct.stv090x_config, ptr %188, i32 0, i32 8
  %190 = load i32, ptr %189, align 4
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %222, label %192

192:                                              ; preds = %187
  %193 = getelementptr inbounds %struct.stv090x_config, ptr %188, i32 0, i32 6
  %194 = load i8, ptr %193, align 1
  %195 = add i8 %194, -1
  %196 = icmp ult i8 %195, 2
  %197 = load ptr, ptr %2, align 4
  %198 = getelementptr inbounds %struct.stv090x_internal, ptr %197, i32 0, i32 4
  %199 = load i32, ptr %198, align 4
  br i1 %196, label %204, label %200

200:                                              ; preds = %192
  %201 = lshr i32 %190, 2
  %202 = udiv i32 %199, %201
  %203 = tail call i32 @llvm.umax.i32(i32 %202, i32 8)
  br label %208

204:                                              ; preds = %192
  %205 = lshr i32 %190, 5
  %206 = udiv i32 %199, %205
  %207 = tail call i32 @llvm.umax.i32(i32 %206, i32 32)
  br label %208

208:                                              ; preds = %204, %200
  %209 = phi i32 [ %207, %204 ], [ %203, %200 ]
  %210 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef 62835)
  %211 = trunc i32 %210 to i8
  %212 = or i8 %211, -64
  %213 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef 62835, i8 noundef zeroext %212)
  %214 = icmp slt i32 %213, 0
  br i1 %214, label %275, label %215

215:                                              ; preds = %208
  %216 = tail call i32 @llvm.umin.i32(i32 %209, i32 255)
  %217 = trunc i32 %216 to i8
  %218 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef 62848, i8 noundef zeroext %217)
  %219 = icmp slt i32 %218, 0
  br i1 %219, label %275, label %220

220:                                              ; preds = %215
  %221 = load ptr, ptr %78, align 4
  br label %222

222:                                              ; preds = %220, %187
  %223 = phi ptr [ %221, %220 ], [ %188, %187 ]
  %224 = getelementptr inbounds %struct.stv090x_config, ptr %223, i32 0, i32 9
  %225 = load i32, ptr %224, align 4
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %255, label %227

227:                                              ; preds = %222
  %228 = getelementptr inbounds %struct.stv090x_config, ptr %223, i32 0, i32 7
  %229 = load i8, ptr %228, align 2
  %230 = add i8 %229, -1
  %231 = icmp ult i8 %230, 2
  %232 = load ptr, ptr %2, align 4
  %233 = getelementptr inbounds %struct.stv090x_internal, ptr %232, i32 0, i32 4
  %234 = load i32, ptr %233, align 4
  br i1 %231, label %239, label %235

235:                                              ; preds = %227
  %236 = lshr i32 %225, 2
  %237 = udiv i32 %234, %236
  %238 = tail call i32 @llvm.umax.i32(i32 %237, i32 8)
  br label %243

239:                                              ; preds = %227
  %240 = lshr i32 %225, 5
  %241 = udiv i32 %234, %240
  %242 = tail call i32 @llvm.umax.i32(i32 %241, i32 32)
  br label %243

243:                                              ; preds = %239, %235
  %244 = phi i32 [ %242, %239 ], [ %238, %235 ]
  %245 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef 62323)
  %246 = trunc i32 %245 to i8
  %247 = or i8 %246, -64
  %248 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef 62323, i8 noundef zeroext %247)
  %249 = icmp slt i32 %248, 0
  br i1 %249, label %275, label %250

250:                                              ; preds = %243
  %251 = tail call i32 @llvm.umin.i32(i32 %244, i32 255)
  %252 = trunc i32 %251 to i8
  %253 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef 62336, i8 noundef zeroext %252)
  %254 = icmp slt i32 %253, 0
  br i1 %254, label %275, label %255

255:                                              ; preds = %250, %222
  %256 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef 62322)
  %257 = trunc i32 %256 to i8
  %258 = or i8 %257, 1
  %259 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef 62322, i8 noundef zeroext %258)
  %260 = icmp slt i32 %259, 0
  br i1 %260, label %275, label %261

261:                                              ; preds = %255
  %262 = and i8 %257, -2
  %263 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef 62322, i8 noundef zeroext %262)
  %264 = icmp slt i32 %263, 0
  br i1 %264, label %275, label %265

265:                                              ; preds = %261
  %266 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef 62834)
  %267 = trunc i32 %266 to i8
  %268 = or i8 %267, 1
  %269 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef 62834, i8 noundef zeroext %268)
  %270 = icmp slt i32 %269, 0
  br i1 %270, label %275, label %271

271:                                              ; preds = %265
  %272 = and i8 %267, -2
  %273 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef 62834, i8 noundef zeroext %272)
  %274 = icmp slt i32 %273, 0
  br i1 %274, label %275, label %280

275:                                              ; preds = %271, %265, %261, %255, %250, %243, %215, %208, %174, %161, %148, %136, %120, %107, %94, %82, %69, %66, %60, %53, %46, %43, %39, %36, %30, %24, %21
  %276 = load i32, ptr @verbose, align 4
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %280, label %278

278:                                              ; preds = %275
  %279 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0900_set_tspath) #13
  br label %280

280:                                              ; preds = %278, %275, %271
  %281 = phi i32 [ 0, %271 ], [ -1, %275 ], [ -1, %278 ]
  ret i32 %281
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stv0903_set_tspath(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.stv090x_internal, ptr %3, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, 31
  %7 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.stv090x_config, ptr %8, i32 0, i32 6
  %10 = load i8, ptr %9, align 1
  %11 = add i8 %10, -3
  %12 = icmp ult i8 %11, 2
  br i1 %6, label %13, label %18

13:                                               ; preds = %1
  br i1 %12, label %14, label %16

14:                                               ; preds = %13
  %15 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef 63024, i8 noundef zeroext 0)
  br label %23

16:                                               ; preds = %13
  %17 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef 63024, i8 noundef zeroext 12)
  br label %23

18:                                               ; preds = %1
  br i1 %12, label %19, label %21

19:                                               ; preds = %18
  %20 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef 63088, i8 noundef zeroext 16)
  br label %23

21:                                               ; preds = %18
  %22 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef 63088, i8 noundef zeroext 20)
  br label %23

23:                                               ; preds = %21, %19, %16, %14
  %24 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 5
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.stv090x_config, ptr %25, i32 0, i32 6
  %27 = load i8, ptr %26, align 1
  switch i8 %27, label %54 [
    i8 3, label %28
    i8 4, label %34
    i8 1, label %41
    i8 2, label %48
  ]

28:                                               ; preds = %23
  %29 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef 62834)
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 63
  %32 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef 62834, i8 noundef zeroext %31)
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %97, label %54

34:                                               ; preds = %23
  %35 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef 62834)
  %36 = trunc i32 %35 to i8
  %37 = and i8 %36, 63
  %38 = or i8 %37, -128
  %39 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef 62834, i8 noundef zeroext %38)
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %97, label %54

41:                                               ; preds = %23
  %42 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef 62834)
  %43 = trunc i32 %42 to i8
  %44 = and i8 %43, 63
  %45 = or i8 %44, 64
  %46 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef 62834, i8 noundef zeroext %45)
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %97, label %54

48:                                               ; preds = %23
  %49 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef 62834)
  %50 = trunc i32 %49 to i8
  %51 = or i8 %50, -64
  %52 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef 62834, i8 noundef zeroext %51)
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %97, label %54

54:                                               ; preds = %48, %41, %34, %28, %23
  %55 = load ptr, ptr %24, align 4
  %56 = getelementptr inbounds %struct.stv090x_config, ptr %55, i32 0, i32 8
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %87, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.stv090x_config, ptr %55, i32 0, i32 6
  %61 = load i8, ptr %60, align 1
  %62 = add i8 %61, -1
  %63 = icmp ult i8 %62, 2
  %64 = load ptr, ptr %2, align 4
  %65 = getelementptr inbounds %struct.stv090x_internal, ptr %64, i32 0, i32 4
  %66 = load i32, ptr %65, align 4
  br i1 %63, label %71, label %67

67:                                               ; preds = %59
  %68 = lshr i32 %57, 2
  %69 = udiv i32 %66, %68
  %70 = tail call i32 @llvm.umax.i32(i32 %69, i32 8)
  br label %75

71:                                               ; preds = %59
  %72 = lshr i32 %57, 5
  %73 = udiv i32 %66, %72
  %74 = tail call i32 @llvm.umax.i32(i32 %73, i32 32)
  br label %75

75:                                               ; preds = %71, %67
  %76 = phi i32 [ %74, %71 ], [ %70, %67 ]
  %77 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef 62835)
  %78 = trunc i32 %77 to i8
  %79 = or i8 %78, -64
  %80 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef 62835, i8 noundef zeroext %79)
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %97, label %82

82:                                               ; preds = %75
  %83 = tail call i32 @llvm.umin.i32(i32 %76, i32 255)
  %84 = trunc i32 %83 to i8
  %85 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef 62848, i8 noundef zeroext %84)
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %97, label %87

87:                                               ; preds = %82, %54
  %88 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef 62834)
  %89 = trunc i32 %88 to i8
  %90 = or i8 %89, 1
  %91 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef 62834, i8 noundef zeroext %90)
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %87
  %94 = and i8 %89, -2
  %95 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef 62834, i8 noundef zeroext %94)
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %93, %87, %82, %75, %48, %41, %34, %28
  %98 = load i32, ptr @verbose, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %97
  %101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0903_set_tspath) #13
  br label %102

102:                                              ; preds = %100, %97, %93
  %103 = phi i32 [ 0, %93 ], [ -1, %97 ], [ -1, %100 ]
  ret i32 %103
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stv090x_activate_modcod_single(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 2
  %5 = select i1 %4, i32 62128, i32 62640
  %6 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %5, i8 noundef zeroext -1)
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %98, label %8

8:                                                ; preds = %1
  %9 = load i32, ptr %2, align 4
  %10 = icmp eq i32 %9, 2
  %11 = select i1 %10, i32 62129, i32 62641
  %12 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %11, i8 noundef zeroext -16)
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %98, label %14

14:                                               ; preds = %8
  %15 = load i32, ptr %2, align 4
  %16 = icmp eq i32 %15, 2
  %17 = select i1 %16, i32 62130, i32 62642
  %18 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %17, i8 noundef zeroext 0)
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %98, label %20

20:                                               ; preds = %14
  %21 = load i32, ptr %2, align 4
  %22 = icmp eq i32 %21, 2
  %23 = select i1 %22, i32 62131, i32 62643
  %24 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %23, i8 noundef zeroext 0)
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %98, label %26

26:                                               ; preds = %20
  %27 = load i32, ptr %2, align 4
  %28 = icmp eq i32 %27, 2
  %29 = select i1 %28, i32 62132, i32 62644
  %30 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %29, i8 noundef zeroext 0)
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %98, label %32

32:                                               ; preds = %26
  %33 = load i32, ptr %2, align 4
  %34 = icmp eq i32 %33, 2
  %35 = select i1 %34, i32 62133, i32 62645
  %36 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %35, i8 noundef zeroext 0)
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %98, label %38

38:                                               ; preds = %32
  %39 = load i32, ptr %2, align 4
  %40 = icmp eq i32 %39, 2
  %41 = select i1 %40, i32 62134, i32 62646
  %42 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %41, i8 noundef zeroext 0)
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %98, label %44

44:                                               ; preds = %38
  %45 = load i32, ptr %2, align 4
  %46 = icmp eq i32 %45, 2
  %47 = select i1 %46, i32 62135, i32 62647
  %48 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %47, i8 noundef zeroext 0)
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %98, label %50

50:                                               ; preds = %44
  %51 = load i32, ptr %2, align 4
  %52 = icmp eq i32 %51, 2
  %53 = select i1 %52, i32 62136, i32 62648
  %54 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %53, i8 noundef zeroext 0)
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %98, label %56

56:                                               ; preds = %50
  %57 = load i32, ptr %2, align 4
  %58 = icmp eq i32 %57, 2
  %59 = select i1 %58, i32 62137, i32 62649
  %60 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %59, i8 noundef zeroext 0)
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %98, label %62

62:                                               ; preds = %56
  %63 = load i32, ptr %2, align 4
  %64 = icmp eq i32 %63, 2
  %65 = select i1 %64, i32 62138, i32 62650
  %66 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %65, i8 noundef zeroext 0)
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %98, label %68

68:                                               ; preds = %62
  %69 = load i32, ptr %2, align 4
  %70 = icmp eq i32 %69, 2
  %71 = select i1 %70, i32 62139, i32 62651
  %72 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %71, i8 noundef zeroext 0)
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %98, label %74

74:                                               ; preds = %68
  %75 = load i32, ptr %2, align 4
  %76 = icmp eq i32 %75, 2
  %77 = select i1 %76, i32 62140, i32 62652
  %78 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %77, i8 noundef zeroext 0)
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %98, label %80

80:                                               ; preds = %74
  %81 = load i32, ptr %2, align 4
  %82 = icmp eq i32 %81, 2
  %83 = select i1 %82, i32 62141, i32 62653
  %84 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %83, i8 noundef zeroext 0)
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %98, label %86

86:                                               ; preds = %80
  %87 = load i32, ptr %2, align 4
  %88 = icmp eq i32 %87, 2
  %89 = select i1 %88, i32 62142, i32 62654
  %90 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %89, i8 noundef zeroext 0)
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %86
  %93 = load i32, ptr %2, align 4
  %94 = icmp eq i32 %93, 2
  %95 = select i1 %94, i32 62143, i32 62655
  %96 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %95, i8 noundef zeroext 15)
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %92, %86, %80, %74, %68, %62, %56, %50, %44, %38, %32, %26, %20, %14, %8, %1
  %99 = load i32, ptr @verbose, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %98
  %102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv090x_activate_modcod_single) #13
  br label %103

103:                                              ; preds = %101, %98, %92
  %104 = phi i32 [ 0, %92 ], [ -1, %98 ], [ -1, %101 ]
  ret i32 %104
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stv090x_get_lock_tmg(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 17
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  %5 = load i32, ptr @verbose, align 4
  %6 = icmp ugt i32 %5, 3
  br i1 %4, label %7, label %21

7:                                                ; preds = %1
  br i1 %6, label %8, label %10

8:                                                ; preds = %7
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef nonnull @__func__.stv090x_get_lock_tmg) #13
  br label %10

10:                                               ; preds = %8, %7
  %11 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 19
  %12 = load i32, ptr %11, align 4
  %13 = icmp ult i32 %12, 1500001
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 22
  store i32 1500, ptr %15, align 4
  br label %47

16:                                               ; preds = %10
  %17 = icmp ult i32 %12, 5000001
  %18 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 22
  br i1 %17, label %19, label %20

19:                                               ; preds = %16
  store i32 1000, ptr %18, align 4
  br label %47

20:                                               ; preds = %16
  store i32 700, ptr %18, align 4
  br label %47

21:                                               ; preds = %1
  br i1 %6, label %22, label %24

22:                                               ; preds = %21
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef nonnull @__func__.stv090x_get_lock_tmg) #13
  br label %24

24:                                               ; preds = %22, %21
  %25 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 19
  %26 = load i32, ptr %25, align 4
  %27 = icmp ult i32 %26, 1000001
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 22
  store i32 4500, ptr %29, align 4
  br label %47

30:                                               ; preds = %24
  %31 = icmp ult i32 %26, 2000001
  br i1 %31, label %32, label %34

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 22
  store i32 2500, ptr %33, align 4
  br label %47

34:                                               ; preds = %30
  %35 = icmp ult i32 %26, 5000001
  br i1 %35, label %36, label %38

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 22
  store i32 1000, ptr %37, align 4
  br label %47

38:                                               ; preds = %34
  %39 = icmp ult i32 %26, 10000001
  br i1 %39, label %40, label %42

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 22
  store i32 700, ptr %41, align 4
  br label %47

42:                                               ; preds = %38
  %43 = icmp ult i32 %26, 20000001
  %44 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 22
  br i1 %43, label %45, label %46

45:                                               ; preds = %42
  store i32 400, ptr %44, align 4
  br label %47

46:                                               ; preds = %42
  store i32 300, ptr %44, align 4
  br label %47

47:                                               ; preds = %46, %45, %40, %36, %32, %28, %20, %19, %14
  %48 = phi i32 [ 1700, %28 ], [ 550, %36 ], [ 130, %45 ], [ 100, %46 ], [ 250, %40 ], [ 1100, %32 ], [ 400, %14 ], [ 100, %20 ], [ 300, %19 ]
  %49 = phi i32 [ 2250, %28 ], [ 500, %36 ], [ 200, %45 ], [ 150, %46 ], [ 350, %40 ], [ 1250, %32 ], [ 750, %14 ], [ 350, %20 ], [ 500, %19 ]
  %50 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 23
  store i32 %48, ptr %50, align 4
  %51 = load i32, ptr %2, align 4
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 22
  store i32 %49, ptr %54, align 4
  br label %55

55:                                               ; preds = %53, %47
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stv090x_set_srate(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp ugt i32 %1, 60000000
  %4 = icmp ugt i32 %1, 6000000
  %5 = select i1 %4, i32 6, i32 9
  %6 = select i1 %4, i32 10, i32 7
  %7 = select i1 %3, i32 4, i32 %5
  %8 = select i1 %3, i32 12, i32 %6
  %9 = shl i32 %1, %7
  %10 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.stv090x_internal, ptr %11, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = ashr i32 %13, %8
  %15 = udiv i32 %9, %14
  %16 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 2
  %19 = select i1 %18, i32 62046, i32 62558
  %20 = lshr i32 %15, 8
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 127
  %23 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %19, i8 noundef zeroext %22)
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %2
  %26 = load i32, ptr %16, align 4
  %27 = icmp eq i32 %26, 2
  %28 = trunc i32 %15 to i8
  %29 = select i1 %27, i32 62047, i32 62559
  %30 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %29, i8 noundef zeroext %28)
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %25, %2
  %33 = load i32, ptr @verbose, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv090x_set_srate) #13
  br label %37

37:                                               ; preds = %35, %32, %25
  %38 = phi i32 [ 0, %25 ], [ -1, %32 ], [ -1, %35 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stv090x_set_max_srate(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = udiv i32 %1, 100
  %4 = mul i32 %3, 105
  %5 = icmp ugt i32 %4, 60000000
  %6 = icmp ugt i32 %4, 6000000
  %7 = select i1 %6, i32 6720, i32 53760
  %8 = select i1 %6, i32 10, i32 7
  %9 = select i1 %5, i32 1680, i32 %7
  %10 = select i1 %5, i32 12, i32 %8
  %11 = mul i32 %3, %9
  %12 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.stv090x_internal, ptr %13, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = ashr i32 %15, %10
  %17 = udiv i32 %11, %16
  %18 = icmp ult i32 %17, 32767
  %19 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 2
  br i1 %18, label %22, label %35

22:                                               ; preds = %2
  %23 = lshr i32 %17, 8
  %24 = trunc i32 %23 to i8
  %25 = select i1 %21, i32 62048, i32 62560
  %26 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %25, i8 noundef zeroext %24)
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %45, label %28

28:                                               ; preds = %22
  %29 = load i32, ptr %19, align 4
  %30 = icmp eq i32 %29, 2
  %31 = trunc i32 %17 to i8
  %32 = select i1 %30, i32 62049, i32 62561
  %33 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %32, i8 noundef zeroext %31)
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %45, label %50

35:                                               ; preds = %2
  %36 = select i1 %21, i32 62048, i32 62560
  %37 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %36, i8 noundef zeroext 127)
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %35
  %40 = load i32, ptr %19, align 4
  %41 = icmp eq i32 %40, 2
  %42 = select i1 %41, i32 62049, i32 62561
  %43 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %42, i8 noundef zeroext -1)
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %39, %35, %28, %22
  %46 = load i32, ptr @verbose, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv090x_set_max_srate) #13
  br label %50

50:                                               ; preds = %48, %45, %39, %28
  %51 = phi i32 [ 0, %39 ], [ 0, %28 ], [ -1, %45 ], [ -1, %48 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stv090x_set_min_srate(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = udiv i32 %1, 100
  %4 = mul nuw i32 %3, 95
  %5 = icmp ugt i32 %4, 60000000
  %6 = icmp ugt i32 %4, 6000000
  %7 = select i1 %6, i32 6080, i32 48640
  %8 = select i1 %6, i32 10, i32 7
  %9 = select i1 %5, i32 1520, i32 %7
  %10 = select i1 %5, i32 12, i32 %8
  %11 = mul i32 %3, %9
  %12 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.stv090x_internal, ptr %13, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = ashr i32 %15, %10
  %17 = udiv i32 %11, %16
  %18 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 2
  %21 = select i1 %20, i32 62050, i32 62562
  %22 = lshr i32 %17, 8
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 127
  %25 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %21, i8 noundef zeroext %24)
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %2
  %28 = load i32, ptr %18, align 4
  %29 = icmp eq i32 %28, 2
  %30 = trunc i32 %17 to i8
  %31 = select i1 %29, i32 62051, i32 62563
  %32 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %31, i8 noundef zeroext %30)
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %27, %2
  %35 = load i32, ptr @verbose, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv090x_set_min_srate) #13
  br label %39

39:                                               ; preds = %37, %34, %27
  %40 = phi i32 [ 0, %27 ], [ -1, %34 ], [ -1, %37 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stv090x_delivery_search(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 12
  %3 = load i32, ptr %2, align 4
  switch i32 %3, label %100 [
    i32 1, label %4
    i32 0, label %4
    i32 2, label %36
  ]

4:                                                ; preds = %1, %1
  %5 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 2
  %8 = select i1 %7, i32 61972, i32 62484
  %9 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %8)
  %10 = load i32, ptr %5, align 4
  %11 = icmp eq i32 %10, 2
  %12 = select i1 %11, i32 61972, i32 62484
  %13 = trunc i32 %9 to i8
  %14 = and i8 %13, 63
  %15 = or i8 %14, 64
  %16 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %12, i8 noundef zeroext %15)
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %158, label %18

18:                                               ; preds = %4
  %19 = tail call fastcc i32 @stv090x_vitclk_ctl(ptr noundef %0, i32 noundef 0)
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %158, label %21

21:                                               ; preds = %18
  %22 = tail call fastcc i32 @stv090x_dvbs_track_crl(ptr noundef %0)
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %158, label %24

24:                                               ; preds = %21
  %25 = load i32, ptr %5, align 4
  %26 = icmp eq i32 %25, 2
  %27 = select i1 %26, i32 62096, i32 62608
  %28 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %27, i8 noundef zeroext 34)
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %158, label %30

30:                                               ; preds = %24
  %31 = tail call fastcc i32 @stv090x_set_vit_thacq(ptr noundef %0)
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %158, label %33

33:                                               ; preds = %30
  %34 = tail call fastcc i32 @stv090x_set_viterbi(ptr noundef %0)
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %158, label %163

36:                                               ; preds = %1
  %37 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 2
  %40 = select i1 %39, i32 61972, i32 62484
  %41 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %40)
  %42 = load i32, ptr %37, align 4
  %43 = icmp eq i32 %42, 2
  %44 = select i1 %43, i32 61972, i32 62484
  %45 = trunc i32 %41 to i8
  %46 = and i8 %45, 63
  %47 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %44, i8 noundef zeroext %46)
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %158, label %49

49:                                               ; preds = %36
  %50 = load i32, ptr %37, align 4
  %51 = icmp eq i32 %50, 2
  %52 = trunc i32 %41 to i8
  %53 = or i8 %52, -64
  %54 = select i1 %51, i32 61972, i32 62484
  %55 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %54, i8 noundef zeroext %53)
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %158, label %57

57:                                               ; preds = %49
  %58 = tail call fastcc i32 @stv090x_vitclk_ctl(ptr noundef %0, i32 noundef 1)
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %158, label %60

60:                                               ; preds = %57
  %61 = load i32, ptr %37, align 4
  %62 = icmp eq i32 %61, 2
  %63 = select i1 %62, i32 62009, i32 62521
  %64 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %63, i8 noundef zeroext 26)
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %158, label %66

66:                                               ; preds = %60
  %67 = load i32, ptr %37, align 4
  %68 = icmp eq i32 %67, 2
  %69 = select i1 %68, i32 62010, i32 62522
  %70 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %69, i8 noundef zeroext 9)
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %158, label %72

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 3
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.stv090x_internal, ptr %74, i32 0, i32 5
  %76 = load i32, ptr %75, align 4
  %77 = icmp ult i32 %76, 33
  %78 = load i32, ptr %37, align 4
  %79 = icmp eq i32 %78, 2
  %80 = select i1 %79, i32 62096, i32 62608
  br i1 %77, label %81, label %84

81:                                               ; preds = %72
  %82 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %80, i8 noundef zeroext 38)
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %158, label %87

84:                                               ; preds = %72
  %85 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %80, i8 noundef zeroext 102)
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %158, label %87

87:                                               ; preds = %84, %81
  %88 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 2
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %94, label %91

91:                                               ; preds = %87
  %92 = tail call fastcc i32 @stv090x_activate_modcod(ptr noundef %0)
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %158, label %97

94:                                               ; preds = %87
  %95 = tail call fastcc i32 @stv090x_activate_modcod_single(ptr noundef %0)
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %158, label %97

97:                                               ; preds = %94, %91
  %98 = tail call fastcc i32 @stv090x_set_vit_thtracq(ptr noundef %0)
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %158, label %163

100:                                              ; preds = %1
  %101 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 1
  %102 = load i32, ptr %101, align 4
  %103 = icmp eq i32 %102, 2
  %104 = select i1 %103, i32 61972, i32 62484
  %105 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %104)
  %106 = load i32, ptr %101, align 4
  %107 = icmp eq i32 %106, 2
  %108 = select i1 %107, i32 61972, i32 62484
  %109 = trunc i32 %105 to i8
  %110 = and i8 %109, 63
  %111 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %108, i8 noundef zeroext %110)
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %158, label %113

113:                                              ; preds = %100
  %114 = load i32, ptr %101, align 4
  %115 = icmp eq i32 %114, 2
  %116 = trunc i32 %105 to i8
  %117 = or i8 %116, -64
  %118 = select i1 %115, i32 61972, i32 62484
  %119 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %118, i8 noundef zeroext %117)
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %158, label %121

121:                                              ; preds = %113
  %122 = tail call fastcc i32 @stv090x_vitclk_ctl(ptr noundef %0, i32 noundef 0)
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %158, label %124

124:                                              ; preds = %121
  %125 = tail call fastcc i32 @stv090x_dvbs_track_crl(ptr noundef %0)
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %158, label %127

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 3
  %129 = load ptr, ptr %128, align 4
  %130 = getelementptr inbounds %struct.stv090x_internal, ptr %129, i32 0, i32 5
  %131 = load i32, ptr %130, align 4
  %132 = icmp ult i32 %131, 33
  %133 = load i32, ptr %101, align 4
  %134 = icmp eq i32 %133, 2
  %135 = select i1 %134, i32 62096, i32 62608
  br i1 %132, label %136, label %139

136:                                              ; preds = %127
  %137 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %135, i8 noundef zeroext 38)
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %158, label %142

139:                                              ; preds = %127
  %140 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %135, i8 noundef zeroext 102)
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %158, label %142

142:                                              ; preds = %139, %136
  %143 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 2
  %144 = load i32, ptr %143, align 4
  %145 = icmp eq i32 %144, 1
  br i1 %145, label %149, label %146

146:                                              ; preds = %142
  %147 = tail call fastcc i32 @stv090x_activate_modcod(ptr noundef %0)
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %158, label %152

149:                                              ; preds = %142
  %150 = tail call fastcc i32 @stv090x_activate_modcod_single(ptr noundef %0)
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %158, label %152

152:                                              ; preds = %149, %146
  %153 = tail call fastcc i32 @stv090x_set_vit_thacq(ptr noundef %0)
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %152
  %156 = tail call fastcc i32 @stv090x_set_viterbi(ptr noundef %0)
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %155, %152, %149, %146, %139, %136, %124, %121, %113, %100, %97, %94, %91, %84, %81, %66, %60, %57, %49, %36, %33, %30, %24, %21, %18, %4
  %159 = load i32, ptr @verbose, align 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %163, label %161

161:                                              ; preds = %158
  %162 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv090x_delivery_search) #13
  br label %163

163:                                              ; preds = %161, %158, %155, %97, %33
  %164 = phi i32 [ 0, %155 ], [ 0, %97 ], [ 0, %33 ], [ -1, %158 ], [ -1, %161 ]
  ret i32 %164
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stv090x_start_search(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 2
  %5 = select i1 %4, i32 61974, i32 62486
  %6 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %5)
  %7 = load i32, ptr %2, align 4
  %8 = icmp eq i32 %7, 2
  %9 = select i1 %8, i32 61974, i32 62486
  %10 = trunc i32 %6 to i8
  %11 = or i8 %10, 31
  %12 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %9, i8 noundef zeroext %11)
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %311, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.stv090x_internal, ptr %16, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = icmp ult i32 %18, 33
  %20 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 19
  %21 = load i32, ptr %20, align 4
  %22 = icmp ult i32 %21, 5000001
  %23 = load i32, ptr %2, align 4
  %24 = icmp eq i32 %23, 2
  br i1 %19, label %25, label %69

25:                                               ; preds = %14
  %26 = select i1 %24, i32 62008, i32 62520
  br i1 %22, label %27, label %60

27:                                               ; preds = %25
  %28 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %26, i8 noundef zeroext 68)
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %311, label %30

30:                                               ; preds = %27
  %31 = load i32, ptr %2, align 4
  %32 = icmp eq i32 %31, 2
  %33 = select i1 %32, i32 62018, i32 62530
  %34 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %33, i8 noundef zeroext 15)
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %311, label %36

36:                                               ; preds = %30
  %37 = load i32, ptr %2, align 4
  %38 = icmp eq i32 %37, 2
  %39 = select i1 %38, i32 62019, i32 62531
  %40 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %39, i8 noundef zeroext -1)
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %311, label %42

42:                                               ; preds = %36
  %43 = load i32, ptr %2, align 4
  %44 = icmp eq i32 %43, 2
  %45 = select i1 %44, i32 62022, i32 62534
  %46 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %45, i8 noundef zeroext -16)
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %311, label %48

48:                                               ; preds = %42
  %49 = load i32, ptr %2, align 4
  %50 = icmp eq i32 %49, 2
  %51 = select i1 %50, i32 62023, i32 62535
  %52 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %51, i8 noundef zeroext 0)
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %311, label %54

54:                                               ; preds = %48
  %55 = load i32, ptr %2, align 4
  %56 = icmp eq i32 %55, 2
  %57 = select i1 %56, i32 62034, i32 62546
  %58 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %57, i8 noundef zeroext 104)
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %311, label %132

60:                                               ; preds = %25
  %61 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %26, i8 noundef zeroext -60)
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %311, label %63

63:                                               ; preds = %60
  %64 = load i32, ptr %2, align 4
  %65 = icmp eq i32 %64, 2
  %66 = select i1 %65, i32 62034, i32 62546
  %67 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %66, i8 noundef zeroext 68)
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %311, label %132

69:                                               ; preds = %14
  br i1 %22, label %70, label %75

70:                                               ; preds = %69
  br i1 %24, label %71, label %73

71:                                               ; preds = %70
  %72 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef 62034, i8 noundef zeroext 104)
  br label %80

73:                                               ; preds = %70
  %74 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef 62546, i8 noundef zeroext 104)
  br label %80

75:                                               ; preds = %69
  br i1 %24, label %76, label %78

76:                                               ; preds = %75
  %77 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef 62034, i8 noundef zeroext 68)
  br label %80

78:                                               ; preds = %75
  %79 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef 62546, i8 noundef zeroext 68)
  br label %80

80:                                               ; preds = %78, %76, %73, %71
  %81 = load i32, ptr %2, align 4
  %82 = icmp eq i32 %81, 2
  %83 = select i1 %82, i32 62008, i32 62520
  %84 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %83, i8 noundef zeroext 70)
  %85 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 17
  %86 = load i32, ptr %85, align 4
  %87 = icmp eq i32 %86, 2
  br i1 %87, label %94, label %88

88:                                               ; preds = %80
  %89 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 21
  %90 = load i32, ptr %89, align 4
  %91 = sdiv i32 %90, 2000
  %92 = shl i32 %91, 16
  %93 = add i32 %92, 39321600
  br label %94

94:                                               ; preds = %88, %80
  %95 = phi i32 [ %93, %88 ], [ 65536000, %80 ]
  %96 = load ptr, ptr %15, align 4
  %97 = getelementptr inbounds %struct.stv090x_internal, ptr %96, i32 0, i32 4
  %98 = load i32, ptr %97, align 4
  %99 = sdiv i32 %98, 1000
  %100 = udiv i32 %95, %99
  %101 = load i32, ptr %2, align 4
  %102 = icmp eq i32 %101, 2
  %103 = select i1 %102, i32 62018, i32 62530
  %104 = lshr i32 %100, 8
  %105 = trunc i32 %104 to i8
  %106 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %103, i8 noundef zeroext %105)
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %311, label %108

108:                                              ; preds = %94
  %109 = load i32, ptr %2, align 4
  %110 = icmp eq i32 %109, 2
  %111 = trunc i32 %100 to i8
  %112 = select i1 %110, i32 62019, i32 62531
  %113 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %112, i8 noundef zeroext %111)
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %311, label %115

115:                                              ; preds = %108
  %116 = trunc i32 %100 to i16
  %117 = sub i16 0, %116
  %118 = load i32, ptr %2, align 4
  %119 = icmp eq i32 %118, 2
  %120 = lshr i16 %117, 8
  %121 = trunc i16 %120 to i8
  %122 = select i1 %119, i32 62022, i32 62534
  %123 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %122, i8 noundef zeroext %121)
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %311, label %125

125:                                              ; preds = %115
  %126 = load i32, ptr %2, align 4
  %127 = icmp eq i32 %126, 2
  %128 = trunc i16 %117 to i8
  %129 = select i1 %127, i32 62023, i32 62535
  %130 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %129, i8 noundef zeroext %128)
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %311, label %132

132:                                              ; preds = %125, %63, %54
  %133 = load i32, ptr %2, align 4
  %134 = icmp eq i32 %133, 2
  %135 = select i1 %134, i32 62024, i32 62536
  %136 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %135, i8 noundef zeroext 0)
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %311, label %138

138:                                              ; preds = %132
  %139 = load i32, ptr %2, align 4
  %140 = icmp eq i32 %139, 2
  %141 = select i1 %140, i32 62025, i32 62537
  %142 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %141, i8 noundef zeroext 0)
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %311, label %144

144:                                              ; preds = %138
  %145 = load ptr, ptr %15, align 4
  %146 = getelementptr inbounds %struct.stv090x_internal, ptr %145, i32 0, i32 5
  %147 = load i32, ptr %146, align 4
  %148 = icmp ugt i32 %147, 31
  br i1 %148, label %149, label %176

149:                                              ; preds = %144
  %150 = load i32, ptr %2, align 4
  %151 = icmp eq i32 %150, 2
  %152 = select i1 %151, i32 62063, i32 62575
  %153 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %152, i8 noundef zeroext 65)
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %311, label %155

155:                                              ; preds = %149
  %156 = load i32, ptr %2, align 4
  %157 = icmp eq i32 %156, 2
  %158 = select i1 %157, i32 62168, i32 62680
  %159 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %158, i8 noundef zeroext 65)
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %311, label %161

161:                                              ; preds = %155
  %162 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 12
  %163 = load i32, ptr %162, align 4
  switch i32 %163, label %176 [
    i32 1, label %164
    i32 0, label %164
    i32 3, label %164
  ]

164:                                              ; preds = %161, %161, %161
  %165 = load i32, ptr %2, align 4
  %166 = icmp eq i32 %165, 2
  %167 = select i1 %166, i32 62258, i32 62770
  %168 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %167, i8 noundef zeroext -126)
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %311, label %170

170:                                              ; preds = %164
  %171 = load i32, ptr %2, align 4
  %172 = icmp eq i32 %171, 2
  %173 = select i1 %172, i32 62269, i32 62781
  %174 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %173, i8 noundef zeroext 0)
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %311, label %176

176:                                              ; preds = %170, %161, %144
  %177 = load i32, ptr %2, align 4
  %178 = icmp eq i32 %177, 2
  %179 = select i1 %178, i32 62041, i32 62553
  %180 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %179, i8 noundef zeroext 0)
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %311, label %182

182:                                              ; preds = %176
  %183 = load i32, ptr %2, align 4
  %184 = icmp eq i32 %183, 2
  %185 = select i1 %184, i32 62035, i32 62547
  %186 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %185, i8 noundef zeroext -32)
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %311, label %188

188:                                              ; preds = %182
  %189 = load i32, ptr %2, align 4
  %190 = icmp eq i32 %189, 2
  %191 = select i1 %190, i32 62036, i32 62548
  %192 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %191, i8 noundef zeroext -64)
  %193 = icmp slt i32 %192, 0
  br i1 %193, label %311, label %194

194:                                              ; preds = %188
  %195 = load i32, ptr %2, align 4
  %196 = icmp eq i32 %195, 2
  %197 = select i1 %196, i32 61972, i32 62484
  %198 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %197)
  %199 = load i32, ptr %2, align 4
  %200 = icmp eq i32 %199, 2
  %201 = select i1 %200, i32 61972, i32 62484
  %202 = trunc i32 %198 to i8
  %203 = and i8 %202, -25
  %204 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %201, i8 noundef zeroext %203)
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %311, label %206

206:                                              ; preds = %194
  %207 = load i32, ptr %2, align 4
  %208 = icmp eq i32 %207, 2
  %209 = select i1 %208, i32 61973, i32 62485
  %210 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %209)
  %211 = load i32, ptr %2, align 4
  %212 = icmp eq i32 %211, 2
  %213 = select i1 %212, i32 61973, i32 62485
  %214 = trunc i32 %210 to i8
  %215 = and i8 %214, -65
  %216 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %213, i8 noundef zeroext %215)
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %311, label %218

218:                                              ; preds = %206
  %219 = load i32, ptr %2, align 4
  %220 = icmp eq i32 %219, 2
  %221 = select i1 %220, i32 62033, i32 62545
  %222 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %221, i8 noundef zeroext -120)
  %223 = icmp slt i32 %222, 0
  br i1 %223, label %311, label %224

224:                                              ; preds = %218
  %225 = load ptr, ptr %15, align 4
  %226 = getelementptr inbounds %struct.stv090x_internal, ptr %225, i32 0, i32 5
  %227 = load i32, ptr %226, align 4
  %228 = icmp ugt i32 %227, 31
  %229 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 19
  %230 = load i32, ptr %229, align 4
  br i1 %228, label %231, label %273

231:                                              ; preds = %224
  %232 = icmp ult i32 %230, 2000000
  br i1 %232, label %233, label %250

233:                                              ; preds = %231
  %234 = icmp ult i32 %227, 33
  %235 = load i32, ptr %2, align 4
  %236 = icmp eq i32 %235, 2
  %237 = select i1 %236, i32 62013, i32 62525
  br i1 %234, label %238, label %241

238:                                              ; preds = %233
  %239 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %237, i8 noundef zeroext 57)
  %240 = icmp slt i32 %239, 0
  br i1 %240, label %311, label %244

241:                                              ; preds = %233
  %242 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %237, i8 noundef zeroext -119)
  %243 = icmp slt i32 %242, 0
  br i1 %243, label %311, label %244

244:                                              ; preds = %241, %238
  %245 = load i32, ptr %2, align 4
  %246 = icmp eq i32 %245, 2
  %247 = select i1 %246, i32 62014, i32 62526
  %248 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %247, i8 noundef zeroext 64)
  %249 = icmp slt i32 %248, 0
  br i1 %249, label %311, label %284

250:                                              ; preds = %231
  %251 = icmp ult i32 %230, 10000000
  %252 = load i32, ptr %2, align 4
  %253 = icmp eq i32 %252, 2
  %254 = select i1 %253, i32 62013, i32 62525
  br i1 %251, label %255, label %264

255:                                              ; preds = %250
  %256 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %254, i8 noundef zeroext 76)
  %257 = icmp slt i32 %256, 0
  br i1 %257, label %311, label %258

258:                                              ; preds = %255
  %259 = load i32, ptr %2, align 4
  %260 = icmp eq i32 %259, 2
  %261 = select i1 %260, i32 62014, i32 62526
  %262 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %261, i8 noundef zeroext 32)
  %263 = icmp slt i32 %262, 0
  br i1 %263, label %311, label %284

264:                                              ; preds = %250
  %265 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %254, i8 noundef zeroext 75)
  %266 = icmp slt i32 %265, 0
  br i1 %266, label %311, label %267

267:                                              ; preds = %264
  %268 = load i32, ptr %2, align 4
  %269 = icmp eq i32 %268, 2
  %270 = select i1 %269, i32 62014, i32 62526
  %271 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %270, i8 noundef zeroext 32)
  %272 = icmp slt i32 %271, 0
  br i1 %272, label %311, label %284

273:                                              ; preds = %224
  %274 = icmp ult i32 %230, 10000000
  %275 = load i32, ptr %2, align 4
  %276 = icmp eq i32 %275, 2
  %277 = select i1 %276, i32 62013, i32 62525
  br i1 %274, label %278, label %281

278:                                              ; preds = %273
  %279 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %277, i8 noundef zeroext -17)
  %280 = icmp slt i32 %279, 0
  br i1 %280, label %311, label %284

281:                                              ; preds = %273
  %282 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %277, i8 noundef zeroext -19)
  %283 = icmp slt i32 %282, 0
  br i1 %283, label %311, label %284

284:                                              ; preds = %281, %278, %267, %258, %244
  %285 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 17
  %286 = load i32, ptr %285, align 4
  switch i32 %286, label %316 [
    i32 2, label %287
    i32 1, label %299
  ]

287:                                              ; preds = %284
  %288 = load i32, ptr %2, align 4
  %289 = icmp eq i32 %288, 2
  %290 = select i1 %289, i32 61974, i32 62486
  %291 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %290, i8 noundef zeroext 31)
  %292 = icmp slt i32 %291, 0
  br i1 %292, label %311, label %293

293:                                              ; preds = %287
  %294 = load i32, ptr %2, align 4
  %295 = icmp eq i32 %294, 2
  %296 = select i1 %295, i32 61974, i32 62486
  %297 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %296, i8 noundef zeroext 24)
  %298 = icmp slt i32 %297, 0
  br i1 %298, label %311, label %316

299:                                              ; preds = %284
  %300 = load i32, ptr %2, align 4
  %301 = icmp eq i32 %300, 2
  %302 = select i1 %301, i32 61974, i32 62486
  %303 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %302, i8 noundef zeroext 31)
  %304 = icmp slt i32 %303, 0
  br i1 %304, label %311, label %305

305:                                              ; preds = %299
  %306 = load i32, ptr %2, align 4
  %307 = icmp eq i32 %306, 2
  %308 = select i1 %307, i32 61974, i32 62486
  %309 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %308, i8 noundef zeroext 21)
  %310 = icmp slt i32 %309, 0
  br i1 %310, label %311, label %316

311:                                              ; preds = %305, %299, %293, %287, %281, %278, %267, %264, %258, %255, %244, %241, %238, %218, %206, %194, %188, %182, %176, %170, %164, %155, %149, %138, %132, %125, %115, %108, %94, %63, %60, %54, %48, %42, %36, %30, %27, %1
  %312 = load i32, ptr @verbose, align 4
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %316, label %314

314:                                              ; preds = %311
  %315 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv090x_start_search) #13
  br label %316

316:                                              ; preds = %314, %311, %305, %293, %284
  %317 = phi i32 [ 0, %284 ], [ 0, %305 ], [ 0, %293 ], [ -1, %311 ], [ -1, %314 ]
  ret i32 %317
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stv090x_blind_search(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 2
  %6 = select i1 %5, i32 61997, i32 62509
  %7 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %6, i8 noundef zeroext 56) #12
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %147, label %9

9:                                                ; preds = %1
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2
  %12 = select i1 %11, i32 61972, i32 62484
  %13 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %12) #12
  %14 = load i32, ptr %3, align 4
  %15 = icmp eq i32 %14, 2
  %16 = select i1 %15, i32 61972, i32 62484
  %17 = trunc i32 %13 to i8
  %18 = and i8 %17, -25
  %19 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %16, i8 noundef zeroext %18) #12
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %147, label %21

21:                                               ; preds = %9
  %22 = load i32, ptr %3, align 4
  %23 = icmp eq i32 %22, 2
  %24 = select i1 %23, i32 62048, i32 62560
  %25 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %24, i8 noundef zeroext -125) #12
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %147, label %27

27:                                               ; preds = %21
  %28 = load i32, ptr %3, align 4
  %29 = icmp eq i32 %28, 2
  %30 = select i1 %29, i32 62049, i32 62561
  %31 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %30, i8 noundef zeroext -64) #12
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %147, label %33

33:                                               ; preds = %27
  %34 = load i32, ptr %3, align 4
  %35 = icmp eq i32 %34, 2
  %36 = select i1 %35, i32 62050, i32 62562
  %37 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %36, i8 noundef zeroext -126) #12
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %147, label %39

39:                                               ; preds = %33
  %40 = load i32, ptr %3, align 4
  %41 = icmp eq i32 %40, 2
  %42 = select i1 %41, i32 62051, i32 62563
  %43 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %42, i8 noundef zeroext -96) #12
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %147, label %45

45:                                               ; preds = %39
  %46 = load i32, ptr %3, align 4
  %47 = icmp eq i32 %46, 2
  %48 = select i1 %47, i32 61975, i32 62487
  %49 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %48, i8 noundef zeroext 0) #12
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %147, label %51

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 3
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.stv090x_internal, ptr %53, i32 0, i32 4
  %55 = load i32, ptr %54, align 4
  %56 = ashr i32 %55, 7
  %57 = udiv i32 512000000, %56
  %58 = load i32, ptr %3, align 4
  %59 = icmp eq i32 %58, 2
  %60 = select i1 %59, i32 62046, i32 62558
  %61 = lshr i32 %57, 8
  %62 = trunc i32 %61 to i8
  %63 = and i8 %62, 127
  %64 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %60, i8 noundef zeroext %63) #12
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %51
  %67 = load i32, ptr %3, align 4
  %68 = icmp eq i32 %67, 2
  %69 = trunc i32 %57 to i8
  %70 = select i1 %68, i32 62047, i32 62559
  %71 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %70, i8 noundef zeroext %69) #12
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %66, %51
  %74 = load i32, ptr @verbose, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %861, label %76

76:                                               ; preds = %73
  %77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv090x_set_srate) #13
  br label %147

78:                                               ; preds = %66
  %79 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 21
  %80 = load i32, ptr %79, align 4
  %81 = sdiv i32 %80, 1000000
  %82 = tail call i32 @llvm.smax.i32(i32 %81, i32 1) #12
  %83 = load ptr, ptr %52, align 4
  %84 = getelementptr inbounds %struct.stv090x_internal, ptr %83, i32 0, i32 4
  %85 = load i32, ptr %84, align 4
  %86 = sdiv i32 %85, 256
  %87 = sdiv i32 256000000, %86
  br label %88

88:                                               ; preds = %142, %78
  %89 = phi i32 [ 65535, %78 ], [ %144, %142 ]
  %90 = phi i32 [ 0, %78 ], [ %97, %142 ]
  %91 = phi i32 [ 1, %78 ], [ %98, %142 ]
  %92 = phi i32 [ 0, %78 ], [ %145, %142 ]
  %93 = icmp sgt i32 %91, 0
  %94 = mul i32 %92, %87
  %95 = sub i32 0, %94
  %96 = select i1 %93, i32 %94, i32 %95
  %97 = add i32 %96, %90
  %98 = sub i32 0, %91
  %99 = load i32, ptr %3, align 4
  %100 = icmp eq i32 %99, 2
  %101 = select i1 %100, i32 61974, i32 62486
  %102 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %101, i8 noundef zeroext 92) #12
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %147, label %104

104:                                              ; preds = %88
  %105 = load i32, ptr %3, align 4
  %106 = icmp eq i32 %105, 2
  %107 = lshr i32 %97, 8
  %108 = trunc i32 %107 to i8
  %109 = select i1 %106, i32 62024, i32 62536
  %110 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %109, i8 noundef zeroext %108) #12
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %147, label %112

112:                                              ; preds = %104
  %113 = load i32, ptr %3, align 4
  %114 = icmp eq i32 %113, 2
  %115 = trunc i32 %97 to i8
  %116 = select i1 %114, i32 62025, i32 62537
  %117 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %116, i8 noundef zeroext %115) #12
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %147, label %119

119:                                              ; preds = %112
  %120 = load i32, ptr %3, align 4
  %121 = icmp eq i32 %120, 2
  %122 = select i1 %121, i32 61974, i32 62486
  %123 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %122, i8 noundef zeroext 88) #12
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %147, label %125

125:                                              ; preds = %119
  tail call void @msleep(i32 noundef 10) #12
  br label %126

126:                                              ; preds = %126, %125
  %127 = phi i32 [ 0, %125 ], [ %139, %126 ]
  %128 = phi i32 [ 0, %125 ], [ %140, %126 ]
  %129 = load i32, ptr %3, align 4
  %130 = icmp eq i32 %129, 2
  %131 = select i1 %130, i32 62006, i32 62518
  %132 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %131) #12
  %133 = shl i32 %132, 8
  %134 = load i32, ptr %3, align 4
  %135 = icmp eq i32 %134, 2
  %136 = select i1 %135, i32 62007, i32 62519
  %137 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %136) #12
  %138 = or i32 %137, %133
  %139 = add i32 %138, %127
  %140 = add nuw nsw i32 %128, 1
  %141 = icmp eq i32 %140, 10
  br i1 %141, label %142, label %126

142:                                              ; preds = %126
  %143 = udiv i32 %139, 10
  %144 = tail call i32 @llvm.umin.i32(i32 %143, i32 %89) #12
  %145 = add nuw nsw i32 %92, 1
  %146 = icmp eq i32 %145, %82
  br i1 %146, label %152, label %88

147:                                              ; preds = %119, %112, %104, %88, %76, %45, %39, %33, %27, %21, %9, %1
  %148 = load i32, ptr @verbose, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %861, label %150

150:                                              ; preds = %147
  %151 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv090x_get_agc2_min_level) #13
  br label %861

152:                                              ; preds = %142
  %153 = load ptr, ptr %52, align 4
  %154 = getelementptr inbounds %struct.stv090x_internal, ptr %153, i32 0, i32 5
  %155 = load i32, ptr %154, align 4
  %156 = icmp ult i32 %155, 33
  %157 = select i1 %156, i32 700, i32 1400
  %158 = icmp ugt i32 %144, %157
  br i1 %158, label %861, label %159

159:                                              ; preds = %152
  %160 = load i32, ptr %3, align 4
  %161 = icmp eq i32 %160, 2
  %162 = select i1 %161, i32 62008, i32 62520
  br i1 %156, label %163, label %166

163:                                              ; preds = %159
  %164 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %162, i8 noundef zeroext -60)
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %856, label %169

166:                                              ; preds = %159
  %167 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %162, i8 noundef zeroext 6)
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %856, label %169

169:                                              ; preds = %166, %163
  %170 = load i32, ptr %3, align 4
  %171 = icmp eq i32 %170, 2
  %172 = select i1 %171, i32 62034, i32 62546
  %173 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %172, i8 noundef zeroext 68)
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %856, label %175

175:                                              ; preds = %169
  %176 = load ptr, ptr %52, align 4
  %177 = getelementptr inbounds %struct.stv090x_internal, ptr %176, i32 0, i32 5
  %178 = load i32, ptr %177, align 4
  %179 = icmp ugt i32 %178, 31
  br i1 %179, label %180, label %204

180:                                              ; preds = %175
  %181 = load i32, ptr %3, align 4
  %182 = icmp eq i32 %181, 2
  %183 = select i1 %182, i32 62063, i32 62575
  %184 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %183, i8 noundef zeroext 65)
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %856, label %186

186:                                              ; preds = %180
  %187 = load i32, ptr %3, align 4
  %188 = icmp eq i32 %187, 2
  %189 = select i1 %188, i32 62168, i32 62680
  %190 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %189, i8 noundef zeroext 65)
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %856, label %192

192:                                              ; preds = %186
  %193 = load i32, ptr %3, align 4
  %194 = icmp eq i32 %193, 2
  %195 = select i1 %194, i32 62258, i32 62770
  %196 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %195, i8 noundef zeroext -126)
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %856, label %198

198:                                              ; preds = %192
  %199 = load i32, ptr %3, align 4
  %200 = icmp eq i32 %199, 2
  %201 = select i1 %200, i32 62269, i32 62781
  %202 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %201, i8 noundef zeroext 0)
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %856, label %204

204:                                              ; preds = %198, %175
  %205 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 6
  %206 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 19
  %207 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 18
  %208 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 5
  %209 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 20
  %210 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 22
  br label %211

211:                                              ; preds = %846, %204
  %212 = phi i8 [ 110, %204 ], [ %850, %846 ]
  %213 = phi i32 [ %144, %204 ], [ %849, %846 ]
  %214 = load i32, ptr %3, align 4
  %215 = icmp eq i32 %214, 2
  %216 = select i1 %215, i32 62040, i32 62552
  %217 = call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %216, i8 noundef zeroext %212)
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %856, label %219

219:                                              ; preds = %211
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  %220 = load ptr, ptr %52, align 4
  %221 = getelementptr inbounds %struct.stv090x_internal, ptr %220, i32 0, i32 5
  %222 = load i32, ptr %221, align 4
  %223 = icmp ugt i32 %222, 47
  %224 = select i1 %223, i32 11776, i32 7936
  %225 = load i32, ptr %3, align 4
  %226 = icmp eq i32 %225, 2
  %227 = select i1 %226, i32 61974, i32 62486
  %228 = call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %227) #12
  %229 = or i32 %228, 31
  store i32 %229, ptr %2, align 4
  %230 = load i32, ptr %3, align 4
  %231 = icmp eq i32 %230, 2
  %232 = select i1 %231, i32 61974, i32 62486
  %233 = trunc i32 %229 to i8
  %234 = call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %232, i8 noundef zeroext %233) #12
  %235 = icmp slt i32 %234, 0
  br i1 %235, label %502, label %236

236:                                              ; preds = %219
  %237 = load i32, ptr %3, align 4
  %238 = icmp eq i32 %237, 2
  %239 = select i1 %238, i32 62032, i32 62544
  %240 = call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %239, i8 noundef zeroext 18) #12
  %241 = icmp slt i32 %240, 0
  br i1 %241, label %502, label %242

242:                                              ; preds = %236
  %243 = load i32, ptr %3, align 4
  %244 = icmp eq i32 %243, 2
  %245 = select i1 %244, i32 62042, i32 62554
  %246 = call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %245, i8 noundef zeroext -64) #12
  %247 = icmp slt i32 %246, 0
  br i1 %247, label %502, label %248

248:                                              ; preds = %242
  %249 = load i32, ptr %3, align 4
  %250 = icmp eq i32 %249, 2
  %251 = select i1 %250, i32 62035, i32 62547
  %252 = call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %251, i8 noundef zeroext -16) #12
  %253 = icmp slt i32 %252, 0
  br i1 %253, label %502, label %254

254:                                              ; preds = %248
  %255 = load i32, ptr %3, align 4
  %256 = icmp eq i32 %255, 2
  %257 = select i1 %256, i32 62036, i32 62548
  %258 = call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %257, i8 noundef zeroext -32) #12
  %259 = icmp slt i32 %258, 0
  br i1 %259, label %502, label %260

260:                                              ; preds = %254
  %261 = load i32, ptr %3, align 4
  %262 = icmp eq i32 %261, 2
  %263 = select i1 %262, i32 61972, i32 62484
  %264 = call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %263) #12
  %265 = and i32 %264, -25
  %266 = or i32 %265, 16
  store i32 %266, ptr %2, align 4
  %267 = load i32, ptr %3, align 4
  %268 = icmp eq i32 %267, 2
  %269 = select i1 %268, i32 61972, i32 62484
  %270 = trunc i32 %266 to i8
  %271 = call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %269, i8 noundef zeroext %270) #12
  %272 = icmp slt i32 %271, 0
  br i1 %272, label %502, label %273

273:                                              ; preds = %260
  %274 = load i32, ptr %3, align 4
  %275 = icmp eq i32 %274, 2
  %276 = select i1 %275, i32 62048, i32 62560
  %277 = call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %276, i8 noundef zeroext -125) #12
  %278 = icmp slt i32 %277, 0
  br i1 %278, label %502, label %279

279:                                              ; preds = %273
  %280 = load i32, ptr %3, align 4
  %281 = icmp eq i32 %280, 2
  %282 = select i1 %281, i32 62049, i32 62561
  %283 = call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %282, i8 noundef zeroext -64) #12
  %284 = icmp slt i32 %283, 0
  br i1 %284, label %502, label %285

285:                                              ; preds = %279
  %286 = load i32, ptr %3, align 4
  %287 = icmp eq i32 %286, 2
  %288 = select i1 %287, i32 62050, i32 62562
  %289 = call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %288, i8 noundef zeroext -126) #12
  %290 = icmp slt i32 %289, 0
  br i1 %290, label %502, label %291

291:                                              ; preds = %285
  %292 = load i32, ptr %3, align 4
  %293 = icmp eq i32 %292, 2
  %294 = select i1 %293, i32 62051, i32 62563
  %295 = call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %294, i8 noundef zeroext -96) #12
  %296 = icmp slt i32 %295, 0
  br i1 %296, label %502, label %297

297:                                              ; preds = %291
  %298 = load i32, ptr %3, align 4
  %299 = icmp eq i32 %298, 2
  %300 = select i1 %299, i32 61975, i32 62487
  %301 = call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %300, i8 noundef zeroext 0) #12
  %302 = icmp slt i32 %301, 0
  br i1 %302, label %502, label %303

303:                                              ; preds = %297
  %304 = load i32, ptr %3, align 4
  %305 = icmp eq i32 %304, 2
  %306 = select i1 %305, i32 61997, i32 62509
  %307 = call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %306, i8 noundef zeroext 80) #12
  %308 = icmp slt i32 %307, 0
  br i1 %308, label %502, label %309

309:                                              ; preds = %303
  %310 = load ptr, ptr %52, align 4
  %311 = getelementptr inbounds %struct.stv090x_internal, ptr %310, i32 0, i32 5
  %312 = load i32, ptr %311, align 4
  %313 = icmp ugt i32 %312, 47
  br i1 %313, label %314, label %326

314:                                              ; preds = %309
  %315 = load i32, ptr %3, align 4
  %316 = icmp eq i32 %315, 2
  %317 = select i1 %316, i32 62013, i32 62525
  %318 = call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %317, i8 noundef zeroext -103) #12
  %319 = icmp slt i32 %318, 0
  br i1 %319, label %502, label %320

320:                                              ; preds = %314
  %321 = load i32, ptr %3, align 4
  %322 = icmp eq i32 %321, 2
  %323 = select i1 %322, i32 62041, i32 62553
  %324 = call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %323, i8 noundef zeroext -104) #12
  %325 = icmp slt i32 %324, 0
  br i1 %325, label %502, label %340

326:                                              ; preds = %309
  %327 = icmp ugt i32 %312, 31
  br i1 %327, label %328, label %340

328:                                              ; preds = %326
  %329 = load i32, ptr %3, align 4
  %330 = icmp eq i32 %329, 2
  %331 = select i1 %330, i32 62013, i32 62525
  %332 = call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %331, i8 noundef zeroext 106) #12
  %333 = icmp slt i32 %332, 0
  br i1 %333, label %502, label %334

334:                                              ; preds = %328
  %335 = load i32, ptr %3, align 4
  %336 = icmp eq i32 %335, 2
  %337 = select i1 %336, i32 62041, i32 62553
  %338 = call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %337, i8 noundef zeroext -107) #12
  %339 = icmp slt i32 %338, 0
  br i1 %339, label %502, label %340

340:                                              ; preds = %334, %326, %320
  %341 = load i32, ptr %206, align 4
  %342 = icmp ult i32 %341, 2000001
  br i1 %342, label %348, label %343

343:                                              ; preds = %340
  %344 = icmp ult i32 %341, 5000001
  br i1 %344, label %348, label %345

345:                                              ; preds = %343
  %346 = icmp ult i32 %341, 12000001
  %347 = select i1 %346, i32 3000, i32 5000
  br label %348

348:                                              ; preds = %345, %343, %340
  %349 = phi i32 [ 1000, %340 ], [ 2000, %343 ], [ %347, %345 ]
  %350 = load i32, ptr %79, align 4
  %351 = sdiv i32 %350, 1000
  %352 = udiv i32 %351, %349
  %353 = add nsw i32 %352, -1
  %354 = sdiv i32 %353, 2
  %355 = shl nuw nsw i32 %354, 1
  %356 = or i32 %355, 1
  %357 = icmp sgt i32 %356, 10
  %358 = sdiv i32 %350, 10000
  %359 = select i1 %357, i32 %358, i32 %349
  %360 = select i1 %357, i32 11, i32 %356
  %361 = icmp sgt i32 %360, 0
  br i1 %361, label %362, label %508

362:                                              ; preds = %348
  %363 = load i32, ptr %207, align 4
  %364 = add nsw i32 %360, -1
  br label %365

365:                                              ; preds = %497, %362
  %366 = phi i32 [ 0, %362 ], [ %418, %497 ]
  %367 = phi i32 [ 1, %362 ], [ %368, %497 ]
  %368 = phi i32 [ -1, %362 ], [ %367, %497 ]
  %369 = phi i32 [ 0, %362 ], [ %438, %497 ]
  %370 = phi i32 [ %363, %362 ], [ %453, %497 ]
  %371 = phi i32 [ 0, %362 ], [ %433, %497 ]
  %372 = load i32, ptr %3, align 4
  %373 = icmp eq i32 %372, 2
  %374 = select i1 %373, i32 61974, i32 62486
  %375 = call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %374, i8 noundef zeroext 95) #12
  %376 = icmp slt i32 %375, 0
  br i1 %376, label %502, label %377

377:                                              ; preds = %365
  %378 = load i32, ptr %3, align 4
  %379 = icmp eq i32 %378, 2
  %380 = select i1 %379, i32 62024, i32 62536
  %381 = call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %380, i8 noundef zeroext 0) #12
  %382 = icmp slt i32 %381, 0
  br i1 %382, label %502, label %383

383:                                              ; preds = %377
  %384 = load i32, ptr %3, align 4
  %385 = icmp eq i32 %384, 2
  %386 = select i1 %385, i32 62025, i32 62537
  %387 = call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %386, i8 noundef zeroext 0) #12
  %388 = icmp slt i32 %387, 0
  br i1 %388, label %502, label %389

389:                                              ; preds = %383
  %390 = load i32, ptr %3, align 4
  %391 = icmp eq i32 %390, 2
  %392 = select i1 %391, i32 62046, i32 62558
  %393 = call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %392, i8 noundef zeroext 0) #12
  %394 = icmp slt i32 %393, 0
  br i1 %394, label %502, label %395

395:                                              ; preds = %389
  %396 = load i32, ptr %3, align 4
  %397 = icmp eq i32 %396, 2
  %398 = select i1 %397, i32 62047, i32 62559
  %399 = call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %398, i8 noundef zeroext 0) #12
  %400 = icmp slt i32 %399, 0
  br i1 %400, label %502, label %401

401:                                              ; preds = %395
  %402 = load i32, ptr %3, align 4
  %403 = icmp eq i32 %402, 2
  %404 = select i1 %403, i32 61974, i32 62486
  %405 = call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %404, i8 noundef zeroext 64) #12
  %406 = icmp slt i32 %405, 0
  br i1 %406, label %502, label %407

407:                                              ; preds = %401
  call void @msleep(i32 noundef 50) #12
  br label %408

408:                                              ; preds = %408, %407
  %409 = phi i32 [ 0, %407 ], [ %430, %408 ]
  %410 = phi i32 [ %366, %407 ], [ %418, %408 ]
  %411 = phi i32 [ %371, %407 ], [ %429, %408 ]
  %412 = load i32, ptr %3, align 4
  %413 = icmp eq i32 %412, 2
  %414 = select i1 %413, i32 61970, i32 62482
  %415 = call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %414) #12
  store i32 %415, ptr %2, align 4
  %416 = lshr i32 %415, 6
  %417 = and i32 %416, 1
  %418 = add i32 %417, %410
  %419 = load i32, ptr %3, align 4
  %420 = icmp eq i32 %419, 2
  %421 = select i1 %420, i32 62006, i32 62518
  %422 = call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %421) #12
  %423 = shl i32 %422, 8
  %424 = load i32, ptr %3, align 4
  %425 = icmp eq i32 %424, 2
  %426 = select i1 %425, i32 62007, i32 62519
  %427 = call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %426) #12
  %428 = or i32 %427, %423
  %429 = add i32 %428, %411
  %430 = add nuw nsw i32 %409, 1
  %431 = icmp eq i32 %430, 10
  br i1 %431, label %432, label %408

432:                                              ; preds = %408
  %433 = udiv i32 %429, 10
  %434 = load ptr, ptr %52, align 4
  %435 = getelementptr inbounds %struct.stv090x_internal, ptr %434, i32 0, i32 4
  %436 = load i32, ptr %435, align 4
  %437 = call fastcc i32 @stv090x_get_srate(ptr noundef %0, i32 noundef %436) #12
  %438 = add nuw nsw i32 %369, 1
  %439 = icmp sgt i32 %418, 4
  br i1 %439, label %440, label %446

440:                                              ; preds = %432
  %441 = icmp ult i32 %433, %224
  %442 = icmp ult i32 %437, 50000000
  %443 = select i1 %441, i1 %442, i1 false
  %444 = icmp ugt i32 %437, 850000
  %445 = select i1 %443, i1 %444, i1 false
  br i1 %445, label %509, label %446

446:                                              ; preds = %440, %432
  %447 = icmp eq i32 %369, %364
  br i1 %447, label %508, label %448

448:                                              ; preds = %446
  %449 = icmp sgt i32 %368, 0
  %450 = mul i32 %438, %359
  %451 = sub i32 0, %450
  %452 = select i1 %449, i32 %450, i32 %451
  %453 = add i32 %452, %370
  %454 = call fastcc i32 @stv090x_i2c_gate_ctrl(ptr noundef %0, i32 noundef 1) #12
  %455 = icmp slt i32 %454, 0
  br i1 %455, label %502, label %456

456:                                              ; preds = %448
  %457 = load ptr, ptr %208, align 4
  %458 = getelementptr inbounds %struct.stv090x_config, ptr %457, i32 0, i32 19
  %459 = load ptr, ptr %458, align 4
  %460 = icmp eq ptr %459, null
  br i1 %460, label %466, label %461

461:                                              ; preds = %456
  %462 = call i32 %459(ptr noundef %205, i32 noundef %453) #12
  %463 = icmp slt i32 %462, 0
  br i1 %463, label %500, label %464

464:                                              ; preds = %461
  %465 = load ptr, ptr %208, align 4
  br label %466

466:                                              ; preds = %464, %456
  %467 = phi ptr [ %465, %464 ], [ %457, %456 ]
  %468 = getelementptr inbounds %struct.stv090x_config, ptr %467, i32 0, i32 21
  %469 = load ptr, ptr %468, align 4
  %470 = icmp eq ptr %469, null
  br i1 %470, label %475, label %471

471:                                              ; preds = %466
  %472 = load i32, ptr %209, align 4
  %473 = call i32 %469(ptr noundef %205, i32 noundef %472) #12
  %474 = icmp slt i32 %473, 0
  br i1 %474, label %500, label %475

475:                                              ; preds = %471, %466
  %476 = call fastcc i32 @stv090x_i2c_gate_ctrl(ptr noundef %0, i32 noundef 0) #12
  %477 = icmp slt i32 %476, 0
  br i1 %477, label %502, label %478

478:                                              ; preds = %475
  call void @msleep(i32 noundef 50) #12
  %479 = call fastcc i32 @stv090x_i2c_gate_ctrl(ptr noundef %0, i32 noundef 1) #12
  %480 = icmp slt i32 %479, 0
  br i1 %480, label %502, label %481

481:                                              ; preds = %478
  %482 = load ptr, ptr %208, align 4
  %483 = getelementptr inbounds %struct.stv090x_config, ptr %482, i32 0, i32 26
  %484 = load ptr, ptr %483, align 4
  %485 = icmp eq ptr %484, null
  br i1 %485, label %489, label %486

486:                                              ; preds = %481
  %487 = call i32 %484(ptr noundef %205, ptr noundef nonnull %2) #12
  %488 = icmp slt i32 %487, 0
  br i1 %488, label %500, label %489

489:                                              ; preds = %486, %481
  %490 = load i32, ptr @verbose, align 4
  %491 = icmp ugt i32 %490, 3
  br i1 %491, label %492, label %497

492:                                              ; preds = %489
  %493 = load i32, ptr %2, align 4
  %494 = icmp eq i32 %493, 0
  %495 = select i1 %494, ptr @.str.96, ptr @.str.92
  %496 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %495, ptr noundef nonnull @__func__.stv090x_srate_srch_coarse) #13
  br label %497

497:                                              ; preds = %492, %489
  %498 = call fastcc i32 @stv090x_i2c_gate_ctrl(ptr noundef %0, i32 noundef 0) #12
  %499 = icmp slt i32 %498, 0
  br i1 %499, label %502, label %365

500:                                              ; preds = %486, %471, %461
  %501 = call fastcc i32 @stv090x_i2c_gate_ctrl(ptr noundef %0, i32 noundef 0) #12
  br label %502

502:                                              ; preds = %500, %497, %478, %475, %448, %401, %395, %389, %383, %377, %365, %334, %328, %320, %314, %303, %297, %291, %285, %279, %273, %260, %254, %248, %242, %236, %219
  %503 = load i32, ptr @verbose, align 4
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %507, label %505

505:                                              ; preds = %502
  %506 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv090x_srate_srch_coarse) #13
  br label %507

507:                                              ; preds = %505, %502
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  br label %516

508:                                              ; preds = %446, %348
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  br label %515

509:                                              ; preds = %440
  %510 = load ptr, ptr %52, align 4
  %511 = getelementptr inbounds %struct.stv090x_internal, ptr %510, i32 0, i32 4
  %512 = load i32, ptr %511, align 4
  %513 = call fastcc i32 @stv090x_get_srate(ptr noundef %0, i32 noundef %512) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %515, label %516

515:                                              ; preds = %509, %508
  br label %812

516:                                              ; preds = %509, %507
  %517 = load ptr, ptr %52, align 4
  %518 = getelementptr inbounds %struct.stv090x_internal, ptr %517, i32 0, i32 4
  %519 = load i32, ptr %518, align 4
  %520 = load i32, ptr %3, align 4
  %521 = icmp eq i32 %520, 2
  %522 = select i1 %521, i32 62052, i32 62564
  %523 = call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %522) #12
  %524 = load i32, ptr %3, align 4
  %525 = icmp eq i32 %524, 2
  %526 = select i1 %525, i32 62053, i32 62565
  %527 = call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %526) #12
  %528 = load i32, ptr %3, align 4
  %529 = icmp eq i32 %528, 2
  %530 = select i1 %529, i32 62054, i32 62566
  %531 = call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %530) #12
  %532 = load i32, ptr %3, align 4
  %533 = icmp eq i32 %532, 2
  %534 = select i1 %533, i32 62055, i32 62567
  %535 = call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %534) #12
  %536 = shl i32 %523, 24
  %537 = shl i32 %527, 16
  %538 = and i32 %537, 16711680
  %539 = or i32 %538, %536
  %540 = shl i32 %531, 8
  %541 = and i32 %540, 65280
  %542 = or i32 %541, %536
  %543 = and i32 %535, 255
  %544 = or i32 %542, %543
  %545 = lshr i32 %519, 16
  %546 = ashr exact i32 %539, 16
  %547 = and i32 %519, 65535
  %548 = srem i32 %544, 65536
  %549 = mul nsw i32 %546, %545
  %550 = mul i32 %548, %545
  %551 = ashr i32 %550, 16
  %552 = mul nsw i32 %546, %547
  %553 = ashr i32 %552, 16
  %554 = add nsw i32 %553, %549
  %555 = add i32 %554, %551
  %556 = load i32, ptr %3, align 4
  %557 = icmp eq i32 %556, 2
  %558 = select i1 %557, i32 62028, i32 62540
  %559 = call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %558) #12
  %560 = shl i32 %559, 8
  %561 = load i32, ptr %3, align 4
  %562 = icmp eq i32 %561, 2
  %563 = select i1 %562, i32 62029, i32 62541
  %564 = call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %563) #12
  %565 = or i32 %564, %560
  %566 = udiv i32 %555, 10
  %567 = mul i32 %566, 13
  %568 = load i32, ptr %206, align 4
  %569 = icmp ult i32 %567, %568
  br i1 %569, label %846, label %570

570:                                              ; preds = %516
  %571 = load i32, ptr %3, align 4
  %572 = icmp eq i32 %571, 2
  %573 = select i1 %572, i32 61974, i32 62486
  %574 = call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %573, i8 noundef zeroext 31) #12
  %575 = icmp slt i32 %574, 0
  br i1 %575, label %802, label %576

576:                                              ; preds = %570
  %577 = load i32, ptr %3, align 4
  %578 = icmp eq i32 %577, 2
  %579 = select i1 %578, i32 62042, i32 62554
  %580 = call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %579, i8 noundef zeroext -63) #12
  %581 = icmp slt i32 %580, 0
  br i1 %581, label %802, label %582

582:                                              ; preds = %576
  %583 = load i32, ptr %3, align 4
  %584 = icmp eq i32 %583, 2
  %585 = select i1 %584, i32 62035, i32 62547
  %586 = call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %585, i8 noundef zeroext 32) #12
  %587 = icmp slt i32 %586, 0
  br i1 %587, label %802, label %588

588:                                              ; preds = %582
  %589 = load i32, ptr %3, align 4
  %590 = icmp eq i32 %589, 2
  %591 = select i1 %590, i32 62036, i32 62548
  %592 = call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %591, i8 noundef zeroext 0) #12
  %593 = icmp slt i32 %592, 0
  br i1 %593, label %802, label %594

594:                                              ; preds = %588
  %595 = load i32, ptr %3, align 4
  %596 = icmp eq i32 %595, 2
  %597 = select i1 %596, i32 62032, i32 62544
  %598 = call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %597, i8 noundef zeroext -46) #12
  %599 = icmp slt i32 %598, 0
  br i1 %599, label %802, label %600

600:                                              ; preds = %594
  %601 = load i32, ptr %3, align 4
  %602 = icmp eq i32 %601, 2
  %603 = select i1 %602, i32 61972, i32 62484
  %604 = call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %603) #12
  %605 = load i32, ptr %3, align 4
  %606 = icmp eq i32 %605, 2
  %607 = select i1 %606, i32 61972, i32 62484
  %608 = trunc i32 %604 to i8
  %609 = and i8 %608, -9
  %610 = call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %607, i8 noundef zeroext %609) #12
  %611 = icmp slt i32 %610, 0
  br i1 %611, label %802, label %612

612:                                              ; preds = %600
  %613 = load i32, ptr %3, align 4
  %614 = icmp eq i32 %613, 2
  %615 = select i1 %614, i32 61997, i32 62509
  %616 = call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %615, i8 noundef zeroext 56) #12
  %617 = icmp slt i32 %616, 0
  br i1 %617, label %802, label %618

618:                                              ; preds = %612
  %619 = load ptr, ptr %52, align 4
  %620 = getelementptr inbounds %struct.stv090x_internal, ptr %619, i32 0, i32 5
  %621 = load i32, ptr %620, align 4
  %622 = icmp ugt i32 %621, 47
  br i1 %622, label %623, label %629

623:                                              ; preds = %618
  %624 = load i32, ptr %3, align 4
  %625 = icmp eq i32 %624, 2
  %626 = select i1 %625, i32 62013, i32 62525
  %627 = call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %626, i8 noundef zeroext 121) #12
  %628 = icmp slt i32 %627, 0
  br i1 %628, label %802, label %637

629:                                              ; preds = %618
  %630 = icmp ugt i32 %621, 31
  br i1 %630, label %631, label %637

631:                                              ; preds = %629
  %632 = load i32, ptr %3, align 4
  %633 = icmp eq i32 %632, 2
  %634 = select i1 %633, i32 62013, i32 62525
  %635 = call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %634, i8 noundef zeroext 73) #12
  %636 = icmp slt i32 %635, 0
  br i1 %636, label %802, label %637

637:                                              ; preds = %631, %629, %623
  %638 = icmp ugt i32 %555, 3000000
  br i1 %638, label %639, label %707

639:                                              ; preds = %637
  %640 = udiv i32 %567, 1000
  %641 = shl i32 %640, 16
  %642 = load ptr, ptr %52, align 4
  %643 = getelementptr inbounds %struct.stv090x_internal, ptr %642, i32 0, i32 4
  %644 = load i32, ptr %643, align 4
  %645 = sdiv i32 %644, 1000
  %646 = udiv i32 %641, %645
  %647 = load i32, ptr %3, align 4
  %648 = icmp eq i32 %647, 2
  %649 = lshr i32 %646, 8
  %650 = trunc i32 %649 to i8
  %651 = and i8 %650, 127
  %652 = select i1 %648, i32 62048, i32 62560
  %653 = call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %652, i8 noundef zeroext %651) #12
  %654 = icmp slt i32 %653, 0
  br i1 %654, label %802, label %655

655:                                              ; preds = %639
  %656 = load i32, ptr %3, align 4
  %657 = icmp eq i32 %656, 2
  %658 = trunc i32 %646 to i8
  %659 = select i1 %657, i32 62049, i32 62561
  %660 = call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %659, i8 noundef zeroext %658) #12
  %661 = icmp slt i32 %660, 0
  br i1 %661, label %802, label %662

662:                                              ; preds = %655
  %663 = udiv i32 %555, 1300
  %664 = shl i32 %663, 16
  %665 = load ptr, ptr %52, align 4
  %666 = getelementptr inbounds %struct.stv090x_internal, ptr %665, i32 0, i32 4
  %667 = load i32, ptr %666, align 4
  %668 = sdiv i32 %667, 1000
  %669 = udiv i32 %664, %668
  %670 = load i32, ptr %3, align 4
  %671 = icmp eq i32 %670, 2
  %672 = lshr i32 %669, 8
  %673 = trunc i32 %672 to i8
  %674 = and i8 %673, 127
  %675 = select i1 %671, i32 62050, i32 62562
  %676 = call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %675, i8 noundef zeroext %674) #12
  %677 = icmp slt i32 %676, 0
  br i1 %677, label %802, label %678

678:                                              ; preds = %662
  %679 = load i32, ptr %3, align 4
  %680 = icmp eq i32 %679, 2
  %681 = trunc i32 %669 to i8
  %682 = select i1 %680, i32 62051, i32 62563
  %683 = call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %682, i8 noundef zeroext %681) #12
  %684 = icmp slt i32 %683, 0
  br i1 %684, label %802, label %685

685:                                              ; preds = %678
  %686 = udiv i32 %555, 1000
  %687 = shl i32 %686, 16
  %688 = load ptr, ptr %52, align 4
  %689 = getelementptr inbounds %struct.stv090x_internal, ptr %688, i32 0, i32 4
  %690 = load i32, ptr %689, align 4
  %691 = sdiv i32 %690, 1000
  %692 = udiv i32 %687, %691
  %693 = load i32, ptr %3, align 4
  %694 = icmp eq i32 %693, 2
  %695 = lshr i32 %692, 8
  %696 = trunc i32 %695 to i8
  %697 = select i1 %694, i32 62046, i32 62558
  %698 = call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %697, i8 noundef zeroext %696) #12
  %699 = icmp slt i32 %698, 0
  br i1 %699, label %802, label %700

700:                                              ; preds = %685
  %701 = load i32, ptr %3, align 4
  %702 = icmp eq i32 %701, 2
  %703 = trunc i32 %692 to i8
  %704 = select i1 %702, i32 62047, i32 62559
  %705 = call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %704, i8 noundef zeroext %703) #12
  %706 = icmp slt i32 %705, 0
  br i1 %706, label %802, label %775

707:                                              ; preds = %637
  %708 = udiv i32 %567, 100
  %709 = shl i32 %708, 16
  %710 = load ptr, ptr %52, align 4
  %711 = getelementptr inbounds %struct.stv090x_internal, ptr %710, i32 0, i32 4
  %712 = load i32, ptr %711, align 4
  %713 = sdiv i32 %712, 100
  %714 = udiv i32 %709, %713
  %715 = load i32, ptr %3, align 4
  %716 = icmp eq i32 %715, 2
  %717 = lshr i32 %714, 8
  %718 = trunc i32 %717 to i8
  %719 = and i8 %718, 127
  %720 = select i1 %716, i32 62048, i32 62560
  %721 = call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %720, i8 noundef zeroext %719) #12
  %722 = icmp slt i32 %721, 0
  br i1 %722, label %802, label %723

723:                                              ; preds = %707
  %724 = load i32, ptr %3, align 4
  %725 = icmp eq i32 %724, 2
  %726 = trunc i32 %714 to i8
  %727 = select i1 %725, i32 62049, i32 62561
  %728 = call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %727, i8 noundef zeroext %726) #12
  %729 = icmp slt i32 %728, 0
  br i1 %729, label %802, label %730

730:                                              ; preds = %723
  %731 = udiv i32 %555, 140
  %732 = shl nuw nsw i32 %731, 16
  %733 = load ptr, ptr %52, align 4
  %734 = getelementptr inbounds %struct.stv090x_internal, ptr %733, i32 0, i32 4
  %735 = load i32, ptr %734, align 4
  %736 = sdiv i32 %735, 100
  %737 = udiv i32 %732, %736
  %738 = load i32, ptr %3, align 4
  %739 = icmp eq i32 %738, 2
  %740 = lshr i32 %737, 8
  %741 = trunc i32 %740 to i8
  %742 = and i8 %741, 127
  %743 = select i1 %739, i32 62050, i32 62562
  %744 = call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %743, i8 noundef zeroext %742) #12
  %745 = icmp slt i32 %744, 0
  br i1 %745, label %802, label %746

746:                                              ; preds = %730
  %747 = load i32, ptr %3, align 4
  %748 = icmp eq i32 %747, 2
  %749 = trunc i32 %737 to i8
  %750 = select i1 %748, i32 62051, i32 62563
  %751 = call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %750, i8 noundef zeroext %749) #12
  %752 = icmp slt i32 %751, 0
  br i1 %752, label %802, label %753

753:                                              ; preds = %746
  %754 = udiv i32 %555, 100
  %755 = shl nuw nsw i32 %754, 16
  %756 = load ptr, ptr %52, align 4
  %757 = getelementptr inbounds %struct.stv090x_internal, ptr %756, i32 0, i32 4
  %758 = load i32, ptr %757, align 4
  %759 = sdiv i32 %758, 100
  %760 = udiv i32 %755, %759
  %761 = load i32, ptr %3, align 4
  %762 = icmp eq i32 %761, 2
  %763 = lshr i32 %760, 8
  %764 = trunc i32 %763 to i8
  %765 = select i1 %762, i32 62046, i32 62558
  %766 = call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %765, i8 noundef zeroext %764) #12
  %767 = icmp slt i32 %766, 0
  br i1 %767, label %802, label %768

768:                                              ; preds = %753
  %769 = load i32, ptr %3, align 4
  %770 = icmp eq i32 %769, 2
  %771 = trunc i32 %760 to i8
  %772 = select i1 %770, i32 62047, i32 62559
  %773 = call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %772, i8 noundef zeroext %771) #12
  %774 = icmp slt i32 %773, 0
  br i1 %774, label %802, label %775

775:                                              ; preds = %768, %700
  %776 = load i32, ptr %3, align 4
  %777 = icmp eq i32 %776, 2
  %778 = select i1 %777, i32 61975, i32 62487
  %779 = call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %778, i8 noundef zeroext 32) #12
  %780 = icmp slt i32 %779, 0
  br i1 %780, label %802, label %781

781:                                              ; preds = %775
  %782 = load i32, ptr %3, align 4
  %783 = icmp eq i32 %782, 2
  %784 = lshr i32 %565, 8
  %785 = trunc i32 %784 to i8
  %786 = select i1 %783, i32 62024, i32 62536
  %787 = call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %786, i8 noundef zeroext %785) #12
  %788 = icmp slt i32 %787, 0
  br i1 %788, label %802, label %789

789:                                              ; preds = %781
  %790 = load i32, ptr %3, align 4
  %791 = icmp eq i32 %790, 2
  %792 = trunc i32 %564 to i8
  %793 = select i1 %791, i32 62025, i32 62537
  %794 = call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %793, i8 noundef zeroext %792) #12
  %795 = icmp slt i32 %794, 0
  br i1 %795, label %802, label %796

796:                                              ; preds = %789
  %797 = load i32, ptr %3, align 4
  %798 = icmp eq i32 %797, 2
  %799 = select i1 %798, i32 61974, i32 62486
  %800 = call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %799, i8 noundef zeroext 21) #12
  %801 = icmp slt i32 %800, 0
  br i1 %801, label %802, label %807

802:                                              ; preds = %796, %789, %781, %775, %768, %753, %746, %730, %723, %707, %700, %685, %678, %662, %655, %639, %631, %623, %612, %600, %594, %588, %582, %576, %570
  %803 = load i32, ptr @verbose, align 4
  %804 = icmp eq i32 %803, 0
  br i1 %804, label %809, label %805

805:                                              ; preds = %802
  %806 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv090x_srate_srch_fine) #13
  br label %809

807:                                              ; preds = %796
  %808 = icmp eq i32 %555, 0
  br i1 %808, label %846, label %809

809:                                              ; preds = %807, %805, %802
  call fastcc void @stv090x_get_lock_tmg(ptr noundef %0)
  %810 = load i32, ptr %210, align 4
  %811 = call fastcc i32 @stv090x_get_dmdlock(ptr noundef %0, i32 noundef %810)
  br label %846

812:                                              ; preds = %812, %515
  %813 = phi i32 [ %827, %812 ], [ %213, %515 ]
  %814 = phi i32 [ %839, %812 ], [ 0, %515 ]
  %815 = phi i32 [ %830, %812 ], [ 0, %515 ]
  %816 = phi i32 [ %838, %812 ], [ 0, %515 ]
  %817 = load i32, ptr %3, align 4
  %818 = icmp eq i32 %817, 2
  %819 = select i1 %818, i32 62006, i32 62518
  %820 = call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %819)
  %821 = shl i32 %820, 8
  %822 = load i32, ptr %3, align 4
  %823 = icmp eq i32 %822, 2
  %824 = select i1 %823, i32 62007, i32 62519
  %825 = call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %824)
  %826 = or i32 %825, %821
  %827 = add i32 %826, %813
  %828 = icmp ugt i32 %827, 65279
  %829 = zext i1 %828 to i32
  %830 = add i32 %815, %829
  %831 = load i32, ptr %3, align 4
  %832 = icmp eq i32 %831, 2
  %833 = select i1 %832, i32 61971, i32 62483
  %834 = call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %833)
  %835 = and i32 %834, 130
  %836 = icmp eq i32 %835, 130
  %837 = zext i1 %836 to i32
  %838 = add i32 %816, %837
  %839 = add nuw nsw i32 %814, 1
  %840 = icmp eq i32 %839, 10
  br i1 %840, label %841, label %812

841:                                              ; preds = %812
  %842 = icmp sgt i32 %838, 7
  %843 = icmp sgt i32 %830, 7
  %844 = select i1 %842, i1 true, i1 %843
  %845 = zext i1 %844 to i32
  br label %846

846:                                              ; preds = %841, %809, %807, %516
  %847 = phi i32 [ 0, %809 ], [ %845, %841 ], [ 0, %807 ], [ 0, %516 ]
  %848 = phi i32 [ %811, %809 ], [ 0, %841 ], [ 0, %807 ], [ 0, %516 ]
  %849 = phi i32 [ %213, %809 ], [ %827, %841 ], [ %213, %807 ], [ %213, %516 ]
  %850 = add i8 %212, -20
  %851 = icmp ugt i8 %850, 9
  %852 = icmp eq i32 %848, 0
  %853 = select i1 %851, i1 %852, i1 false
  %854 = icmp eq i32 %847, 0
  %855 = select i1 %853, i1 %854, i1 false
  br i1 %855, label %211, label %861

856:                                              ; preds = %211, %198, %192, %186, %180, %169, %166, %163
  %857 = load i32, ptr @verbose, align 4
  %858 = icmp eq i32 %857, 0
  br i1 %858, label %861, label %859

859:                                              ; preds = %856
  %860 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv090x_blind_search) #13
  br label %861

861:                                              ; preds = %859, %856, %846, %152, %150, %147, %73
  %862 = phi i32 [ 0, %152 ], [ -1, %856 ], [ -1, %859 ], [ 0, %147 ], [ 0, %150 ], [ 0, %73 ], [ %848, %846 ]
  ret i32 %862
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stv090x_get_coldlock(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 19
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %6, 9999999
  %8 = sdiv i32 %1, 3
  %9 = sdiv i32 %1, 2
  %10 = select i1 %7, i32 %8, i32 %9
  %11 = tail call fastcc i32 @stv090x_get_dmdlock(ptr noundef %0, i32 noundef %10)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %165

13:                                               ; preds = %2
  %14 = load i32, ptr %5, align 4
  %15 = icmp ugt i32 %14, 9999999
  br i1 %15, label %16, label %34

16:                                               ; preds = %13
  %17 = tail call fastcc i32 @stv090x_chk_tmg(ptr noundef %0)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %165, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 2
  %23 = select i1 %22, i32 61974, i32 62486
  %24 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %23, i8 noundef zeroext 31)
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %160, label %26

26:                                               ; preds = %19
  %27 = load i32, ptr %20, align 4
  %28 = icmp eq i32 %27, 2
  %29 = select i1 %28, i32 61974, i32 62486
  %30 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %29, i8 noundef zeroext 21)
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %160, label %32

32:                                               ; preds = %26
  %33 = tail call fastcc i32 @stv090x_get_dmdlock(ptr noundef %0, i32 noundef %1)
  br label %165

34:                                               ; preds = %13
  %35 = icmp ult i32 %14, 4000001
  %36 = icmp ult i32 %14, 7000001
  %37 = select i1 %36, i32 2000, i32 3000
  %38 = select i1 %35, i32 1000, i32 %37
  %39 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 21
  %40 = load i32, ptr %39, align 4
  %41 = sdiv i32 %40, 1000
  %42 = sdiv i32 %41, %38
  %43 = trunc i32 %42 to i16
  %44 = sdiv i16 %43, 2
  %45 = sext i16 %44 to i32
  %46 = shl nsw i32 %45, 1
  %47 = icmp slt i16 %43, -3
  %48 = tail call i32 @llvm.smin.i32(i32 %46, i32 10)
  %49 = add nsw i32 %48, 2
  %50 = select i1 %47, i32 2, i32 %49
  %51 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 18
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 15
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 1
  %56 = select i1 %55, i32 25, i32 35
  %57 = icmp eq i32 %54, 2
  %58 = select i1 %57, i32 20, i32 %56
  %59 = mul nuw nsw i32 %58, %14
  %60 = udiv i32 %59, 100
  %61 = shl nuw nsw i32 %14, 1
  %62 = add nuw nsw i32 %60, %61
  %63 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 20
  store i32 %62, ptr %63, align 4
  %64 = icmp sgt i32 %50, 0
  br i1 %64, label %65, label %165

65:                                               ; preds = %34
  %66 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 5
  %67 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 1
  br label %68

68:                                               ; preds = %151, %65
  %69 = phi i32 [ 1, %65 ], [ %154, %151 ]
  %70 = phi i32 [ 1, %65 ], [ %153, %151 ]
  %71 = phi i32 [ %52, %65 ], [ %76, %151 ]
  %72 = icmp sgt i32 %70, 0
  %73 = mul i32 %69, %38
  %74 = sub i32 0, %73
  %75 = select i1 %72, i32 %73, i32 %74
  %76 = add i32 %75, %71
  %77 = call fastcc i32 @stv090x_i2c_gate_ctrl(ptr noundef %0, i32 noundef 1)
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %160, label %79

79:                                               ; preds = %68
  %80 = load ptr, ptr %66, align 4
  %81 = getelementptr inbounds %struct.stv090x_config, ptr %80, i32 0, i32 19
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %89, label %84

84:                                               ; preds = %79
  %85 = call i32 %82(ptr noundef %4, i32 noundef %76) #12
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %158, label %87

87:                                               ; preds = %84
  %88 = load ptr, ptr %66, align 4
  br label %89

89:                                               ; preds = %87, %79
  %90 = phi ptr [ %88, %87 ], [ %80, %79 ]
  %91 = getelementptr inbounds %struct.stv090x_config, ptr %90, i32 0, i32 21
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %98, label %94

94:                                               ; preds = %89
  %95 = load i32, ptr %63, align 4
  %96 = call i32 %92(ptr noundef %4, i32 noundef %95) #12
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %158, label %98

98:                                               ; preds = %94, %89
  %99 = call fastcc i32 @stv090x_i2c_gate_ctrl(ptr noundef %0, i32 noundef 0)
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %160, label %101

101:                                              ; preds = %98
  call void @msleep(i32 noundef 50) #12
  %102 = call fastcc i32 @stv090x_i2c_gate_ctrl(ptr noundef %0, i32 noundef 1)
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %160, label %104

104:                                              ; preds = %101
  %105 = load ptr, ptr %66, align 4
  %106 = getelementptr inbounds %struct.stv090x_config, ptr %105, i32 0, i32 26
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %120, label %109

109:                                              ; preds = %104
  %110 = call i32 %107(ptr noundef %4, ptr noundef nonnull %3) #12
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %158, label %112

112:                                              ; preds = %109
  %113 = load i32, ptr @verbose, align 4
  %114 = icmp ugt i32 %113, 3
  br i1 %114, label %115, label %120

115:                                              ; preds = %112
  %116 = load i32, ptr %3, align 4
  %117 = icmp eq i32 %116, 0
  %118 = select i1 %117, ptr @.str.96, ptr @.str.92
  %119 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %118, ptr noundef nonnull @__func__.stv090x_get_coldlock) #13
  br label %120

120:                                              ; preds = %115, %112, %104
  %121 = call fastcc i32 @stv090x_i2c_gate_ctrl(ptr noundef %0, i32 noundef 0)
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %160, label %123

123:                                              ; preds = %120
  %124 = load i32, ptr %67, align 4
  %125 = icmp eq i32 %124, 2
  %126 = select i1 %125, i32 61974, i32 62486
  %127 = call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %126, i8 noundef zeroext 28)
  %128 = load i32, ptr %67, align 4
  %129 = icmp eq i32 %128, 2
  %130 = select i1 %129, i32 62024, i32 62536
  %131 = call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %130, i8 noundef zeroext 0)
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %160, label %133

133:                                              ; preds = %123
  %134 = load i32, ptr %67, align 4
  %135 = icmp eq i32 %134, 2
  %136 = select i1 %135, i32 62025, i32 62537
  %137 = call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %136, i8 noundef zeroext 0)
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %160, label %139

139:                                              ; preds = %133
  %140 = load i32, ptr %67, align 4
  %141 = icmp eq i32 %140, 2
  %142 = select i1 %141, i32 61974, i32 62486
  %143 = call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %142, i8 noundef zeroext 31)
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %160, label %145

145:                                              ; preds = %139
  %146 = load i32, ptr %67, align 4
  %147 = icmp eq i32 %146, 2
  %148 = select i1 %147, i32 61974, i32 62486
  %149 = call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %148, i8 noundef zeroext 21)
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %160, label %151

151:                                              ; preds = %145
  %152 = call fastcc i32 @stv090x_get_dmdlock(ptr noundef %0, i32 noundef %8)
  %153 = sub i32 0, %70
  %154 = add nuw nsw i32 %69, 1
  %155 = icmp slt i32 %69, %50
  %156 = icmp eq i32 %152, 0
  %157 = select i1 %155, i1 %156, i1 false
  br i1 %157, label %68, label %165

158:                                              ; preds = %109, %94, %84
  %159 = call fastcc i32 @stv090x_i2c_gate_ctrl(ptr noundef %0, i32 noundef 0)
  br label %160

160:                                              ; preds = %158, %145, %139, %133, %123, %120, %101, %98, %68, %26, %19
  %161 = load i32, ptr @verbose, align 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %165, label %163

163:                                              ; preds = %160
  %164 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv090x_get_coldlock) #13
  br label %165

165:                                              ; preds = %163, %160, %151, %34, %32, %16, %2
  %166 = phi i32 [ %33, %32 ], [ 1, %2 ], [ 0, %16 ], [ -1, %160 ], [ -1, %163 ], [ 0, %34 ], [ %152, %151 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret i32 %166
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stv090x_get_dmdlock(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %34

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 1
  br label %6

6:                                                ; preds = %31, %4
  %7 = phi i32 [ 0, %4 ], [ %32, %31 ]
  %8 = load i32, ptr %5, align 4
  %9 = icmp eq i32 %8, 2
  %10 = select i1 %9, i32 61979, i32 62491
  %11 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %10)
  %12 = and i32 %11, 64
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %6
  %15 = load i32, ptr @verbose, align 4
  %16 = icmp ugt i32 %15, 3
  br i1 %16, label %17, label %31

17:                                               ; preds = %14
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef nonnull @__func__.stv090x_get_dmdlock) #13
  br label %31

19:                                               ; preds = %6
  %20 = load i32, ptr %5, align 4
  %21 = icmp eq i32 %20, 2
  %22 = select i1 %21, i32 61970, i32 62482
  %23 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %22)
  %24 = and i32 %23, 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %19
  %27 = load i32, ptr @verbose, align 4
  %28 = icmp ugt i32 %27, 3
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, ptr noundef nonnull @__func__.stv090x_get_dmdlock) #13
  br label %34

31:                                               ; preds = %19, %17, %14
  tail call void @msleep(i32 noundef 10) #12
  %32 = add i32 %7, 10
  %33 = icmp slt i32 %32, %1
  br i1 %33, label %6, label %34

34:                                               ; preds = %31, %29, %26, %2
  %35 = phi i32 [ 0, %2 ], [ 1, %26 ], [ 1, %29 ], [ 0, %31 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stv090x_chk_tmg(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 2
  %5 = select i1 %4, i32 62013, i32 62525
  %6 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %5)
  %7 = trunc i32 %6 to i8
  %8 = load i32, ptr %2, align 4
  %9 = icmp eq i32 %8, 2
  %10 = select i1 %9, i32 62035, i32 62547
  %11 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %10)
  %12 = trunc i32 %11 to i8
  %13 = load i32, ptr %2, align 4
  %14 = icmp eq i32 %13, 2
  %15 = select i1 %14, i32 62036, i32 62548
  %16 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %15)
  %17 = trunc i32 %16 to i8
  %18 = load i32, ptr %2, align 4
  %19 = icmp eq i32 %18, 2
  %20 = select i1 %19, i32 62035, i32 62547
  %21 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %20, i8 noundef zeroext 32)
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %190, label %23

23:                                               ; preds = %1
  %24 = load i32, ptr %2, align 4
  %25 = icmp eq i32 %24, 2
  %26 = select i1 %25, i32 62036, i32 62548
  %27 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %26, i8 noundef zeroext 0)
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %190, label %29

29:                                               ; preds = %23
  %30 = load i32, ptr %2, align 4
  %31 = icmp eq i32 %30, 2
  %32 = select i1 %31, i32 61972, i32 62484
  %33 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %32)
  %34 = load i32, ptr %2, align 4
  %35 = icmp eq i32 %34, 2
  %36 = select i1 %35, i32 61972, i32 62484
  %37 = trunc i32 %33 to i8
  %38 = and i8 %37, -9
  %39 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %36, i8 noundef zeroext %38)
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %190, label %41

41:                                               ; preds = %29
  %42 = load i32, ptr %2, align 4
  %43 = icmp eq i32 %42, 2
  %44 = select i1 %43, i32 62033, i32 62545
  %45 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %44, i8 noundef zeroext -128)
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %190, label %47

47:                                               ; preds = %41
  %48 = load i32, ptr %2, align 4
  %49 = icmp eq i32 %48, 2
  %50 = select i1 %49, i32 62034, i32 62546
  %51 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %50, i8 noundef zeroext 64)
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %190, label %53

53:                                               ; preds = %47
  %54 = load i32, ptr %2, align 4
  %55 = icmp eq i32 %54, 2
  %56 = select i1 %55, i32 62013, i32 62525
  %57 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %56, i8 noundef zeroext 0)
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %190, label %59

59:                                               ; preds = %53
  %60 = load i32, ptr %2, align 4
  %61 = icmp eq i32 %60, 2
  %62 = select i1 %61, i32 62024, i32 62536
  %63 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %62, i8 noundef zeroext 0)
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %190, label %65

65:                                               ; preds = %59
  %66 = load i32, ptr %2, align 4
  %67 = icmp eq i32 %66, 2
  %68 = select i1 %67, i32 62025, i32 62537
  %69 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %68, i8 noundef zeroext 0)
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %190, label %71

71:                                               ; preds = %65
  %72 = load i32, ptr %2, align 4
  %73 = icmp eq i32 %72, 2
  %74 = select i1 %73, i32 61997, i32 62509
  %75 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %74, i8 noundef zeroext 101)
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %190, label %77

77:                                               ; preds = %71
  %78 = load i32, ptr %2, align 4
  %79 = icmp eq i32 %78, 2
  %80 = select i1 %79, i32 61974, i32 62486
  %81 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %80, i8 noundef zeroext 24)
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %190, label %83

83:                                               ; preds = %77
  tail call void @msleep(i32 noundef 10) #12
  %84 = load i32, ptr %2, align 4
  %85 = icmp eq i32 %84, 2
  %86 = select i1 %85, i32 61970, i32 62482
  %87 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %86)
  %88 = lshr i32 %87, 6
  %89 = and i32 %88, 1
  tail call void @msleep(i32 noundef 1) #12
  %90 = load i32, ptr %2, align 4
  %91 = icmp eq i32 %90, 2
  %92 = select i1 %91, i32 61970, i32 62482
  %93 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %92)
  %94 = lshr i32 %93, 6
  %95 = and i32 %94, 1
  %96 = add nuw nsw i32 %95, %89
  tail call void @msleep(i32 noundef 1) #12
  %97 = load i32, ptr %2, align 4
  %98 = icmp eq i32 %97, 2
  %99 = select i1 %98, i32 61970, i32 62482
  %100 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %99)
  %101 = lshr i32 %100, 6
  %102 = and i32 %101, 1
  %103 = add nuw nsw i32 %102, %96
  tail call void @msleep(i32 noundef 1) #12
  %104 = load i32, ptr %2, align 4
  %105 = icmp eq i32 %104, 2
  %106 = select i1 %105, i32 61970, i32 62482
  %107 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %106)
  %108 = lshr i32 %107, 6
  %109 = and i32 %108, 1
  %110 = add nuw nsw i32 %109, %103
  tail call void @msleep(i32 noundef 1) #12
  %111 = load i32, ptr %2, align 4
  %112 = icmp eq i32 %111, 2
  %113 = select i1 %112, i32 61970, i32 62482
  %114 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %113)
  %115 = lshr i32 %114, 6
  %116 = and i32 %115, 1
  %117 = add nuw nsw i32 %116, %110
  tail call void @msleep(i32 noundef 1) #12
  %118 = load i32, ptr %2, align 4
  %119 = icmp eq i32 %118, 2
  %120 = select i1 %119, i32 61970, i32 62482
  %121 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %120)
  %122 = lshr i32 %121, 6
  %123 = and i32 %122, 1
  %124 = add nuw nsw i32 %123, %117
  tail call void @msleep(i32 noundef 1) #12
  %125 = load i32, ptr %2, align 4
  %126 = icmp eq i32 %125, 2
  %127 = select i1 %126, i32 61970, i32 62482
  %128 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %127)
  %129 = lshr i32 %128, 6
  %130 = and i32 %129, 1
  %131 = add nuw nsw i32 %130, %124
  tail call void @msleep(i32 noundef 1) #12
  %132 = load i32, ptr %2, align 4
  %133 = icmp eq i32 %132, 2
  %134 = select i1 %133, i32 61970, i32 62482
  %135 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %134)
  %136 = lshr i32 %135, 6
  %137 = and i32 %136, 1
  %138 = add i32 %137, %131
  tail call void @msleep(i32 noundef 1) #12
  %139 = load i32, ptr %2, align 4
  %140 = icmp eq i32 %139, 2
  %141 = select i1 %140, i32 61970, i32 62482
  %142 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %141)
  %143 = lshr i32 %142, 6
  %144 = and i32 %143, 1
  %145 = add i32 %144, %138
  tail call void @msleep(i32 noundef 1) #12
  %146 = load i32, ptr %2, align 4
  %147 = icmp eq i32 %146, 2
  %148 = select i1 %147, i32 61970, i32 62482
  %149 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %148)
  %150 = lshr i32 %149, 6
  %151 = and i32 %150, 1
  %152 = add i32 %151, %145
  tail call void @msleep(i32 noundef 1) #12
  %153 = icmp sgt i32 %152, 2
  %154 = zext i1 %153 to i32
  %155 = load i32, ptr %2, align 4
  %156 = icmp eq i32 %155, 2
  %157 = select i1 %156, i32 61997, i32 62509
  %158 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %157, i8 noundef zeroext 56)
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %190, label %160

160:                                              ; preds = %83
  %161 = load i32, ptr %2, align 4
  %162 = icmp eq i32 %161, 2
  %163 = select i1 %162, i32 62033, i32 62545
  %164 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %163, i8 noundef zeroext -120)
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %190, label %166

166:                                              ; preds = %160
  %167 = load i32, ptr %2, align 4
  %168 = icmp eq i32 %167, 2
  %169 = select i1 %168, i32 62034, i32 62546
  %170 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %169, i8 noundef zeroext 104)
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %190, label %172

172:                                              ; preds = %166
  %173 = load i32, ptr %2, align 4
  %174 = icmp eq i32 %173, 2
  %175 = select i1 %174, i32 62013, i32 62525
  %176 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %175, i8 noundef zeroext %7)
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %190, label %178

178:                                              ; preds = %172
  %179 = load i32, ptr %2, align 4
  %180 = icmp eq i32 %179, 2
  %181 = select i1 %180, i32 62035, i32 62547
  %182 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %181, i8 noundef zeroext %12)
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %190, label %184

184:                                              ; preds = %178
  %185 = load i32, ptr %2, align 4
  %186 = icmp eq i32 %185, 2
  %187 = select i1 %186, i32 62036, i32 62548
  %188 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %187, i8 noundef zeroext %17)
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %195

190:                                              ; preds = %184, %178, %172, %166, %160, %83, %77, %71, %65, %59, %53, %47, %41, %29, %23, %1
  %191 = load i32, ptr @verbose, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %195, label %193

193:                                              ; preds = %190
  %194 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv090x_chk_tmg) #13
  br label %195

195:                                              ; preds = %193, %190, %184
  %196 = phi i32 [ %154, %184 ], [ -1, %190 ], [ -1, %193 ]
  ret i32 %196
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stv090x_sw_algo(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 19
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 21
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.stv090x_internal, ptr %7, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = sdiv i32 %9, 1000
  %11 = sdiv i32 %3, %10
  %12 = shl i32 %11, 16
  %13 = sdiv i32 %12, 1000
  %14 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 12
  %15 = load i32, ptr %14, align 4
  switch i32 %15, label %20 [
    i32 1, label %16
    i32 0, label %16
    i32 2, label %18
  ]

16:                                               ; preds = %1, %1
  %17 = mul nsw i32 %13, 3
  br label %22

18:                                               ; preds = %1
  %19 = shl nsw i32 %13, 2
  br label %22

20:                                               ; preds = %1
  %21 = mul nsw i32 %13, 3
  br label %22

22:                                               ; preds = %20, %18, %16
  %23 = phi i32 [ 687500, %20 ], [ 687500, %18 ], [ 550000, %16 ]
  %24 = phi i32 [ %21, %20 ], [ %19, %18 ], [ %17, %16 ]
  %25 = icmp sgt i32 %3, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = udiv i32 %3, 1000
  %28 = udiv i32 %23, %27
  br label %29

29:                                               ; preds = %26, %22
  %30 = phi i32 [ %28, %26 ], [ %23, %22 ]
  %31 = sdiv i32 %24, 100
  %32 = sdiv i32 %5, 1000
  %33 = sdiv i32 %5, 10000
  %34 = add nsw i32 %32, %33
  %35 = sdiv i32 %34, 2
  %36 = shl i32 %35, 16
  %37 = sdiv i32 %36, %10
  %38 = tail call i32 @llvm.smin.i32(i32 %37, i32 16384) #12
  %39 = icmp sgt i32 %31, %38
  %40 = icmp slt i32 %24, -99
  %41 = or i1 %40, %39
  %42 = sdiv i32 %38, 2
  %43 = select i1 %41, i32 %42, i32 %31
  %44 = sdiv i32 %38, %43
  %45 = add i32 %44, 1
  %46 = icmp ugt i32 %45, 100
  %47 = sdiv i32 %38, 100
  %48 = select i1 %46, i32 %47, i32 %43
  %49 = tail call i32 @llvm.umin.i32(i32 %45, i32 100) #12
  %50 = tail call i32 @llvm.smin.i32(i32 %30, i32 100) #12
  switch i32 %15, label %87 [
    i32 1, label %51
    i32 0, label %51
    i32 2, label %69
  ]

51:                                               ; preds = %29, %29
  %52 = getelementptr inbounds %struct.stv090x_internal, ptr %7, i32 0, i32 5
  %53 = load i32, ptr %52, align 4
  %54 = icmp ugt i32 %53, 31
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 2
  %59 = select i1 %58, i32 62013, i32 62525
  %60 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %59, i8 noundef zeroext 59)
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %290, label %62

62:                                               ; preds = %55, %51
  %63 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 2
  %66 = select i1 %65, i32 61972, i32 62484
  %67 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %66, i8 noundef zeroext 73)
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %290, label %111

69:                                               ; preds = %29
  %70 = getelementptr inbounds %struct.stv090x_internal, ptr %7, i32 0, i32 5
  %71 = load i32, ptr %70, align 4
  %72 = icmp ugt i32 %71, 31
  br i1 %72, label %73, label %80

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 1
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, 2
  %77 = select i1 %76, i32 61985, i32 62497
  %78 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %77, i8 noundef zeroext 121)
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %290, label %80

80:                                               ; preds = %73, %69
  %81 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 1
  %82 = load i32, ptr %81, align 4
  %83 = icmp eq i32 %82, 2
  %84 = select i1 %83, i32 61972, i32 62484
  %85 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %84, i8 noundef zeroext -119)
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %290, label %111

87:                                               ; preds = %29
  %88 = getelementptr inbounds %struct.stv090x_internal, ptr %7, i32 0, i32 5
  %89 = load i32, ptr %88, align 4
  %90 = icmp ugt i32 %89, 31
  br i1 %90, label %91, label %104

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 1
  %93 = load i32, ptr %92, align 4
  %94 = icmp eq i32 %93, 2
  %95 = select i1 %94, i32 62013, i32 62525
  %96 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %95, i8 noundef zeroext 59)
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %290, label %98

98:                                               ; preds = %91
  %99 = load i32, ptr %92, align 4
  %100 = icmp eq i32 %99, 2
  %101 = select i1 %100, i32 61985, i32 62497
  %102 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %101, i8 noundef zeroext 121)
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %290, label %104

104:                                              ; preds = %98, %87
  %105 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 1
  %106 = load i32, ptr %105, align 4
  %107 = icmp eq i32 %106, 2
  %108 = select i1 %107, i32 61972, i32 62484
  %109 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %108, i8 noundef zeroext -55)
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %290, label %111

111:                                              ; preds = %104, %80, %62
  %112 = phi i1 [ true, %104 ], [ false, %80 ], [ true, %62 ]
  %113 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 1
  %114 = mul i32 %48, -2
  %115 = shl nsw i32 %48, 1
  br label %116

116:                                              ; preds = %284, %111
  %117 = phi i1 [ true, %284 ], [ false, %111 ]
  %118 = phi i1 [ false, %284 ], [ true, %111 ]
  %119 = load i32, ptr %4, align 4
  %120 = sdiv i32 %119, 1000
  %121 = sdiv i32 %119, 10000
  %122 = add nsw i32 %120, %121
  %123 = shl i32 %122, 16
  %124 = sdiv i32 %123, 2
  %125 = load ptr, ptr %6, align 4
  %126 = getelementptr inbounds %struct.stv090x_internal, ptr %125, i32 0, i32 4
  %127 = load i32, ptr %126, align 4
  %128 = sdiv i32 %127, 1000
  %129 = sdiv i32 %124, %128
  %130 = tail call i32 @llvm.smin.i32(i32 %129, i32 16384) #12
  %131 = sub i32 %48, %130
  %132 = select i1 %112, i32 %131, i32 0
  %133 = sub nsw i32 0, %130
  br label %134

134:                                              ; preds = %194, %116
  %135 = phi i32 [ %132, %116 ], [ %185, %194 ]
  %136 = phi i32 [ 0, %116 ], [ %195, %194 ]
  %137 = load i32, ptr %113, align 4
  %138 = icmp eq i32 %137, 2
  %139 = select i1 %138, i32 61974, i32 62486
  %140 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %139, i8 noundef zeroext 28) #12
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %213, label %142

142:                                              ; preds = %134
  %143 = load i32, ptr %113, align 4
  %144 = icmp eq i32 %143, 2
  %145 = sdiv i32 %135, 256
  %146 = trunc i32 %145 to i8
  %147 = select i1 %144, i32 62024, i32 62536
  %148 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %147, i8 noundef zeroext %146) #12
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %213, label %150

150:                                              ; preds = %142
  %151 = load i32, ptr %113, align 4
  %152 = icmp eq i32 %151, 2
  %153 = trunc i32 %135 to i8
  %154 = select i1 %152, i32 62025, i32 62537
  %155 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %154, i8 noundef zeroext %153) #12
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %213, label %157

157:                                              ; preds = %150
  %158 = load i32, ptr %113, align 4
  %159 = icmp eq i32 %158, 2
  %160 = select i1 %159, i32 61974, i32 62486
  %161 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %160, i8 noundef zeroext 24) #12
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %213, label %163

163:                                              ; preds = %157
  %164 = load i32, ptr %113, align 4
  %165 = icmp eq i32 %164, 2
  %166 = select i1 %165, i32 62288, i32 62800
  %167 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %166) #12
  %168 = load i32, ptr %113, align 4
  %169 = icmp eq i32 %168, 2
  %170 = select i1 %169, i32 62288, i32 62800
  %171 = trunc i32 %167 to i8
  %172 = or i8 %171, 1
  %173 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %170, i8 noundef zeroext %172) #12
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %213, label %175

175:                                              ; preds = %163
  br i1 %112, label %182, label %176

176:                                              ; preds = %175
  %177 = icmp sgt i32 %135, -1
  br i1 %177, label %178, label %180

178:                                              ; preds = %176
  %179 = sub i32 %114, %135
  br label %184

180:                                              ; preds = %176
  %181 = sub i32 0, %135
  br label %184

182:                                              ; preds = %175
  %183 = add i32 %135, %115
  br label %184

184:                                              ; preds = %182, %180, %178
  %185 = phi i32 [ %179, %178 ], [ %181, %180 ], [ %183, %182 ]
  %186 = tail call fastcc i32 @stv090x_get_dmdlock(ptr noundef %0, i32 noundef %50) #12
  %187 = tail call fastcc i32 @stv090x_chk_signal(ptr noundef %0) #12
  %188 = icmp eq i32 %186, 0
  %189 = icmp eq i32 %187, 0
  %190 = select i1 %188, i1 %189, i1 false
  %191 = sub i32 %185, %48
  %192 = icmp slt i32 %191, %130
  %193 = select i1 %190, i1 %192, i1 false
  br i1 %193, label %194, label %200

194:                                              ; preds = %184
  %195 = add nuw nsw i32 %136, 1
  %196 = add i32 %185, %48
  %197 = icmp sgt i32 %196, %133
  %198 = icmp ult i32 %195, %49
  %199 = select i1 %197, i1 %198, i1 false
  br i1 %199, label %134, label %200

200:                                              ; preds = %194, %184
  %201 = phi i32 [ %186, %184 ], [ 0, %194 ]
  %202 = load i32, ptr %113, align 4
  %203 = icmp eq i32 %202, 2
  %204 = select i1 %203, i32 62288, i32 62800
  %205 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %204) #12
  %206 = load i32, ptr %113, align 4
  %207 = icmp eq i32 %206, 2
  %208 = select i1 %207, i32 62288, i32 62800
  %209 = trunc i32 %205 to i8
  %210 = and i8 %209, -2
  %211 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %208, i8 noundef zeroext %210) #12
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %213, label %218

213:                                              ; preds = %200, %163, %157, %150, %142, %134
  %214 = load i32, ptr @verbose, align 4
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %218, label %216

216:                                              ; preds = %213
  %217 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv090x_search_car_loop) #13
  br label %218

218:                                              ; preds = %216, %213, %200
  %219 = phi i32 [ %201, %200 ], [ -1, %213 ], [ -1, %216 ]
  %220 = tail call fastcc i32 @stv090x_chk_signal(ptr noundef %0)
  %221 = icmp ne i32 %219, 0
  %222 = icmp ne i32 %220, 0
  %223 = select i1 %221, i1 true, i1 %222
  %224 = or i1 %117, %223
  br i1 %224, label %225, label %284

225:                                              ; preds = %218
  %226 = load ptr, ptr %6, align 4
  %227 = getelementptr inbounds %struct.stv090x_internal, ptr %226, i32 0, i32 5
  %228 = load i32, ptr %227, align 4
  %229 = icmp ugt i32 %228, 31
  br i1 %229, label %230, label %242

230:                                              ; preds = %225
  %231 = load i32, ptr %113, align 4
  %232 = icmp eq i32 %231, 2
  %233 = select i1 %232, i32 62013, i32 62525
  %234 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %233, i8 noundef zeroext 73)
  %235 = icmp slt i32 %234, 0
  br i1 %235, label %290, label %236

236:                                              ; preds = %230
  %237 = load i32, ptr %113, align 4
  %238 = icmp eq i32 %237, 2
  %239 = select i1 %238, i32 61985, i32 62497
  %240 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %239, i8 noundef zeroext -98)
  %241 = icmp slt i32 %240, 0
  br i1 %241, label %290, label %242

242:                                              ; preds = %236, %225
  %243 = load i32, ptr %113, align 4
  %244 = icmp eq i32 %243, 2
  %245 = select i1 %244, i32 61979, i32 62491
  %246 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %245)
  br i1 %221, label %247, label %284

247:                                              ; preds = %242
  %248 = and i32 %246, 96
  %249 = icmp eq i32 %248, 64
  br i1 %249, label %250, label %295

250:                                              ; preds = %247
  tail call void @msleep(i32 noundef %50) #12
  %251 = load i32, ptr %113, align 4
  %252 = icmp eq i32 %251, 2
  %253 = select i1 %252, i32 61980, i32 62492
  %254 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %253)
  %255 = and i32 %254, 15
  %256 = icmp ult i32 %255, 13
  br i1 %256, label %257, label %295

257:                                              ; preds = %250
  tail call void @msleep(i32 noundef %50) #12
  %258 = load i32, ptr %113, align 4
  %259 = icmp eq i32 %258, 2
  %260 = select i1 %259, i32 61980, i32 62492
  %261 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %260)
  %262 = and i32 %261, 15
  %263 = icmp ugt i32 %262, 12
  %264 = xor i1 %118, true
  %265 = or i1 %263, %264
  %266 = select i1 %263, i32 %219, i32 0
  br i1 %265, label %284, label %267

267:                                              ; preds = %257
  %268 = load ptr, ptr %6, align 4
  %269 = getelementptr inbounds %struct.stv090x_internal, ptr %268, i32 0, i32 5
  %270 = load i32, ptr %269, align 4
  %271 = icmp ugt i32 %270, 31
  br i1 %271, label %272, label %278

272:                                              ; preds = %267
  %273 = load i32, ptr %113, align 4
  %274 = icmp eq i32 %273, 2
  %275 = select i1 %274, i32 61985, i32 62497
  %276 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %275, i8 noundef zeroext 121)
  %277 = icmp slt i32 %276, 0
  br i1 %277, label %290, label %278

278:                                              ; preds = %272, %267
  %279 = load i32, ptr %113, align 4
  %280 = icmp eq i32 %279, 2
  %281 = select i1 %280, i32 61972, i32 62484
  %282 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %281, i8 noundef zeroext -119)
  %283 = icmp slt i32 %282, 0
  br i1 %283, label %290, label %284

284:                                              ; preds = %278, %257, %242, %218
  %285 = phi i32 [ 0, %278 ], [ %266, %257 ], [ 0, %242 ], [ 0, %218 ]
  %286 = icmp eq i32 %285, 0
  %287 = and i1 %118, %286
  %288 = xor i1 %222, true
  %289 = select i1 %287, i1 %288, i1 false
  br i1 %289, label %116, label %295

290:                                              ; preds = %278, %272, %236, %230, %104, %98, %91, %80, %73, %62, %55
  %291 = load i32, ptr @verbose, align 4
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %295, label %293

293:                                              ; preds = %290
  %294 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv090x_sw_algo) #13
  br label %295

295:                                              ; preds = %293, %290, %284, %250, %247
  %296 = phi i32 [ -1, %290 ], [ -1, %293 ], [ %219, %250 ], [ %219, %247 ], [ %285, %284 ]
  ret i32 %296
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stv090x_get_sig_params(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 6
  tail call void @msleep(i32 noundef 5) #12
  %3 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 17
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %82

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 2
  %10 = select i1 %9, i32 62056, i32 62568
  %11 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %10)
  %12 = load i32, ptr %7, align 4
  %13 = icmp eq i32 %12, 2
  %14 = select i1 %13, i32 62041, i32 62553
  %15 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %14, i8 noundef zeroext 92)
  %16 = trunc i32 %11 to i8
  switch i8 %16, label %17 [
    i8 -1, label %82
    i8 0, label %82
  ]

17:                                               ; preds = %6
  %18 = load i32, ptr %7, align 4
  %19 = icmp eq i32 %18, 2
  %20 = select i1 %19, i32 62056, i32 62568
  %21 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %20)
  tail call void @msleep(i32 noundef 5) #12
  %22 = trunc i32 %21 to i8
  switch i8 %22, label %23 [
    i8 -1, label %82
    i8 0, label %82
  ]

23:                                               ; preds = %17
  %24 = load i32, ptr %7, align 4
  %25 = icmp eq i32 %24, 2
  %26 = select i1 %25, i32 62056, i32 62568
  %27 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %26)
  tail call void @msleep(i32 noundef 5) #12
  %28 = trunc i32 %27 to i8
  switch i8 %28, label %29 [
    i8 -1, label %82
    i8 0, label %82
  ]

29:                                               ; preds = %23
  %30 = load i32, ptr %7, align 4
  %31 = icmp eq i32 %30, 2
  %32 = select i1 %31, i32 62056, i32 62568
  %33 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %32)
  tail call void @msleep(i32 noundef 5) #12
  %34 = trunc i32 %33 to i8
  switch i8 %34, label %35 [
    i8 -1, label %82
    i8 0, label %82
  ]

35:                                               ; preds = %29
  %36 = load i32, ptr %7, align 4
  %37 = icmp eq i32 %36, 2
  %38 = select i1 %37, i32 62056, i32 62568
  %39 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %38)
  tail call void @msleep(i32 noundef 5) #12
  %40 = trunc i32 %39 to i8
  switch i8 %40, label %41 [
    i8 -1, label %82
    i8 0, label %82
  ]

41:                                               ; preds = %35
  %42 = load i32, ptr %7, align 4
  %43 = icmp eq i32 %42, 2
  %44 = select i1 %43, i32 62056, i32 62568
  %45 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %44)
  tail call void @msleep(i32 noundef 5) #12
  %46 = trunc i32 %45 to i8
  switch i8 %46, label %47 [
    i8 -1, label %82
    i8 0, label %82
  ]

47:                                               ; preds = %41
  %48 = load i32, ptr %7, align 4
  %49 = icmp eq i32 %48, 2
  %50 = select i1 %49, i32 62056, i32 62568
  %51 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %50)
  tail call void @msleep(i32 noundef 5) #12
  %52 = trunc i32 %51 to i8
  switch i8 %52, label %53 [
    i8 -1, label %82
    i8 0, label %82
  ]

53:                                               ; preds = %47
  %54 = load i32, ptr %7, align 4
  %55 = icmp eq i32 %54, 2
  %56 = select i1 %55, i32 62056, i32 62568
  %57 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %56)
  tail call void @msleep(i32 noundef 5) #12
  %58 = trunc i32 %57 to i8
  switch i8 %58, label %59 [
    i8 -1, label %82
    i8 0, label %82
  ]

59:                                               ; preds = %53
  %60 = load i32, ptr %7, align 4
  %61 = icmp eq i32 %60, 2
  %62 = select i1 %61, i32 62056, i32 62568
  %63 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %62)
  tail call void @msleep(i32 noundef 5) #12
  %64 = trunc i32 %63 to i8
  switch i8 %64, label %65 [
    i8 -1, label %82
    i8 0, label %82
  ]

65:                                               ; preds = %59
  %66 = load i32, ptr %7, align 4
  %67 = icmp eq i32 %66, 2
  %68 = select i1 %67, i32 62056, i32 62568
  %69 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %68)
  tail call void @msleep(i32 noundef 5) #12
  %70 = trunc i32 %69 to i8
  switch i8 %70, label %71 [
    i8 -1, label %82
    i8 0, label %82
  ]

71:                                               ; preds = %65
  %72 = load i32, ptr %7, align 4
  %73 = icmp eq i32 %72, 2
  %74 = select i1 %73, i32 62056, i32 62568
  %75 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %74)
  tail call void @msleep(i32 noundef 5) #12
  %76 = trunc i32 %75 to i8
  switch i8 %76, label %77 [
    i8 -1, label %82
    i8 0, label %82
  ]

77:                                               ; preds = %71
  %78 = load i32, ptr %7, align 4
  %79 = icmp eq i32 %78, 2
  %80 = select i1 %79, i32 62056, i32 62568
  %81 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %80)
  tail call void @msleep(i32 noundef 5) #12
  br label %82

82:                                               ; preds = %77, %71, %71, %65, %65, %59, %59, %53, %53, %47, %47, %41, %41, %35, %35, %29, %29, %23, %23, %17, %17, %6, %6, %1
  %83 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 1
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, 2
  %86 = select i1 %85, i32 61979, i32 62491
  %87 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %86) #12
  %88 = lshr i32 %87, 5
  %89 = and i32 %88, 3
  switch i32 %89, label %98 [
    i32 2, label %99
    i32 3, label %90
  ]

90:                                               ; preds = %82
  %91 = load i32, ptr %83, align 4
  %92 = icmp eq i32 %91, 2
  %93 = select i1 %92, i32 62259, i32 62771
  %94 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %93) #12
  %95 = and i32 %94, 128
  %96 = icmp eq i32 %95, 0
  %97 = select i1 %96, i32 1, i32 3
  br label %99

98:                                               ; preds = %82
  br label %99

99:                                               ; preds = %98, %90, %82
  %100 = phi i32 [ 0, %98 ], [ %89, %82 ], [ %97, %90 ]
  %101 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 8
  store i32 %100, ptr %101, align 4
  %102 = tail call fastcc i32 @stv090x_i2c_gate_ctrl(ptr noundef %0, i32 noundef 1)
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %244, label %104

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 5
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr inbounds %struct.stv090x_config, ptr %106, i32 0, i32 20
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %114, label %110

110:                                              ; preds = %104
  %111 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 18
  %112 = tail call i32 %108(ptr noundef %2, ptr noundef %111) #12
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %242, label %114

114:                                              ; preds = %110, %104
  %115 = tail call fastcc i32 @stv090x_i2c_gate_ctrl(ptr noundef %0, i32 noundef 0)
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %244, label %117

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 3
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr inbounds %struct.stv090x_internal, ptr %119, i32 0, i32 4
  %121 = load i32, ptr %120, align 4
  %122 = load i32, ptr %83, align 4
  %123 = icmp eq i32 %122, 2
  %124 = select i1 %123, i32 62028, i32 62540
  %125 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %124) #12
  %126 = load i32, ptr %83, align 4
  %127 = icmp eq i32 %126, 2
  %128 = select i1 %127, i32 62029, i32 62541
  %129 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %128) #12
  %130 = load i32, ptr %83, align 4
  %131 = icmp eq i32 %130, 2
  %132 = select i1 %131, i32 62030, i32 62542
  %133 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %132) #12
  %134 = shl i32 %125, 16
  %135 = shl i32 %129, 8
  %136 = or i32 %135, %134
  %137 = or i32 %136, %133
  %138 = icmp slt i32 %137, 8388608
  %139 = select i1 %138, i32 0, i32 -16777216
  %140 = add i32 %139, %137
  %141 = lshr i32 %121, 12
  %142 = ashr i32 %140, 12
  %143 = and i32 %121, 4095
  %144 = srem i32 %140, 4096
  %145 = mul i32 %142, %141
  %146 = mul i32 %144, %141
  %147 = ashr i32 %146, 12
  %148 = add i32 %147, %145
  %149 = mul nsw i32 %142, %143
  %150 = ashr i32 %149, 12
  %151 = add i32 %148, %150
  %152 = sdiv i32 %151, 1000
  %153 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 18
  %154 = load i32, ptr %153, align 4
  %155 = add i32 %152, %154
  store i32 %155, ptr %153, align 4
  %156 = load i32, ptr %83, align 4
  %157 = icmp eq i32 %156, 2
  %158 = select i1 %157, i32 62266, i32 62778
  %159 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %158) #12
  %160 = and i32 %159, 31
  %161 = add nsw i32 %160, -13
  %162 = icmp ult i32 %161, 14
  br i1 %162, label %163, label %166

163:                                              ; preds = %117
  %164 = getelementptr inbounds [14 x i32], ptr @switch.table.stv090x_get_sig_params, i32 0, i32 %161
  %165 = load i32, ptr %164, align 4
  br label %166

166:                                              ; preds = %163, %117
  %167 = phi i32 [ %165, %163 ], [ 9, %117 ]
  %168 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 9
  store i32 %167, ptr %168, align 4
  %169 = load i32, ptr %83, align 4
  %170 = icmp eq i32 %169, 2
  %171 = select i1 %170, i32 61969, i32 62481
  %172 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %171)
  %173 = lshr i32 %172, 2
  %174 = and i32 %173, 31
  %175 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 11
  store i32 %174, ptr %175, align 4
  %176 = and i32 %172, 1
  %177 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 14
  store i32 %176, ptr %177, align 4
  %178 = lshr i32 %172, 1
  %179 = and i32 %178, 1
  %180 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 13
  store i32 %179, ptr %180, align 4
  %181 = load i32, ptr %83, align 4
  %182 = icmp eq i32 %181, 2
  %183 = select i1 %182, i32 62061, i32 62573
  %184 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %183)
  %185 = lshr i32 %184, 6
  %186 = and i32 %185, 3
  %187 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 15
  store i32 %186, ptr %187, align 4
  %188 = load i32, ptr %83, align 4
  %189 = icmp eq i32 %188, 2
  %190 = select i1 %189, i32 62259, i32 62771
  %191 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %190)
  %192 = and i32 %191, 1
  %193 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 16
  store i32 %192, ptr %193, align 4
  %194 = load i32, ptr %3, align 4
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %200, label %196

196:                                              ; preds = %166
  %197 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 19
  %198 = load i32, ptr %197, align 4
  %199 = icmp ult i32 %198, 10000000
  br i1 %199, label %200, label %234

200:                                              ; preds = %196, %166
  %201 = tail call fastcc i32 @stv090x_i2c_gate_ctrl(ptr noundef %0, i32 noundef 1)
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %244, label %203

203:                                              ; preds = %200
  %204 = load ptr, ptr %105, align 4
  %205 = getelementptr inbounds %struct.stv090x_config, ptr %204, i32 0, i32 20
  %206 = load ptr, ptr %205, align 4
  %207 = icmp eq ptr %206, null
  br i1 %207, label %211, label %208

208:                                              ; preds = %203
  %209 = tail call i32 %206(ptr noundef %2, ptr noundef %153) #12
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %242, label %211

211:                                              ; preds = %208, %203
  %212 = tail call fastcc i32 @stv090x_i2c_gate_ctrl(ptr noundef %0, i32 noundef 0)
  %213 = icmp slt i32 %212, 0
  br i1 %213, label %244, label %214

214:                                              ; preds = %211
  %215 = tail call i32 @llvm.abs.i32(i32 %152, i1 true)
  %216 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 21
  %217 = load i32, ptr %216, align 4
  %218 = sdiv i32 %217, 2000
  %219 = add nsw i32 %218, 500
  %220 = icmp sgt i32 %215, %219
  br i1 %220, label %221, label %249

221:                                              ; preds = %214
  %222 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 19
  %223 = load i32, ptr %222, align 4
  %224 = load i32, ptr %187, align 4
  %225 = icmp eq i32 %224, 1
  %226 = select i1 %225, i32 25, i32 35
  %227 = icmp eq i32 %224, 2
  %228 = select i1 %227, i32 20, i32 %226
  %229 = mul i32 %228, %223
  %230 = udiv i32 %229, 100
  %231 = add i32 %230, %223
  %232 = udiv i32 %231, 2000
  %233 = icmp ugt i32 %215, %232
  br i1 %233, label %241, label %249

234:                                              ; preds = %196
  %235 = tail call i32 @llvm.abs.i32(i32 %152, i1 true)
  %236 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 21
  %237 = load i32, ptr %236, align 4
  %238 = sdiv i32 %237, 2000
  %239 = add nsw i32 %238, 500
  %240 = icmp sgt i32 %235, %239
  br i1 %240, label %241, label %249

241:                                              ; preds = %234, %221
  br label %249

242:                                              ; preds = %208, %110
  %243 = tail call fastcc i32 @stv090x_i2c_gate_ctrl(ptr noundef %0, i32 noundef 0)
  br label %244

244:                                              ; preds = %242, %211, %200, %114, %99
  %245 = load i32, ptr @verbose, align 4
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %249, label %247

247:                                              ; preds = %244
  %248 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv090x_get_sig_params) #13
  br label %249

249:                                              ; preds = %247, %244, %241, %234, %221, %214
  %250 = phi i32 [ 5, %241 ], [ 4, %214 ], [ 4, %221 ], [ 4, %234 ], [ -1, %244 ], [ -1, %247 ]
  ret i32 %250
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stv090x_optimize_track(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 6
  %3 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.stv090x_internal, ptr %4, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 2
  %10 = select i1 %9, i32 62052, i32 62564
  %11 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %10) #12
  %12 = load i32, ptr %7, align 4
  %13 = icmp eq i32 %12, 2
  %14 = select i1 %13, i32 62053, i32 62565
  %15 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %14) #12
  %16 = load i32, ptr %7, align 4
  %17 = icmp eq i32 %16, 2
  %18 = select i1 %17, i32 62054, i32 62566
  %19 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %18) #12
  %20 = load i32, ptr %7, align 4
  %21 = icmp eq i32 %20, 2
  %22 = select i1 %21, i32 62055, i32 62567
  %23 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %22) #12
  %24 = shl i32 %11, 24
  %25 = shl i32 %15, 16
  %26 = and i32 %25, 16711680
  %27 = or i32 %26, %24
  %28 = shl i32 %19, 8
  %29 = and i32 %28, 65280
  %30 = or i32 %29, %24
  %31 = and i32 %23, 255
  %32 = or i32 %30, %31
  %33 = lshr i32 %6, 16
  %34 = ashr exact i32 %27, 16
  %35 = and i32 %6, 65535
  %36 = srem i32 %32, 65536
  %37 = mul nsw i32 %34, %33
  %38 = mul i32 %36, %33
  %39 = ashr i32 %38, 16
  %40 = mul nsw i32 %34, %35
  %41 = ashr i32 %40, 16
  %42 = add nsw i32 %41, %37
  %43 = add i32 %42, %39
  %44 = load i32, ptr %7, align 4
  %45 = icmp eq i32 %44, 2
  %46 = select i1 %45, i32 62056, i32 62568
  %47 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %46) #12
  %48 = load i32, ptr %7, align 4
  %49 = icmp eq i32 %48, 2
  %50 = select i1 %49, i32 62057, i32 62569
  %51 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %50) #12
  %52 = load i32, ptr %7, align 4
  %53 = icmp eq i32 %52, 2
  %54 = select i1 %53, i32 62058, i32 62570
  %55 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %54) #12
  %56 = shl i32 %47, 16
  %57 = shl i32 %51, 8
  %58 = or i32 %57, %56
  %59 = or i32 %58, %55
  %60 = icmp slt i32 %59, 8388608
  %61 = select i1 %60, i32 0, i32 -16777216
  %62 = add i32 %61, %59
  %63 = icmp eq i32 %62, 0
  %64 = select i1 %63, i32 1, i32 %62
  %65 = mul i32 %43, 10
  %66 = sdiv i32 16777216, %64
  %67 = sdiv i32 %65, %66
  %68 = sdiv i32 %67, 320
  %69 = add i32 %68, %43
  %70 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 8
  %71 = load i32, ptr %70, align 4
  switch i32 %71, label %460 [
    i32 1, label %72
    i32 3, label %72
    i32 2, label %154
  ]

72:                                               ; preds = %1, %1
  %73 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 12
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 3
  br i1 %75, label %76, label %89

76:                                               ; preds = %72
  %77 = load i32, ptr %7, align 4
  %78 = icmp eq i32 %77, 2
  %79 = select i1 %78, i32 61972, i32 62484
  %80 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %79)
  %81 = load i32, ptr %7, align 4
  %82 = icmp eq i32 %81, 2
  %83 = select i1 %82, i32 61972, i32 62484
  %84 = trunc i32 %80 to i8
  %85 = and i8 %84, 63
  %86 = or i8 %85, 64
  %87 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %83, i8 noundef zeroext %86)
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %795, label %89

89:                                               ; preds = %76, %72
  %90 = load i32, ptr %7, align 4
  %91 = icmp eq i32 %90, 2
  %92 = select i1 %91, i32 61968, i32 62480
  %93 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %92)
  %94 = and i32 %93, 248
  %95 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 15
  %96 = load i32, ptr %95, align 4
  %97 = or i32 %96, %94
  %98 = load i32, ptr %7, align 4
  %99 = icmp eq i32 %98, 2
  %100 = select i1 %99, i32 61968, i32 62480
  %101 = trunc i32 %97 to i8
  %102 = or i8 %101, 4
  %103 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %100, i8 noundef zeroext %102)
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %795, label %105

105:                                              ; preds = %89
  %106 = load ptr, ptr %3, align 4
  %107 = getelementptr inbounds %struct.stv090x_internal, ptr %106, i32 0, i32 5
  %108 = load i32, ptr %107, align 4
  %109 = icmp ugt i32 %108, 47
  br i1 %109, label %110, label %148

110:                                              ; preds = %105
  %111 = load i32, ptr %7, align 4
  %112 = icmp eq i32 %111, 2
  %113 = select i1 %112, i32 62266, i32 62778
  %114 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %113) #12
  %115 = and i32 %114, 31
  switch i32 %115, label %120 [
    i32 13, label %121
    i32 18, label %134
    i32 21, label %116
    i32 24, label %117
    i32 25, label %118
    i32 26, label %119
  ]

116:                                              ; preds = %110
  br label %134

117:                                              ; preds = %110
  br label %134

118:                                              ; preds = %110
  br label %134

119:                                              ; preds = %110
  br label %134

120:                                              ; preds = %110
  br label %134

121:                                              ; preds = %110
  %122 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 9
  store i32 0, ptr %122, align 4
  %123 = load i32, ptr %7, align 4
  %124 = icmp eq i32 %123, 2
  %125 = select i1 %124, i32 62144, i32 62656
  %126 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %125, i8 noundef zeroext -104)
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %795, label %128

128:                                              ; preds = %121
  %129 = load i32, ptr %7, align 4
  %130 = icmp eq i32 %129, 2
  %131 = select i1 %130, i32 62145, i32 62657
  %132 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %131, i8 noundef zeroext 24)
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %795, label %148

134:                                              ; preds = %120, %119, %118, %117, %116, %110
  %135 = phi i32 [ 2, %116 ], [ 4, %117 ], [ 5, %118 ], [ 6, %119 ], [ 9, %120 ], [ 1, %110 ]
  %136 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 9
  store i32 %135, ptr %136, align 4
  %137 = load i32, ptr %7, align 4
  %138 = icmp eq i32 %137, 2
  %139 = select i1 %138, i32 62144, i32 62656
  %140 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %139, i8 noundef zeroext 24)
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %795, label %142

142:                                              ; preds = %134
  %143 = load i32, ptr %7, align 4
  %144 = icmp eq i32 %143, 2
  %145 = select i1 %144, i32 62145, i32 62657
  %146 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %145, i8 noundef zeroext 24)
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %795, label %148

148:                                              ; preds = %142, %128, %105
  %149 = load i32, ptr %7, align 4
  %150 = icmp eq i32 %149, 2
  %151 = select i1 %150, i32 62360, i32 62872
  %152 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %151, i8 noundef zeroext 117)
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %795, label %472

154:                                              ; preds = %1
  %155 = load i32, ptr %7, align 4
  %156 = icmp eq i32 %155, 2
  %157 = select i1 %156, i32 61972, i32 62484
  %158 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %157)
  %159 = load i32, ptr %7, align 4
  %160 = icmp eq i32 %159, 2
  %161 = select i1 %160, i32 61972, i32 62484
  %162 = trunc i32 %158 to i8
  %163 = and i8 %162, 63
  %164 = or i8 %163, -128
  %165 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %161, i8 noundef zeroext %164)
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %795, label %167

167:                                              ; preds = %154
  %168 = load ptr, ptr %3, align 4
  %169 = getelementptr inbounds %struct.stv090x_internal, ptr %168, i32 0, i32 5
  %170 = load i32, ptr %169, align 4
  %171 = icmp ugt i32 %170, 47
  br i1 %171, label %172, label %184

172:                                              ; preds = %167
  %173 = load i32, ptr %7, align 4
  %174 = icmp eq i32 %173, 2
  %175 = select i1 %174, i32 62009, i32 62521
  %176 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %175, i8 noundef zeroext 0)
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %795, label %178

178:                                              ; preds = %172
  %179 = load i32, ptr %7, align 4
  %180 = icmp eq i32 %179, 2
  %181 = select i1 %180, i32 62010, i32 62522
  %182 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %181, i8 noundef zeroext 0)
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %795, label %184

184:                                              ; preds = %178, %167
  %185 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 13
  %186 = load i32, ptr %185, align 4
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %380

188:                                              ; preds = %184
  %189 = load i32, ptr %7, align 4
  %190 = icmp eq i32 %189, 2
  %191 = select i1 %190, i32 61969, i32 62481
  %192 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %191)
  %193 = lshr i32 %192, 2
  %194 = and i32 %193, 31
  %195 = and i32 %192, 1
  %196 = load ptr, ptr %3, align 4
  %197 = getelementptr inbounds %struct.stv090x_internal, ptr %196, i32 0, i32 5
  %198 = load i32, ptr %197, align 4
  %199 = icmp eq i32 %198, 32
  %200 = select i1 %199, ptr @stv090x_s2_crl_cut20, ptr @stv090x_s2_crl_cut30
  %201 = select i1 %199, ptr @stv090x_s2_lowqpsk_crl_cut20, ptr @stv090x_s2_lowqpsk_crl_cut30
  %202 = select i1 %199, ptr @stv090x_s2_apsk_crl_cut20, ptr @stv090x_s2_apsk_crl_cut30
  %203 = icmp ult i32 %194, 4
  br i1 %203, label %207, label %204

204:                                              ; preds = %188
  %205 = load i32, ptr %200, align 4
  %206 = icmp eq i32 %205, %194
  br i1 %206, label %263, label %217

207:                                              ; preds = %188
  %208 = load i32, ptr %201, align 4
  %209 = icmp eq i32 %208, %194
  %210 = icmp eq i32 %194, 2
  %211 = select i1 %210, i32 1, i32 2
  %212 = select i1 %209, i32 0, i32 %211
  %213 = icmp eq i32 %195, 0
  %214 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 19
  %215 = load i32, ptr %214, align 4
  %216 = icmp ult i32 %215, 3000001
  br i1 %213, label %246, label %229

217:                                              ; preds = %204
  %218 = add nsw i32 %194, -5
  %219 = icmp ult i32 %218, 13
  br i1 %219, label %266, label %220

220:                                              ; preds = %217
  %221 = load i32, ptr %202, align 4
  %222 = icmp eq i32 %221, %194
  %223 = add nsw i32 %194, -19
  %224 = icmp ult i32 %223, 10
  %225 = add nsw i32 %194, -18
  %226 = call i32 @llvm.umin.i32(i32 %225, i32 10)
  %227 = select i1 %224, i32 %226, i32 10
  %228 = select i1 %222, i32 0, i32 %227
  br label %263

229:                                              ; preds = %207
  br i1 %216, label %230, label %232

230:                                              ; preds = %229
  %231 = getelementptr %struct.stv090x_long_frame_crloop, ptr %201, i32 %212, i32 1
  br label %328

232:                                              ; preds = %229
  %233 = icmp ult i32 %215, 7000001
  br i1 %233, label %234, label %236

234:                                              ; preds = %232
  %235 = getelementptr %struct.stv090x_long_frame_crloop, ptr %201, i32 %212, i32 3
  br label %328

236:                                              ; preds = %232
  %237 = icmp ult i32 %215, 15000001
  br i1 %237, label %238, label %240

238:                                              ; preds = %236
  %239 = getelementptr %struct.stv090x_long_frame_crloop, ptr %201, i32 %212, i32 5
  br label %328

240:                                              ; preds = %236
  %241 = icmp ult i32 %215, 25000001
  br i1 %241, label %242, label %244

242:                                              ; preds = %240
  %243 = getelementptr %struct.stv090x_long_frame_crloop, ptr %201, i32 %212, i32 7
  br label %328

244:                                              ; preds = %240
  %245 = getelementptr %struct.stv090x_long_frame_crloop, ptr %201, i32 %212, i32 9
  br label %328

246:                                              ; preds = %207
  br i1 %216, label %247, label %249

247:                                              ; preds = %246
  %248 = getelementptr %struct.stv090x_long_frame_crloop, ptr %201, i32 %212, i32 2
  br label %328

249:                                              ; preds = %246
  %250 = icmp ult i32 %215, 7000001
  br i1 %250, label %251, label %253

251:                                              ; preds = %249
  %252 = getelementptr %struct.stv090x_long_frame_crloop, ptr %201, i32 %212, i32 4
  br label %328

253:                                              ; preds = %249
  %254 = icmp ult i32 %215, 15000001
  br i1 %254, label %255, label %257

255:                                              ; preds = %253
  %256 = getelementptr %struct.stv090x_long_frame_crloop, ptr %201, i32 %212, i32 6
  br label %328

257:                                              ; preds = %253
  %258 = icmp ult i32 %215, 25000001
  br i1 %258, label %259, label %261

259:                                              ; preds = %257
  %260 = getelementptr %struct.stv090x_long_frame_crloop, ptr %201, i32 %212, i32 8
  br label %328

261:                                              ; preds = %257
  %262 = getelementptr %struct.stv090x_long_frame_crloop, ptr %201, i32 %212, i32 10
  br label %328

263:                                              ; preds = %220, %204
  %264 = phi i32 [ 0, %204 ], [ %228, %220 ]
  %265 = icmp ult i32 %194, 18
  br i1 %265, label %268, label %308

266:                                              ; preds = %217
  %267 = add nsw i32 %194, -4
  br label %268

268:                                              ; preds = %266, %263
  %269 = phi i32 [ %264, %263 ], [ %267, %266 ]
  %270 = icmp eq i32 %195, 0
  %271 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 19
  %272 = load i32, ptr %271, align 4
  %273 = icmp ult i32 %272, 3000001
  br i1 %270, label %291, label %274

274:                                              ; preds = %268
  br i1 %273, label %275, label %277

275:                                              ; preds = %274
  %276 = getelementptr %struct.stv090x_long_frame_crloop, ptr %200, i32 %269, i32 1
  br label %331

277:                                              ; preds = %274
  %278 = icmp ult i32 %272, 7000001
  br i1 %278, label %279, label %281

279:                                              ; preds = %277
  %280 = getelementptr %struct.stv090x_long_frame_crloop, ptr %200, i32 %269, i32 3
  br label %331

281:                                              ; preds = %277
  %282 = icmp ult i32 %272, 15000001
  br i1 %282, label %283, label %285

283:                                              ; preds = %281
  %284 = getelementptr %struct.stv090x_long_frame_crloop, ptr %200, i32 %269, i32 5
  br label %331

285:                                              ; preds = %281
  %286 = icmp ult i32 %272, 25000001
  br i1 %286, label %287, label %289

287:                                              ; preds = %285
  %288 = getelementptr %struct.stv090x_long_frame_crloop, ptr %200, i32 %269, i32 7
  br label %331

289:                                              ; preds = %285
  %290 = getelementptr %struct.stv090x_long_frame_crloop, ptr %200, i32 %269, i32 9
  br label %331

291:                                              ; preds = %268
  br i1 %273, label %292, label %294

292:                                              ; preds = %291
  %293 = getelementptr %struct.stv090x_long_frame_crloop, ptr %200, i32 %269, i32 2
  br label %331

294:                                              ; preds = %291
  %295 = icmp ult i32 %272, 7000001
  br i1 %295, label %296, label %298

296:                                              ; preds = %294
  %297 = getelementptr %struct.stv090x_long_frame_crloop, ptr %200, i32 %269, i32 4
  br label %331

298:                                              ; preds = %294
  %299 = icmp ult i32 %272, 15000001
  br i1 %299, label %300, label %302

300:                                              ; preds = %298
  %301 = getelementptr %struct.stv090x_long_frame_crloop, ptr %200, i32 %269, i32 6
  br label %331

302:                                              ; preds = %298
  %303 = icmp ult i32 %272, 25000001
  br i1 %303, label %304, label %306

304:                                              ; preds = %302
  %305 = getelementptr %struct.stv090x_long_frame_crloop, ptr %200, i32 %269, i32 8
  br label %331

306:                                              ; preds = %302
  %307 = getelementptr %struct.stv090x_long_frame_crloop, ptr %200, i32 %269, i32 10
  br label %331

308:                                              ; preds = %263
  %309 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 19
  %310 = load i32, ptr %309, align 4
  %311 = icmp ult i32 %310, 3000001
  br i1 %311, label %312, label %314

312:                                              ; preds = %308
  %313 = getelementptr %struct.stv090x_long_frame_crloop, ptr %202, i32 %264, i32 1
  br label %353

314:                                              ; preds = %308
  %315 = icmp ult i32 %310, 7000001
  br i1 %315, label %316, label %318

316:                                              ; preds = %314
  %317 = getelementptr %struct.stv090x_long_frame_crloop, ptr %202, i32 %264, i32 3
  br label %353

318:                                              ; preds = %314
  %319 = icmp ult i32 %310, 15000001
  br i1 %319, label %320, label %322

320:                                              ; preds = %318
  %321 = getelementptr %struct.stv090x_long_frame_crloop, ptr %202, i32 %264, i32 5
  br label %353

322:                                              ; preds = %318
  %323 = icmp ult i32 %310, 25000001
  br i1 %323, label %324, label %326

324:                                              ; preds = %322
  %325 = getelementptr %struct.stv090x_long_frame_crloop, ptr %202, i32 %264, i32 7
  br label %353

326:                                              ; preds = %322
  %327 = getelementptr %struct.stv090x_long_frame_crloop, ptr %202, i32 %264, i32 9
  br label %353

328:                                              ; preds = %261, %259, %255, %251, %247, %244, %242, %238, %234, %230
  %329 = phi ptr [ %262, %261 ], [ %260, %259 ], [ %256, %255 ], [ %252, %251 ], [ %248, %247 ], [ %245, %244 ], [ %243, %242 ], [ %239, %238 ], [ %235, %234 ], [ %231, %230 ]
  %330 = load i8, ptr %329, align 1
  br label %335

331:                                              ; preds = %306, %304, %300, %296, %292, %289, %287, %283, %279, %275
  %332 = phi ptr [ %276, %275 ], [ %280, %279 ], [ %284, %283 ], [ %288, %287 ], [ %290, %289 ], [ %293, %292 ], [ %297, %296 ], [ %301, %300 ], [ %305, %304 ], [ %307, %306 ]
  %333 = load i8, ptr %332, align 1
  %334 = icmp ult i32 %194, 12
  br i1 %334, label %335, label %341

335:                                              ; preds = %331, %328
  %336 = phi i8 [ %330, %328 ], [ %333, %331 ]
  %337 = load i32, ptr %7, align 4
  %338 = icmp eq i32 %337, 2
  %339 = select i1 %338, i32 62103, i32 62615
  %340 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %339, i8 noundef zeroext %336)
  br label %455

341:                                              ; preds = %331
  %342 = load i32, ptr %7, align 4
  %343 = icmp eq i32 %342, 2
  %344 = select i1 %343, i32 62103, i32 62615
  %345 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %344, i8 noundef zeroext 42)
  %346 = icmp slt i32 %345, 0
  br i1 %346, label %795, label %347

347:                                              ; preds = %341
  %348 = load i32, ptr %7, align 4
  %349 = icmp eq i32 %348, 2
  %350 = select i1 %349, i32 62104, i32 62616
  %351 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %350, i8 noundef zeroext %333)
  %352 = icmp slt i32 %351, 0
  br i1 %352, label %795, label %455

353:                                              ; preds = %326, %324, %320, %316, %312
  %354 = phi ptr [ %327, %326 ], [ %325, %324 ], [ %321, %320 ], [ %317, %316 ], [ %313, %312 ]
  %355 = load i8, ptr %354, align 1
  %356 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 2
  %357 = load i32, ptr %356, align 4
  %358 = icmp eq i32 %357, 1
  br i1 %358, label %359, label %455

359:                                              ; preds = %353
  %360 = icmp ult i32 %194, 24
  %361 = load i32, ptr %7, align 4
  %362 = icmp eq i32 %361, 2
  %363 = select i1 %362, i32 62103, i32 62615
  %364 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %363, i8 noundef zeroext 42)
  %365 = icmp slt i32 %364, 0
  br i1 %360, label %366, label %373

366:                                              ; preds = %359
  br i1 %365, label %795, label %367

367:                                              ; preds = %366
  %368 = load i32, ptr %7, align 4
  %369 = icmp eq i32 %368, 2
  %370 = select i1 %369, i32 62105, i32 62617
  %371 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %370, i8 noundef zeroext %355)
  %372 = icmp slt i32 %371, 0
  br i1 %372, label %795, label %455

373:                                              ; preds = %359
  br i1 %365, label %795, label %374

374:                                              ; preds = %373
  %375 = load i32, ptr %7, align 4
  %376 = icmp eq i32 %375, 2
  %377 = select i1 %376, i32 62106, i32 62618
  %378 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %377, i8 noundef zeroext %355)
  %379 = icmp slt i32 %378, 0
  br i1 %379, label %795, label %455

380:                                              ; preds = %184
  %381 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 10
  %382 = load i32, ptr %381, align 4
  %383 = add i32 %382, -1
  %384 = icmp ult i32 %383, 3
  %385 = select i1 %384, i32 %382, i32 0
  %386 = load ptr, ptr %3, align 4
  %387 = getelementptr inbounds %struct.stv090x_internal, ptr %386, i32 0, i32 5
  %388 = load i32, ptr %387, align 4
  %389 = icmp ugt i32 %388, 47
  %390 = select i1 %389, ptr @stv090x_s2_short_crl_cut30, ptr @stv090x_s2_short_crl_cut20
  %391 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 19
  %392 = load i32, ptr %391, align 4
  %393 = icmp ult i32 %392, 3000001
  br i1 %393, label %394, label %396

394:                                              ; preds = %380
  %395 = getelementptr %struct.stv090x_short_frame_crloop, ptr %390, i32 %385, i32 1
  br label %410

396:                                              ; preds = %380
  %397 = icmp ult i32 %392, 7000001
  br i1 %397, label %398, label %400

398:                                              ; preds = %396
  %399 = getelementptr %struct.stv090x_short_frame_crloop, ptr %390, i32 %385, i32 2
  br label %410

400:                                              ; preds = %396
  %401 = icmp ult i32 %392, 15000001
  br i1 %401, label %402, label %404

402:                                              ; preds = %400
  %403 = getelementptr %struct.stv090x_short_frame_crloop, ptr %390, i32 %385, i32 3
  br label %410

404:                                              ; preds = %400
  %405 = icmp ult i32 %392, 25000001
  br i1 %405, label %406, label %408

406:                                              ; preds = %404
  %407 = getelementptr %struct.stv090x_short_frame_crloop, ptr %390, i32 %385, i32 4
  br label %410

408:                                              ; preds = %404
  %409 = getelementptr %struct.stv090x_short_frame_crloop, ptr %390, i32 %385, i32 5
  br label %410

410:                                              ; preds = %408, %406, %402, %398, %394
  %411 = phi ptr [ %395, %394 ], [ %399, %398 ], [ %403, %402 ], [ %407, %406 ], [ %409, %408 ]
  %412 = load i8, ptr %411, align 1
  switch i32 %382, label %455 [
    i32 0, label %413
    i32 1, label %419
    i32 2, label %431
    i32 3, label %443
  ]

413:                                              ; preds = %410
  %414 = load i32, ptr %7, align 4
  %415 = icmp eq i32 %414, 2
  %416 = select i1 %415, i32 62103, i32 62615
  %417 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %416, i8 noundef zeroext %412)
  %418 = icmp slt i32 %417, 0
  br i1 %418, label %795, label %455

419:                                              ; preds = %410
  %420 = load i32, ptr %7, align 4
  %421 = icmp eq i32 %420, 2
  %422 = select i1 %421, i32 62103, i32 62615
  %423 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %422, i8 noundef zeroext 42)
  %424 = icmp slt i32 %423, 0
  br i1 %424, label %795, label %425

425:                                              ; preds = %419
  %426 = load i32, ptr %7, align 4
  %427 = icmp eq i32 %426, 2
  %428 = select i1 %427, i32 62104, i32 62616
  %429 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %428, i8 noundef zeroext %412)
  %430 = icmp slt i32 %429, 0
  br i1 %430, label %795, label %455

431:                                              ; preds = %410
  %432 = load i32, ptr %7, align 4
  %433 = icmp eq i32 %432, 2
  %434 = select i1 %433, i32 62103, i32 62615
  %435 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %434, i8 noundef zeroext 42)
  %436 = icmp slt i32 %435, 0
  br i1 %436, label %795, label %437

437:                                              ; preds = %431
  %438 = load i32, ptr %7, align 4
  %439 = icmp eq i32 %438, 2
  %440 = select i1 %439, i32 62105, i32 62617
  %441 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %440, i8 noundef zeroext %412)
  %442 = icmp slt i32 %441, 0
  br i1 %442, label %795, label %455

443:                                              ; preds = %410
  %444 = load i32, ptr %7, align 4
  %445 = icmp eq i32 %444, 2
  %446 = select i1 %445, i32 62103, i32 62615
  %447 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %446, i8 noundef zeroext 42)
  %448 = icmp slt i32 %447, 0
  br i1 %448, label %795, label %449

449:                                              ; preds = %443
  %450 = load i32, ptr %7, align 4
  %451 = icmp eq i32 %450, 2
  %452 = select i1 %451, i32 62106, i32 62618
  %453 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %452, i8 noundef zeroext %412)
  %454 = icmp slt i32 %453, 0
  br i1 %454, label %795, label %455

455:                                              ; preds = %449, %437, %425, %413, %410, %374, %367, %353, %347, %335
  %456 = load i32, ptr %7, align 4
  %457 = icmp eq i32 %456, 2
  %458 = select i1 %457, i32 62360, i32 62872
  %459 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %458, i8 noundef zeroext 103)
  br label %472

460:                                              ; preds = %1
  %461 = load i32, ptr %7, align 4
  %462 = icmp eq i32 %461, 2
  %463 = select i1 %462, i32 61972, i32 62484
  %464 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %463)
  %465 = load i32, ptr %7, align 4
  %466 = icmp eq i32 %465, 2
  %467 = select i1 %466, i32 61972, i32 62484
  %468 = trunc i32 %464 to i8
  %469 = or i8 %468, -64
  %470 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %467, i8 noundef zeroext %469)
  %471 = icmp slt i32 %470, 0
  br i1 %471, label %795, label %472

472:                                              ; preds = %460, %455, %148
  %473 = load i32, ptr %7, align 4
  %474 = icmp eq i32 %473, 2
  %475 = select i1 %474, i32 62028, i32 62540
  %476 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %475)
  %477 = load i32, ptr %7, align 4
  %478 = icmp eq i32 %477, 2
  %479 = select i1 %478, i32 62029, i32 62541
  %480 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %479)
  %481 = load i32, ptr %7, align 4
  %482 = icmp eq i32 %481, 2
  %483 = select i1 %482, i32 62061, i32 62573
  %484 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %483)
  %485 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 17
  %486 = load i32, ptr %485, align 4
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %488, label %546

488:                                              ; preds = %472
  %489 = load i32, ptr %7, align 4
  %490 = icmp eq i32 %489, 2
  %491 = select i1 %490, i32 62041, i32 62553
  %492 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %491, i8 noundef zeroext 0)
  %493 = load i32, ptr %7, align 4
  %494 = icmp eq i32 %493, 2
  %495 = select i1 %494, i32 61972, i32 62484
  %496 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %495)
  %497 = load i32, ptr %7, align 4
  %498 = icmp eq i32 %497, 2
  %499 = select i1 %498, i32 61972, i32 62484
  %500 = trunc i32 %496 to i8
  %501 = and i8 %500, -25
  %502 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %499, i8 noundef zeroext %501)
  %503 = icmp slt i32 %502, 0
  br i1 %503, label %795, label %504

504:                                              ; preds = %488
  %505 = load i32, ptr %7, align 4
  %506 = icmp eq i32 %505, 2
  %507 = select i1 %506, i32 62042, i32 62554
  %508 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %507, i8 noundef zeroext -63)
  %509 = icmp slt i32 %508, 0
  br i1 %509, label %795, label %510

510:                                              ; preds = %504
  %511 = icmp ugt i32 %69, 60000000
  %512 = icmp ugt i32 %69, 6000000
  %513 = select i1 %512, i32 6, i32 9
  %514 = select i1 %512, i32 10, i32 7
  %515 = select i1 %511, i32 4, i32 %513
  %516 = select i1 %511, i32 12, i32 %514
  %517 = shl i32 %69, %515
  %518 = load ptr, ptr %3, align 4
  %519 = getelementptr inbounds %struct.stv090x_internal, ptr %518, i32 0, i32 4
  %520 = load i32, ptr %519, align 4
  %521 = ashr i32 %520, %516
  %522 = udiv i32 %517, %521
  %523 = load i32, ptr %7, align 4
  %524 = icmp eq i32 %523, 2
  %525 = select i1 %524, i32 62046, i32 62558
  %526 = lshr i32 %522, 8
  %527 = trunc i32 %526 to i8
  %528 = and i8 %527, 127
  %529 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %525, i8 noundef zeroext %528) #12
  %530 = icmp slt i32 %529, 0
  br i1 %530, label %538, label %531

531:                                              ; preds = %510
  %532 = load i32, ptr %7, align 4
  %533 = icmp eq i32 %532, 2
  %534 = trunc i32 %522 to i8
  %535 = select i1 %533, i32 62047, i32 62559
  %536 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %535, i8 noundef zeroext %534) #12
  %537 = icmp slt i32 %536, 0
  br i1 %537, label %538, label %543

538:                                              ; preds = %531, %510
  %539 = load i32, ptr @verbose, align 4
  %540 = icmp eq i32 %539, 0
  br i1 %540, label %800, label %541

541:                                              ; preds = %538
  %542 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv090x_set_srate) #13
  br label %795

543:                                              ; preds = %531
  %544 = tail call fastcc i32 @stv090x_dvbs_track_crl(ptr noundef %0)
  %545 = icmp slt i32 %544, 0
  br i1 %545, label %795, label %546

546:                                              ; preds = %543, %472
  %547 = load ptr, ptr %3, align 4
  %548 = getelementptr inbounds %struct.stv090x_internal, ptr %547, i32 0, i32 5
  %549 = load i32, ptr %548, align 4
  %550 = icmp ugt i32 %549, 31
  br i1 %550, label %551, label %566

551:                                              ; preds = %546
  %552 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 12
  %553 = load i32, ptr %552, align 4
  switch i32 %553, label %566 [
    i32 1, label %554
    i32 0, label %554
    i32 3, label %554
  ]

554:                                              ; preds = %551, %551, %551
  %555 = load i32, ptr %7, align 4
  %556 = icmp eq i32 %555, 2
  %557 = select i1 %556, i32 62269, i32 62781
  %558 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %557, i8 noundef zeroext 10)
  %559 = icmp slt i32 %558, 0
  br i1 %559, label %795, label %560

560:                                              ; preds = %554
  %561 = load i32, ptr %7, align 4
  %562 = icmp eq i32 %561, 2
  %563 = select i1 %562, i32 62258, i32 62770
  %564 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %563, i8 noundef zeroext 0)
  %565 = icmp slt i32 %564, 0
  br i1 %565, label %795, label %566

566:                                              ; preds = %560, %551, %546
  %567 = load i32, ptr %7, align 4
  %568 = icmp eq i32 %567, 2
  %569 = select i1 %568, i32 61997, i32 62509
  %570 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %569, i8 noundef zeroext 56)
  %571 = icmp slt i32 %570, 0
  br i1 %571, label %795, label %572

572:                                              ; preds = %566
  %573 = load i32, ptr %7, align 4
  %574 = icmp eq i32 %573, 2
  %575 = select i1 %574, i32 62048, i32 62560
  %576 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %575, i8 noundef zeroext -128)
  %577 = icmp slt i32 %576, 0
  br i1 %577, label %795, label %578

578:                                              ; preds = %572
  %579 = load i32, ptr %7, align 4
  %580 = icmp eq i32 %579, 2
  %581 = select i1 %580, i32 62050, i32 62562
  %582 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %581, i8 noundef zeroext -128)
  %583 = icmp slt i32 %582, 0
  br i1 %583, label %795, label %584

584:                                              ; preds = %578
  %585 = load ptr, ptr %3, align 4
  %586 = getelementptr inbounds %struct.stv090x_internal, ptr %585, i32 0, i32 5
  %587 = load i32, ptr %586, align 4
  %588 = icmp ugt i32 %587, 31
  %589 = select i1 %588, i1 true, i1 %487
  br i1 %589, label %594, label %590

590:                                              ; preds = %584
  %591 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 19
  %592 = load i32, ptr %591, align 4
  %593 = icmp ult i32 %592, 10000000
  br i1 %593, label %594, label %778

594:                                              ; preds = %590, %584
  %595 = load i32, ptr %7, align 4
  %596 = icmp eq i32 %595, 2
  %597 = trunc i32 %476 to i8
  %598 = select i1 %596, i32 62024, i32 62536
  %599 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %598, i8 noundef zeroext %597)
  %600 = icmp slt i32 %599, 0
  br i1 %600, label %795, label %601

601:                                              ; preds = %594
  %602 = load i32, ptr %7, align 4
  %603 = icmp eq i32 %602, 2
  %604 = trunc i32 %480 to i8
  %605 = select i1 %603, i32 62025, i32 62537
  %606 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %605, i8 noundef zeroext %604)
  %607 = icmp slt i32 %606, 0
  br i1 %607, label %795, label %608

608:                                              ; preds = %601
  %609 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 15
  %610 = load i32, ptr %609, align 4
  %611 = icmp eq i32 %610, 1
  %612 = select i1 %611, i32 25, i32 35
  %613 = icmp eq i32 %610, 2
  %614 = select i1 %613, i32 20, i32 %612
  %615 = mul i32 %614, %69
  %616 = udiv i32 %615, 100
  %617 = add i32 %69, 10000000
  %618 = add i32 %617, %616
  %619 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 20
  store i32 %618, ptr %619, align 4
  %620 = load ptr, ptr %3, align 4
  %621 = getelementptr inbounds %struct.stv090x_internal, ptr %620, i32 0, i32 5
  %622 = load i32, ptr %621, align 4
  %623 = icmp ugt i32 %622, 31
  %624 = select i1 %623, i1 true, i1 %487
  br i1 %624, label %625, label %644

625:                                              ; preds = %608
  %626 = load i32, ptr %485, align 4
  %627 = icmp eq i32 %626, 2
  br i1 %627, label %647, label %628

628:                                              ; preds = %625
  %629 = tail call fastcc i32 @stv090x_i2c_gate_ctrl(ptr noundef %0, i32 noundef 1)
  %630 = icmp slt i32 %629, 0
  br i1 %630, label %795, label %631

631:                                              ; preds = %628
  %632 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 5
  %633 = load ptr, ptr %632, align 4
  %634 = getelementptr inbounds %struct.stv090x_config, ptr %633, i32 0, i32 21
  %635 = load ptr, ptr %634, align 4
  %636 = icmp eq ptr %635, null
  br i1 %636, label %641, label %637

637:                                              ; preds = %631
  %638 = load i32, ptr %619, align 4
  %639 = tail call i32 %635(ptr noundef %2, i32 noundef %638) #12
  %640 = icmp slt i32 %639, 0
  br i1 %640, label %793, label %641

641:                                              ; preds = %637, %631
  %642 = tail call fastcc i32 @stv090x_i2c_gate_ctrl(ptr noundef %0, i32 noundef 0)
  %643 = icmp slt i32 %642, 0
  br i1 %643, label %795, label %644

644:                                              ; preds = %641, %608
  %645 = load i32, ptr %485, align 4
  %646 = icmp eq i32 %645, 0
  br i1 %646, label %652, label %647

647:                                              ; preds = %644, %625
  %648 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 19
  %649 = load i32, ptr %648, align 4
  %650 = icmp ult i32 %649, 10000000
  %651 = select i1 %650, i32 50, i32 5
  br label %652

652:                                              ; preds = %647, %644
  %653 = phi i32 [ 50, %644 ], [ %651, %647 ]
  tail call void @msleep(i32 noundef %653) #12
  tail call fastcc void @stv090x_get_lock_tmg(ptr noundef %0)
  %654 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 22
  %655 = load i32, ptr %654, align 4
  %656 = sdiv i32 %655, 2
  %657 = tail call fastcc i32 @stv090x_get_dmdlock(ptr noundef %0, i32 noundef %656)
  %658 = icmp eq i32 %657, 0
  br i1 %658, label %659, label %778

659:                                              ; preds = %652
  %660 = load i32, ptr %7, align 4
  %661 = icmp eq i32 %660, 2
  %662 = select i1 %661, i32 61974, i32 62486
  %663 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %662, i8 noundef zeroext 31)
  %664 = icmp slt i32 %663, 0
  br i1 %664, label %795, label %665

665:                                              ; preds = %659
  %666 = load i32, ptr %7, align 4
  %667 = icmp eq i32 %666, 2
  %668 = trunc i32 %476 to i8
  %669 = select i1 %667, i32 62024, i32 62536
  %670 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %669, i8 noundef zeroext %668)
  %671 = icmp slt i32 %670, 0
  br i1 %671, label %795, label %672

672:                                              ; preds = %665
  %673 = load i32, ptr %7, align 4
  %674 = icmp eq i32 %673, 2
  %675 = trunc i32 %480 to i8
  %676 = select i1 %674, i32 62025, i32 62537
  %677 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %676, i8 noundef zeroext %675)
  %678 = icmp slt i32 %677, 0
  br i1 %678, label %795, label %679

679:                                              ; preds = %672
  %680 = load i32, ptr %7, align 4
  %681 = icmp eq i32 %680, 2
  %682 = select i1 %681, i32 61974, i32 62486
  %683 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %682, i8 noundef zeroext 24)
  %684 = icmp slt i32 %683, 0
  br i1 %684, label %795, label %685

685:                                              ; preds = %679
  %686 = load i32, ptr %654, align 4
  %687 = sdiv i32 %686, 2
  %688 = tail call fastcc i32 @stv090x_get_dmdlock(ptr noundef %0, i32 noundef %687)
  %689 = icmp eq i32 %688, 0
  br i1 %689, label %690, label %778

690:                                              ; preds = %685
  %691 = trunc i32 %476 to i8
  %692 = trunc i32 %480 to i8
  %693 = load i32, ptr %7, align 4
  %694 = icmp eq i32 %693, 2
  %695 = select i1 %694, i32 61974, i32 62486
  %696 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %695, i8 noundef zeroext 31)
  %697 = icmp slt i32 %696, 0
  br i1 %697, label %795, label %760

698:                                              ; preds = %772
  %699 = load i32, ptr %654, align 4
  %700 = sdiv i32 %699, 2
  %701 = tail call fastcc i32 @stv090x_get_dmdlock(ptr noundef %0, i32 noundef %700)
  %702 = icmp eq i32 %701, 0
  br i1 %702, label %703, label %778

703:                                              ; preds = %698
  %704 = load i32, ptr %7, align 4
  %705 = icmp eq i32 %704, 2
  %706 = select i1 %705, i32 61974, i32 62486
  %707 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %706, i8 noundef zeroext 31)
  %708 = icmp slt i32 %707, 0
  br i1 %708, label %795, label %709

709:                                              ; preds = %703
  %710 = load i32, ptr %7, align 4
  %711 = icmp eq i32 %710, 2
  %712 = select i1 %711, i32 62024, i32 62536
  %713 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %712, i8 noundef zeroext %691)
  %714 = icmp slt i32 %713, 0
  br i1 %714, label %795, label %715

715:                                              ; preds = %709
  %716 = load i32, ptr %7, align 4
  %717 = icmp eq i32 %716, 2
  %718 = select i1 %717, i32 62025, i32 62537
  %719 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %718, i8 noundef zeroext %692)
  %720 = icmp slt i32 %719, 0
  br i1 %720, label %795, label %721

721:                                              ; preds = %715
  %722 = load i32, ptr %7, align 4
  %723 = icmp eq i32 %722, 2
  %724 = select i1 %723, i32 61974, i32 62486
  %725 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %724, i8 noundef zeroext 24)
  %726 = icmp slt i32 %725, 0
  br i1 %726, label %795, label %727

727:                                              ; preds = %721
  %728 = load i32, ptr %654, align 4
  %729 = sdiv i32 %728, 2
  %730 = tail call fastcc i32 @stv090x_get_dmdlock(ptr noundef %0, i32 noundef %729)
  %731 = icmp eq i32 %730, 0
  br i1 %731, label %732, label %778

732:                                              ; preds = %727
  %733 = load i32, ptr %7, align 4
  %734 = icmp eq i32 %733, 2
  %735 = select i1 %734, i32 61974, i32 62486
  %736 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %735, i8 noundef zeroext 31)
  %737 = icmp slt i32 %736, 0
  br i1 %737, label %795, label %738

738:                                              ; preds = %732
  %739 = load i32, ptr %7, align 4
  %740 = icmp eq i32 %739, 2
  %741 = select i1 %740, i32 62024, i32 62536
  %742 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %741, i8 noundef zeroext %691)
  %743 = icmp slt i32 %742, 0
  br i1 %743, label %795, label %744

744:                                              ; preds = %738
  %745 = load i32, ptr %7, align 4
  %746 = icmp eq i32 %745, 2
  %747 = select i1 %746, i32 62025, i32 62537
  %748 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %747, i8 noundef zeroext %692)
  %749 = icmp slt i32 %748, 0
  br i1 %749, label %795, label %750

750:                                              ; preds = %744
  %751 = load i32, ptr %7, align 4
  %752 = icmp eq i32 %751, 2
  %753 = select i1 %752, i32 61974, i32 62486
  %754 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %753, i8 noundef zeroext 24)
  %755 = icmp slt i32 %754, 0
  br i1 %755, label %795, label %756

756:                                              ; preds = %750
  %757 = load i32, ptr %654, align 4
  %758 = sdiv i32 %757, 2
  %759 = tail call fastcc i32 @stv090x_get_dmdlock(ptr noundef %0, i32 noundef %758)
  br label %778

760:                                              ; preds = %690
  %761 = load i32, ptr %7, align 4
  %762 = icmp eq i32 %761, 2
  %763 = select i1 %762, i32 62024, i32 62536
  %764 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %763, i8 noundef zeroext %691)
  %765 = icmp slt i32 %764, 0
  br i1 %765, label %795, label %766

766:                                              ; preds = %760
  %767 = load i32, ptr %7, align 4
  %768 = icmp eq i32 %767, 2
  %769 = select i1 %768, i32 62025, i32 62537
  %770 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %769, i8 noundef zeroext %692)
  %771 = icmp slt i32 %770, 0
  br i1 %771, label %795, label %772

772:                                              ; preds = %766
  %773 = load i32, ptr %7, align 4
  %774 = icmp eq i32 %773, 2
  %775 = select i1 %774, i32 61974, i32 62486
  %776 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %775, i8 noundef zeroext 24)
  %777 = icmp slt i32 %776, 0
  br i1 %777, label %795, label %698

778:                                              ; preds = %756, %727, %698, %685, %652, %590
  %779 = load ptr, ptr %3, align 4
  %780 = getelementptr inbounds %struct.stv090x_internal, ptr %779, i32 0, i32 5
  %781 = load i32, ptr %780, align 4
  %782 = icmp ugt i32 %781, 31
  br i1 %782, label %783, label %789

783:                                              ; preds = %778
  %784 = load i32, ptr %7, align 4
  %785 = icmp eq i32 %784, 2
  %786 = select i1 %785, i32 62013, i32 62525
  %787 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %786, i8 noundef zeroext 73)
  %788 = icmp slt i32 %787, 0
  br i1 %788, label %795, label %789

789:                                              ; preds = %783, %778
  %790 = load i32, ptr %70, align 4
  switch i32 %790, label %800 [
    i32 1, label %791
    i32 3, label %791
  ]

791:                                              ; preds = %789, %789
  %792 = tail call fastcc i32 @stv090x_set_vit_thtracq(ptr noundef %0)
  br label %800

793:                                              ; preds = %637
  %794 = tail call fastcc i32 @stv090x_i2c_gate_ctrl(ptr noundef %0, i32 noundef 0)
  br label %795

795:                                              ; preds = %793, %783, %772, %766, %760, %750, %744, %738, %732, %721, %715, %709, %703, %690, %679, %672, %665, %659, %641, %628, %601, %594, %578, %572, %566, %560, %554, %543, %541, %504, %488, %460, %449, %443, %437, %431, %425, %419, %413, %374, %373, %367, %366, %347, %341, %178, %172, %154, %148, %142, %134, %128, %121, %89, %76
  %796 = load i32, ptr @verbose, align 4
  %797 = icmp eq i32 %796, 0
  br i1 %797, label %800, label %798

798:                                              ; preds = %795
  %799 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv090x_optimize_track) #13
  br label %800

800:                                              ; preds = %798, %795, %791, %789, %538
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stv090x_get_lock(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call fastcc i32 @stv090x_get_dmdlock(ptr noundef %0, i32 noundef %1)
  %5 = icmp ne i32 %4, 0
  %6 = icmp sgt i32 %2, 0
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %48

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 1
  br label %10

10:                                               ; preds = %33, %8
  %11 = phi i32 [ 0, %8 ], [ %34, %33 ]
  %12 = load i32, ptr %9, align 4
  %13 = icmp eq i32 %12, 2
  %14 = select i1 %13, i32 61979, i32 62491
  %15 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %14) #12
  %16 = lshr i32 %15, 5
  %17 = and i32 %16, 3
  switch i32 %17, label %33 [
    i32 3, label %22
    i32 2, label %18
  ]

18:                                               ; preds = %10
  %19 = load i32, ptr %9, align 4
  %20 = icmp eq i32 %19, 2
  %21 = select i1 %20, i32 62313, i32 62825
  br label %26

22:                                               ; preds = %10
  %23 = load i32, ptr %9, align 4
  %24 = icmp eq i32 %23, 2
  %25 = select i1 %24, i32 62270, i32 62782
  br label %26

26:                                               ; preds = %22, %18
  %27 = phi i32 [ %25, %22 ], [ %21, %18 ]
  %28 = phi i32 [ 3, %22 ], [ 1, %18 ]
  %29 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %27) #12
  %30 = shl nuw nsw i32 1, %28
  %31 = and i32 %29, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26, %10
  tail call void @msleep(i32 noundef 10) #12
  %34 = add i32 %11, 10
  %35 = icmp slt i32 %34, %2
  br i1 %35, label %10, label %48

36:                                               ; preds = %36, %26
  %37 = phi i32 [ %44, %36 ], [ 0, %26 ]
  %38 = load i32, ptr %9, align 4
  %39 = icmp eq i32 %38, 2
  %40 = select i1 %39, i32 62337, i32 62849
  %41 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %40)
  %42 = lshr i32 %41, 7
  %43 = and i32 %42, 1
  tail call void @msleep(i32 noundef 1) #12
  %44 = add nuw nsw i32 %37, 1
  %45 = icmp slt i32 %44, %2
  %46 = icmp eq i32 %43, 0
  %47 = select i1 %45, i1 %46, i1 false
  br i1 %47, label %36, label %48

48:                                               ; preds = %36, %33, %3
  %49 = phi i32 [ 0, %3 ], [ %43, %36 ], [ 0, %33 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stv090x_set_s2rolloff(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.stv090x_internal, ptr %3, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp ult i32 %5, 33
  %7 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 2
  %10 = select i1 %9, i32 61968, i32 62480
  %11 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %10)
  %12 = load i32, ptr %7, align 4
  %13 = icmp eq i32 %12, 2
  %14 = select i1 %13, i32 61968, i32 62480
  %15 = trunc i32 %11 to i8
  br i1 %6, label %16, label %20

16:                                               ; preds = %1
  %17 = and i8 %15, -5
  %18 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %14, i8 noundef zeroext %17)
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %24, label %29

20:                                               ; preds = %1
  %21 = and i8 %15, 127
  %22 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %14, i8 noundef zeroext %21)
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20, %16
  %25 = load i32, ptr @verbose, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv090x_set_s2rolloff) #13
  br label %29

29:                                               ; preds = %27, %24, %20, %16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stv090x_chk_signal(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 2
  %5 = select i1 %4, i32 62028, i32 62540
  %6 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %5)
  %7 = shl i32 %6, 8
  %8 = load i32, ptr %2, align 4
  %9 = icmp eq i32 %8, 2
  %10 = select i1 %9, i32 62029, i32 62541
  %11 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %10)
  %12 = or i32 %11, %7
  %13 = icmp slt i32 %12, 32768
  %14 = select i1 %13, i32 0, i32 -65536
  %15 = add i32 %14, %12
  %16 = load i32, ptr %2, align 4
  %17 = icmp eq i32 %16, 2
  %18 = select i1 %17, i32 62006, i32 62518
  %19 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %18)
  %20 = shl i32 %19, 8
  %21 = load i32, ptr %2, align 4
  %22 = icmp eq i32 %21, 2
  %23 = select i1 %22, i32 62007, i32 62519
  %24 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %23)
  %25 = or i32 %24, %20
  %26 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 21
  %27 = load i32, ptr %26, align 4
  %28 = sdiv i32 %27, 1000
  %29 = sdiv i32 %27, 10000
  %30 = add nsw i32 %28, %29
  %31 = shl i32 %30, 16
  %32 = sdiv i32 %31, 2
  %33 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.stv090x_internal, ptr %34, i32 0, i32 4
  %36 = load i32, ptr %35, align 4
  %37 = sdiv i32 %36, 1000
  %38 = sdiv i32 %32, %37
  %39 = tail call i32 @llvm.smin.i32(i32 %38, i32 16384)
  %40 = icmp sgt i32 %25, 8192
  %41 = shl nsw i32 %39, 1
  %42 = icmp sgt i32 %15, %41
  %43 = select i1 %40, i1 true, i1 %42
  %44 = mul i32 %39, -2
  %45 = icmp slt i32 %15, %44
  %46 = select i1 %43, i1 true, i1 %45
  %47 = load i32, ptr @verbose, align 4
  %48 = icmp ugt i32 %47, 3
  br i1 %48, label %49, label %52

49:                                               ; preds = %1
  %50 = select i1 %46, ptr @.str.120, ptr @.str.124
  %51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %50, ptr noundef nonnull @__func__.stv090x_chk_signal) #13
  br label %52

52:                                               ; preds = %49, %1
  %53 = zext i1 %46 to i32
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stv090x_vitclk_ctl(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %33 [
    i32 1, label %5
    i32 2, label %19
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.stv090x_internal, ptr %7, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %8) #12
  %9 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef 61891)
  %10 = and i32 %9, 253
  %11 = shl i32 %1, 1
  %12 = or i32 %10, %11
  %13 = trunc i32 %12 to i8
  %14 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef 61891, i8 noundef zeroext %13)
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %38, label %16

16:                                               ; preds = %5
  %17 = load ptr, ptr %6, align 4
  %18 = getelementptr inbounds %struct.stv090x_internal, ptr %17, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %18) #12
  br label %46

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.stv090x_internal, ptr %21, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %22) #12
  %23 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef 61891)
  %24 = and i32 %23, 251
  %25 = shl i32 %1, 2
  %26 = or i32 %24, %25
  %27 = trunc i32 %26 to i8
  %28 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef 61891, i8 noundef zeroext %27)
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %19
  %31 = load ptr, ptr %20, align 4
  %32 = getelementptr inbounds %struct.stv090x_internal, ptr %31, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %32) #12
  br label %46

33:                                               ; preds = %2
  %34 = load i32, ptr @verbose, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %33
  %37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.stv090x_vitclk_ctl) #13
  br label %46

38:                                               ; preds = %19, %5
  %39 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.stv090x_internal, ptr %40, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %41) #12
  %42 = load i32, ptr @verbose, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %38
  %45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv090x_vitclk_ctl) #13
  br label %46

46:                                               ; preds = %44, %38, %36, %33, %30, %16
  %47 = phi i32 [ 0, %33 ], [ 0, %36 ], [ 0, %30 ], [ 0, %16 ], [ -1, %38 ], [ -1, %44 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stv090x_dvbs_track_crl(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.stv090x_internal, ptr %3, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, 47
  br i1 %6, label %7, label %48

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 19
  %9 = load i32, ptr %8, align 4
  %10 = icmp ugt i32 %9, 14999999
  br i1 %10, label %11, label %24

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 2
  %15 = select i1 %14, i32 62009, i32 62521
  %16 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %15, i8 noundef zeroext 43)
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %61, label %18

18:                                               ; preds = %11
  %19 = load i32, ptr %12, align 4
  %20 = icmp eq i32 %19, 2
  %21 = select i1 %20, i32 62010, i32 62522
  %22 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %21, i8 noundef zeroext 26)
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %61, label %66

24:                                               ; preds = %7
  %25 = icmp ugt i32 %9, 6999999
  %26 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 2
  %29 = select i1 %28, i32 62009, i32 62521
  br i1 %25, label %30, label %39

30:                                               ; preds = %24
  %31 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %29, i8 noundef zeroext 12)
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %61, label %33

33:                                               ; preds = %30
  %34 = load i32, ptr %26, align 4
  %35 = icmp eq i32 %34, 2
  %36 = select i1 %35, i32 62010, i32 62522
  %37 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %36, i8 noundef zeroext 27)
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %61, label %66

39:                                               ; preds = %24
  %40 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %29, i8 noundef zeroext 44)
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %61, label %42

42:                                               ; preds = %39
  %43 = load i32, ptr %26, align 4
  %44 = icmp eq i32 %43, 2
  %45 = select i1 %44, i32 62010, i32 62522
  %46 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %45, i8 noundef zeroext 28)
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %61, label %66

48:                                               ; preds = %1
  %49 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 2
  %52 = select i1 %51, i32 62009, i32 62521
  %53 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %52, i8 noundef zeroext 26)
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %48
  %56 = load i32, ptr %49, align 4
  %57 = icmp eq i32 %56, 2
  %58 = select i1 %57, i32 62010, i32 62522
  %59 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %58, i8 noundef zeroext 9)
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %55, %48, %42, %39, %33, %30, %18, %11
  %62 = load i32, ptr @verbose, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  %65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv090x_dvbs_track_crl) #13
  br label %66

66:                                               ; preds = %64, %61, %55, %42, %33, %18
  %67 = phi i32 [ 0, %55 ], [ 0, %18 ], [ 0, %42 ], [ 0, %33 ], [ -1, %61 ], [ -1, %64 ]
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stv090x_set_vit_thacq(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 2
  %5 = select i1 %4, i32 62260, i32 62772
  %6 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %5, i8 noundef zeroext -106)
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %38, label %8

8:                                                ; preds = %1
  %9 = load i32, ptr %2, align 4
  %10 = icmp eq i32 %9, 2
  %11 = select i1 %10, i32 62261, i32 62773
  %12 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %11, i8 noundef zeroext 100)
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %38, label %14

14:                                               ; preds = %8
  %15 = load i32, ptr %2, align 4
  %16 = icmp eq i32 %15, 2
  %17 = select i1 %16, i32 62262, i32 62774
  %18 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %17, i8 noundef zeroext 54)
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %38, label %20

20:                                               ; preds = %14
  %21 = load i32, ptr %2, align 4
  %22 = icmp eq i32 %21, 2
  %23 = select i1 %22, i32 62263, i32 62775
  %24 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %23, i8 noundef zeroext 35)
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %20
  %27 = load i32, ptr %2, align 4
  %28 = icmp eq i32 %27, 2
  %29 = select i1 %28, i32 62264, i32 62776
  %30 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %29, i8 noundef zeroext 30)
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load i32, ptr %2, align 4
  %34 = icmp eq i32 %33, 2
  %35 = select i1 %34, i32 62265, i32 62777
  %36 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %35, i8 noundef zeroext 25)
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %32, %26, %20, %14, %8, %1
  %39 = load i32, ptr @verbose, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv090x_set_vit_thacq) #13
  br label %43

43:                                               ; preds = %41, %38, %32
  %44 = phi i32 [ 0, %32 ], [ -1, %38 ], [ -1, %41 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stv090x_set_viterbi(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 12
  %3 = load i32, ptr %2, align 4
  switch i32 %3, label %102 [
    i32 3, label %4
    i32 1, label %17
    i32 0, label %63
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 2
  %8 = select i1 %7, i32 62259, i32 62771
  %9 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %8, i8 noundef zeroext 16)
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %97, label %11

11:                                               ; preds = %4
  %12 = load i32, ptr %5, align 4
  %13 = icmp eq i32 %12, 2
  %14 = select i1 %13, i32 62268, i32 62780
  %15 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %14, i8 noundef zeroext 63)
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %97, label %102

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 2
  %21 = select i1 %20, i32 62259, i32 62771
  %22 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %21, i8 noundef zeroext 0)
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %97, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 9
  %26 = load i32, ptr %25, align 4
  switch i32 %26, label %57 [
    i32 0, label %27
    i32 1, label %33
    i32 2, label %39
    i32 4, label %45
    i32 6, label %51
  ]

27:                                               ; preds = %24
  %28 = load i32, ptr %18, align 4
  %29 = icmp eq i32 %28, 2
  %30 = select i1 %29, i32 62268, i32 62780
  %31 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %30, i8 noundef zeroext 1)
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %97, label %102

33:                                               ; preds = %24
  %34 = load i32, ptr %18, align 4
  %35 = icmp eq i32 %34, 2
  %36 = select i1 %35, i32 62268, i32 62780
  %37 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %36, i8 noundef zeroext 2)
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %97, label %102

39:                                               ; preds = %24
  %40 = load i32, ptr %18, align 4
  %41 = icmp eq i32 %40, 2
  %42 = select i1 %41, i32 62268, i32 62780
  %43 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %42, i8 noundef zeroext 4)
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %97, label %102

45:                                               ; preds = %24
  %46 = load i32, ptr %18, align 4
  %47 = icmp eq i32 %46, 2
  %48 = select i1 %47, i32 62268, i32 62780
  %49 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %48, i8 noundef zeroext 8)
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %97, label %102

51:                                               ; preds = %24
  %52 = load i32, ptr %18, align 4
  %53 = icmp eq i32 %52, 2
  %54 = select i1 %53, i32 62268, i32 62780
  %55 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %54, i8 noundef zeroext 32)
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %97, label %102

57:                                               ; preds = %24
  %58 = load i32, ptr %18, align 4
  %59 = icmp eq i32 %58, 2
  %60 = select i1 %59, i32 62268, i32 62780
  %61 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %60, i8 noundef zeroext 47)
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %97, label %102

63:                                               ; preds = %1
  %64 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, 2
  %67 = select i1 %66, i32 62259, i32 62771
  %68 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %67, i8 noundef zeroext -128)
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %97, label %70

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 9
  %72 = load i32, ptr %71, align 4
  switch i32 %72, label %91 [
    i32 0, label %73
    i32 1, label %79
    i32 5, label %85
  ]

73:                                               ; preds = %70
  %74 = load i32, ptr %64, align 4
  %75 = icmp eq i32 %74, 2
  %76 = select i1 %75, i32 62268, i32 62780
  %77 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %76, i8 noundef zeroext 1)
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %97, label %102

79:                                               ; preds = %70
  %80 = load i32, ptr %64, align 4
  %81 = icmp eq i32 %80, 2
  %82 = select i1 %81, i32 62268, i32 62780
  %83 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %82, i8 noundef zeroext 2)
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %97, label %102

85:                                               ; preds = %70
  %86 = load i32, ptr %64, align 4
  %87 = icmp eq i32 %86, 2
  %88 = select i1 %87, i32 62268, i32 62780
  %89 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %88, i8 noundef zeroext 16)
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %97, label %102

91:                                               ; preds = %70
  %92 = load i32, ptr %64, align 4
  %93 = icmp eq i32 %92, 2
  %94 = select i1 %93, i32 62268, i32 62780
  %95 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %94, i8 noundef zeroext 19)
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %91, %85, %79, %73, %63, %57, %51, %45, %39, %33, %27, %17, %11, %4
  %98 = load i32, ptr @verbose, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %97
  %101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv090x_set_viterbi) #13
  br label %102

102:                                              ; preds = %100, %97, %91, %85, %79, %73, %57, %51, %45, %39, %33, %27, %11, %1
  %103 = phi i32 [ 0, %1 ], [ 0, %73 ], [ 0, %79 ], [ 0, %85 ], [ 0, %91 ], [ 0, %27 ], [ 0, %33 ], [ 0, %39 ], [ 0, %45 ], [ 0, %51 ], [ 0, %57 ], [ 0, %11 ], [ -1, %97 ], [ -1, %100 ]
  ret i32 %103
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stv090x_activate_modcod(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 2
  %5 = select i1 %4, i32 62128, i32 62640
  %6 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %5, i8 noundef zeroext -1)
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %98, label %8

8:                                                ; preds = %1
  %9 = load i32, ptr %2, align 4
  %10 = icmp eq i32 %9, 2
  %11 = select i1 %10, i32 62129, i32 62641
  %12 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %11, i8 noundef zeroext -4)
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %98, label %14

14:                                               ; preds = %8
  %15 = load i32, ptr %2, align 4
  %16 = icmp eq i32 %15, 2
  %17 = select i1 %16, i32 62130, i32 62642
  %18 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %17, i8 noundef zeroext -52)
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %98, label %20

20:                                               ; preds = %14
  %21 = load i32, ptr %2, align 4
  %22 = icmp eq i32 %21, 2
  %23 = select i1 %22, i32 62131, i32 62643
  %24 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %23, i8 noundef zeroext -52)
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %98, label %26

26:                                               ; preds = %20
  %27 = load i32, ptr %2, align 4
  %28 = icmp eq i32 %27, 2
  %29 = select i1 %28, i32 62132, i32 62644
  %30 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %29, i8 noundef zeroext -52)
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %98, label %32

32:                                               ; preds = %26
  %33 = load i32, ptr %2, align 4
  %34 = icmp eq i32 %33, 2
  %35 = select i1 %34, i32 62133, i32 62645
  %36 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %35, i8 noundef zeroext -52)
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %98, label %38

38:                                               ; preds = %32
  %39 = load i32, ptr %2, align 4
  %40 = icmp eq i32 %39, 2
  %41 = select i1 %40, i32 62134, i32 62646
  %42 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %41, i8 noundef zeroext -52)
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %98, label %44

44:                                               ; preds = %38
  %45 = load i32, ptr %2, align 4
  %46 = icmp eq i32 %45, 2
  %47 = select i1 %46, i32 62135, i32 62647
  %48 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %47, i8 noundef zeroext -52)
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %98, label %50

50:                                               ; preds = %44
  %51 = load i32, ptr %2, align 4
  %52 = icmp eq i32 %51, 2
  %53 = select i1 %52, i32 62136, i32 62648
  %54 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %53, i8 noundef zeroext -52)
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %98, label %56

56:                                               ; preds = %50
  %57 = load i32, ptr %2, align 4
  %58 = icmp eq i32 %57, 2
  %59 = select i1 %58, i32 62137, i32 62649
  %60 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %59, i8 noundef zeroext -52)
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %98, label %62

62:                                               ; preds = %56
  %63 = load i32, ptr %2, align 4
  %64 = icmp eq i32 %63, 2
  %65 = select i1 %64, i32 62138, i32 62650
  %66 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %65, i8 noundef zeroext -52)
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %98, label %68

68:                                               ; preds = %62
  %69 = load i32, ptr %2, align 4
  %70 = icmp eq i32 %69, 2
  %71 = select i1 %70, i32 62139, i32 62651
  %72 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %71, i8 noundef zeroext -52)
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %98, label %74

74:                                               ; preds = %68
  %75 = load i32, ptr %2, align 4
  %76 = icmp eq i32 %75, 2
  %77 = select i1 %76, i32 62140, i32 62652
  %78 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %77, i8 noundef zeroext -52)
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %98, label %80

80:                                               ; preds = %74
  %81 = load i32, ptr %2, align 4
  %82 = icmp eq i32 %81, 2
  %83 = select i1 %82, i32 62141, i32 62653
  %84 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %83, i8 noundef zeroext -52)
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %98, label %86

86:                                               ; preds = %80
  %87 = load i32, ptr %2, align 4
  %88 = icmp eq i32 %87, 2
  %89 = select i1 %88, i32 62142, i32 62654
  %90 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %89, i8 noundef zeroext -52)
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %86
  %93 = load i32, ptr %2, align 4
  %94 = icmp eq i32 %93, 2
  %95 = select i1 %94, i32 62143, i32 62655
  %96 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %95, i8 noundef zeroext -49)
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %92, %86, %80, %74, %68, %62, %56, %50, %44, %38, %32, %26, %20, %14, %8, %1
  %99 = load i32, ptr @verbose, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %98
  %102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv090x_activate_modcod) #13
  br label %103

103:                                              ; preds = %101, %98, %92
  %104 = phi i32 [ 0, %92 ], [ -1, %98 ], [ -1, %101 ]
  ret i32 %104
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stv090x_set_vit_thtracq(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 2
  %5 = select i1 %4, i32 62260, i32 62772
  %6 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %5, i8 noundef zeroext -48)
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %38, label %8

8:                                                ; preds = %1
  %9 = load i32, ptr %2, align 4
  %10 = icmp eq i32 %9, 2
  %11 = select i1 %10, i32 62261, i32 62773
  %12 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %11, i8 noundef zeroext 125)
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %38, label %14

14:                                               ; preds = %8
  %15 = load i32, ptr %2, align 4
  %16 = icmp eq i32 %15, 2
  %17 = select i1 %16, i32 62262, i32 62774
  %18 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %17, i8 noundef zeroext 83)
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %38, label %20

20:                                               ; preds = %14
  %21 = load i32, ptr %2, align 4
  %22 = icmp eq i32 %21, 2
  %23 = select i1 %22, i32 62263, i32 62775
  %24 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %23, i8 noundef zeroext 47)
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %20
  %27 = load i32, ptr %2, align 4
  %28 = icmp eq i32 %27, 2
  %29 = select i1 %28, i32 62264, i32 62776
  %30 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %29, i8 noundef zeroext 36)
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load i32, ptr %2, align 4
  %34 = icmp eq i32 %33, 2
  %35 = select i1 %34, i32 62265, i32 62777
  %36 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %0, i32 noundef %35, i8 noundef zeroext 31)
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %32, %26, %20, %14, %8, %1
  %39 = load i32, ptr @verbose, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv090x_set_vit_thtracq) #13
  br label %43

43:                                               ; preds = %41, %38, %32
  %44 = phi i32 [ 0, %32 ], [ -1, %38 ], [ -1, %41 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stv090x_get_srate(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.stv090x_state, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 2
  %6 = select i1 %5, i32 62052, i32 62564
  %7 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %6)
  %8 = load i32, ptr %3, align 4
  %9 = icmp eq i32 %8, 2
  %10 = select i1 %9, i32 62053, i32 62565
  %11 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %10)
  %12 = load i32, ptr %3, align 4
  %13 = icmp eq i32 %12, 2
  %14 = select i1 %13, i32 62054, i32 62566
  %15 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %14)
  %16 = load i32, ptr %3, align 4
  %17 = icmp eq i32 %16, 2
  %18 = select i1 %17, i32 62055, i32 62567
  %19 = tail call fastcc i32 @stv090x_read_reg(ptr noundef %0, i32 noundef %18)
  %20 = shl i32 %7, 24
  %21 = shl i32 %11, 16
  %22 = and i32 %21, 16711680
  %23 = or i32 %22, %20
  %24 = shl i32 %15, 8
  %25 = and i32 %24, 65280
  %26 = or i32 %25, %20
  %27 = and i32 %19, 255
  %28 = or i32 %26, %27
  %29 = lshr i32 %1, 16
  %30 = ashr exact i32 %23, 16
  %31 = and i32 %1, 65535
  %32 = srem i32 %28, 65536
  %33 = mul nsw i32 %30, %29
  %34 = mul i32 %32, %29
  %35 = ashr i32 %34, 16
  %36 = mul nsw i32 %30, %31
  %37 = ashr i32 %36, 16
  %38 = add nsw i32 %37, %33
  %39 = add i32 %38, %35
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv090x_set_gpio(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) #0 {
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = shl i8 %2, 7
  %9 = shl i8 %3, 1
  %10 = or i8 %9, %8
  %11 = or i8 %10, %4
  %12 = zext i8 %1 to i32
  %13 = add nuw nsw i32 %12, 61760
  %14 = tail call fastcc i32 @stv090x_write_reg(ptr noundef %7, i32 noundef %13, i8 noundef zeroext %11)
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv090x_probe(ptr nocapture noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 1132) #11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %29, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.stv090x_state, ptr %6, i32 0, i32 7
  store ptr @verbose, ptr %9, align 8
  %10 = getelementptr inbounds %struct.stv090x_state, ptr %6, i32 0, i32 5
  store ptr %4, ptr %10, align 4
  %11 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.stv090x_state, ptr %6, i32 0, i32 4
  store ptr %12, ptr %13, align 8
  %14 = getelementptr inbounds %struct.stv090x_state, ptr %6, i32 0, i32 6, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %14, ptr noundef nonnull align 4 dereferenceable(544) @stv090x_ops, i32 544, i1 false)
  %15 = getelementptr inbounds %struct.stv090x_state, ptr %6, i32 0, i32 6, i32 3
  store ptr %6, ptr %15, align 8
  %16 = getelementptr inbounds %struct.stv090x_config, ptr %4, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.stv090x_state, ptr %6, i32 0, i32 1
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.stv090x_config, ptr %4, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.stv090x_state, ptr %6, i32 0, i32 2
  store i32 %20, ptr %21, align 8
  %22 = load i32, ptr %4, align 4
  store i32 %22, ptr %6, align 8
  %23 = getelementptr inbounds %struct.stv090x_state, ptr %6, i32 0, i32 15
  store i32 0, ptr %23, align 8
  %24 = tail call fastcc i32 @stv090x_setup_compound(ptr noundef nonnull %6)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %8
  %27 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %6, ptr %27, align 8
  %28 = getelementptr inbounds %struct.stv090x_config, ptr %4, i32 0, i32 29
  store ptr @stv090x_get_dvb_frontend, ptr %28, align 4
  br label %31

29:                                               ; preds = %8, %2
  %30 = phi i32 [ %24, %8 ], [ -12, %2 ]
  tail call void @kfree(ptr noundef %6) #12
  br label %31

31:                                               ; preds = %29, %26
  %32 = phi i32 [ %30, %29 ], [ 0, %26 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv090x_remove(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stv090x_state, ptr %3, i32 0, i32 6
  tail call void @stv090x_release(ptr noundef %4)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @stv090x_get_dvb_frontend(ptr nocapture noundef readonly %0) #9 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stv090x_state, ptr %3, i32 0, i32 6
  ret ptr %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }

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
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 1, i32 2000}
