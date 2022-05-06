; ModuleID = '/llk/IR/drivers/media/dvb-frontends/stv0900_core.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/stv0900_core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stv0900_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22stv0900_attach\22\09\09\09\09\09"
module asm "__kstrtabns_stv0900_attach:\09\09\09\09\09"
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
%struct.stv0900_car_loop_optim = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.stv0900_short_frames_car_loop_optim = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.stv0900_short_frames_car_loop_optim_vs_mod = type { i32, i8, i8, i8, i8, i8 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.stv000_lookpoint = type { i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.stv0900_internal = type { i32, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x %struct.stv0900_signal_info], [2 x i32], ptr, i8, i8, i8, ptr, i32, i32 }
%struct.stv0900_signal_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.71], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.71 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.72 }>
%union.anon.72 = type { i64 }
%struct.stv0900_init_params = type { i32, i32, i32, i32, i8, i32, i32, i32, i32, i8, i32, i32, i32, ptr }
%struct.stv0900_state = type { ptr, ptr, ptr, %struct.dvb_frontend, i32 }
%struct.stv0900_config = type { i8, i8, i32, i8, i8, i8, i8, ptr, i8, i8, i8, i8, i8, i8, ptr, ptr }
%struct.stv0900_inode = type { ptr, ptr }
%struct.stv0900_reg = type { i16, i8 }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }
%struct.dvb_diseqc_slave_reply = type { [4 x i8], i8, i32 }

@stvdebug = dso_local global i32 1, align 4
@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @stvdebug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [20 x i8] c"\017%s: i2c error %d\0A\00", align 1
@__func__.stv0900_write_reg = private unnamed_addr constant [18 x i8] c"stv0900_write_reg\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"\017%s: i2c error %d, reg[0x%02x]\0A\00", align 1
@__func__.stv0900_read_reg = private unnamed_addr constant [17 x i8] c"stv0900_read_reg\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"\017%s: Invalid parameter\0A\00", align 1
@__func__.stv0900_set_tuner = private unnamed_addr constant [18 x i8] c"stv0900_set_tuner\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"\017%s: Frequency=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"\017%s: Bandwidth=%d\0A\00", align 1
@__func__.stv0900_set_bandwidth = private unnamed_addr constant [22 x i8] c"stv0900_set_bandwidth\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"\017Demod State = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\017DEMOD LOCK OK\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"\017DEMOD LOCK FAIL\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"\017%s\0A\00", align 1
@__func__.stv0900_stop_all_s2_modcod = private unnamed_addr constant [27 x i8] c"stv0900_stop_all_s2_modcod\00", align 1
@__func__.stv0900_activate_s2_modcod = private unnamed_addr constant [27 x i8] c"stv0900_activate_s2_modcod\00", align 1
@__func__.stv0900_activate_s2_modcod_single = private unnamed_addr constant [34 x i8] c"stv0900_activate_s2_modcod_single\00", align 1
@__func__.stv0900_get_optim_carr_loop = private unnamed_addr constant [28 x i8] c"stv0900_get_optim_carr_loop\00", align 1
@FE_STV0900_S2CarLoop = internal unnamed_addr constant [14 x %struct.stv0900_car_loop_optim] [%struct.stv0900_car_loop_optim { i32 4, i8 28, i8 13, i8 27, i8 44, i8 58, i8 28, i8 42, i8 59, i8 42, i8 27 }, %struct.stv0900_car_loop_optim { i32 5, i8 44, i8 13, i8 43, i8 44, i8 58, i8 12, i8 58, i8 43, i8 42, i8 11 }, %struct.stv0900_car_loop_optim { i32 6, i8 44, i8 13, i8 43, i8 44, i8 11, i8 12, i8 58, i8 27, i8 42, i8 58 }, %struct.stv0900_car_loop_optim { i32 7, i8 60, i8 13, i8 59, i8 28, i8 11, i8 59, i8 58, i8 11, i8 42, i8 58 }, %struct.stv0900_car_loop_optim { i32 8, i8 60, i8 13, i8 59, i8 28, i8 11, i8 59, i8 58, i8 11, i8 42, i8 58 }, %struct.stv0900_car_loop_optim { i32 9, i8 13, i8 13, i8 59, i8 28, i8 11, i8 59, i8 58, i8 11, i8 42, i8 58 }, %struct.stv0900_car_loop_optim { i32 10, i8 13, i8 13, i8 59, i8 28, i8 27, i8 59, i8 58, i8 11, i8 42, i8 58 }, %struct.stv0900_car_loop_optim { i32 11, i8 29, i8 13, i8 59, i8 28, i8 27, i8 59, i8 58, i8 11, i8 42, i8 58 }, %struct.stv0900_car_loop_optim { i32 12, i8 41, i8 59, i8 9, i8 43, i8 56, i8 11, i8 24, i8 26, i8 8, i8 10 }, %struct.stv0900_car_loop_optim { i32 13, i8 10, i8 59, i8 41, i8 43, i8 25, i8 11, i8 56, i8 26, i8 24, i8 10 }, %struct.stv0900_car_loop_optim { i32 14, i8 58, i8 59, i8 42, i8 43, i8 57, i8 11, i8 25, i8 26, i8 56, i8 10 }, %struct.stv0900_car_loop_optim { i32 15, i8 27, i8 59, i8 11, i8 43, i8 26, i8 11, i8 57, i8 26, i8 25, i8 10 }, %struct.stv0900_car_loop_optim { i32 16, i8 59, i8 59, i8 11, i8 43, i8 42, i8 11, i8 57, i8 26, i8 41, i8 57 }, %struct.stv0900_car_loop_optim { i32 17, i8 59, i8 59, i8 11, i8 43, i8 42, i8 11, i8 57, i8 26, i8 41, i8 57 }], align 4
@FE_STV0900_S2LowQPCarLoopCut30 = internal unnamed_addr constant [3 x %struct.stv0900_car_loop_optim] [%struct.stv0900_car_loop_optim { i32 1, i8 12, i8 60, i8 11, i8 60, i8 42, i8 44, i8 42, i8 28, i8 58, i8 59 }, %struct.stv0900_car_loop_optim { i32 2, i8 12, i8 60, i8 11, i8 60, i8 42, i8 44, i8 58, i8 12, i8 58, i8 43 }, %struct.stv0900_car_loop_optim { i32 3, i8 28, i8 60, i8 27, i8 60, i8 58, i8 28, i8 58, i8 59, i8 58, i8 43 }], align 4
@FE_STV0900_S2APSKCarLoopCut30 = internal unnamed_addr constant [11 x %struct.stv0900_car_loop_optim] [%struct.stv0900_car_loop_optim { i32 18, i8 10, i8 10, i8 10, i8 10, i8 26, i8 10, i8 58, i8 10, i8 42, i8 10 }, %struct.stv0900_car_loop_optim { i32 19, i8 10, i8 10, i8 10, i8 10, i8 11, i8 10, i8 59, i8 10, i8 27, i8 10 }, %struct.stv0900_car_loop_optim { i32 20, i8 10, i8 10, i8 10, i8 10, i8 27, i8 10, i8 59, i8 10, i8 43, i8 10 }, %struct.stv0900_car_loop_optim { i32 21, i8 10, i8 10, i8 10, i8 10, i8 27, i8 10, i8 59, i8 10, i8 43, i8 10 }, %struct.stv0900_car_loop_optim { i32 22, i8 10, i8 10, i8 10, i8 10, i8 43, i8 10, i8 12, i8 10, i8 59, i8 10 }, %struct.stv0900_car_loop_optim { i32 23, i8 10, i8 10, i8 10, i8 10, i8 43, i8 10, i8 12, i8 10, i8 59, i8 10 }, %struct.stv0900_car_loop_optim { i32 24, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10 }, %struct.stv0900_car_loop_optim { i32 25, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10 }, %struct.stv0900_car_loop_optim { i32 26, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10 }, %struct.stv0900_car_loop_optim { i32 27, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10 }, %struct.stv0900_car_loop_optim { i32 28, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10 }], align 4
@FE_STV0900_S2CarLoopCut20 = internal unnamed_addr constant [14 x %struct.stv0900_car_loop_optim] [%struct.stv0900_car_loop_optim { i32 4, i8 31, i8 63, i8 30, i8 63, i8 61, i8 31, i8 61, i8 62, i8 61, i8 30 }, %struct.stv0900_car_loop_optim { i32 5, i8 47, i8 63, i8 46, i8 47, i8 61, i8 15, i8 14, i8 46, i8 61, i8 14 }, %struct.stv0900_car_loop_optim { i32 6, i8 47, i8 63, i8 46, i8 47, i8 14, i8 15, i8 14, i8 30, i8 61, i8 61 }, %struct.stv0900_car_loop_optim { i32 7, i8 63, i8 63, i8 62, i8 31, i8 14, i8 62, i8 14, i8 30, i8 61, i8 61 }, %struct.stv0900_car_loop_optim { i32 8, i8 63, i8 63, i8 62, i8 31, i8 14, i8 62, i8 14, i8 30, i8 61, i8 61 }, %struct.stv0900_car_loop_optim { i32 9, i8 63, i8 63, i8 62, i8 31, i8 14, i8 62, i8 14, i8 30, i8 61, i8 61 }, %struct.stv0900_car_loop_optim { i32 10, i8 63, i8 63, i8 62, i8 31, i8 30, i8 62, i8 14, i8 30, i8 61, i8 61 }, %struct.stv0900_car_loop_optim { i32 11, i8 63, i8 63, i8 62, i8 31, i8 30, i8 62, i8 14, i8 30, i8 61, i8 61 }, %struct.stv0900_car_loop_optim { i32 12, i8 60, i8 12, i8 28, i8 59, i8 12, i8 59, i8 43, i8 43, i8 27, i8 43 }, %struct.stv0900_car_loop_optim { i32 13, i8 29, i8 12, i8 60, i8 12, i8 44, i8 59, i8 12, i8 43, i8 43, i8 43 }, %struct.stv0900_car_loop_optim { i32 14, i8 14, i8 28, i8 61, i8 12, i8 13, i8 59, i8 44, i8 59, i8 12, i8 43 }, %struct.stv0900_car_loop_optim { i32 15, i8 46, i8 62, i8 30, i8 46, i8 45, i8 30, i8 60, i8 45, i8 44, i8 29 }, %struct.stv0900_car_loop_optim { i32 16, i8 62, i8 62, i8 30, i8 46, i8 61, i8 30, i8 13, i8 45, i8 60, i8 29 }, %struct.stv0900_car_loop_optim { i32 17, i8 62, i8 62, i8 30, i8 46, i8 61, i8 30, i8 29, i8 45, i8 13, i8 29 }], align 4
@FE_STV0900_S2LowQPCarLoopCut20 = internal unnamed_addr constant [3 x %struct.stv0900_car_loop_optim] [%struct.stv0900_car_loop_optim { i32 1, i8 15, i8 63, i8 14, i8 63, i8 45, i8 47, i8 45, i8 31, i8 61, i8 62 }, %struct.stv0900_car_loop_optim { i32 2, i8 15, i8 63, i8 14, i8 63, i8 45, i8 47, i8 61, i8 15, i8 61, i8 46 }, %struct.stv0900_car_loop_optim { i32 3, i8 31, i8 63, i8 30, i8 63, i8 61, i8 31, i8 61, i8 62, i8 61, i8 46 }], align 4
@FE_STV0900_S2APSKCarLoopCut20 = internal unnamed_addr constant [11 x %struct.stv0900_car_loop_optim] [%struct.stv0900_car_loop_optim { i32 18, i8 12, i8 12, i8 12, i8 12, i8 29, i8 12, i8 60, i8 12, i8 44, i8 12 }, %struct.stv0900_car_loop_optim { i32 19, i8 12, i8 12, i8 12, i8 12, i8 14, i8 12, i8 45, i8 12, i8 29, i8 12 }, %struct.stv0900_car_loop_optim { i32 20, i8 12, i8 12, i8 12, i8 12, i8 30, i8 12, i8 61, i8 12, i8 45, i8 12 }, %struct.stv0900_car_loop_optim { i32 21, i8 12, i8 12, i8 12, i8 12, i8 30, i8 12, i8 61, i8 12, i8 45, i8 12 }, %struct.stv0900_car_loop_optim { i32 22, i8 12, i8 12, i8 12, i8 12, i8 46, i8 12, i8 14, i8 12, i8 61, i8 12 }, %struct.stv0900_car_loop_optim { i32 23, i8 12, i8 12, i8 12, i8 12, i8 46, i8 12, i8 14, i8 12, i8 61, i8 12 }, %struct.stv0900_car_loop_optim { i32 24, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12 }, %struct.stv0900_car_loop_optim { i32 25, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12 }, %struct.stv0900_car_loop_optim { i32 26, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12 }, %struct.stv0900_car_loop_optim { i32 27, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12 }, %struct.stv0900_car_loop_optim { i32 28, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12 }], align 4
@FE_STV0900_S2CarLoopCut30 = internal unnamed_addr constant [14 x %struct.stv0900_car_loop_optim] [%struct.stv0900_car_loop_optim { i32 4, i8 60, i8 44, i8 12, i8 44, i8 27, i8 44, i8 27, i8 28, i8 11, i8 59 }, %struct.stv0900_car_loop_optim { i32 5, i8 13, i8 13, i8 12, i8 13, i8 27, i8 60, i8 27, i8 28, i8 11, i8 59 }, %struct.stv0900_car_loop_optim { i32 6, i8 29, i8 13, i8 12, i8 29, i8 43, i8 60, i8 27, i8 28, i8 11, i8 59 }, %struct.stv0900_car_loop_optim { i32 7, i8 29, i8 29, i8 12, i8 29, i8 43, i8 60, i8 27, i8 28, i8 11, i8 59 }, %struct.stv0900_car_loop_optim { i32 8, i8 45, i8 29, i8 28, i8 29, i8 43, i8 60, i8 43, i8 12, i8 27, i8 59 }, %struct.stv0900_car_loop_optim { i32 9, i8 45, i8 29, i8 28, i8 29, i8 43, i8 60, i8 43, i8 12, i8 27, i8 59 }, %struct.stv0900_car_loop_optim { i32 10, i8 61, i8 45, i8 28, i8 29, i8 59, i8 60, i8 43, i8 12, i8 27, i8 59 }, %struct.stv0900_car_loop_optim { i32 11, i8 61, i8 45, i8 28, i8 29, i8 59, i8 60, i8 43, i8 12, i8 27, i8 59 }, %struct.stv0900_car_loop_optim { i32 12, i8 57, i8 25, i8 57, i8 25, i8 25, i8 25, i8 25, i8 25, i8 9, i8 25 }, %struct.stv0900_car_loop_optim { i32 13, i8 42, i8 57, i8 26, i8 10, i8 57, i8 10, i8 41, i8 57, i8 41, i8 10 }, %struct.stv0900_car_loop_optim { i32 14, i8 11, i8 58, i8 11, i8 11, i8 58, i8 27, i8 26, i8 11, i8 26, i8 58 }, %struct.stv0900_car_loop_optim { i32 15, i8 12, i8 27, i8 59, i8 43, i8 27, i8 59, i8 58, i8 59, i8 58, i8 27 }, %struct.stv0900_car_loop_optim { i32 16, i8 44, i8 44, i8 44, i8 28, i8 43, i8 12, i8 11, i8 59, i8 11, i8 27 }, %struct.stv0900_car_loop_optim { i32 17, i8 44, i8 60, i8 44, i8 28, i8 59, i8 28, i8 11, i8 59, i8 11, i8 27 }], align 4
@__func__.stv0900_get_optim_short_carr_loop = private unnamed_addr constant [34 x i8] c"stv0900_get_optim_short_carr_loop\00", align 1
@FE_STV0900_S2ShortCarLoop = internal unnamed_addr constant [4 x %struct.stv0900_short_frames_car_loop_optim] [%struct.stv0900_short_frames_car_loop_optim { i32 0, i8 60, i8 47, i8 43, i8 46, i8 11, i8 14, i8 58, i8 14, i8 42, i8 61 }, %struct.stv0900_short_frames_car_loop_optim { i32 1, i8 11, i8 62, i8 42, i8 14, i8 10, i8 45, i8 25, i8 13, i8 9, i8 60 }, %struct.stv0900_short_frames_car_loop_optim { i32 2, i8 27, i8 30, i8 27, i8 30, i8 27, i8 30, i8 58, i8 61, i8 42, i8 45 }, %struct.stv0900_short_frames_car_loop_optim { i32 3, i8 27, i8 30, i8 27, i8 30, i8 27, i8 30, i8 58, i8 61, i8 42, i8 45 }], align 4
@FE_STV0900_S2ShortCarLoopCut30 = internal unnamed_addr constant [4 x %struct.stv0900_short_frames_car_loop_optim_vs_mod] [%struct.stv0900_short_frames_car_loop_optim_vs_mod { i32 0, i8 44, i8 43, i8 11, i8 11, i8 58 }, %struct.stv0900_short_frames_car_loop_optim_vs_mod { i32 1, i8 59, i8 11, i8 42, i8 10, i8 57 }, %struct.stv0900_short_frames_car_loop_optim_vs_mod { i32 2, i8 27, i8 27, i8 27, i8 58, i8 42 }, %struct.stv0900_short_frames_car_loop_optim_vs_mod { i32 3, i8 27, i8 27, i8 27, i8 58, i8 42 }], align 4
@stv0900_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"STV0900 frontend\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 125000, i32 0, i32 1000000, i32 45000000, i32 500, i32 268437166 }, [8 x i8] c"\05\06\04\00\00\00\00\00", ptr null, ptr @stv0900_release, ptr null, ptr @stv0900_init, ptr @stv0900_sleep, ptr null, ptr null, ptr null, ptr null, ptr @stv0900_frontend_algo, ptr null, ptr null, ptr @stv0900_get_frontend, ptr @stv0900_read_status, ptr @stv0900_read_ber, ptr @stv0900_read_signal_strength, ptr @stv0900_read_snr, ptr @stv0900_read_ucblocks, ptr null, ptr @stv0900_send_master_cmd, ptr @stv0900_recv_slave_reply, ptr @stv0900_send_burst, ptr @stv0900_set_tone, ptr null, ptr null, ptr null, ptr @stv0900_i2c_gate_ctrl, ptr null, ptr null, ptr @stv0900_search, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@.str.9 = private unnamed_addr constant [42 x i8] c"\017%s: Attaching STV0900 demodulator(%d) \0A\00", align 1
@__func__.stv0900_attach = private unnamed_addr constant [15 x i8] c"stv0900_attach\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"\017%s: Failed to attach STV0900 demodulator(%d) \0A\00", align 1
@__kstrtab_stv0900_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_stv0900_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_stv0900_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stv0900_attach to i32), ptr @__kstrtab_stv0900_attach, ptr @__kstrtabns_stv0900_attach }, section "___ksymtab+stv0900_attach", align 4
@__UNIQUE_ID_debug250 = internal constant [21 x i8] c"parm=debug:Set debug\00", section ".modinfo", align 1
@__UNIQUE_ID_author251 = internal constant [25 x i8] c"author=Igor M. Liplianin\00", section ".modinfo", align 1
@__UNIQUE_ID_description252 = internal constant [32 x i8] c"description=ST STV0900 frontend\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__func__.stv0900_release = private unnamed_addr constant [16 x i8] c"stv0900_release\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"\017%s: Actually removing\0A\00", align 1
@stv0900_first_inode = internal unnamed_addr global ptr null, align 4
@__func__.stv0900_init = private unnamed_addr constant [13 x i8] c"stv0900_init\00", align 1
@__func__.stv0900_sleep = private unnamed_addr constant [14 x i8] c"stv0900_sleep\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"\017%s: \00", align 1
@__func__.stv0900_read_status = private unnamed_addr constant [20 x i8] c"stv0900_read_status\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"\017%s: locked = %d\0A\00", align 1
@__func__.stv0900_status = private unnamed_addr constant [15 x i8] c"stv0900_status\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"\017TS bitrate = %d Mbit/sec\0A\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"\017%s: Calculated Mclk = %d\0A\00", align 1
@__func__.stv0900_get_mclk_freq = private unnamed_addr constant [22 x i8] c"stv0900_get_mclk_freq\00", align 1
@__func__.stv0900_get_rf_level = private unnamed_addr constant [21 x i8] c"stv0900_get_rf_level\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"\017%s: RFLevel = %d\0A\00", align 1
@stv0900_rf = internal unnamed_addr constant { i32, <{ [14 x %struct.stv000_lookpoint], [486 x %struct.stv000_lookpoint] }> } { i32 14, <{ [14 x %struct.stv000_lookpoint], [486 x %struct.stv000_lookpoint] }> <{ [14 x %struct.stv000_lookpoint] [%struct.stv000_lookpoint { i32 -5, i32 51873 }, %struct.stv000_lookpoint { i32 -10, i32 49705 }, %struct.stv000_lookpoint { i32 -15, i32 47880 }, %struct.stv000_lookpoint { i32 -20, i32 46268 }, %struct.stv000_lookpoint { i32 -25, i32 44378 }, %struct.stv000_lookpoint { i32 -30, i32 41624 }, %struct.stv000_lookpoint { i32 -35, i32 39080 }, %struct.stv000_lookpoint { i32 -40, i32 33673 }, %struct.stv000_lookpoint { i32 -45, i32 22974 }, %struct.stv000_lookpoint { i32 -50, i32 14868 }, %struct.stv000_lookpoint { i32 -55, i32 11537 }, %struct.stv000_lookpoint { i32 -60, i32 8461 }, %struct.stv000_lookpoint { i32 -65, i32 41295 }, %struct.stv000_lookpoint { i32 -70, i32 1962 }], [486 x %struct.stv000_lookpoint] zeroinitializer }> }, align 4
@__func__.stv0900_carr_get_quality = private unnamed_addr constant [25 x i8] c"stv0900_carr_get_quality\00", align 1
@stv0900_s2_cn = internal unnamed_addr constant { i32, <{ [55 x %struct.stv000_lookpoint], [445 x %struct.stv000_lookpoint] }> } { i32 55, <{ [55 x %struct.stv000_lookpoint], [445 x %struct.stv000_lookpoint] }> <{ [55 x %struct.stv000_lookpoint] [%struct.stv000_lookpoint { i32 -30, i32 13348 }, %struct.stv000_lookpoint { i32 -20, i32 12640 }, %struct.stv000_lookpoint { i32 -10, i32 11883 }, %struct.stv000_lookpoint { i32 0, i32 11101 }, %struct.stv000_lookpoint { i32 5, i32 10718 }, %struct.stv000_lookpoint { i32 10, i32 10339 }, %struct.stv000_lookpoint { i32 15, i32 9947 }, %struct.stv000_lookpoint { i32 20, i32 9552 }, %struct.stv000_lookpoint { i32 25, i32 9183 }, %struct.stv000_lookpoint { i32 30, i32 8799 }, %struct.stv000_lookpoint { i32 35, i32 8422 }, %struct.stv000_lookpoint { i32 40, i32 8062 }, %struct.stv000_lookpoint { i32 45, i32 7707 }, %struct.stv000_lookpoint { i32 50, i32 7353 }, %struct.stv000_lookpoint { i32 55, i32 7025 }, %struct.stv000_lookpoint { i32 60, i32 6684 }, %struct.stv000_lookpoint { i32 65, i32 6331 }, %struct.stv000_lookpoint { i32 70, i32 6036 }, %struct.stv000_lookpoint { i32 75, i32 5727 }, %struct.stv000_lookpoint { i32 80, i32 5437 }, %struct.stv000_lookpoint { i32 85, i32 5164 }, %struct.stv000_lookpoint { i32 90, i32 4902 }, %struct.stv000_lookpoint { i32 95, i32 4653 }, %struct.stv000_lookpoint { i32 100, i32 4408 }, %struct.stv000_lookpoint { i32 105, i32 4187 }, %struct.stv000_lookpoint { i32 110, i32 3961 }, %struct.stv000_lookpoint { i32 115, i32 3751 }, %struct.stv000_lookpoint { i32 120, i32 3558 }, %struct.stv000_lookpoint { i32 125, i32 3368 }, %struct.stv000_lookpoint { i32 130, i32 3191 }, %struct.stv000_lookpoint { i32 135, i32 3017 }, %struct.stv000_lookpoint { i32 140, i32 2862 }, %struct.stv000_lookpoint { i32 145, i32 2710 }, %struct.stv000_lookpoint { i32 150, i32 2565 }, %struct.stv000_lookpoint { i32 160, i32 2300 }, %struct.stv000_lookpoint { i32 170, i32 2058 }, %struct.stv000_lookpoint { i32 180, i32 1849 }, %struct.stv000_lookpoint { i32 190, i32 1663 }, %struct.stv000_lookpoint { i32 200, i32 1495 }, %struct.stv000_lookpoint { i32 210, i32 1349 }, %struct.stv000_lookpoint { i32 220, i32 1222 }, %struct.stv000_lookpoint { i32 230, i32 1110 }, %struct.stv000_lookpoint { i32 240, i32 1011 }, %struct.stv000_lookpoint { i32 250, i32 925 }, %struct.stv000_lookpoint { i32 260, i32 853 }, %struct.stv000_lookpoint { i32 270, i32 789 }, %struct.stv000_lookpoint { i32 280, i32 734 }, %struct.stv000_lookpoint { i32 290, i32 690 }, %struct.stv000_lookpoint { i32 300, i32 650 }, %struct.stv000_lookpoint { i32 310, i32 619 }, %struct.stv000_lookpoint { i32 320, i32 593 }, %struct.stv000_lookpoint { i32 330, i32 571 }, %struct.stv000_lookpoint { i32 400, i32 498 }, %struct.stv000_lookpoint { i32 450, i32 484 }, %struct.stv000_lookpoint { i32 500, i32 481 }], [445 x %struct.stv000_lookpoint] zeroinitializer }> }, align 4
@.str.19 = private unnamed_addr constant [10 x i8] c"\017%s: %s\0A\00", align 1
@__func__.stv0900_set_tone = private unnamed_addr constant [17 x i8] c"stv0900_set_tone\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"On\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"Off\00", align 1
@__func__.stv0900_search = private unnamed_addr constant [15 x i8] c"stv0900_search\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"\017Search Success\0A\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"\017Search Fail\0A\00", align 1
@__func__.stv0900_set_mis = private unnamed_addr constant [16 x i8] c"stv0900_set_mis\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"\017Disable MIS filtering\0A\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"\017Enable MIS filtering - %d\0A\00", align 1
@__func__.stv0900_init_internal = private unnamed_addr constant [22 x i8] c"stv0900_init_internal\00", align 1
@.str.26 = private unnamed_addr constant [32 x i8] c"\017%s: Find Internal Structure!\0A\00", align 1
@.str.27 = private unnamed_addr constant [38 x i8] c"\017%s: Create New Internal Structure!\0A\00", align 1
@STV0900_InitVal = internal unnamed_addr constant [181 x [2 x i16]] [[2 x i16] [i16 -3812, i16 0], [2 x i16] [i16 -3758, i16 17], [2 x i16] [i16 -3754, i16 19], [2 x i16] [i16 -2448, i16 20], [2 x i16] [i16 -3615, i16 33], [2 x i16] [i16 -3613, i16 33], [2 x i16] [i16 -3696, i16 34], [2 x i16] [i16 -3687, i16 192], [2 x i16] [i16 -3686, i16 192], [2 x i16] [i16 -3695, i16 0], [2 x i16] [i16 -3353, i16 135], [2 x i16] [i16 -3352, i16 9], [2 x i16] [i16 -3564, i16 249], [2 x i16] [i16 -3568, i16 8], [2 x i16] [i16 -3554, i16 196], [2 x i16] [i16 -3523, i16 237], [2 x i16] [i16 -3359, i16 2], [2 x i16] [i16 -3346, i16 2], [2 x i16] [i16 -3521, i16 208], [2 x i16] [i16 -3520, i16 184], [2 x i16] [i16 -3504, i16 210], [2 x i16] [i16 -3501, i16 32], [2 x i16] [i16 -3500, i16 0], [2 x i16] [i16 -3168, i16 136], [2 x i16] [i16 -3166, i16 58], [2 x i16] [i16 -3160, i16 0], [2 x i16] [i16 -3150, i16 16], [2 x i16] [i16 -3176, i16 53], [2 x i16] [i16 -3172, i16 193], [2 x i16] [i16 -3519, i16 248], [2 x i16] [i16 -3583, i16 28], [2 x i16] [i16 -3561, i16 32], [2 x i16] [i16 -3552, i16 112], [2 x i16] [i16 -3551, i16 136], [2 x i16] [i16 -3540, i16 91], [2 x i16] [i16 -3539, i16 56], [2 x i16] [i16 -3528, i16 228], [2 x i16] [i16 -3527, i16 26], [2 x i16] [i16 -3526, i16 9], [2 x i16] [i16 -3522, i16 8], [2 x i16] [i16 -3496, i16 193], [2 x i16] [i16 -3499, i16 240], [2 x i16] [i16 -3498, i16 112], [2 x i16] [i16 -3495, i16 88], [2 x i16] [i16 -3494, i16 1], [2 x i16] [i16 -3440, i16 38], [2 x i16] [i16 -3428, i16 134], [2 x i16] [i16 -3427, i16 134], [2 x i16] [i16 -3328, i16 119], [2 x i16] [i16 -3327, i16 133], [2 x i16] [i16 -3326, i16 119], [2 x i16] [i16 -3212, i16 32], [2 x i16] [i16 -3563, i16 59], [2 x i16] [i16 -3408, i16 255], [2 x i16] [i16 -3407, i16 255], [2 x i16] [i16 -3406, i16 255], [2 x i16] [i16 -3405, i16 255], [2 x i16] [i16 -3404, i16 255], [2 x i16] [i16 -3403, i16 255], [2 x i16] [i16 -3402, i16 255], [2 x i16] [i16 -3401, i16 204], [2 x i16] [i16 -3400, i16 204], [2 x i16] [i16 -3399, i16 204], [2 x i16] [i16 -3398, i16 204], [2 x i16] [i16 -3397, i16 204], [2 x i16] [i16 -3396, i16 204], [2 x i16] [i16 -3395, i16 204], [2 x i16] [i16 -3394, i16 204], [2 x i16] [i16 -3393, i16 207], [2 x i16] [i16 -3680, i16 34], [2 x i16] [i16 -3671, i16 192], [2 x i16] [i16 -3670, i16 192], [2 x i16] [i16 -3679, i16 0], [2 x i16] [i16 -2841, i16 135], [2 x i16] [i16 -2840, i16 9], [2 x i16] [i16 -3052, i16 249], [2 x i16] [i16 -3056, i16 8], [2 x i16] [i16 -3042, i16 196], [2 x i16] [i16 -3049, i16 32], [2 x i16] [i16 -3011, i16 237], [2 x i16] [i16 -2847, i16 130], [2 x i16] [i16 -2834, i16 2], [2 x i16] [i16 -3009, i16 208], [2 x i16] [i16 -3008, i16 184], [2 x i16] [i16 -2992, i16 210], [2 x i16] [i16 -2989, i16 32], [2 x i16] [i16 -2988, i16 0], [2 x i16] [i16 -2987, i16 240], [2 x i16] [i16 -2986, i16 112], [2 x i16] [i16 -2700, i16 32], [2 x i16] [i16 -2656, i16 136], [2 x i16] [i16 -2654, i16 58], [2 x i16] [i16 -2648, i16 0], [2 x i16] [i16 -2638, i16 16], [2 x i16] [i16 -2664, i16 53], [2 x i16] [i16 -2660, i16 193], [2 x i16] [i16 -3007, i16 248], [2 x i16] [i16 -3071, i16 28], [2 x i16] [i16 -3040, i16 112], [2 x i16] [i16 -3039, i16 136], [2 x i16] [i16 -3028, i16 91], [2 x i16] [i16 -3027, i16 56], [2 x i16] [i16 -3016, i16 228], [2 x i16] [i16 -3015, i16 26], [2 x i16] [i16 -3014, i16 9], [2 x i16] [i16 -3010, i16 8], [2 x i16] [i16 -2984, i16 193], [2 x i16] [i16 -2983, i16 88], [2 x i16] [i16 -2982, i16 1], [2 x i16] [i16 -2928, i16 38], [2 x i16] [i16 -2916, i16 134], [2 x i16] [i16 -2915, i16 134], [2 x i16] [i16 -2816, i16 119], [2 x i16] [i16 -2815, i16 133], [2 x i16] [i16 -2814, i16 119], [2 x i16] [i16 -3051, i16 59], [2 x i16] [i16 -2896, i16 255], [2 x i16] [i16 -2895, i16 255], [2 x i16] [i16 -2894, i16 255], [2 x i16] [i16 -2893, i16 255], [2 x i16] [i16 -2892, i16 255], [2 x i16] [i16 -2891, i16 255], [2 x i16] [i16 -2890, i16 255], [2 x i16] [i16 -2889, i16 204], [2 x i16] [i16 -2888, i16 204], [2 x i16] [i16 -2887, i16 204], [2 x i16] [i16 -2886, i16 204], [2 x i16] [i16 -2885, i16 204], [2 x i16] [i16 -2884, i16 204], [2 x i16] [i16 -2883, i16 204], [2 x i16] [i16 -2882, i16 204], [2 x i16] [i16 -2881, i16 207], [2 x i16] [i16 -1402, i16 29], [2 x i16] [i16 -1533, i16 55], [2 x i16] [i16 -1532, i16 41], [2 x i16] [i16 -1531, i16 55], [2 x i16] [i16 -1530, i16 51], [2 x i16] [i16 -1529, i16 49], [2 x i16] [i16 -1528, i16 47], [2 x i16] [i16 -1527, i16 57], [2 x i16] [i16 -1526, i16 58], [2 x i16] [i16 -1525, i16 41], [2 x i16] [i16 -1524, i16 55], [2 x i16] [i16 -1523, i16 51], [2 x i16] [i16 -1522, i16 47], [2 x i16] [i16 -1521, i16 57], [2 x i16] [i16 -1520, i16 58], [2 x i16] [i16 -1473, i16 4], [2 x i16] [i16 -1469, i16 12], [2 x i16] [i16 -1468, i16 15], [2 x i16] [i16 -1467, i16 17], [2 x i16] [i16 -1466, i16 20], [2 x i16] [i16 -1465, i16 23], [2 x i16] [i16 -1464, i16 25], [2 x i16] [i16 -1463, i16 32], [2 x i16] [i16 -1462, i16 33], [2 x i16] [i16 -1461, i16 13], [2 x i16] [i16 -1460, i16 15], [2 x i16] [i16 -1459, i16 19], [2 x i16] [i16 -1458, i16 26], [2 x i16] [i16 -1457, i16 31], [2 x i16] [i16 -1456, i16 33], [2 x i16] [i16 -2560, i16 32], [2 x i16] [i16 -2765, i16 1], [2 x i16] [i16 -3277, i16 1], [2 x i16] [i16 -2756, i16 47], [2 x i16] [i16 -3268, i16 47], [2 x i16] [i16 -3747, i16 76], [2 x i16] [i16 -3742, i16 76], [2 x i16] [i16 -3746, i16 80], [2 x i16] [i16 -3741, i16 80], [2 x i16] [i16 -3748, i16 74], [2 x i16] [i16 -3743, i16 74], [2 x i16] [i16 -3745, i16 82], [2 x i16] [i16 -3740, i16 82], [2 x i16] [i16 -2701, i16 192], [2 x i16] [i16 -3213, i16 192], [2 x i16] [i16 -2702, i16 224], [2 x i16] [i16 -3214, i16 224], [2 x i16] [i16 -2688, i16 64], [2 x i16] [i16 -3200, i16 64]], align 2
@STV0900_Cut20_AddOnVal = internal unnamed_addr constant [32 x [2 x i16]] [[2 x i16] [i16 -3554, i16 232], [2 x i16] [i16 -3553, i16 16], [2 x i16] [i16 -3523, i16 56], [2 x i16] [i16 -3522, i16 32], [2 x i16] [i16 -3496, i16 90], [2 x i16] [i16 -3328, i16 6], [2 x i16] [i16 -3327, i16 0], [2 x i16] [i16 -3326, i16 4], [2 x i16] [i16 -3583, i16 12], [2 x i16] [i16 -3042, i16 232], [2 x i16] [i16 -3041, i16 16], [2 x i16] [i16 -3011, i16 56], [2 x i16] [i16 -3010, i16 32], [2 x i16] [i16 -2984, i16 90], [2 x i16] [i16 -2816, i16 6], [2 x i16] [i16 -2815, i16 0], [2 x i16] [i16 -2814, i16 4], [2 x i16] [i16 -3071, i16 12], [2 x i16] [i16 -1469, i16 33], [2 x i16] [i16 -1468, i16 33], [2 x i16] [i16 -1467, i16 32], [2 x i16] [i16 -1466, i16 31], [2 x i16] [i16 -1465, i16 30], [2 x i16] [i16 -1464, i16 30], [2 x i16] [i16 -1463, i16 29], [2 x i16] [i16 -1462, i16 27], [2 x i16] [i16 -1461, i16 32], [2 x i16] [i16 -1460, i16 32], [2 x i16] [i16 -1459, i16 32], [2 x i16] [i16 -1458, i16 32], [2 x i16] [i16 -1457, i16 32], [2 x i16] [i16 -1456, i16 33]], align 2
@__func__.stv0900_st_dvbs2_single = private unnamed_addr constant [24 x i8] c"stv0900_st_dvbs2_single\00", align 1
@__func__.stv0900_set_ts_parallel_serial = private unnamed_addr constant [31 x i8] c"stv0900_set_ts_parallel_serial\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"\017%s: 0x0a\0A\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"\017%s: 0x12\0A\00", align 1
@.str.30 = private unnamed_addr constant [35 x i8] c"\017%s: Mclk set to %d, Quartz = %d\0A\00", align 1
@__func__.stv0900_set_mclk = private unnamed_addr constant [17 x i8] c"stv0900_set_mclk\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author251, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description252, ptr @__UNIQUE_ID_license253, ptr @__ksymtab_stv0900_attach, ptr @__param_debug], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @ge2comp(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 32
  br i1 %3, label %11, label %4

4:                                                ; preds = %2
  %5 = add i32 %1, -1
  %6 = shl nuw nsw i32 1, %5
  %7 = icmp sgt i32 %6, %0
  %8 = shl nsw i32 -1, %1
  %9 = select i1 %7, i32 0, i32 %8
  %10 = add i32 %9, %0
  br label %11

11:                                               ; preds = %4, %2
  %12 = phi i32 [ %10, %4 ], [ %0, %2 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @stv0900_write_reg(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #1 {
  %4 = alloca [3 x i8], align 1
  %5 = alloca %struct.i2c_msg, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %6 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 0, ptr %6, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.stv0900_internal, ptr %0, i32 0, i32 18
  %8 = load i8, ptr %7, align 4
  %9 = zext i8 %8 to i16
  store i16 %9, ptr %5, align 4
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %10, align 2
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 2
  store i16 3, ptr %11, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %12, align 4
  %13 = lshr i16 %1, 8
  %14 = trunc i16 %13 to i8
  store i8 %14, ptr %4, align 1
  %15 = trunc i16 %1 to i8
  %16 = getelementptr inbounds [3 x i8], ptr %4, i32 0, i32 1
  store i8 %15, ptr %16, align 1
  %17 = getelementptr inbounds [3 x i8], ptr %4, i32 0, i32 2
  store i8 %2, ptr %17, align 1
  %18 = getelementptr inbounds %struct.stv0900_internal, ptr %0, i32 0, i32 17
  %19 = load ptr, ptr %18, align 4
  %20 = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %5, i32 noundef 1) #10
  %21 = icmp ne i32 %20, 1
  %22 = load i32, ptr @stvdebug, align 4
  %23 = icmp ne i32 %22, 0
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %20) #11
  br label %27

27:                                               ; preds = %25, %3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i8 @stv0900_read_reg(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) local_unnamed_addr #1 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca i8, align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  %6 = lshr i16 %1, 8
  %7 = trunc i16 %6 to i8
  store i8 %7, ptr %3, align 2
  %8 = getelementptr inbounds i8, ptr %3, i32 1
  %9 = trunc i16 %1 to i8
  store i8 %9, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %10 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %10, i8 0, i32 16, i1 false), !annotation !8
  %11 = getelementptr inbounds %struct.stv0900_internal, ptr %0, i32 0, i32 18
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i16
  store i16 %13, ptr %5, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %14, align 2
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 2
  store i16 2, ptr %15, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %16, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %13, ptr %17, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %18, align 2
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %20, align 4
  %21 = getelementptr inbounds %struct.stv0900_internal, ptr %0, i32 0, i32 17
  %22 = load ptr, ptr %21, align 4
  %23 = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %5, i32 noundef 2) #10
  %24 = icmp ne i32 %23, 2
  %25 = load i32, ptr @stvdebug, align 4
  %26 = icmp ne i32 %25, 0
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = zext i16 %1 to i32
  %30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0900_read_reg, i32 noundef %23, i32 noundef %29) #11
  br label %31

31:                                               ; preds = %28, %2
  %32 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  ret i8 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @stv0900_write_bits(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #1 {
  %4 = alloca [3 x i8], align 1
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [2 x i8], align 2
  %7 = alloca i8, align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = lshr i32 %1, 16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #10
  %10 = lshr i32 %1, 24
  %11 = trunc i32 %10 to i8
  store i8 %11, ptr %6, align 2
  %12 = getelementptr inbounds i8, ptr %6, i32 1
  %13 = trunc i32 %9 to i8
  store i8 %13, ptr %12, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #10
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #10
  %14 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %14, i8 0, i32 16, i1 false) #10, !annotation !8
  %15 = getelementptr inbounds %struct.stv0900_internal, ptr %0, i32 0, i32 18
  %16 = load i8, ptr %15, align 4
  %17 = zext i8 %16 to i16
  store i16 %17, ptr %8, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %18, align 2
  store i16 2, ptr %14, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %19, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  store i16 %17, ptr %20, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %21, align 2
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 1, ptr %22, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %23, align 4
  %24 = getelementptr inbounds %struct.stv0900_internal, ptr %0, i32 0, i32 17
  %25 = load ptr, ptr %24, align 4
  %26 = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %8, i32 noundef 2) #10
  %27 = icmp ne i32 %26, 2
  %28 = load i32, ptr @stvdebug, align 4
  %29 = icmp ne i32 %28, 0
  %30 = select i1 %27, i1 %29, i1 false
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0900_read_reg, i32 noundef %26, i32 noundef %9) #11
  br label %33

33:                                               ; preds = %31, %3
  %34 = load i8, ptr %7, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #10
  %35 = and i32 %1, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %33
  %38 = and i32 %1, 2
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %37
  %41 = and i32 %1, 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %40
  %44 = and i32 %1, 8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %43
  %47 = and i32 %1, 16
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = and i32 %1, 32
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = and i32 %1, 64
  %54 = icmp eq i32 %53, 0
  %55 = select i1 %54, i32 7, i32 6
  br label %56

56:                                               ; preds = %52, %49, %46, %43, %40, %37, %33
  %57 = phi i32 [ 0, %33 ], [ 1, %37 ], [ 2, %40 ], [ 3, %43 ], [ 4, %46 ], [ 5, %49 ], [ %55, %52 ]
  %58 = trunc i32 %1 to i8
  %59 = zext i8 %2 to i32
  %60 = shl nuw nsw i32 %59, %57
  %61 = and i32 %60, %1
  %62 = trunc i32 %61 to i8
  %63 = xor i8 %58, -1
  %64 = and i8 %34, %63
  %65 = or i8 %64, %62
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %66 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 3, ptr %66, align 4, !annotation !8
  %67 = load i8, ptr %15, align 4
  %68 = zext i8 %67 to i16
  store i16 %68, ptr %5, align 4
  %69 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %69, align 2
  %70 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %70, align 4
  store i8 %11, ptr %4, align 1
  %71 = getelementptr inbounds [3 x i8], ptr %4, i32 0, i32 1
  store i8 %13, ptr %71, align 1
  %72 = getelementptr inbounds [3 x i8], ptr %4, i32 0, i32 2
  store i8 %65, ptr %72, align 1
  %73 = load ptr, ptr %24, align 4
  %74 = call i32 @i2c_transfer(ptr noundef %73, ptr noundef nonnull %5, i32 noundef 1) #10
  %75 = icmp ne i32 %74, 1
  %76 = load i32, ptr @stvdebug, align 4
  %77 = icmp ne i32 %76, 0
  %78 = select i1 %75, i1 %77, i1 false
  br i1 %78, label %79, label %81

79:                                               ; preds = %56
  %80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %74) #11
  br label %81

81:                                               ; preds = %79, %56
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i8 @stv0900_get_bits(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca i8, align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = and i32 %1, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %27

8:                                                ; preds = %2
  %9 = and i32 %1, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %8
  %12 = and i32 %1, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %11
  %15 = and i32 %1, 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = and i32 %1, 16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = and i32 %1, 32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = and i32 %1, 64
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i8 7, i8 6
  br label %27

27:                                               ; preds = %23, %20, %17, %14, %11, %8, %2
  %28 = phi i8 [ 0, %2 ], [ 1, %8 ], [ 2, %11 ], [ 3, %14 ], [ 4, %17 ], [ 5, %20 ], [ %26, %23 ]
  %29 = lshr i32 %1, 16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  %30 = lshr i32 %1, 24
  %31 = trunc i32 %30 to i8
  store i8 %31, ptr %3, align 2
  %32 = getelementptr inbounds i8, ptr %3, i32 1
  %33 = trunc i32 %29 to i8
  store i8 %33, ptr %32, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %34 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %34, i8 0, i32 16, i1 false) #10, !annotation !8
  %35 = getelementptr inbounds %struct.stv0900_internal, ptr %0, i32 0, i32 18
  %36 = load i8, ptr %35, align 4
  %37 = zext i8 %36 to i16
  store i16 %37, ptr %5, align 4
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %38, align 2
  store i16 2, ptr %34, align 4
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %39, align 4
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %37, ptr %40, align 4
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %41, align 2
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %42, align 4
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %43, align 4
  %44 = getelementptr inbounds %struct.stv0900_internal, ptr %0, i32 0, i32 17
  %45 = load ptr, ptr %44, align 4
  %46 = call i32 @i2c_transfer(ptr noundef %45, ptr noundef nonnull %5, i32 noundef 2) #10
  %47 = icmp ne i32 %46, 2
  %48 = load i32, ptr @stvdebug, align 4
  %49 = icmp ne i32 %48, 0
  %50 = select i1 %47, i1 %49, i1 false
  br i1 %50, label %51, label %53

51:                                               ; preds = %27
  %52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0900_read_reg, i32 noundef %46, i32 noundef %29) #11
  br label %53

53:                                               ; preds = %51, %27
  %54 = trunc i32 %1 to i8
  %55 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  %56 = and i8 %55, %54
  %57 = lshr i8 %56, %28
  ret i8 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @stv0900_set_tuner(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 16
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %3
  %8 = tail call i32 %5(ptr noundef %0, i32 noundef %1) #10
  %9 = icmp slt i32 %8, 0
  %10 = load i32, ptr @stvdebug, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %9, label %12, label %15

12:                                               ; preds = %7
  br i1 %11, label %18, label %13

13:                                               ; preds = %12
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.stv0900_set_tuner) #11
  br label %18

15:                                               ; preds = %7
  br i1 %11, label %18, label %16

16:                                               ; preds = %15
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.stv0900_set_tuner, i32 noundef %1) #11
  br label %18

18:                                               ; preds = %16, %15, %13, %12, %3
  %19 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 17
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %33, label %22

22:                                               ; preds = %18
  %23 = tail call i32 %20(ptr noundef %0, i32 noundef %2) #10
  %24 = icmp slt i32 %23, 0
  %25 = load i32, ptr @stvdebug, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %24, label %27, label %30

27:                                               ; preds = %22
  br i1 %26, label %33, label %28

28:                                               ; preds = %27
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.stv0900_set_tuner) #11
  br label %33

30:                                               ; preds = %22
  br i1 %26, label %33, label %31

31:                                               ; preds = %30
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.stv0900_set_tuner, i32 noundef %2) #11
  br label %33

33:                                               ; preds = %31, %30, %28, %27, %18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @stv0900_set_bandwidth(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = tail call i32 %4(ptr noundef %0, i32 noundef %1) #10
  %8 = icmp slt i32 %7, 0
  %9 = load i32, ptr @stvdebug, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %8, label %11, label %14

11:                                               ; preds = %6
  br i1 %10, label %17, label %12

12:                                               ; preds = %11
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.stv0900_set_bandwidth) #11
  br label %17

14:                                               ; preds = %6
  br i1 %10, label %17, label %15

15:                                               ; preds = %14
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.stv0900_set_bandwidth, i32 noundef %1) #11
  br label %17

17:                                               ; preds = %15, %14, %12, %11, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @stv0900_get_freq_auto(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = tail call i32 @shiftx(i32 noundef -186056449, i32 noundef %1, i32 noundef 33554432) #10
  %4 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %0, i32 noundef %3)
  %5 = zext i8 %4 to i32
  %6 = shl nuw nsw i32 %5, 10
  %7 = tail call i32 @shiftx(i32 noundef -185990913, i32 noundef %1, i32 noundef 33554432) #10
  %8 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %0, i32 noundef %7)
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 2
  %11 = or i32 %10, %6
  %12 = tail call i32 @shiftx(i32 noundef -185925440, i32 noundef %1, i32 noundef 33554432) #10
  %13 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %0, i32 noundef %12)
  %14 = zext i8 %13 to i32
  %15 = add nuw nsw i32 %11, %14
  %16 = mul nuw nsw i32 %15, 1000
  %17 = lshr i32 %16, 6
  %18 = tail call i32 @shiftx(i32 noundef -185204733, i32 noundef %1, i32 noundef 33554432) #10
  %19 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %0, i32 noundef %18)
  %20 = lshr i8 %19, 2
  %21 = zext i8 %20 to i32
  %22 = tail call i32 @shiftx(i32 noundef -185138945, i32 noundef %1, i32 noundef 33554432) #10
  %23 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %0, i32 noundef %22)
  %24 = zext i8 %23 to i32
  %25 = add nuw nsw i32 %24, %21
  %26 = mul nuw nsw i32 %25, 1000
  %27 = lshr i32 %26, 11
  %28 = add nuw nsw i32 %27, %17
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shiftx(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @stv0900_set_tuner_auto(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = alloca [3 x i8], align 1
  %6 = alloca %struct.i2c_msg, align 4
  %7 = shl i32 %1, 6
  %8 = udiv i32 %7, 1000
  %9 = tail call i32 @shiftx(i32 noundef -186056449, i32 noundef %3, i32 noundef 33554432) #10
  %10 = lshr i32 %8, 10
  %11 = trunc i32 %10 to i8
  tail call void @stv0900_write_bits(ptr noundef %0, i32 noundef %9, i8 noundef zeroext %11)
  %12 = tail call i32 @shiftx(i32 noundef -185990913, i32 noundef %3, i32 noundef 33554432) #10
  %13 = lshr i32 %8, 2
  %14 = trunc i32 %13 to i8
  tail call void @stv0900_write_bits(ptr noundef %0, i32 noundef %12, i8 noundef zeroext %14)
  %15 = tail call i32 @shiftx(i32 noundef -185925440, i32 noundef %3, i32 noundef 33554432) #10
  %16 = trunc i32 %8 to i8
  %17 = and i8 %16, 3
  tail call void @stv0900_write_bits(ptr noundef %0, i32 noundef %15, i8 noundef zeroext %17)
  %18 = tail call i32 @shiftx(i32 noundef -185925569, i32 noundef %3, i32 noundef 33554432) #10
  %19 = udiv i32 %2, 2000000
  %20 = trunc i32 %19 to i8
  tail call void @stv0900_write_bits(ptr noundef %0, i32 noundef %18, i8 noundef zeroext %20)
  %21 = tail call i32 @shiftx(i32 noundef 62704, i32 noundef %3, i32 noundef 512) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %22 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 3, ptr %22, align 4, !annotation !8
  %23 = getelementptr inbounds %struct.stv0900_internal, ptr %0, i32 0, i32 18
  %24 = load i8, ptr %23, align 4
  %25 = zext i8 %24 to i16
  store i16 %25, ptr %6, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %26, align 2
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %27, align 4
  %28 = lshr i32 %21, 8
  %29 = trunc i32 %28 to i8
  store i8 %29, ptr %5, align 1
  %30 = trunc i32 %21 to i8
  %31 = getelementptr inbounds [3 x i8], ptr %5, i32 0, i32 1
  store i8 %30, ptr %31, align 1
  %32 = getelementptr inbounds [3 x i8], ptr %5, i32 0, i32 2
  store i8 1, ptr %32, align 1
  %33 = getelementptr inbounds %struct.stv0900_internal, ptr %0, i32 0, i32 17
  %34 = load ptr, ptr %33, align 4
  %35 = call i32 @i2c_transfer(ptr noundef %34, ptr noundef nonnull %6, i32 noundef 1) #10
  %36 = icmp ne i32 %35, 1
  %37 = load i32, ptr @stvdebug, align 4
  %38 = icmp ne i32 %37, 0
  %39 = select i1 %36, i1 %38, i1 false
  br i1 %39, label %40, label %42

40:                                               ; preds = %4
  %41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %35) #11
  br label %42

42:                                               ; preds = %40, %4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @stv0900_get_demod_lock(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %33

5:                                                ; preds = %23, %3
  %6 = phi i32 [ %25, %23 ], [ 0, %3 ]
  %7 = tail call i32 @shiftx(i32 noundef -199557024, i32 noundef %1, i32 noundef 33554432) #10
  %8 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %0, i32 noundef %7)
  %9 = load i32, ptr @stvdebug, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = zext i8 %8 to i32
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %12) #11
  br label %14

14:                                               ; preds = %11, %5
  %15 = and i8 %8, -2
  %16 = icmp eq i8 %15, 2
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = tail call i32 @shiftx(i32 noundef -200146936, i32 noundef %1, i32 noundef 33554432) #10
  %19 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %0, i32 noundef %18)
  %20 = zext i8 %19 to i32
  %21 = icmp eq i8 %19, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17, %14
  tail call void @msleep(i32 noundef 10) #10
  br label %23

23:                                               ; preds = %22, %17
  %24 = phi i32 [ 0, %22 ], [ %20, %17 ]
  %25 = add i32 %6, 10
  %26 = icmp slt i32 %25, %2
  %27 = icmp eq i32 %24, 0
  %28 = select i1 %26, i1 %27, i1 false
  br i1 %28, label %5, label %29

29:                                               ; preds = %23
  br i1 %27, label %33, label %30

30:                                               ; preds = %29
  %31 = load i32, ptr @stvdebug, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %40, label %36

33:                                               ; preds = %29, %3
  %34 = load i32, ptr @stvdebug, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %33, %30
  %37 = phi ptr [ @.str.6, %30 ], [ @.str.7, %33 ]
  %38 = phi i32 [ %24, %30 ], [ 0, %33 ]
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %37) #11
  br label %40

40:                                               ; preds = %36, %33, %30
  %41 = phi i32 [ 0, %33 ], [ %24, %30 ], [ %38, %36 ]
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @stv0900_stop_all_s2_modcod(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = alloca [3 x i8], align 1
  %4 = alloca %struct.i2c_msg, align 4
  %5 = load i32, ptr @stvdebug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0900_stop_all_s2_modcod) #11
  br label %9

9:                                                ; preds = %7, %2
  %10 = tail call i32 @shiftx(i32 noundef 62640, i32 noundef %1, i32 noundef 512) #10
  %11 = getelementptr inbounds i8, ptr %4, i32 4
  %12 = getelementptr inbounds %struct.stv0900_internal, ptr %0, i32 0, i32 18
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  %15 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 1
  %16 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 2
  %17 = getelementptr inbounds %struct.stv0900_internal, ptr %0, i32 0, i32 17
  br label %18

18:                                               ; preds = %34, %9
  %19 = phi i32 [ 0, %9 ], [ %35, %34 ]
  %20 = add i32 %19, %10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  store i32 3, ptr %11, align 4, !annotation !8
  %21 = load i8, ptr %12, align 4
  %22 = zext i8 %21 to i16
  store i16 %22, ptr %4, align 4
  store i16 0, ptr %13, align 2
  store ptr %3, ptr %14, align 4
  %23 = lshr i32 %20, 8
  %24 = trunc i32 %23 to i8
  store i8 %24, ptr %3, align 1
  %25 = trunc i32 %20 to i8
  store i8 %25, ptr %15, align 1
  store i8 -1, ptr %16, align 1
  %26 = load ptr, ptr %17, align 4
  %27 = call i32 @i2c_transfer(ptr noundef %26, ptr noundef nonnull %4, i32 noundef 1) #10
  %28 = icmp ne i32 %27, 1
  %29 = load i32, ptr @stvdebug, align 4
  %30 = icmp ne i32 %29, 0
  %31 = select i1 %28, i1 %30, i1 false
  br i1 %31, label %32, label %34

32:                                               ; preds = %18
  %33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %27) #11
  br label %34

34:                                               ; preds = %32, %18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #10
  %35 = add nuw nsw i32 %19, 1
  %36 = icmp eq i32 %35, 16
  br i1 %36, label %37, label %18

37:                                               ; preds = %34
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @stv0900_activate_s2_modcod(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = alloca [3 x i8], align 1
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [3 x i8], align 1
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [3 x i8], align 1
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca [3 x i8], align 1
  %10 = alloca %struct.i2c_msg, align 4
  %11 = alloca [3 x i8], align 1
  %12 = alloca %struct.i2c_msg, align 4
  %13 = alloca [3 x i8], align 1
  %14 = alloca %struct.i2c_msg, align 4
  %15 = alloca [2 x i8], align 2
  %16 = alloca i8, align 1
  %17 = alloca [2 x %struct.i2c_msg], align 4
  %18 = load i32, ptr @stvdebug, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0900_activate_s2_modcod) #11
  br label %22

22:                                               ; preds = %20, %2
  %23 = getelementptr inbounds %struct.stv0900_internal, ptr %0, i32 0, i32 20
  %24 = load i8, ptr %23, align 2
  %25 = icmp ult i8 %24, 18
  br i1 %25, label %34, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds i8, ptr %10, i32 4
  %28 = getelementptr inbounds %struct.stv0900_internal, ptr %0, i32 0, i32 18
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  %31 = getelementptr inbounds [3 x i8], ptr %9, i32 0, i32 1
  %32 = getelementptr inbounds [3 x i8], ptr %9, i32 0, i32 2
  %33 = getelementptr inbounds %struct.stv0900_internal, ptr %0, i32 0, i32 17
  br label %122

34:                                               ; preds = %22
  tail call void @msleep(i32 noundef 5) #10
  %35 = tail call i32 @shiftx(i32 noundef 62500, i32 noundef %1, i32 noundef 512) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %15) #10
  %36 = lshr i32 %35, 8
  %37 = trunc i32 %36 to i8
  store i8 %37, ptr %15, align 2
  %38 = getelementptr inbounds i8, ptr %15, i32 1
  %39 = trunc i32 %35 to i8
  store i8 %39, ptr %38, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %16) #10
  store i8 0, ptr %16, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #10
  %40 = getelementptr inbounds i8, ptr %17, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %40, i8 0, i32 16, i1 false) #10, !annotation !8
  %41 = getelementptr inbounds %struct.stv0900_internal, ptr %0, i32 0, i32 18
  %42 = load i8, ptr %41, align 4
  %43 = zext i8 %42 to i16
  store i16 %43, ptr %17, align 4
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %44, align 2
  store i16 2, ptr %40, align 4
  %45 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %15, ptr %45, align 4
  %46 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1
  store i16 %43, ptr %46, align 4
  %47 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1, i32 1
  store i16 1, ptr %47, align 2
  %48 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1, i32 2
  store i16 1, ptr %48, align 4
  %49 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1, i32 3
  store ptr %16, ptr %49, align 4
  %50 = getelementptr inbounds %struct.stv0900_internal, ptr %0, i32 0, i32 17
  %51 = load ptr, ptr %50, align 4
  %52 = call i32 @i2c_transfer(ptr noundef %51, ptr noundef nonnull %17, i32 noundef 2) #10
  %53 = icmp ne i32 %52, 2
  %54 = load i32, ptr @stvdebug, align 4
  %55 = icmp ne i32 %54, 0
  %56 = select i1 %53, i1 %55, i1 false
  br i1 %56, label %57, label %60

57:                                               ; preds = %34
  %58 = and i32 %35, 65535
  %59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0900_read_reg, i32 noundef %52, i32 noundef %58) #11
  br label %60

60:                                               ; preds = %57, %34
  %61 = load i8, ptr %16, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #10
  %62 = zext i8 %61 to i32
  %63 = and i32 %62, 3
  %64 = lshr i32 %62, 2
  %65 = and i32 %64, 31
  %66 = call i32 @shiftx(i32 noundef 62655, i32 noundef %1, i32 noundef 512) #10
  %67 = lshr i32 %65, 1
  %68 = sub i32 %66, %67
  switch i32 %63, label %70 [
    i32 3, label %208
    i32 1, label %69
    i32 2, label %208
  ]

69:                                               ; preds = %60
  br label %70

70:                                               ; preds = %69, %60
  %71 = phi i8 [ 13, %69 ], [ 14, %60 ]
  %72 = add nsw i32 %65, -4
  %73 = icmp ult i32 %72, 14
  %74 = icmp ult i32 %63, 2
  %75 = select i1 %73, i1 %74, i1 false
  br i1 %75, label %76, label %208

76:                                               ; preds = %70
  %77 = and i32 %62, 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %100

79:                                               ; preds = %76
  %80 = or i8 %71, -16
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %13) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #10
  %81 = getelementptr inbounds i8, ptr %14, i32 4
  store i32 3, ptr %81, align 4, !annotation !8
  %82 = load i8, ptr %41, align 4
  %83 = zext i8 %82 to i16
  store i16 %83, ptr %14, align 4
  %84 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %84, align 2
  %85 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %13, ptr %85, align 4
  %86 = lshr i32 %68, 8
  %87 = trunc i32 %86 to i8
  store i8 %87, ptr %13, align 1
  %88 = trunc i32 %68 to i8
  %89 = getelementptr inbounds [3 x i8], ptr %13, i32 0, i32 1
  store i8 %88, ptr %89, align 1
  %90 = getelementptr inbounds [3 x i8], ptr %13, i32 0, i32 2
  store i8 %80, ptr %90, align 1
  %91 = load ptr, ptr %50, align 4
  %92 = call i32 @i2c_transfer(ptr noundef %91, ptr noundef nonnull %14, i32 noundef 1) #10
  %93 = icmp ne i32 %92, 1
  %94 = load i32, ptr @stvdebug, align 4
  %95 = icmp ne i32 %94, 0
  %96 = select i1 %93, i1 %95, i1 false
  br i1 %96, label %97, label %99

97:                                               ; preds = %79
  %98 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %92) #11
  br label %99

99:                                               ; preds = %97, %79
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %13) #10
  br label %208

100:                                              ; preds = %76
  %101 = shl nuw i8 %71, 4
  %102 = or i8 %101, 15
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %11) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #10
  %103 = getelementptr inbounds i8, ptr %12, i32 4
  store i32 3, ptr %103, align 4, !annotation !8
  %104 = load i8, ptr %41, align 4
  %105 = zext i8 %104 to i16
  store i16 %105, ptr %12, align 4
  %106 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  store i16 0, ptr %106, align 2
  %107 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  store ptr %11, ptr %107, align 4
  %108 = lshr i32 %68, 8
  %109 = trunc i32 %108 to i8
  store i8 %109, ptr %11, align 1
  %110 = trunc i32 %68 to i8
  %111 = getelementptr inbounds [3 x i8], ptr %11, i32 0, i32 1
  store i8 %110, ptr %111, align 1
  %112 = getelementptr inbounds [3 x i8], ptr %11, i32 0, i32 2
  store i8 %102, ptr %112, align 1
  %113 = load ptr, ptr %50, align 4
  %114 = call i32 @i2c_transfer(ptr noundef %113, ptr noundef nonnull %12, i32 noundef 1) #10
  %115 = icmp ne i32 %114, 1
  %116 = load i32, ptr @stvdebug, align 4
  %117 = icmp ne i32 %116, 0
  %118 = select i1 %115, i1 %117, i1 false
  br i1 %118, label %119, label %121

119:                                              ; preds = %100
  %120 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %114) #11
  br label %121

121:                                              ; preds = %119, %100
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %11) #10
  br label %208

122:                                              ; preds = %139, %26
  %123 = phi i32 [ 0, %26 ], [ %140, %139 ]
  %124 = call i32 @shiftx(i32 noundef 62640, i32 noundef %1, i32 noundef 512) #10
  %125 = add i32 %124, %123
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #10
  store i32 3, ptr %27, align 4, !annotation !8
  %126 = load i8, ptr %28, align 4
  %127 = zext i8 %126 to i16
  store i16 %127, ptr %10, align 4
  store i16 0, ptr %29, align 2
  store ptr %9, ptr %30, align 4
  %128 = lshr i32 %125, 8
  %129 = trunc i32 %128 to i8
  store i8 %129, ptr %9, align 1
  %130 = trunc i32 %125 to i8
  store i8 %130, ptr %31, align 1
  store i8 -1, ptr %32, align 1
  %131 = load ptr, ptr %33, align 4
  %132 = call i32 @i2c_transfer(ptr noundef %131, ptr noundef nonnull %10, i32 noundef 1) #10
  %133 = icmp ne i32 %132, 1
  %134 = load i32, ptr @stvdebug, align 4
  %135 = icmp ne i32 %134, 0
  %136 = select i1 %133, i1 %135, i1 false
  br i1 %136, label %137, label %139

137:                                              ; preds = %122
  %138 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %132) #11
  br label %139

139:                                              ; preds = %137, %122
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %9) #10
  %140 = add nuw nsw i32 %123, 1
  %141 = icmp eq i32 %140, 7
  br i1 %141, label %142, label %122

142:                                              ; preds = %139
  %143 = call i32 @shiftx(i32 noundef 62654, i32 noundef %1, i32 noundef 512) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #10
  %144 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 3, ptr %144, align 4, !annotation !8
  %145 = load i8, ptr %28, align 4
  %146 = zext i8 %145 to i16
  store i16 %146, ptr %8, align 4
  %147 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %147, align 2
  %148 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %148, align 4
  %149 = lshr i32 %143, 8
  %150 = trunc i32 %149 to i8
  store i8 %150, ptr %7, align 1
  %151 = trunc i32 %143 to i8
  %152 = getelementptr inbounds [3 x i8], ptr %7, i32 0, i32 1
  store i8 %151, ptr %152, align 1
  %153 = getelementptr inbounds [3 x i8], ptr %7, i32 0, i32 2
  store i8 -1, ptr %153, align 1
  %154 = load ptr, ptr %33, align 4
  %155 = call i32 @i2c_transfer(ptr noundef %154, ptr noundef nonnull %8, i32 noundef 1) #10
  %156 = icmp ne i32 %155, 1
  %157 = load i32, ptr @stvdebug, align 4
  %158 = icmp ne i32 %157, 0
  %159 = select i1 %156, i1 %158, i1 false
  br i1 %159, label %160, label %162

160:                                              ; preds = %142
  %161 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %155) #11
  br label %162

162:                                              ; preds = %160, %142
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %7) #10
  %163 = call i32 @shiftx(i32 noundef 62655, i32 noundef %1, i32 noundef 512) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %164 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 3, ptr %164, align 4, !annotation !8
  %165 = load i8, ptr %28, align 4
  %166 = zext i8 %165 to i16
  store i16 %166, ptr %6, align 4
  %167 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %167, align 2
  %168 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %168, align 4
  %169 = lshr i32 %163, 8
  %170 = trunc i32 %169 to i8
  store i8 %170, ptr %5, align 1
  %171 = trunc i32 %163 to i8
  %172 = getelementptr inbounds [3 x i8], ptr %5, i32 0, i32 1
  store i8 %171, ptr %172, align 1
  %173 = getelementptr inbounds [3 x i8], ptr %5, i32 0, i32 2
  store i8 -49, ptr %173, align 1
  %174 = load ptr, ptr %33, align 4
  %175 = call i32 @i2c_transfer(ptr noundef %174, ptr noundef nonnull %6, i32 noundef 1) #10
  %176 = icmp ne i32 %175, 1
  %177 = load i32, ptr @stvdebug, align 4
  %178 = icmp ne i32 %177, 0
  %179 = select i1 %176, i1 %178, i1 false
  br i1 %179, label %180, label %182

180:                                              ; preds = %162
  %181 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %175) #11
  br label %182

182:                                              ; preds = %180, %162
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #10
  %183 = getelementptr inbounds i8, ptr %4, i32 4
  %184 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  %185 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  %186 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 1
  %187 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 2
  br label %188

188:                                              ; preds = %205, %182
  %189 = phi i32 [ 0, %182 ], [ %206, %205 ]
  %190 = call i32 @shiftx(i32 noundef 62647, i32 noundef %1, i32 noundef 512) #10
  %191 = add i32 %190, %189
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  store i32 3, ptr %183, align 4, !annotation !8
  %192 = load i8, ptr %28, align 4
  %193 = zext i8 %192 to i16
  store i16 %193, ptr %4, align 4
  store i16 0, ptr %184, align 2
  store ptr %3, ptr %185, align 4
  %194 = lshr i32 %191, 8
  %195 = trunc i32 %194 to i8
  store i8 %195, ptr %3, align 1
  %196 = trunc i32 %191 to i8
  store i8 %196, ptr %186, align 1
  store i8 -52, ptr %187, align 1
  %197 = load ptr, ptr %33, align 4
  %198 = call i32 @i2c_transfer(ptr noundef %197, ptr noundef nonnull %4, i32 noundef 1) #10
  %199 = icmp ne i32 %198, 1
  %200 = load i32, ptr @stvdebug, align 4
  %201 = icmp ne i32 %200, 0
  %202 = select i1 %199, i1 %201, i1 false
  br i1 %202, label %203, label %205

203:                                              ; preds = %188
  %204 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %198) #11
  br label %205

205:                                              ; preds = %203, %188
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #10
  %206 = add nuw nsw i32 %189, 1
  %207 = icmp eq i32 %206, 8
  br i1 %207, label %208, label %188

208:                                              ; preds = %205, %121, %99, %70, %60, %60
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @stv0900_activate_s2_modcod_single(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = alloca [3 x i8], align 1
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [3 x i8], align 1
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [3 x i8], align 1
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca [3 x i8], align 1
  %10 = alloca %struct.i2c_msg, align 4
  %11 = load i32, ptr @stvdebug, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0900_activate_s2_modcod_single) #11
  br label %15

15:                                               ; preds = %13, %2
  %16 = tail call i32 @shiftx(i32 noundef 62640, i32 noundef %1, i32 noundef 512) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #10
  %17 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 3, ptr %17, align 4, !annotation !8
  %18 = getelementptr inbounds %struct.stv0900_internal, ptr %0, i32 0, i32 18
  %19 = load i8, ptr %18, align 4
  %20 = zext i8 %19 to i16
  store i16 %20, ptr %10, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %21, align 2
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %9, ptr %22, align 4
  %23 = lshr i32 %16, 8
  %24 = trunc i32 %23 to i8
  store i8 %24, ptr %9, align 1
  %25 = trunc i32 %16 to i8
  %26 = getelementptr inbounds [3 x i8], ptr %9, i32 0, i32 1
  store i8 %25, ptr %26, align 1
  %27 = getelementptr inbounds [3 x i8], ptr %9, i32 0, i32 2
  store i8 -1, ptr %27, align 1
  %28 = getelementptr inbounds %struct.stv0900_internal, ptr %0, i32 0, i32 17
  %29 = load ptr, ptr %28, align 4
  %30 = call i32 @i2c_transfer(ptr noundef %29, ptr noundef nonnull %10, i32 noundef 1) #10
  %31 = icmp ne i32 %30, 1
  %32 = load i32, ptr @stvdebug, align 4
  %33 = icmp ne i32 %32, 0
  %34 = select i1 %31, i1 %33, i1 false
  br i1 %34, label %35, label %37

35:                                               ; preds = %15
  %36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %30) #11
  br label %37

37:                                               ; preds = %35, %15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %9) #10
  %38 = call i32 @shiftx(i32 noundef 62641, i32 noundef %1, i32 noundef 512) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #10
  %39 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 3, ptr %39, align 4, !annotation !8
  %40 = load i8, ptr %18, align 4
  %41 = zext i8 %40 to i16
  store i16 %41, ptr %8, align 4
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %42, align 2
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %43, align 4
  %44 = lshr i32 %38, 8
  %45 = trunc i32 %44 to i8
  store i8 %45, ptr %7, align 1
  %46 = trunc i32 %38 to i8
  %47 = getelementptr inbounds [3 x i8], ptr %7, i32 0, i32 1
  store i8 %46, ptr %47, align 1
  %48 = getelementptr inbounds [3 x i8], ptr %7, i32 0, i32 2
  store i8 -16, ptr %48, align 1
  %49 = load ptr, ptr %28, align 4
  %50 = call i32 @i2c_transfer(ptr noundef %49, ptr noundef nonnull %8, i32 noundef 1) #10
  %51 = icmp ne i32 %50, 1
  %52 = load i32, ptr @stvdebug, align 4
  %53 = icmp ne i32 %52, 0
  %54 = select i1 %51, i1 %53, i1 false
  br i1 %54, label %55, label %57

55:                                               ; preds = %37
  %56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %50) #11
  br label %57

57:                                               ; preds = %55, %37
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %7) #10
  %58 = call i32 @shiftx(i32 noundef 62655, i32 noundef %1, i32 noundef 512) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %59 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 3, ptr %59, align 4, !annotation !8
  %60 = load i8, ptr %18, align 4
  %61 = zext i8 %60 to i16
  store i16 %61, ptr %6, align 4
  %62 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %62, align 2
  %63 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %63, align 4
  %64 = lshr i32 %58, 8
  %65 = trunc i32 %64 to i8
  store i8 %65, ptr %5, align 1
  %66 = trunc i32 %58 to i8
  %67 = getelementptr inbounds [3 x i8], ptr %5, i32 0, i32 1
  store i8 %66, ptr %67, align 1
  %68 = getelementptr inbounds [3 x i8], ptr %5, i32 0, i32 2
  store i8 15, ptr %68, align 1
  %69 = load ptr, ptr %28, align 4
  %70 = call i32 @i2c_transfer(ptr noundef %69, ptr noundef nonnull %6, i32 noundef 1) #10
  %71 = icmp ne i32 %70, 1
  %72 = load i32, ptr @stvdebug, align 4
  %73 = icmp ne i32 %72, 0
  %74 = select i1 %71, i1 %73, i1 false
  br i1 %74, label %75, label %77

75:                                               ; preds = %57
  %76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %70) #11
  br label %77

77:                                               ; preds = %75, %57
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #10
  %78 = getelementptr inbounds i8, ptr %4, i32 4
  %79 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  %80 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  %81 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 1
  %82 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 2
  br label %83

83:                                               ; preds = %100, %77
  %84 = phi i32 [ 0, %77 ], [ %101, %100 ]
  %85 = call i32 @shiftx(i32 noundef 62642, i32 noundef %1, i32 noundef 512) #10
  %86 = add i32 %85, %84
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  store i32 3, ptr %78, align 4, !annotation !8
  %87 = load i8, ptr %18, align 4
  %88 = zext i8 %87 to i16
  store i16 %88, ptr %4, align 4
  store i16 0, ptr %79, align 2
  store ptr %3, ptr %80, align 4
  %89 = lshr i32 %86, 8
  %90 = trunc i32 %89 to i8
  store i8 %90, ptr %3, align 1
  %91 = trunc i32 %86 to i8
  store i8 %91, ptr %81, align 1
  store i8 0, ptr %82, align 1
  %92 = load ptr, ptr %28, align 4
  %93 = call i32 @i2c_transfer(ptr noundef %92, ptr noundef nonnull %4, i32 noundef 1) #10
  %94 = icmp ne i32 %93, 1
  %95 = load i32, ptr @stvdebug, align 4
  %96 = icmp ne i32 %95, 0
  %97 = select i1 %94, i1 %96, i1 false
  br i1 %97, label %98, label %100

98:                                               ; preds = %83
  %99 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %93) #11
  br label %100

100:                                              ; preds = %98, %83
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #10
  %101 = add nuw nsw i32 %84, 1
  %102 = icmp eq i32 %101, 13
  br i1 %102, label %103, label %83

103:                                              ; preds = %100
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @stv0900_start_search(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = alloca [3 x i8], align 1
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [3 x i8], align 1
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [3 x i8], align 1
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca [3 x i8], align 1
  %10 = alloca %struct.i2c_msg, align 4
  %11 = alloca [3 x i8], align 1
  %12 = alloca %struct.i2c_msg, align 4
  %13 = alloca [3 x i8], align 1
  %14 = alloca %struct.i2c_msg, align 4
  %15 = alloca [3 x i8], align 1
  %16 = alloca %struct.i2c_msg, align 4
  %17 = alloca [3 x i8], align 1
  %18 = alloca %struct.i2c_msg, align 4
  %19 = alloca [3 x i8], align 1
  %20 = alloca %struct.i2c_msg, align 4
  %21 = alloca [3 x i8], align 1
  %22 = alloca %struct.i2c_msg, align 4
  %23 = alloca [3 x i8], align 1
  %24 = alloca %struct.i2c_msg, align 4
  %25 = alloca [3 x i8], align 1
  %26 = alloca %struct.i2c_msg, align 4
  %27 = alloca [3 x i8], align 1
  %28 = alloca %struct.i2c_msg, align 4
  %29 = alloca [3 x i8], align 1
  %30 = alloca %struct.i2c_msg, align 4
  %31 = alloca [3 x i8], align 1
  %32 = alloca %struct.i2c_msg, align 4
  %33 = alloca [3 x i8], align 1
  %34 = alloca %struct.i2c_msg, align 4
  %35 = alloca [3 x i8], align 1
  %36 = alloca %struct.i2c_msg, align 4
  %37 = alloca [3 x i8], align 1
  %38 = alloca %struct.i2c_msg, align 4
  %39 = alloca [3 x i8], align 1
  %40 = alloca %struct.i2c_msg, align 4
  %41 = alloca [3 x i8], align 1
  %42 = alloca %struct.i2c_msg, align 4
  %43 = alloca [3 x i8], align 1
  %44 = alloca %struct.i2c_msg, align 4
  %45 = alloca [3 x i8], align 1
  %46 = alloca %struct.i2c_msg, align 4
  %47 = alloca [3 x i8], align 1
  %48 = alloca %struct.i2c_msg, align 4
  %49 = alloca [3 x i8], align 1
  %50 = alloca %struct.i2c_msg, align 4
  %51 = alloca [3 x i8], align 1
  %52 = alloca %struct.i2c_msg, align 4
  %53 = alloca [3 x i8], align 1
  %54 = alloca %struct.i2c_msg, align 4
  %55 = alloca [3 x i8], align 1
  %56 = alloca %struct.i2c_msg, align 4
  %57 = alloca [3 x i8], align 1
  %58 = alloca %struct.i2c_msg, align 4
  %59 = alloca [3 x i8], align 1
  %60 = alloca %struct.i2c_msg, align 4
  %61 = alloca [3 x i8], align 1
  %62 = alloca %struct.i2c_msg, align 4
  %63 = alloca [3 x i8], align 1
  %64 = alloca %struct.i2c_msg, align 4
  %65 = alloca [3 x i8], align 1
  %66 = alloca %struct.i2c_msg, align 4
  %67 = alloca [3 x i8], align 1
  %68 = alloca %struct.i2c_msg, align 4
  %69 = alloca [3 x i8], align 1
  %70 = alloca %struct.i2c_msg, align 4
  %71 = alloca [3 x i8], align 1
  %72 = alloca %struct.i2c_msg, align 4
  %73 = alloca [3 x i8], align 1
  %74 = alloca %struct.i2c_msg, align 4
  %75 = tail call i32 @shiftx(i32 noundef -199884769, i32 noundef %1, i32 noundef 33554432) #10
  tail call void @stv0900_write_bits(ptr noundef %0, i32 noundef %75, i8 noundef zeroext 31)
  %76 = getelementptr inbounds %struct.stv0900_internal, ptr %0, i32 0, i32 20
  %77 = load i8, ptr %76, align 2
  %78 = icmp eq i8 %77, 16
  br i1 %78, label %79, label %103

79:                                               ; preds = %2
  %80 = tail call i32 @shiftx(i32 noundef 62498, i32 noundef %1, i32 noundef 512) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %73) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %74) #10
  %81 = getelementptr inbounds i8, ptr %74, i32 4
  store i32 3, ptr %81, align 4, !annotation !8
  %82 = getelementptr inbounds %struct.stv0900_internal, ptr %0, i32 0, i32 18
  %83 = load i8, ptr %82, align 4
  %84 = zext i8 %83 to i16
  store i16 %84, ptr %74, align 4
  %85 = getelementptr inbounds %struct.i2c_msg, ptr %74, i32 0, i32 1
  store i16 0, ptr %85, align 2
  %86 = getelementptr inbounds %struct.i2c_msg, ptr %74, i32 0, i32 3
  store ptr %73, ptr %86, align 4
  %87 = lshr i32 %80, 8
  %88 = trunc i32 %87 to i8
  store i8 %88, ptr %73, align 1
  %89 = trunc i32 %80 to i8
  %90 = getelementptr inbounds [3 x i8], ptr %73, i32 0, i32 1
  store i8 %89, ptr %90, align 1
  %91 = getelementptr inbounds [3 x i8], ptr %73, i32 0, i32 2
  store i8 -86, ptr %91, align 1
  %92 = getelementptr inbounds %struct.stv0900_internal, ptr %0, i32 0, i32 17
  %93 = load ptr, ptr %92, align 4
  %94 = call i32 @i2c_transfer(ptr noundef %93, ptr noundef nonnull %74, i32 noundef 1) #10
  %95 = icmp ne i32 %94, 1
  %96 = load i32, ptr @stvdebug, align 4
  %97 = icmp ne i32 %96, 0
  %98 = select i1 %95, i1 %97, i1 false
  br i1 %98, label %99, label %101

99:                                               ; preds = %79
  %100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %94) #11
  br label %101

101:                                              ; preds = %99, %79
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %74) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %73) #10
  %102 = load i8, ptr %76, align 2
  br label %103

103:                                              ; preds = %101, %2
  %104 = phi i8 [ %102, %101 ], [ %77, %2 ]
  %105 = icmp ult i8 %104, 32
  br i1 %105, label %106, label %130

106:                                              ; preds = %103
  %107 = call i32 @shiftx(i32 noundef 62526, i32 noundef %1, i32 noundef 512) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %71) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %72) #10
  %108 = getelementptr inbounds i8, ptr %72, i32 4
  store i32 3, ptr %108, align 4, !annotation !8
  %109 = getelementptr inbounds %struct.stv0900_internal, ptr %0, i32 0, i32 18
  %110 = load i8, ptr %109, align 4
  %111 = zext i8 %110 to i16
  store i16 %111, ptr %72, align 4
  %112 = getelementptr inbounds %struct.i2c_msg, ptr %72, i32 0, i32 1
  store i16 0, ptr %112, align 2
  %113 = getelementptr inbounds %struct.i2c_msg, ptr %72, i32 0, i32 3
  store ptr %71, ptr %113, align 4
  %114 = lshr i32 %107, 8
  %115 = trunc i32 %114 to i8
  store i8 %115, ptr %71, align 1
  %116 = trunc i32 %107 to i8
  %117 = getelementptr inbounds [3 x i8], ptr %71, i32 0, i32 1
  store i8 %116, ptr %117, align 1
  %118 = getelementptr inbounds [3 x i8], ptr %71, i32 0, i32 2
  store i8 85, ptr %118, align 1
  %119 = getelementptr inbounds %struct.stv0900_internal, ptr %0, i32 0, i32 17
  %120 = load ptr, ptr %119, align 4
  %121 = call i32 @i2c_transfer(ptr noundef %120, ptr noundef nonnull %72, i32 noundef 1) #10
  %122 = icmp ne i32 %121, 1
  %123 = load i32, ptr @stvdebug, align 4
  %124 = icmp ne i32 %123, 0
  %125 = select i1 %122, i1 %124, i1 false
  br i1 %125, label %126, label %128

126:                                              ; preds = %106
  %127 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %121) #11
  br label %128

128:                                              ; preds = %126, %106
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %72) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %71) #10
  %129 = load i8, ptr %76, align 2
  br label %130

130:                                              ; preds = %128, %103
  %131 = phi i8 [ %129, %128 ], [ %104, %103 ]
  %132 = icmp ult i8 %131, 33
  br i1 %132, label %133, label %302

133:                                              ; preds = %130
  %134 = getelementptr inbounds %struct.stv0900_internal, ptr %0, i32 0, i32 6
  %135 = load i32, ptr %134, align 4
  %136 = icmp slt i32 %135, 5000001
  %137 = call i32 @shiftx(i32 noundef 62520, i32 noundef %1, i32 noundef 512) #10
  br i1 %136, label %138, label %260

138:                                              ; preds = %133
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %69) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %70) #10
  %139 = getelementptr inbounds i8, ptr %70, i32 4
  store i32 3, ptr %139, align 4, !annotation !8
  %140 = getelementptr inbounds %struct.stv0900_internal, ptr %0, i32 0, i32 18
  %141 = load i8, ptr %140, align 4
  %142 = zext i8 %141 to i16
  store i16 %142, ptr %70, align 4
  %143 = getelementptr inbounds %struct.i2c_msg, ptr %70, i32 0, i32 1
  store i16 0, ptr %143, align 2
  %144 = getelementptr inbounds %struct.i2c_msg, ptr %70, i32 0, i32 3
  store ptr %69, ptr %144, align 4
  %145 = lshr i32 %137, 8
  %146 = trunc i32 %145 to i8
  store i8 %146, ptr %69, align 1
  %147 = trunc i32 %137 to i8
  %148 = getelementptr inbounds [3 x i8], ptr %69, i32 0, i32 1
  store i8 %147, ptr %148, align 1
  %149 = getelementptr inbounds [3 x i8], ptr %69, i32 0, i32 2
  store i8 68, ptr %149, align 1
  %150 = getelementptr inbounds %struct.stv0900_internal, ptr %0, i32 0, i32 17
  %151 = load ptr, ptr %150, align 4
  %152 = call i32 @i2c_transfer(ptr noundef %151, ptr noundef nonnull %70, i32 noundef 1) #10
  %153 = icmp ne i32 %152, 1
  %154 = load i32, ptr @stvdebug, align 4
  %155 = icmp ne i32 %154, 0
  %156 = select i1 %153, i1 %155, i1 false
  br i1 %156, label %157, label %159

157:                                              ; preds = %138
  %158 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %152) #11
  br label %159

159:                                              ; preds = %157, %138
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %70) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %69) #10
  %160 = call i32 @shiftx(i32 noundef 62530, i32 noundef %1, i32 noundef 512) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %67) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %68) #10
  %161 = getelementptr inbounds i8, ptr %68, i32 4
  store i32 3, ptr %161, align 4, !annotation !8
  %162 = load i8, ptr %140, align 4
  %163 = zext i8 %162 to i16
  store i16 %163, ptr %68, align 4
  %164 = getelementptr inbounds %struct.i2c_msg, ptr %68, i32 0, i32 1
  store i16 0, ptr %164, align 2
  %165 = getelementptr inbounds %struct.i2c_msg, ptr %68, i32 0, i32 3
  store ptr %67, ptr %165, align 4
  %166 = lshr i32 %160, 8
  %167 = trunc i32 %166 to i8
  store i8 %167, ptr %67, align 1
  %168 = trunc i32 %160 to i8
  %169 = getelementptr inbounds [3 x i8], ptr %67, i32 0, i32 1
  store i8 %168, ptr %169, align 1
  %170 = getelementptr inbounds [3 x i8], ptr %67, i32 0, i32 2
  store i8 15, ptr %170, align 1
  %171 = load ptr, ptr %150, align 4
  %172 = call i32 @i2c_transfer(ptr noundef %171, ptr noundef nonnull %68, i32 noundef 1) #10
  %173 = icmp ne i32 %172, 1
  %174 = load i32, ptr @stvdebug, align 4
  %175 = icmp ne i32 %174, 0
  %176 = select i1 %173, i1 %175, i1 false
  br i1 %176, label %177, label %179

177:                                              ; preds = %159
  %178 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %172) #11
  br label %179

179:                                              ; preds = %177, %159
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %68) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %67) #10
  %180 = call i32 @shiftx(i32 noundef 62531, i32 noundef %1, i32 noundef 512) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %65) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %66) #10
  %181 = getelementptr inbounds i8, ptr %66, i32 4
  store i32 3, ptr %181, align 4, !annotation !8
  %182 = load i8, ptr %140, align 4
  %183 = zext i8 %182 to i16
  store i16 %183, ptr %66, align 4
  %184 = getelementptr inbounds %struct.i2c_msg, ptr %66, i32 0, i32 1
  store i16 0, ptr %184, align 2
  %185 = getelementptr inbounds %struct.i2c_msg, ptr %66, i32 0, i32 3
  store ptr %65, ptr %185, align 4
  %186 = lshr i32 %180, 8
  %187 = trunc i32 %186 to i8
  store i8 %187, ptr %65, align 1
  %188 = trunc i32 %180 to i8
  %189 = getelementptr inbounds [3 x i8], ptr %65, i32 0, i32 1
  store i8 %188, ptr %189, align 1
  %190 = getelementptr inbounds [3 x i8], ptr %65, i32 0, i32 2
  store i8 -1, ptr %190, align 1
  %191 = load ptr, ptr %150, align 4
  %192 = call i32 @i2c_transfer(ptr noundef %191, ptr noundef nonnull %66, i32 noundef 1) #10
  %193 = icmp ne i32 %192, 1
  %194 = load i32, ptr @stvdebug, align 4
  %195 = icmp ne i32 %194, 0
  %196 = select i1 %193, i1 %195, i1 false
  br i1 %196, label %197, label %199

197:                                              ; preds = %179
  %198 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %192) #11
  br label %199

199:                                              ; preds = %197, %179
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %66) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %65) #10
  %200 = call i32 @shiftx(i32 noundef 62534, i32 noundef %1, i32 noundef 512) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %63) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %64) #10
  %201 = getelementptr inbounds i8, ptr %64, i32 4
  store i32 3, ptr %201, align 4, !annotation !8
  %202 = load i8, ptr %140, align 4
  %203 = zext i8 %202 to i16
  store i16 %203, ptr %64, align 4
  %204 = getelementptr inbounds %struct.i2c_msg, ptr %64, i32 0, i32 1
  store i16 0, ptr %204, align 2
  %205 = getelementptr inbounds %struct.i2c_msg, ptr %64, i32 0, i32 3
  store ptr %63, ptr %205, align 4
  %206 = lshr i32 %200, 8
  %207 = trunc i32 %206 to i8
  store i8 %207, ptr %63, align 1
  %208 = trunc i32 %200 to i8
  %209 = getelementptr inbounds [3 x i8], ptr %63, i32 0, i32 1
  store i8 %208, ptr %209, align 1
  %210 = getelementptr inbounds [3 x i8], ptr %63, i32 0, i32 2
  store i8 -16, ptr %210, align 1
  %211 = load ptr, ptr %150, align 4
  %212 = call i32 @i2c_transfer(ptr noundef %211, ptr noundef nonnull %64, i32 noundef 1) #10
  %213 = icmp ne i32 %212, 1
  %214 = load i32, ptr @stvdebug, align 4
  %215 = icmp ne i32 %214, 0
  %216 = select i1 %213, i1 %215, i1 false
  br i1 %216, label %217, label %219

217:                                              ; preds = %199
  %218 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %212) #11
  br label %219

219:                                              ; preds = %217, %199
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %64) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %63) #10
  %220 = call i32 @shiftx(i32 noundef 62535, i32 noundef %1, i32 noundef 512) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %61) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %62) #10
  %221 = getelementptr inbounds i8, ptr %62, i32 4
  store i32 3, ptr %221, align 4, !annotation !8
  %222 = load i8, ptr %140, align 4
  %223 = zext i8 %222 to i16
  store i16 %223, ptr %62, align 4
  %224 = getelementptr inbounds %struct.i2c_msg, ptr %62, i32 0, i32 1
  store i16 0, ptr %224, align 2
  %225 = getelementptr inbounds %struct.i2c_msg, ptr %62, i32 0, i32 3
  store ptr %61, ptr %225, align 4
  %226 = lshr i32 %220, 8
  %227 = trunc i32 %226 to i8
  store i8 %227, ptr %61, align 1
  %228 = trunc i32 %220 to i8
  %229 = getelementptr inbounds [3 x i8], ptr %61, i32 0, i32 1
  store i8 %228, ptr %229, align 1
  %230 = getelementptr inbounds [3 x i8], ptr %61, i32 0, i32 2
  store i8 0, ptr %230, align 1
  %231 = load ptr, ptr %150, align 4
  %232 = call i32 @i2c_transfer(ptr noundef %231, ptr noundef nonnull %62, i32 noundef 1) #10
  %233 = icmp ne i32 %232, 1
  %234 = load i32, ptr @stvdebug, align 4
  %235 = icmp ne i32 %234, 0
  %236 = select i1 %233, i1 %235, i1 false
  br i1 %236, label %237, label %239

237:                                              ; preds = %219
  %238 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %232) #11
  br label %239

239:                                              ; preds = %237, %219
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %62) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %61) #10
  %240 = call i32 @shiftx(i32 noundef 62546, i32 noundef %1, i32 noundef 512) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %59) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %60) #10
  %241 = getelementptr inbounds i8, ptr %60, i32 4
  store i32 3, ptr %241, align 4, !annotation !8
  %242 = load i8, ptr %140, align 4
  %243 = zext i8 %242 to i16
  store i16 %243, ptr %60, align 4
  %244 = getelementptr inbounds %struct.i2c_msg, ptr %60, i32 0, i32 1
  store i16 0, ptr %244, align 2
  %245 = getelementptr inbounds %struct.i2c_msg, ptr %60, i32 0, i32 3
  store ptr %59, ptr %245, align 4
  %246 = lshr i32 %240, 8
  %247 = trunc i32 %246 to i8
  store i8 %247, ptr %59, align 1
  %248 = trunc i32 %240 to i8
  %249 = getelementptr inbounds [3 x i8], ptr %59, i32 0, i32 1
  store i8 %248, ptr %249, align 1
  %250 = getelementptr inbounds [3 x i8], ptr %59, i32 0, i32 2
  store i8 104, ptr %250, align 1
  %251 = load ptr, ptr %150, align 4
  %252 = call i32 @i2c_transfer(ptr noundef %251, ptr noundef nonnull %60, i32 noundef 1) #10
  %253 = icmp ne i32 %252, 1
  %254 = load i32, ptr @stvdebug, align 4
  %255 = icmp ne i32 %254, 0
  %256 = select i1 %253, i1 %255, i1 false
  br i1 %256, label %257, label %259

257:                                              ; preds = %239
  %258 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %252) #11
  br label %259

259:                                              ; preds = %257, %239
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %60) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %59) #10
  br label %404

260:                                              ; preds = %133
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %57) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %58) #10
  %261 = getelementptr inbounds i8, ptr %58, i32 4
  store i32 3, ptr %261, align 4, !annotation !8
  %262 = getelementptr inbounds %struct.stv0900_internal, ptr %0, i32 0, i32 18
  %263 = load i8, ptr %262, align 4
  %264 = zext i8 %263 to i16
  store i16 %264, ptr %58, align 4
  %265 = getelementptr inbounds %struct.i2c_msg, ptr %58, i32 0, i32 1
  store i16 0, ptr %265, align 2
  %266 = getelementptr inbounds %struct.i2c_msg, ptr %58, i32 0, i32 3
  store ptr %57, ptr %266, align 4
  %267 = lshr i32 %137, 8
  %268 = trunc i32 %267 to i8
  store i8 %268, ptr %57, align 1
  %269 = trunc i32 %137 to i8
  %270 = getelementptr inbounds [3 x i8], ptr %57, i32 0, i32 1
  store i8 %269, ptr %270, align 1
  %271 = getelementptr inbounds [3 x i8], ptr %57, i32 0, i32 2
  store i8 -60, ptr %271, align 1
  %272 = getelementptr inbounds %struct.stv0900_internal, ptr %0, i32 0, i32 17
  %273 = load ptr, ptr %272, align 4
  %274 = call i32 @i2c_transfer(ptr noundef %273, ptr noundef nonnull %58, i32 noundef 1) #10
  %275 = icmp ne i32 %274, 1
  %276 = load i32, ptr @stvdebug, align 4
  %277 = icmp ne i32 %276, 0
  %278 = select i1 %275, i1 %277, i1 false
  br i1 %278, label %279, label %281

279:                                              ; preds = %260
  %280 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %274) #11
  br label %281

281:                                              ; preds = %279, %260
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %58) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %57) #10
  %282 = call i32 @shiftx(i32 noundef 62546, i32 noundef %1, i32 noundef 512) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %55) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %56) #10
  %283 = getelementptr inbounds i8, ptr %56, i32 4
  store i32 3, ptr %283, align 4, !annotation !8
  %284 = load i8, ptr %262, align 4
  %285 = zext i8 %284 to i16
  store i16 %285, ptr %56, align 4
  %286 = getelementptr inbounds %struct.i2c_msg, ptr %56, i32 0, i32 1
  store i16 0, ptr %286, align 2
  %287 = getelementptr inbounds %struct.i2c_msg, ptr %56, i32 0, i32 3
  store ptr %55, ptr %287, align 4
  %288 = lshr i32 %282, 8
  %289 = trunc i32 %288 to i8
  store i8 %289, ptr %55, align 1
  %290 = trunc i32 %282 to i8
  %291 = getelementptr inbounds [3 x i8], ptr %55, i32 0, i32 1
  store i8 %290, ptr %291, align 1
  %292 = getelementptr inbounds [3 x i8], ptr %55, i32 0, i32 2
  store i8 68, ptr %292, align 1
  %293 = load ptr, ptr %272, align 4
  %294 = call i32 @i2c_transfer(ptr noundef %293, ptr noundef nonnull %56, i32 noundef 1) #10
  %295 = icmp ne i32 %294, 1
  %296 = load i32, ptr @stvdebug, align 4
  %297 = icmp ne i32 %296, 0
  %298 = select i1 %295, i1 %297, i1 false
  br i1 %298, label %299, label %301

299:                                              ; preds = %281
  %300 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %294) #11
  br label %301

301:                                              ; preds = %299, %281
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %56) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %55) #10
  br label %404

302:                                              ; preds = %130
  %303 = getelementptr %struct.stv0900_internal, ptr %0, i32 0, i32 6, i32 %1
  %304 = load i32, ptr %303, align 4
  %305 = icmp slt i32 %304, 5000001
  %306 = call i32 @shiftx(i32 noundef 62546, i32 noundef %1, i32 noundef 512) #10
  br i1 %305, label %307, label %329

307:                                              ; preds = %302
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %53) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %54) #10
  %308 = getelementptr inbounds i8, ptr %54, i32 4
  store i32 3, ptr %308, align 4, !annotation !8
  %309 = getelementptr inbounds %struct.stv0900_internal, ptr %0, i32 0, i32 18
  %310 = load i8, ptr %309, align 4
  %311 = zext i8 %310 to i16
  store i16 %311, ptr %54, align 4
  %312 = getelementptr inbounds %struct.i2c_msg, ptr %54, i32 0, i32 1
  store i16 0, ptr %312, align 2
  %313 = getelementptr inbounds %struct.i2c_msg, ptr %54, i32 0, i32 3
  store ptr %53, ptr %313, align 4
  %314 = lshr i32 %306, 8
  %315 = trunc i32 %314 to i8
  store i8 %315, ptr %53, align 1
  %316 = trunc i32 %306 to i8
  %317 = getelementptr inbounds [3 x i8], ptr %53, i32 0, i32 1
  store i8 %316, ptr %317, align 1
  %318 = getelementptr inbounds [3 x i8], ptr %53, i32 0, i32 2
  store i8 104, ptr %318, align 1
  %319 = getelementptr inbounds %struct.stv0900_internal, ptr %0, i32 0, i32 17
  %320 = load ptr, ptr %319, align 4
  %321 = call i32 @i2c_transfer(ptr noundef %320, ptr noundef nonnull %54, i32 noundef 1) #10
  %322 = icmp ne i32 %321, 1
  %323 = load i32, ptr @stvdebug, align 4
  %324 = icmp ne i32 %323, 0
  %325 = select i1 %322, i1 %324, i1 false
  br i1 %325, label %326, label %328

326:                                              ; preds = %307
  %327 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %321) #11
  br label %328

328:                                              ; preds = %326, %307
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %54) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %53) #10
  br label %351

329:                                              ; preds = %302
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %51) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %52) #10
  %330 = getelementptr inbounds i8, ptr %52, i32 4
  store i32 3, ptr %330, align 4, !annotation !8
  %331 = getelementptr inbounds %struct.stv0900_internal, ptr %0, i32 0, i32 18
  %332 = load i8, ptr %331, align 4
  %333 = zext i8 %332 to i16
  store i16 %333, ptr %52, align 4
  %334 = getelementptr inbounds %struct.i2c_msg, ptr %52, i32 0, i32 1
  store i16 0, ptr %334, align 2
  %335 = getelementptr inbounds %struct.i2c_msg, ptr %52, i32 0, i32 3
  store ptr %51, ptr %335, align 4
  %336 = lshr i32 %306, 8
  %337 = trunc i32 %336 to i8
  store i8 %337, ptr %51, align 1
  %338 = trunc i32 %306 to i8
  %339 = getelementptr inbounds [3 x i8], ptr %51, i32 0, i32 1
  store i8 %338, ptr %339, align 1
  %340 = getelementptr inbounds [3 x i8], ptr %51, i32 0, i32 2
  store i8 68, ptr %340, align 1
  %341 = getelementptr inbounds %struct.stv0900_internal, ptr %0, i32 0, i32 17
  %342 = load ptr, ptr %341, align 4
  %343 = call i32 @i2c_transfer(ptr noundef %342, ptr noundef nonnull %52, i32 noundef 1) #10
  %344 = icmp ne i32 %343, 1
  %345 = load i32, ptr @stvdebug, align 4
  %346 = icmp ne i32 %345, 0
  %347 = select i1 %344, i1 %346, i1 false
  br i1 %347, label %348, label %350

348:                                              ; preds = %329
  %349 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %343) #11
  br label %350

350:                                              ; preds = %348, %329
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %52) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %51) #10
  br label %351

351:                                              ; preds = %350, %328
  %352 = call i32 @shiftx(i32 noundef 62520, i32 noundef %1, i32 noundef 512) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %49) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %50) #10
  %353 = getelementptr inbounds i8, ptr %50, i32 4
  store i32 3, ptr %353, align 4, !annotation !8
  %354 = getelementptr inbounds %struct.stv0900_internal, ptr %0, i32 0, i32 18
  %355 = load i8, ptr %354, align 4
  %356 = zext i8 %355 to i16
  store i16 %356, ptr %50, align 4
  %357 = getelementptr inbounds %struct.i2c_msg, ptr %50, i32 0, i32 1
  store i16 0, ptr %357, align 2
  %358 = getelementptr inbounds %struct.i2c_msg, ptr %50, i32 0, i32 3
  store ptr %49, ptr %358, align 4
  %359 = lshr i32 %352, 8
  %360 = trunc i32 %359 to i8
  store i8 %360, ptr %49, align 1
  %361 = trunc i32 %352 to i8
  %362 = getelementptr inbounds [3 x i8], ptr %49, i32 0, i32 1
  store i8 %361, ptr %362, align 1
  %363 = getelementptr inbounds [3 x i8], ptr %49, i32 0, i32 2
  store i8 70, ptr %363, align 1
  %364 = getelementptr inbounds %struct.stv0900_internal, ptr %0, i32 0, i32 17
  %365 = load ptr, ptr %364, align 4
  %366 = call i32 @i2c_transfer(ptr noundef %365, ptr noundef nonnull %50, i32 noundef 1) #10
  %367 = icmp ne i32 %366, 1
  %368 = load i32, ptr @stvdebug, align 4
  %369 = icmp ne i32 %368, 0
  %370 = select i1 %367, i1 %369, i1 false
  br i1 %370, label %371, label %373

371:                                              ; preds = %351
  %372 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %366) #11
  br label %373

373:                                              ; preds = %371, %351
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %50) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %49) #10
  %374 = getelementptr %struct.stv0900_internal, ptr %0, i32 0, i32 9, i32 %1
  %375 = load i32, ptr %374, align 4
  %376 = icmp eq i32 %375, 2
  br i1 %376, label %386, label %377

377:                                              ; preds = %373
  %378 = getelementptr %struct.stv0900_internal, ptr %0, i32 0, i32 7, i32 %1
  %379 = load i32, ptr %378, align 4
  %380 = sdiv i32 %379, 2000
  %381 = load i32, ptr %303, align 4
  %382 = icmp slt i32 %381, 5000001
  %383 = select i1 %382, i32 80, i32 600
  %384 = add nsw i32 %383, %380
  %385 = shl i32 %384, 16
  br label %386

386:                                              ; preds = %377, %373
  %387 = phi i32 [ %385, %377 ], [ 65536000, %373 ]
  %388 = getelementptr inbounds %struct.stv0900_internal, ptr %0, i32 0, i32 1
  %389 = load i32, ptr %388, align 4
  %390 = sdiv i32 %389, 1000
  %391 = udiv i32 %387, %390
  %392 = call i32 @shiftx(i32 noundef -197000705, i32 noundef %1, i32 noundef 33554432) #10
  %393 = lshr i32 %391, 8
  %394 = trunc i32 %393 to i8
  call void @stv0900_write_bits(ptr noundef %0, i32 noundef %392, i8 noundef zeroext %394)
  %395 = call i32 @shiftx(i32 noundef -196935425, i32 noundef %1, i32 noundef 33554432) #10
  %396 = trunc i32 %391 to i8
  call void @stv0900_write_bits(ptr noundef %0, i32 noundef %395, i8 noundef zeroext %396)
  %397 = call i32 @shiftx(i32 noundef -196738561, i32 noundef %1, i32 noundef 33554432) #10
  %398 = mul i32 %391, -65536
  %399 = lshr exact i32 %398, 16
  %400 = lshr i32 %398, 24
  %401 = trunc i32 %400 to i8
  call void @stv0900_write_bits(ptr noundef %0, i32 noundef %397, i8 noundef zeroext %401)
  %402 = call i32 @shiftx(i32 noundef -196673281, i32 noundef %1, i32 noundef 33554432) #10
  %403 = trunc i32 %399 to i8
  call void @stv0900_write_bits(ptr noundef %0, i32 noundef %402, i8 noundef zeroext %403)
  br label %404

404:                                              ; preds = %386, %301, %259
  %405 = call i32 @shiftx(i32 noundef 62536, i32 noundef %1, i32 noundef 512) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %47) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %48) #10
  %406 = getelementptr inbounds i8, ptr %48, i32 4
  store i32 3, ptr %406, align 4, !annotation !8
  %407 = getelementptr inbounds %struct.stv0900_internal, ptr %0, i32 0, i32 18
  %408 = load i8, ptr %407, align 4
  %409 = zext i8 %408 to i16
  store i16 %409, ptr %48, align 4
  %410 = getelementptr inbounds %struct.i2c_msg, ptr %48, i32 0, i32 1
  store i16 0, ptr %410, align 2
  %411 = getelementptr inbounds %struct.i2c_msg, ptr %48, i32 0, i32 3
  store ptr %47, ptr %411, align 4
  %412 = lshr i32 %405, 8
  %413 = trunc i32 %412 to i8
  store i8 %413, ptr %47, align 1
  %414 = trunc i32 %405 to i8
  %415 = getelementptr inbounds [3 x i8], ptr %47, i32 0, i32 1
  store i8 %414, ptr %415, align 1
  %416 = getelementptr inbounds [3 x i8], ptr %47, i32 0, i32 2
  store i8 0, ptr %416, align 1
  %417 = getelementptr inbounds %struct.stv0900_internal, ptr %0, i32 0, i32 17
  %418 = load ptr, ptr %417, align 4
  %419 = call i32 @i2c_transfer(ptr noundef %418, ptr noundef nonnull %48, i32 noundef 1) #10
  %420 = icmp ne i32 %419, 1
  %421 = load i32, ptr @stvdebug, align 4
  %422 = icmp ne i32 %421, 0
  %423 = select i1 %420, i1 %422, i1 false
  br i1 %423, label %424, label %426

424:                                              ; preds = %404
  %425 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %419) #11
  br label %426

426:                                              ; preds = %424, %404
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %48) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %47) #10
  %427 = call i32 @shiftx(i32 noundef 62537, i32 noundef %1, i32 noundef 512) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %45) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %46) #10
  %428 = getelementptr inbounds i8, ptr %46, i32 4
  store i32 3, ptr %428, align 4, !annotation !8
  %429 = load i8, ptr %407, align 4
  %430 = zext i8 %429 to i16
  store i16 %430, ptr %46, align 4
  %431 = getelementptr inbounds %struct.i2c_msg, ptr %46, i32 0, i32 1
  store i16 0, ptr %431, align 2
  %432 = getelementptr inbounds %struct.i2c_msg, ptr %46, i32 0, i32 3
  store ptr %45, ptr %432, align 4
  %433 = lshr i32 %427, 8
  %434 = trunc i32 %433 to i8
  store i8 %434, ptr %45, align 1
  %435 = trunc i32 %427 to i8
  %436 = getelementptr inbounds [3 x i8], ptr %45, i32 0, i32 1
  store i8 %435, ptr %436, align 1
  %437 = getelementptr inbounds [3 x i8], ptr %45, i32 0, i32 2
  store i8 0, ptr %437, align 1
  %438 = load ptr, ptr %417, align 4
  %439 = call i32 @i2c_transfer(ptr noundef %438, ptr noundef nonnull %46, i32 noundef 1) #10
  %440 = icmp ne i32 %439, 1
  %441 = load i32, ptr @stvdebug, align 4
  %442 = icmp ne i32 %441, 0
  %443 = select i1 %440, i1 %442, i1 false
  br i1 %443, label %444, label %446

444:                                              ; preds = %426
  %445 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %439) #11
  br label %446

446:                                              ; preds = %444, %426
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %46) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %45) #10
  %447 = load i8, ptr %76, align 2
  %448 = icmp ugt i8 %447, 31
  br i1 %448, label %449, label %533

449:                                              ; preds = %446
  %450 = call i32 @shiftx(i32 noundef 62575, i32 noundef %1, i32 noundef 512) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %43) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %44) #10
  %451 = getelementptr inbounds i8, ptr %44, i32 4
  store i32 3, ptr %451, align 4, !annotation !8
  %452 = load i8, ptr %407, align 4
  %453 = zext i8 %452 to i16
  store i16 %453, ptr %44, align 4
  %454 = getelementptr inbounds %struct.i2c_msg, ptr %44, i32 0, i32 1
  store i16 0, ptr %454, align 2
  %455 = getelementptr inbounds %struct.i2c_msg, ptr %44, i32 0, i32 3
  store ptr %43, ptr %455, align 4
  %456 = lshr i32 %450, 8
  %457 = trunc i32 %456 to i8
  store i8 %457, ptr %43, align 1
  %458 = trunc i32 %450 to i8
  %459 = getelementptr inbounds [3 x i8], ptr %43, i32 0, i32 1
  store i8 %458, ptr %459, align 1
  %460 = getelementptr inbounds [3 x i8], ptr %43, i32 0, i32 2
  store i8 65, ptr %460, align 1
  %461 = load ptr, ptr %417, align 4
  %462 = call i32 @i2c_transfer(ptr noundef %461, ptr noundef nonnull %44, i32 noundef 1) #10
  %463 = icmp ne i32 %462, 1
  %464 = load i32, ptr @stvdebug, align 4
  %465 = icmp ne i32 %464, 0
  %466 = select i1 %463, i1 %465, i1 false
  br i1 %466, label %467, label %469

467:                                              ; preds = %449
  %468 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %462) #11
  br label %469

469:                                              ; preds = %467, %449
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %44) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %43) #10
  %470 = call i32 @shiftx(i32 noundef 62680, i32 noundef %1, i32 noundef 512) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %41) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %42) #10
  %471 = getelementptr inbounds i8, ptr %42, i32 4
  store i32 3, ptr %471, align 4, !annotation !8
  %472 = load i8, ptr %407, align 4
  %473 = zext i8 %472 to i16
  store i16 %473, ptr %42, align 4
  %474 = getelementptr inbounds %struct.i2c_msg, ptr %42, i32 0, i32 1
  store i16 0, ptr %474, align 2
  %475 = getelementptr inbounds %struct.i2c_msg, ptr %42, i32 0, i32 3
  store ptr %41, ptr %475, align 4
  %476 = lshr i32 %470, 8
  %477 = trunc i32 %476 to i8
  store i8 %477, ptr %41, align 1
  %478 = trunc i32 %470 to i8
  %479 = getelementptr inbounds [3 x i8], ptr %41, i32 0, i32 1
  store i8 %478, ptr %479, align 1
  %480 = getelementptr inbounds [3 x i8], ptr %41, i32 0, i32 2
  store i8 65, ptr %480, align 1
  %481 = load ptr, ptr %417, align 4
  %482 = call i32 @i2c_transfer(ptr noundef %481, ptr noundef nonnull %42, i32 noundef 1) #10
  %483 = icmp ne i32 %482, 1
  %484 = load i32, ptr @stvdebug, align 4
  %485 = icmp ne i32 %484, 0
  %486 = select i1 %483, i1 %485, i1 false
  br i1 %486, label %487, label %489

487:                                              ; preds = %469
  %488 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %482) #11
  br label %489

489:                                              ; preds = %487, %469
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %42) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %41) #10
  %490 = getelementptr %struct.stv0900_internal, ptr %0, i32 0, i32 10, i32 %1
  %491 = load i32, ptr %490, align 4
  switch i32 %491, label %533 [
    i32 1, label %492
    i32 3, label %492
    i32 0, label %492
  ]

492:                                              ; preds = %489, %489, %489
  %493 = call i32 @shiftx(i32 noundef 62770, i32 noundef %1, i32 noundef 512) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %39) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %40) #10
  %494 = getelementptr inbounds i8, ptr %40, i32 4
  store i32 3, ptr %494, align 4, !annotation !8
  %495 = load i8, ptr %407, align 4
  %496 = zext i8 %495 to i16
  store i16 %496, ptr %40, align 4
  %497 = getelementptr inbounds %struct.i2c_msg, ptr %40, i32 0, i32 1
  store i16 0, ptr %497, align 2
  %498 = getelementptr inbounds %struct.i2c_msg, ptr %40, i32 0, i32 3
  store ptr %39, ptr %498, align 4
  %499 = lshr i32 %493, 8
  %500 = trunc i32 %499 to i8
  store i8 %500, ptr %39, align 1
  %501 = trunc i32 %493 to i8
  %502 = getelementptr inbounds [3 x i8], ptr %39, i32 0, i32 1
  store i8 %501, ptr %502, align 1
  %503 = getelementptr inbounds [3 x i8], ptr %39, i32 0, i32 2
  store i8 -126, ptr %503, align 1
  %504 = load ptr, ptr %417, align 4
  %505 = call i32 @i2c_transfer(ptr noundef %504, ptr noundef nonnull %40, i32 noundef 1) #10
  %506 = icmp ne i32 %505, 1
  %507 = load i32, ptr @stvdebug, align 4
  %508 = icmp ne i32 %507, 0
  %509 = select i1 %506, i1 %508, i1 false
  br i1 %509, label %510, label %512

510:                                              ; preds = %492
  %511 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %505) #11
  br label %512

512:                                              ; preds = %510, %492
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %40) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %39) #10
  %513 = call i32 @shiftx(i32 noundef 62781, i32 noundef %1, i32 noundef 512) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %37) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %38) #10
  %514 = getelementptr inbounds i8, ptr %38, i32 4
  store i32 3, ptr %514, align 4, !annotation !8
  %515 = load i8, ptr %407, align 4
  %516 = zext i8 %515 to i16
  store i16 %516, ptr %38, align 4
  %517 = getelementptr inbounds %struct.i2c_msg, ptr %38, i32 0, i32 1
  store i16 0, ptr %517, align 2
  %518 = getelementptr inbounds %struct.i2c_msg, ptr %38, i32 0, i32 3
  store ptr %37, ptr %518, align 4
  %519 = lshr i32 %513, 8
  %520 = trunc i32 %519 to i8
  store i8 %520, ptr %37, align 1
  %521 = trunc i32 %513 to i8
  %522 = getelementptr inbounds [3 x i8], ptr %37, i32 0, i32 1
  store i8 %521, ptr %522, align 1
  %523 = getelementptr inbounds [3 x i8], ptr %37, i32 0, i32 2
  store i8 0, ptr %523, align 1
  %524 = load ptr, ptr %417, align 4
  %525 = call i32 @i2c_transfer(ptr noundef %524, ptr noundef nonnull %38, i32 noundef 1) #10
  %526 = icmp ne i32 %525, 1
  %527 = load i32, ptr @stvdebug, align 4
  %528 = icmp ne i32 %527, 0
  %529 = select i1 %526, i1 %528, i1 false
  br i1 %529, label %530, label %532

530:                                              ; preds = %512
  %531 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %525) #11
  br label %532

532:                                              ; preds = %530, %512
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %38) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %37) #10
  br label %533

533:                                              ; preds = %532, %489, %446
  %534 = call i32 @shiftx(i32 noundef 62553, i32 noundef %1, i32 noundef 512) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %35) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %36) #10
  %535 = getelementptr inbounds i8, ptr %36, i32 4
  store i32 3, ptr %535, align 4, !annotation !8
  %536 = load i8, ptr %407, align 4
  %537 = zext i8 %536 to i16
  store i16 %537, ptr %36, align 4
  %538 = getelementptr inbounds %struct.i2c_msg, ptr %36, i32 0, i32 1
  store i16 0, ptr %538, align 2
  %539 = getelementptr inbounds %struct.i2c_msg, ptr %36, i32 0, i32 3
  store ptr %35, ptr %539, align 4
  %540 = lshr i32 %534, 8
  %541 = trunc i32 %540 to i8
  store i8 %541, ptr %35, align 1
  %542 = trunc i32 %534 to i8
  %543 = getelementptr inbounds [3 x i8], ptr %35, i32 0, i32 1
  store i8 %542, ptr %543, align 1
  %544 = getelementptr inbounds [3 x i8], ptr %35, i32 0, i32 2
  store i8 0, ptr %544, align 1
  %545 = load ptr, ptr %417, align 4
  %546 = call i32 @i2c_transfer(ptr noundef %545, ptr noundef nonnull %36, i32 noundef 1) #10
  %547 = icmp ne i32 %546, 1
  %548 = load i32, ptr @stvdebug, align 4
  %549 = icmp ne i32 %548, 0
  %550 = select i1 %547, i1 %549, i1 false
  br i1 %550, label %551, label %553

551:                                              ; preds = %533
  %552 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %546) #11
  br label %553

553:                                              ; preds = %551, %533
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %36) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %35) #10
  %554 = call i32 @shiftx(i32 noundef 62547, i32 noundef %1, i32 noundef 512) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %33) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %34) #10
  %555 = getelementptr inbounds i8, ptr %34, i32 4
  store i32 3, ptr %555, align 4, !annotation !8
  %556 = load i8, ptr %407, align 4
  %557 = zext i8 %556 to i16
  store i16 %557, ptr %34, align 4
  %558 = getelementptr inbounds %struct.i2c_msg, ptr %34, i32 0, i32 1
  store i16 0, ptr %558, align 2
  %559 = getelementptr inbounds %struct.i2c_msg, ptr %34, i32 0, i32 3
  store ptr %33, ptr %559, align 4
  %560 = lshr i32 %554, 8
  %561 = trunc i32 %560 to i8
  store i8 %561, ptr %33, align 1
  %562 = trunc i32 %554 to i8
  %563 = getelementptr inbounds [3 x i8], ptr %33, i32 0, i32 1
  store i8 %562, ptr %563, align 1
  %564 = getelementptr inbounds [3 x i8], ptr %33, i32 0, i32 2
  store i8 -32, ptr %564, align 1
  %565 = load ptr, ptr %417, align 4
  %566 = call i32 @i2c_transfer(ptr noundef %565, ptr noundef nonnull %34, i32 noundef 1) #10
  %567 = icmp ne i32 %566, 1
  %568 = load i32, ptr @stvdebug, align 4
  %569 = icmp ne i32 %568, 0
  %570 = select i1 %567, i1 %569, i1 false
  br i1 %570, label %571, label %573

571:                                              ; preds = %553
  %572 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %566) #11
  br label %573

573:                                              ; preds = %571, %553
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %34) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %33) #10
  %574 = call i32 @shiftx(i32 noundef 62548, i32 noundef %1, i32 noundef 512) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %31) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %32) #10
  %575 = getelementptr inbounds i8, ptr %32, i32 4
  store i32 3, ptr %575, align 4, !annotation !8
  %576 = load i8, ptr %407, align 4
  %577 = zext i8 %576 to i16
  store i16 %577, ptr %32, align 4
  %578 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 0, i32 1
  store i16 0, ptr %578, align 2
  %579 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 0, i32 3
  store ptr %31, ptr %579, align 4
  %580 = lshr i32 %574, 8
  %581 = trunc i32 %580 to i8
  store i8 %581, ptr %31, align 1
  %582 = trunc i32 %574 to i8
  %583 = getelementptr inbounds [3 x i8], ptr %31, i32 0, i32 1
  store i8 %582, ptr %583, align 1
  %584 = getelementptr inbounds [3 x i8], ptr %31, i32 0, i32 2
  store i8 -64, ptr %584, align 1
  %585 = load ptr, ptr %417, align 4
  %586 = call i32 @i2c_transfer(ptr noundef %585, ptr noundef nonnull %32, i32 noundef 1) #10
  %587 = icmp ne i32 %586, 1
  %588 = load i32, ptr @stvdebug, align 4
  %589 = icmp ne i32 %588, 0
  %590 = select i1 %587, i1 %589, i1 false
  br i1 %590, label %591, label %593

591:                                              ; preds = %573
  %592 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %586) #11
  br label %593

593:                                              ; preds = %591, %573
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %32) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %31) #10
  %594 = call i32 @shiftx(i32 noundef -200015856, i32 noundef %1, i32 noundef 33554432) #10
  call void @stv0900_write_bits(ptr noundef %0, i32 noundef %594, i8 noundef zeroext 0)
  %595 = call i32 @shiftx(i32 noundef -200015864, i32 noundef %1, i32 noundef 33554432) #10
  call void @stv0900_write_bits(ptr noundef %0, i32 noundef %595, i8 noundef zeroext 0)
  %596 = call i32 @shiftx(i32 noundef -199950272, i32 noundef %1, i32 noundef 33554432) #10
  call void @stv0900_write_bits(ptr noundef %0, i32 noundef %596, i8 noundef zeroext 0)
  %597 = call i32 @shiftx(i32 noundef 62545, i32 noundef %1, i32 noundef 512) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %29) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %30) #10
  %598 = getelementptr inbounds i8, ptr %30, i32 4
  store i32 3, ptr %598, align 4, !annotation !8
  %599 = load i8, ptr %407, align 4
  %600 = zext i8 %599 to i16
  store i16 %600, ptr %30, align 4
  %601 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 0, i32 1
  store i16 0, ptr %601, align 2
  %602 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 0, i32 3
  store ptr %29, ptr %602, align 4
  %603 = lshr i32 %597, 8
  %604 = trunc i32 %603 to i8
  store i8 %604, ptr %29, align 1
  %605 = trunc i32 %597 to i8
  %606 = getelementptr inbounds [3 x i8], ptr %29, i32 0, i32 1
  store i8 %605, ptr %606, align 1
  %607 = getelementptr inbounds [3 x i8], ptr %29, i32 0, i32 2
  store i8 -120, ptr %607, align 1
  %608 = load ptr, ptr %417, align 4
  %609 = call i32 @i2c_transfer(ptr noundef %608, ptr noundef nonnull %30, i32 noundef 1) #10
  %610 = icmp ne i32 %609, 1
  %611 = load i32, ptr @stvdebug, align 4
  %612 = icmp ne i32 %611, 0
  %613 = select i1 %610, i1 %612, i1 false
  br i1 %613, label %614, label %616

614:                                              ; preds = %593
  %615 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %609) #11
  br label %616

616:                                              ; preds = %614, %593
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %30) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %29) #10
  %617 = load i8, ptr %76, align 2
  %618 = icmp ugt i8 %617, 31
  %619 = getelementptr %struct.stv0900_internal, ptr %0, i32 0, i32 6, i32 %1
  %620 = load i32, ptr %619, align 4
  br i1 %618, label %621, label %770

621:                                              ; preds = %616
  %622 = icmp slt i32 %620, 2000000
  br i1 %622, label %623, label %687

623:                                              ; preds = %621
  %624 = icmp ult i8 %617, 33
  %625 = call i32 @shiftx(i32 noundef 62525, i32 noundef %1, i32 noundef 512) #10
  br i1 %624, label %626, label %646

626:                                              ; preds = %623
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %27) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %28) #10
  %627 = getelementptr inbounds i8, ptr %28, i32 4
  store i32 3, ptr %627, align 4, !annotation !8
  %628 = load i8, ptr %407, align 4
  %629 = zext i8 %628 to i16
  store i16 %629, ptr %28, align 4
  %630 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 0, i32 1
  store i16 0, ptr %630, align 2
  %631 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 0, i32 3
  store ptr %27, ptr %631, align 4
  %632 = lshr i32 %625, 8
  %633 = trunc i32 %632 to i8
  store i8 %633, ptr %27, align 1
  %634 = trunc i32 %625 to i8
  %635 = getelementptr inbounds [3 x i8], ptr %27, i32 0, i32 1
  store i8 %634, ptr %635, align 1
  %636 = getelementptr inbounds [3 x i8], ptr %27, i32 0, i32 2
  store i8 57, ptr %636, align 1
  %637 = load ptr, ptr %417, align 4
  %638 = call i32 @i2c_transfer(ptr noundef %637, ptr noundef nonnull %28, i32 noundef 1) #10
  %639 = icmp ne i32 %638, 1
  %640 = load i32, ptr @stvdebug, align 4
  %641 = icmp ne i32 %640, 0
  %642 = select i1 %639, i1 %641, i1 false
  br i1 %642, label %643, label %645

643:                                              ; preds = %626
  %644 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %638) #11
  br label %645

645:                                              ; preds = %643, %626
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %28) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %27) #10
  br label %666

646:                                              ; preds = %623
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %25) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %26) #10
  %647 = getelementptr inbounds i8, ptr %26, i32 4
  store i32 3, ptr %647, align 4, !annotation !8
  %648 = load i8, ptr %407, align 4
  %649 = zext i8 %648 to i16
  store i16 %649, ptr %26, align 4
  %650 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 0, i32 1
  store i16 0, ptr %650, align 2
  %651 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 0, i32 3
  store ptr %25, ptr %651, align 4
  %652 = lshr i32 %625, 8
  %653 = trunc i32 %652 to i8
  store i8 %653, ptr %25, align 1
  %654 = trunc i32 %625 to i8
  %655 = getelementptr inbounds [3 x i8], ptr %25, i32 0, i32 1
  store i8 %654, ptr %655, align 1
  %656 = getelementptr inbounds [3 x i8], ptr %25, i32 0, i32 2
  store i8 -119, ptr %656, align 1
  %657 = load ptr, ptr %417, align 4
  %658 = call i32 @i2c_transfer(ptr noundef %657, ptr noundef nonnull %26, i32 noundef 1) #10
  %659 = icmp ne i32 %658, 1
  %660 = load i32, ptr @stvdebug, align 4
  %661 = icmp ne i32 %660, 0
  %662 = select i1 %659, i1 %661, i1 false
  br i1 %662, label %663, label %665

663:                                              ; preds = %646
  %664 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %658) #11
  br label %665

665:                                              ; preds = %663, %646
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %26) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %25) #10
  br label %666

666:                                              ; preds = %665, %645
  %667 = call i32 @shiftx(i32 noundef 62526, i32 noundef %1, i32 noundef 512) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %23) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %24) #10
  %668 = getelementptr inbounds i8, ptr %24, i32 4
  store i32 3, ptr %668, align 4, !annotation !8
  %669 = load i8, ptr %407, align 4
  %670 = zext i8 %669 to i16
  store i16 %670, ptr %24, align 4
  %671 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 1
  store i16 0, ptr %671, align 2
  %672 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 3
  store ptr %23, ptr %672, align 4
  %673 = lshr i32 %667, 8
  %674 = trunc i32 %673 to i8
  store i8 %674, ptr %23, align 1
  %675 = trunc i32 %667 to i8
  %676 = getelementptr inbounds [3 x i8], ptr %23, i32 0, i32 1
  store i8 %675, ptr %676, align 1
  %677 = getelementptr inbounds [3 x i8], ptr %23, i32 0, i32 2
  store i8 64, ptr %677, align 1
  %678 = load ptr, ptr %417, align 4
  %679 = call i32 @i2c_transfer(ptr noundef %678, ptr noundef nonnull %24, i32 noundef 1) #10
  %680 = icmp ne i32 %679, 1
  %681 = load i32, ptr @stvdebug, align 4
  %682 = icmp ne i32 %681, 0
  %683 = select i1 %680, i1 %682, i1 false
  br i1 %683, label %684, label %686

684:                                              ; preds = %666
  %685 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %679) #11
  br label %686

686:                                              ; preds = %684, %666
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %24) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %23) #10
  br label %813

687:                                              ; preds = %621
  %688 = icmp ult i32 %620, 10000000
  %689 = call i32 @shiftx(i32 noundef 62525, i32 noundef %1, i32 noundef 512) #10
  br i1 %688, label %690, label %730

690:                                              ; preds = %687
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %21) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %22) #10
  %691 = getelementptr inbounds i8, ptr %22, i32 4
  store i32 3, ptr %691, align 4, !annotation !8
  %692 = load i8, ptr %407, align 4
  %693 = zext i8 %692 to i16
  store i16 %693, ptr %22, align 4
  %694 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 1
  store i16 0, ptr %694, align 2
  %695 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 3
  store ptr %21, ptr %695, align 4
  %696 = lshr i32 %689, 8
  %697 = trunc i32 %696 to i8
  store i8 %697, ptr %21, align 1
  %698 = trunc i32 %689 to i8
  %699 = getelementptr inbounds [3 x i8], ptr %21, i32 0, i32 1
  store i8 %698, ptr %699, align 1
  %700 = getelementptr inbounds [3 x i8], ptr %21, i32 0, i32 2
  store i8 76, ptr %700, align 1
  %701 = load ptr, ptr %417, align 4
  %702 = call i32 @i2c_transfer(ptr noundef %701, ptr noundef nonnull %22, i32 noundef 1) #10
  %703 = icmp ne i32 %702, 1
  %704 = load i32, ptr @stvdebug, align 4
  %705 = icmp ne i32 %704, 0
  %706 = select i1 %703, i1 %705, i1 false
  br i1 %706, label %707, label %709

707:                                              ; preds = %690
  %708 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %702) #11
  br label %709

709:                                              ; preds = %707, %690
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %22) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %21) #10
  %710 = call i32 @shiftx(i32 noundef 62526, i32 noundef %1, i32 noundef 512) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %19) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #10
  %711 = getelementptr inbounds i8, ptr %20, i32 4
  store i32 3, ptr %711, align 4, !annotation !8
  %712 = load i8, ptr %407, align 4
  %713 = zext i8 %712 to i16
  store i16 %713, ptr %20, align 4
  %714 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 1
  store i16 0, ptr %714, align 2
  %715 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 3
  store ptr %19, ptr %715, align 4
  %716 = lshr i32 %710, 8
  %717 = trunc i32 %716 to i8
  store i8 %717, ptr %19, align 1
  %718 = trunc i32 %710 to i8
  %719 = getelementptr inbounds [3 x i8], ptr %19, i32 0, i32 1
  store i8 %718, ptr %719, align 1
  %720 = getelementptr inbounds [3 x i8], ptr %19, i32 0, i32 2
  store i8 32, ptr %720, align 1
  %721 = load ptr, ptr %417, align 4
  %722 = call i32 @i2c_transfer(ptr noundef %721, ptr noundef nonnull %20, i32 noundef 1) #10
  %723 = icmp ne i32 %722, 1
  %724 = load i32, ptr @stvdebug, align 4
  %725 = icmp ne i32 %724, 0
  %726 = select i1 %723, i1 %725, i1 false
  br i1 %726, label %727, label %729

727:                                              ; preds = %709
  %728 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %722) #11
  br label %729

729:                                              ; preds = %727, %709
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %19) #10
  br label %813

730:                                              ; preds = %687
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %17) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #10
  %731 = getelementptr inbounds i8, ptr %18, i32 4
  store i32 3, ptr %731, align 4, !annotation !8
  %732 = load i8, ptr %407, align 4
  %733 = zext i8 %732 to i16
  store i16 %733, ptr %18, align 4
  %734 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 1
  store i16 0, ptr %734, align 2
  %735 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 3
  store ptr %17, ptr %735, align 4
  %736 = lshr i32 %689, 8
  %737 = trunc i32 %736 to i8
  store i8 %737, ptr %17, align 1
  %738 = trunc i32 %689 to i8
  %739 = getelementptr inbounds [3 x i8], ptr %17, i32 0, i32 1
  store i8 %738, ptr %739, align 1
  %740 = getelementptr inbounds [3 x i8], ptr %17, i32 0, i32 2
  store i8 75, ptr %740, align 1
  %741 = load ptr, ptr %417, align 4
  %742 = call i32 @i2c_transfer(ptr noundef %741, ptr noundef nonnull %18, i32 noundef 1) #10
  %743 = icmp ne i32 %742, 1
  %744 = load i32, ptr @stvdebug, align 4
  %745 = icmp ne i32 %744, 0
  %746 = select i1 %743, i1 %745, i1 false
  br i1 %746, label %747, label %749

747:                                              ; preds = %730
  %748 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %742) #11
  br label %749

749:                                              ; preds = %747, %730
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %17) #10
  %750 = call i32 @shiftx(i32 noundef 62526, i32 noundef %1, i32 noundef 512) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %15) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #10
  %751 = getelementptr inbounds i8, ptr %16, i32 4
  store i32 3, ptr %751, align 4, !annotation !8
  %752 = load i8, ptr %407, align 4
  %753 = zext i8 %752 to i16
  store i16 %753, ptr %16, align 4
  %754 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 1
  store i16 0, ptr %754, align 2
  %755 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 3
  store ptr %15, ptr %755, align 4
  %756 = lshr i32 %750, 8
  %757 = trunc i32 %756 to i8
  store i8 %757, ptr %15, align 1
  %758 = trunc i32 %750 to i8
  %759 = getelementptr inbounds [3 x i8], ptr %15, i32 0, i32 1
  store i8 %758, ptr %759, align 1
  %760 = getelementptr inbounds [3 x i8], ptr %15, i32 0, i32 2
  store i8 32, ptr %760, align 1
  %761 = load ptr, ptr %417, align 4
  %762 = call i32 @i2c_transfer(ptr noundef %761, ptr noundef nonnull %16, i32 noundef 1) #10
  %763 = icmp ne i32 %762, 1
  %764 = load i32, ptr @stvdebug, align 4
  %765 = icmp ne i32 %764, 0
  %766 = select i1 %763, i1 %765, i1 false
  br i1 %766, label %767, label %769

767:                                              ; preds = %749
  %768 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %762) #11
  br label %769

769:                                              ; preds = %767, %749
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %15) #10
  br label %813

770:                                              ; preds = %616
  %771 = icmp slt i32 %620, 10000000
  %772 = call i32 @shiftx(i32 noundef 62525, i32 noundef %1, i32 noundef 512) #10
  br i1 %771, label %773, label %793

773:                                              ; preds = %770
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %13) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #10
  %774 = getelementptr inbounds i8, ptr %14, i32 4
  store i32 3, ptr %774, align 4, !annotation !8
  %775 = load i8, ptr %407, align 4
  %776 = zext i8 %775 to i16
  store i16 %776, ptr %14, align 4
  %777 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %777, align 2
  %778 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %13, ptr %778, align 4
  %779 = lshr i32 %772, 8
  %780 = trunc i32 %779 to i8
  store i8 %780, ptr %13, align 1
  %781 = trunc i32 %772 to i8
  %782 = getelementptr inbounds [3 x i8], ptr %13, i32 0, i32 1
  store i8 %781, ptr %782, align 1
  %783 = getelementptr inbounds [3 x i8], ptr %13, i32 0, i32 2
  store i8 -17, ptr %783, align 1
  %784 = load ptr, ptr %417, align 4
  %785 = call i32 @i2c_transfer(ptr noundef %784, ptr noundef nonnull %14, i32 noundef 1) #10
  %786 = icmp ne i32 %785, 1
  %787 = load i32, ptr @stvdebug, align 4
  %788 = icmp ne i32 %787, 0
  %789 = select i1 %786, i1 %788, i1 false
  br i1 %789, label %790, label %792

790:                                              ; preds = %773
  %791 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %785) #11
  br label %792

792:                                              ; preds = %790, %773
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %13) #10
  br label %813

793:                                              ; preds = %770
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %11) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #10
  %794 = getelementptr inbounds i8, ptr %12, i32 4
  store i32 3, ptr %794, align 4, !annotation !8
  %795 = load i8, ptr %407, align 4
  %796 = zext i8 %795 to i16
  store i16 %796, ptr %12, align 4
  %797 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  store i16 0, ptr %797, align 2
  %798 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  store ptr %11, ptr %798, align 4
  %799 = lshr i32 %772, 8
  %800 = trunc i32 %799 to i8
  store i8 %800, ptr %11, align 1
  %801 = trunc i32 %772 to i8
  %802 = getelementptr inbounds [3 x i8], ptr %11, i32 0, i32 1
  store i8 %801, ptr %802, align 1
  %803 = getelementptr inbounds [3 x i8], ptr %11, i32 0, i32 2
  store i8 -19, ptr %803, align 1
  %804 = load ptr, ptr %417, align 4
  %805 = call i32 @i2c_transfer(ptr noundef %804, ptr noundef nonnull %12, i32 noundef 1) #10
  %806 = icmp ne i32 %805, 1
  %807 = load i32, ptr @stvdebug, align 4
  %808 = icmp ne i32 %807, 0
  %809 = select i1 %806, i1 %808, i1 false
  br i1 %809, label %810, label %812

810:                                              ; preds = %793
  %811 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %805) #11
  br label %812

812:                                              ; preds = %810, %793
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %11) #10
  br label %813

813:                                              ; preds = %812, %792, %769, %729, %686
  %814 = getelementptr %struct.stv0900_internal, ptr %0, i32 0, i32 9, i32 %1
  %815 = load i32, ptr %814, align 4
  switch i32 %815, label %898 [
    i32 2, label %816
    i32 1, label %857
  ]

816:                                              ; preds = %813
  %817 = call i32 @shiftx(i32 noundef 62486, i32 noundef %1, i32 noundef 512) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #10
  %818 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 3, ptr %818, align 4, !annotation !8
  %819 = load i8, ptr %407, align 4
  %820 = zext i8 %819 to i16
  store i16 %820, ptr %10, align 4
  %821 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %821, align 2
  %822 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %9, ptr %822, align 4
  %823 = lshr i32 %817, 8
  %824 = trunc i32 %823 to i8
  store i8 %824, ptr %9, align 1
  %825 = trunc i32 %817 to i8
  %826 = getelementptr inbounds [3 x i8], ptr %9, i32 0, i32 1
  store i8 %825, ptr %826, align 1
  %827 = getelementptr inbounds [3 x i8], ptr %9, i32 0, i32 2
  store i8 31, ptr %827, align 1
  %828 = load ptr, ptr %417, align 4
  %829 = call i32 @i2c_transfer(ptr noundef %828, ptr noundef nonnull %10, i32 noundef 1) #10
  %830 = icmp ne i32 %829, 1
  %831 = load i32, ptr @stvdebug, align 4
  %832 = icmp ne i32 %831, 0
  %833 = select i1 %830, i1 %832, i1 false
  br i1 %833, label %834, label %836

834:                                              ; preds = %816
  %835 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %829) #11
  br label %836

836:                                              ; preds = %834, %816
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %9) #10
  %837 = call i32 @shiftx(i32 noundef 62486, i32 noundef %1, i32 noundef 512) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #10
  %838 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 3, ptr %838, align 4, !annotation !8
  %839 = load i8, ptr %407, align 4
  %840 = zext i8 %839 to i16
  store i16 %840, ptr %8, align 4
  %841 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %841, align 2
  %842 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %842, align 4
  %843 = lshr i32 %837, 8
  %844 = trunc i32 %843 to i8
  store i8 %844, ptr %7, align 1
  %845 = trunc i32 %837 to i8
  %846 = getelementptr inbounds [3 x i8], ptr %7, i32 0, i32 1
  store i8 %845, ptr %846, align 1
  %847 = getelementptr inbounds [3 x i8], ptr %7, i32 0, i32 2
  store i8 24, ptr %847, align 1
  %848 = load ptr, ptr %417, align 4
  %849 = call i32 @i2c_transfer(ptr noundef %848, ptr noundef nonnull %8, i32 noundef 1) #10
  %850 = icmp ne i32 %849, 1
  %851 = load i32, ptr @stvdebug, align 4
  %852 = icmp ne i32 %851, 0
  %853 = select i1 %850, i1 %852, i1 false
  br i1 %853, label %854, label %856

854:                                              ; preds = %836
  %855 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %849) #11
  br label %856

856:                                              ; preds = %854, %836
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %7) #10
  br label %898

857:                                              ; preds = %813
  %858 = call i32 @shiftx(i32 noundef 62486, i32 noundef %1, i32 noundef 512) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %859 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 3, ptr %859, align 4, !annotation !8
  %860 = load i8, ptr %407, align 4
  %861 = zext i8 %860 to i16
  store i16 %861, ptr %6, align 4
  %862 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %862, align 2
  %863 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %863, align 4
  %864 = lshr i32 %858, 8
  %865 = trunc i32 %864 to i8
  store i8 %865, ptr %5, align 1
  %866 = trunc i32 %858 to i8
  %867 = getelementptr inbounds [3 x i8], ptr %5, i32 0, i32 1
  store i8 %866, ptr %867, align 1
  %868 = getelementptr inbounds [3 x i8], ptr %5, i32 0, i32 2
  store i8 31, ptr %868, align 1
  %869 = load ptr, ptr %417, align 4
  %870 = call i32 @i2c_transfer(ptr noundef %869, ptr noundef nonnull %6, i32 noundef 1) #10
  %871 = icmp ne i32 %870, 1
  %872 = load i32, ptr @stvdebug, align 4
  %873 = icmp ne i32 %872, 0
  %874 = select i1 %871, i1 %873, i1 false
  br i1 %874, label %875, label %877

875:                                              ; preds = %857
  %876 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %870) #11
  br label %877

877:                                              ; preds = %875, %857
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #10
  %878 = call i32 @shiftx(i32 noundef 62486, i32 noundef %1, i32 noundef 512) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %879 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 3, ptr %879, align 4, !annotation !8
  %880 = load i8, ptr %407, align 4
  %881 = zext i8 %880 to i16
  store i16 %881, ptr %4, align 4
  %882 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %882, align 2
  %883 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %883, align 4
  %884 = lshr i32 %878, 8
  %885 = trunc i32 %884 to i8
  store i8 %885, ptr %3, align 1
  %886 = trunc i32 %878 to i8
  %887 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 1
  store i8 %886, ptr %887, align 1
  %888 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 2
  store i8 21, ptr %888, align 1
  %889 = load ptr, ptr %417, align 4
  %890 = call i32 @i2c_transfer(ptr noundef %889, ptr noundef nonnull %4, i32 noundef 1) #10
  %891 = icmp ne i32 %890, 1
  %892 = load i32, ptr @stvdebug, align 4
  %893 = icmp ne i32 %892, 0
  %894 = select i1 %891, i1 %893, i1 false
  br i1 %894, label %895, label %897

895:                                              ; preds = %877
  %896 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %890) #11
  br label %897

897:                                              ; preds = %895, %877
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #10
  br label %898

898:                                              ; preds = %897, %856, %813
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i8 @stv0900_get_optim_carr_loop(i32 noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #1 {
  %5 = load i32, ptr @stvdebug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0900_get_optim_carr_loop) #11
  br label %9

9:                                                ; preds = %7, %4
  %10 = icmp ult i8 %3, 19
  %11 = icmp eq i8 %3, 32
  %12 = select i1 %11, ptr @FE_STV0900_S2CarLoopCut20, ptr @FE_STV0900_S2CarLoopCut30
  %13 = select i1 %11, ptr @FE_STV0900_S2LowQPCarLoopCut20, ptr @FE_STV0900_S2LowQPCarLoopCut30
  %14 = select i1 %11, ptr @FE_STV0900_S2APSKCarLoopCut20, ptr @FE_STV0900_S2APSKCarLoopCut30
  %15 = select i1 %10, ptr @FE_STV0900_S2CarLoop, ptr %12
  %16 = select i1 %10, ptr @FE_STV0900_S2LowQPCarLoopCut30, ptr %13
  %17 = select i1 %10, ptr @FE_STV0900_S2APSKCarLoopCut30, ptr %14
  %18 = icmp ult i32 %1, 4
  br i1 %18, label %22, label %19

19:                                               ; preds = %9
  %20 = load i32, ptr %15, align 4
  %21 = icmp eq i32 %20, %1
  br i1 %21, label %182, label %34

22:                                               ; preds = %9
  %23 = load i32, ptr %16, align 4
  %24 = icmp eq i32 %23, %1
  br i1 %24, label %133, label %25

25:                                               ; preds = %22
  %26 = getelementptr %struct.stv0900_car_loop_optim, ptr %16, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, %1
  br i1 %28, label %133, label %29

29:                                               ; preds = %25
  %30 = getelementptr %struct.stv0900_car_loop_optim, ptr %16, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, %1
  %33 = select i1 %32, i32 2, i32 3
  br label %133

34:                                               ; preds = %19
  %35 = getelementptr %struct.stv0900_car_loop_optim, ptr %15, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, %1
  br i1 %37, label %182, label %38

38:                                               ; preds = %34
  %39 = getelementptr %struct.stv0900_car_loop_optim, ptr %15, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, %1
  br i1 %41, label %182, label %42

42:                                               ; preds = %38
  %43 = getelementptr %struct.stv0900_car_loop_optim, ptr %15, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, %1
  br i1 %45, label %182, label %46

46:                                               ; preds = %42
  %47 = getelementptr %struct.stv0900_car_loop_optim, ptr %15, i32 4
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, %1
  br i1 %49, label %182, label %50

50:                                               ; preds = %46
  %51 = getelementptr %struct.stv0900_car_loop_optim, ptr %15, i32 5
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, %1
  br i1 %53, label %182, label %54

54:                                               ; preds = %50
  %55 = getelementptr %struct.stv0900_car_loop_optim, ptr %15, i32 6
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, %1
  br i1 %57, label %182, label %58

58:                                               ; preds = %54
  %59 = getelementptr %struct.stv0900_car_loop_optim, ptr %15, i32 7
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %60, %1
  br i1 %61, label %182, label %62

62:                                               ; preds = %58
  %63 = getelementptr %struct.stv0900_car_loop_optim, ptr %15, i32 8
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, %1
  br i1 %65, label %182, label %66

66:                                               ; preds = %62
  %67 = getelementptr %struct.stv0900_car_loop_optim, ptr %15, i32 9
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, %1
  br i1 %69, label %182, label %70

70:                                               ; preds = %66
  %71 = getelementptr %struct.stv0900_car_loop_optim, ptr %15, i32 10
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %72, %1
  br i1 %73, label %182, label %74

74:                                               ; preds = %70
  %75 = getelementptr %struct.stv0900_car_loop_optim, ptr %15, i32 11
  %76 = load i32, ptr %75, align 4
  %77 = icmp eq i32 %76, %1
  br i1 %77, label %182, label %78

78:                                               ; preds = %74
  %79 = getelementptr %struct.stv0900_car_loop_optim, ptr %15, i32 12
  %80 = load i32, ptr %79, align 4
  %81 = icmp eq i32 %80, %1
  br i1 %81, label %182, label %82

82:                                               ; preds = %78
  %83 = getelementptr %struct.stv0900_car_loop_optim, ptr %15, i32 13
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, %1
  br i1 %85, label %182, label %86

86:                                               ; preds = %82
  %87 = load i32, ptr %17, align 4
  %88 = icmp eq i32 %87, %1
  br i1 %88, label %130, label %89

89:                                               ; preds = %86
  %90 = getelementptr %struct.stv0900_car_loop_optim, ptr %17, i32 1
  %91 = load i32, ptr %90, align 4
  %92 = icmp eq i32 %91, %1
  br i1 %92, label %130, label %93

93:                                               ; preds = %89
  %94 = getelementptr %struct.stv0900_car_loop_optim, ptr %17, i32 2
  %95 = load i32, ptr %94, align 4
  %96 = icmp eq i32 %95, %1
  br i1 %96, label %130, label %97

97:                                               ; preds = %93
  %98 = getelementptr %struct.stv0900_car_loop_optim, ptr %17, i32 3
  %99 = load i32, ptr %98, align 4
  %100 = icmp eq i32 %99, %1
  br i1 %100, label %130, label %101

101:                                              ; preds = %97
  %102 = getelementptr %struct.stv0900_car_loop_optim, ptr %17, i32 4
  %103 = load i32, ptr %102, align 4
  %104 = icmp eq i32 %103, %1
  br i1 %104, label %130, label %105

105:                                              ; preds = %101
  %106 = getelementptr %struct.stv0900_car_loop_optim, ptr %17, i32 5
  %107 = load i32, ptr %106, align 4
  %108 = icmp eq i32 %107, %1
  br i1 %108, label %130, label %109

109:                                              ; preds = %105
  %110 = getelementptr %struct.stv0900_car_loop_optim, ptr %17, i32 6
  %111 = load i32, ptr %110, align 4
  %112 = icmp eq i32 %111, %1
  br i1 %112, label %130, label %113

113:                                              ; preds = %109
  %114 = getelementptr %struct.stv0900_car_loop_optim, ptr %17, i32 7
  %115 = load i32, ptr %114, align 4
  %116 = icmp eq i32 %115, %1
  br i1 %116, label %130, label %117

117:                                              ; preds = %113
  %118 = getelementptr %struct.stv0900_car_loop_optim, ptr %17, i32 8
  %119 = load i32, ptr %118, align 4
  %120 = icmp eq i32 %119, %1
  br i1 %120, label %130, label %121

121:                                              ; preds = %117
  %122 = getelementptr %struct.stv0900_car_loop_optim, ptr %17, i32 9
  %123 = load i32, ptr %122, align 4
  %124 = icmp eq i32 %123, %1
  br i1 %124, label %130, label %125

125:                                              ; preds = %121
  %126 = getelementptr %struct.stv0900_car_loop_optim, ptr %17, i32 10
  %127 = load i32, ptr %126, align 4
  %128 = icmp eq i32 %127, %1
  %129 = select i1 %128, i32 10, i32 11
  br label %130

130:                                              ; preds = %125, %121, %117, %113, %109, %105, %101, %97, %93, %89, %86
  %131 = phi i32 [ 0, %86 ], [ 1, %89 ], [ 2, %93 ], [ 3, %97 ], [ 4, %101 ], [ 5, %105 ], [ 6, %109 ], [ 7, %113 ], [ 8, %117 ], [ 9, %121 ], [ %129, %125 ]
  %132 = tail call i32 @llvm.umin.i32(i32 %131, i32 10)
  br label %182

133:                                              ; preds = %29, %25, %22
  %134 = phi i32 [ 0, %22 ], [ 1, %25 ], [ %33, %29 ]
  %135 = tail call i32 @llvm.umin.i32(i32 %134, i32 2)
  %136 = icmp eq i32 %2, 0
  %137 = icmp slt i32 %0, 3000001
  br i1 %136, label %160, label %138

138:                                              ; preds = %133
  br i1 %137, label %139, label %142

139:                                              ; preds = %138
  %140 = getelementptr %struct.stv0900_car_loop_optim, ptr %16, i32 %135, i32 1
  %141 = load i8, ptr %140, align 4
  br label %257

142:                                              ; preds = %138
  %143 = icmp ult i32 %0, 7000001
  br i1 %143, label %144, label %147

144:                                              ; preds = %142
  %145 = getelementptr %struct.stv0900_car_loop_optim, ptr %16, i32 %135, i32 3
  %146 = load i8, ptr %145, align 2
  br label %257

147:                                              ; preds = %142
  %148 = icmp ult i32 %0, 15000001
  br i1 %148, label %149, label %152

149:                                              ; preds = %147
  %150 = getelementptr %struct.stv0900_car_loop_optim, ptr %16, i32 %135, i32 5
  %151 = load i8, ptr %150, align 4
  br label %257

152:                                              ; preds = %147
  %153 = icmp ult i32 %0, 25000001
  br i1 %153, label %154, label %157

154:                                              ; preds = %152
  %155 = getelementptr %struct.stv0900_car_loop_optim, ptr %16, i32 %135, i32 7
  %156 = load i8, ptr %155, align 2
  br label %257

157:                                              ; preds = %152
  %158 = getelementptr %struct.stv0900_car_loop_optim, ptr %16, i32 %135, i32 9
  %159 = load i8, ptr %158, align 4
  br label %257

160:                                              ; preds = %133
  br i1 %137, label %161, label %164

161:                                              ; preds = %160
  %162 = getelementptr %struct.stv0900_car_loop_optim, ptr %16, i32 %135, i32 2
  %163 = load i8, ptr %162, align 1
  br label %257

164:                                              ; preds = %160
  %165 = icmp ult i32 %0, 7000001
  br i1 %165, label %166, label %169

166:                                              ; preds = %164
  %167 = getelementptr %struct.stv0900_car_loop_optim, ptr %16, i32 %135, i32 4
  %168 = load i8, ptr %167, align 1
  br label %257

169:                                              ; preds = %164
  %170 = icmp ult i32 %0, 15000001
  br i1 %170, label %171, label %174

171:                                              ; preds = %169
  %172 = getelementptr %struct.stv0900_car_loop_optim, ptr %16, i32 %135, i32 6
  %173 = load i8, ptr %172, align 1
  br label %257

174:                                              ; preds = %169
  %175 = icmp ult i32 %0, 25000001
  br i1 %175, label %176, label %179

176:                                              ; preds = %174
  %177 = getelementptr %struct.stv0900_car_loop_optim, ptr %16, i32 %135, i32 8
  %178 = load i8, ptr %177, align 1
  br label %257

179:                                              ; preds = %174
  %180 = getelementptr %struct.stv0900_car_loop_optim, ptr %16, i32 %135, i32 10
  %181 = load i8, ptr %180, align 1
  br label %257

182:                                              ; preds = %130, %82, %78, %74, %70, %66, %62, %58, %54, %50, %46, %42, %38, %34, %19
  %183 = phi i32 [ 13, %82 ], [ 12, %78 ], [ 11, %74 ], [ 10, %70 ], [ 9, %66 ], [ 8, %62 ], [ 7, %58 ], [ 6, %54 ], [ 5, %50 ], [ 4, %46 ], [ 3, %42 ], [ 2, %38 ], [ 1, %34 ], [ 0, %19 ], [ %132, %130 ]
  %184 = icmp ult i32 %1, 18
  br i1 %184, label %185, label %232

185:                                              ; preds = %182
  %186 = icmp eq i32 %2, 0
  %187 = icmp slt i32 %0, 3000001
  br i1 %186, label %210, label %188

188:                                              ; preds = %185
  br i1 %187, label %189, label %192

189:                                              ; preds = %188
  %190 = getelementptr %struct.stv0900_car_loop_optim, ptr %15, i32 %183, i32 1
  %191 = load i8, ptr %190, align 4
  br label %257

192:                                              ; preds = %188
  %193 = icmp ult i32 %0, 7000001
  br i1 %193, label %194, label %197

194:                                              ; preds = %192
  %195 = getelementptr %struct.stv0900_car_loop_optim, ptr %15, i32 %183, i32 3
  %196 = load i8, ptr %195, align 2
  br label %257

197:                                              ; preds = %192
  %198 = icmp ult i32 %0, 15000001
  br i1 %198, label %199, label %202

199:                                              ; preds = %197
  %200 = getelementptr %struct.stv0900_car_loop_optim, ptr %15, i32 %183, i32 5
  %201 = load i8, ptr %200, align 4
  br label %257

202:                                              ; preds = %197
  %203 = icmp ult i32 %0, 25000001
  br i1 %203, label %204, label %207

204:                                              ; preds = %202
  %205 = getelementptr %struct.stv0900_car_loop_optim, ptr %15, i32 %183, i32 7
  %206 = load i8, ptr %205, align 2
  br label %257

207:                                              ; preds = %202
  %208 = getelementptr %struct.stv0900_car_loop_optim, ptr %15, i32 %183, i32 9
  %209 = load i8, ptr %208, align 4
  br label %257

210:                                              ; preds = %185
  br i1 %187, label %211, label %214

211:                                              ; preds = %210
  %212 = getelementptr %struct.stv0900_car_loop_optim, ptr %15, i32 %183, i32 2
  %213 = load i8, ptr %212, align 1
  br label %257

214:                                              ; preds = %210
  %215 = icmp ult i32 %0, 7000001
  br i1 %215, label %216, label %219

216:                                              ; preds = %214
  %217 = getelementptr %struct.stv0900_car_loop_optim, ptr %15, i32 %183, i32 4
  %218 = load i8, ptr %217, align 1
  br label %257

219:                                              ; preds = %214
  %220 = icmp ult i32 %0, 15000001
  br i1 %220, label %221, label %224

221:                                              ; preds = %219
  %222 = getelementptr %struct.stv0900_car_loop_optim, ptr %15, i32 %183, i32 6
  %223 = load i8, ptr %222, align 1
  br label %257

224:                                              ; preds = %219
  %225 = icmp ult i32 %0, 25000001
  br i1 %225, label %226, label %229

226:                                              ; preds = %224
  %227 = getelementptr %struct.stv0900_car_loop_optim, ptr %15, i32 %183, i32 8
  %228 = load i8, ptr %227, align 1
  br label %257

229:                                              ; preds = %224
  %230 = getelementptr %struct.stv0900_car_loop_optim, ptr %15, i32 %183, i32 10
  %231 = load i8, ptr %230, align 1
  br label %257

232:                                              ; preds = %182
  %233 = icmp ult i32 %183, 11
  br i1 %233, label %234, label %257

234:                                              ; preds = %232
  %235 = icmp slt i32 %0, 3000001
  br i1 %235, label %236, label %239

236:                                              ; preds = %234
  %237 = getelementptr %struct.stv0900_car_loop_optim, ptr %17, i32 %183, i32 1
  %238 = load i8, ptr %237, align 4
  br label %257

239:                                              ; preds = %234
  %240 = icmp ult i32 %0, 7000001
  br i1 %240, label %241, label %244

241:                                              ; preds = %239
  %242 = getelementptr %struct.stv0900_car_loop_optim, ptr %17, i32 %183, i32 3
  %243 = load i8, ptr %242, align 2
  br label %257

244:                                              ; preds = %239
  %245 = icmp ult i32 %0, 15000001
  br i1 %245, label %246, label %249

246:                                              ; preds = %244
  %247 = getelementptr %struct.stv0900_car_loop_optim, ptr %17, i32 %183, i32 5
  %248 = load i8, ptr %247, align 4
  br label %257

249:                                              ; preds = %244
  %250 = icmp ult i32 %0, 25000001
  br i1 %250, label %251, label %254

251:                                              ; preds = %249
  %252 = getelementptr %struct.stv0900_car_loop_optim, ptr %17, i32 %183, i32 7
  %253 = load i8, ptr %252, align 2
  br label %257

254:                                              ; preds = %249
  %255 = getelementptr %struct.stv0900_car_loop_optim, ptr %17, i32 %183, i32 9
  %256 = load i8, ptr %255, align 4
  br label %257

257:                                              ; preds = %254, %251, %246, %241, %236, %232, %229, %226, %221, %216, %211, %207, %204, %199, %194, %189, %179, %176, %171, %166, %161, %157, %154, %149, %144, %139
  %258 = phi i8 [ %141, %139 ], [ %146, %144 ], [ %151, %149 ], [ %156, %154 ], [ %159, %157 ], [ %163, %161 ], [ %168, %166 ], [ %173, %171 ], [ %178, %176 ], [ %181, %179 ], [ %191, %189 ], [ %196, %194 ], [ %201, %199 ], [ %206, %204 ], [ %209, %207 ], [ %213, %211 ], [ %218, %216 ], [ %223, %221 ], [ %228, %226 ], [ %231, %229 ], [ %238, %236 ], [ %243, %241 ], [ %248, %246 ], [ %253, %251 ], [ %256, %254 ], [ 41, %232 ]
  ret i8 %258
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i8 @stv0900_get_optim_short_carr_loop(i32 noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #1 {
  %4 = load i32, ptr @stvdebug, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0900_get_optim_short_carr_loop) #11
  br label %8

8:                                                ; preds = %6, %3
  %9 = add i32 %1, -1
  %10 = icmp ult i32 %9, 3
  %11 = select i1 %10, i32 %1, i32 0
  %12 = icmp ugt i8 %2, 47
  br i1 %12, label %13, label %31

13:                                               ; preds = %8
  %14 = icmp slt i32 %0, 3000001
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  %16 = getelementptr %struct.stv0900_short_frames_car_loop_optim_vs_mod, ptr @FE_STV0900_S2ShortCarLoopCut30, i32 %11, i32 1
  br label %68

17:                                               ; preds = %13
  %18 = icmp ult i32 %0, 7000001
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  %20 = getelementptr %struct.stv0900_short_frames_car_loop_optim_vs_mod, ptr @FE_STV0900_S2ShortCarLoopCut30, i32 %11, i32 2
  br label %68

21:                                               ; preds = %17
  %22 = icmp ult i32 %0, 15000001
  br i1 %22, label %23, label %25

23:                                               ; preds = %21
  %24 = getelementptr %struct.stv0900_short_frames_car_loop_optim_vs_mod, ptr @FE_STV0900_S2ShortCarLoopCut30, i32 %11, i32 3
  br label %68

25:                                               ; preds = %21
  %26 = icmp ult i32 %0, 25000001
  br i1 %26, label %27, label %29

27:                                               ; preds = %25
  %28 = getelementptr %struct.stv0900_short_frames_car_loop_optim_vs_mod, ptr @FE_STV0900_S2ShortCarLoopCut30, i32 %11, i32 4
  br label %68

29:                                               ; preds = %25
  %30 = getelementptr %struct.stv0900_short_frames_car_loop_optim_vs_mod, ptr @FE_STV0900_S2ShortCarLoopCut30, i32 %11, i32 5
  br label %68

31:                                               ; preds = %8
  %32 = icmp ugt i8 %2, 31
  %33 = icmp slt i32 %0, 3000001
  br i1 %32, label %34, label %51

34:                                               ; preds = %31
  br i1 %33, label %35, label %37

35:                                               ; preds = %34
  %36 = getelementptr %struct.stv0900_short_frames_car_loop_optim, ptr @FE_STV0900_S2ShortCarLoop, i32 %11, i32 2
  br label %68

37:                                               ; preds = %34
  %38 = icmp ult i32 %0, 7000001
  br i1 %38, label %39, label %41

39:                                               ; preds = %37
  %40 = getelementptr %struct.stv0900_short_frames_car_loop_optim, ptr @FE_STV0900_S2ShortCarLoop, i32 %11, i32 4
  br label %68

41:                                               ; preds = %37
  %42 = icmp ult i32 %0, 15000001
  br i1 %42, label %43, label %45

43:                                               ; preds = %41
  %44 = getelementptr %struct.stv0900_short_frames_car_loop_optim, ptr @FE_STV0900_S2ShortCarLoop, i32 %11, i32 6
  br label %68

45:                                               ; preds = %41
  %46 = icmp ult i32 %0, 25000001
  br i1 %46, label %47, label %49

47:                                               ; preds = %45
  %48 = getelementptr %struct.stv0900_short_frames_car_loop_optim, ptr @FE_STV0900_S2ShortCarLoop, i32 %11, i32 8
  br label %68

49:                                               ; preds = %45
  %50 = getelementptr %struct.stv0900_short_frames_car_loop_optim, ptr @FE_STV0900_S2ShortCarLoop, i32 %11, i32 10
  br label %68

51:                                               ; preds = %31
  br i1 %33, label %52, label %54

52:                                               ; preds = %51
  %53 = getelementptr %struct.stv0900_short_frames_car_loop_optim, ptr @FE_STV0900_S2ShortCarLoop, i32 %11, i32 1
  br label %68

54:                                               ; preds = %51
  %55 = icmp ult i32 %0, 7000001
  br i1 %55, label %56, label %58

56:                                               ; preds = %54
  %57 = getelementptr %struct.stv0900_short_frames_car_loop_optim, ptr @FE_STV0900_S2ShortCarLoop, i32 %11, i32 3
  br label %68

58:                                               ; preds = %54
  %59 = icmp ult i32 %0, 15000001
  br i1 %59, label %60, label %62

60:                                               ; preds = %58
  %61 = getelementptr %struct.stv0900_short_frames_car_loop_optim, ptr @FE_STV0900_S2ShortCarLoop, i32 %11, i32 5
  br label %68

62:                                               ; preds = %58
  %63 = icmp ult i32 %0, 25000001
  br i1 %63, label %64, label %66

64:                                               ; preds = %62
  %65 = getelementptr %struct.stv0900_short_frames_car_loop_optim, ptr @FE_STV0900_S2ShortCarLoop, i32 %11, i32 7
  br label %68

66:                                               ; preds = %62
  %67 = getelementptr %struct.stv0900_short_frames_car_loop_optim, ptr @FE_STV0900_S2ShortCarLoop, i32 %11, i32 9
  br label %68

68:                                               ; preds = %66, %64, %60, %56, %52, %49, %47, %43, %39, %35, %29, %27, %23, %19, %15
  %69 = phi ptr [ %16, %15 ], [ %20, %19 ], [ %24, %23 ], [ %28, %27 ], [ %30, %29 ], [ %36, %35 ], [ %40, %39 ], [ %44, %43 ], [ %48, %47 ], [ %50, %49 ], [ %53, %52 ], [ %57, %56 ], [ %61, %60 ], [ %65, %64 ], [ %67, %66 ]
  %70 = load i8, ptr %69, align 1
  ret i8 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @stv0900_attach(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = alloca %struct.stv0900_init_params, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #10
  %5 = getelementptr inbounds i8, ptr %4, i32 16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %5, i8 0, i32 24, i1 false), !annotation !8
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 1056) #12
  %8 = icmp eq ptr %7, null
  br i1 %8, label %76, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.stv0900_state, ptr %7, i32 0, i32 4
  store i32 %2, ptr %10, align 4
  %11 = getelementptr inbounds %struct.stv0900_state, ptr %7, i32 0, i32 2
  store ptr %0, ptr %11, align 8
  %12 = getelementptr inbounds %struct.stv0900_state, ptr %7, i32 0, i32 1
  store ptr %1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.stv0900_state, ptr %7, i32 0, i32 3
  %14 = getelementptr inbounds %struct.stv0900_state, ptr %7, i32 0, i32 3, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(544) %14, ptr noundef nonnull align 4 dereferenceable(544) @stv0900_ops, i32 544, i1 false)
  %15 = getelementptr inbounds %struct.stv0900_state, ptr %7, i32 0, i32 3, i32 3
  store ptr %7, ptr %15, align 4
  %16 = icmp ult i32 %2, 2
  br i1 %16, label %17, label %76

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.stv0900_config, ptr %0, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  store i32 %19, ptr %4, align 4
  %20 = getelementptr inbounds %struct.stv0900_config, ptr %0, i32 0, i32 1
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = getelementptr inbounds %struct.stv0900_init_params, ptr %4, i32 0, i32 1
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.stv0900_init_params, ptr %4, i32 0, i32 2
  store i32 0, ptr %24, align 4
  %25 = getelementptr inbounds %struct.stv0900_config, ptr %0, i32 0, i32 5
  %26 = load i8, ptr %25, align 2
  %27 = zext i8 %26 to i32
  %28 = getelementptr inbounds %struct.stv0900_init_params, ptr %4, i32 0, i32 3
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.stv0900_config, ptr %0, i32 0, i32 8
  %30 = load i8, ptr %29, align 4
  %31 = getelementptr inbounds %struct.stv0900_init_params, ptr %4, i32 0, i32 4
  store i8 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.stv0900_init_params, ptr %4, i32 0, i32 7
  store i32 0, ptr %32, align 4
  %33 = getelementptr inbounds %struct.stv0900_config, ptr %0, i32 0, i32 10
  %34 = load i8, ptr %33, align 2
  %35 = zext i8 %34 to i32
  %36 = getelementptr inbounds %struct.stv0900_init_params, ptr %4, i32 0, i32 5
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.stv0900_config, ptr %0, i32 0, i32 12
  %38 = load i8, ptr %37, align 4
  %39 = zext i8 %38 to i32
  %40 = getelementptr inbounds %struct.stv0900_init_params, ptr %4, i32 0, i32 6
  store i32 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.stv0900_config, ptr %0, i32 0, i32 6
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = getelementptr inbounds %struct.stv0900_init_params, ptr %4, i32 0, i32 8
  store i32 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.stv0900_config, ptr %0, i32 0, i32 7
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.stv0900_init_params, ptr %4, i32 0, i32 13
  store ptr %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.stv0900_config, ptr %0, i32 0, i32 9
  %49 = load i8, ptr %48, align 1
  %50 = getelementptr inbounds %struct.stv0900_init_params, ptr %4, i32 0, i32 9
  store i8 %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.stv0900_config, ptr %0, i32 0, i32 11
  %52 = load i8, ptr %51, align 1
  %53 = zext i8 %52 to i32
  %54 = getelementptr inbounds %struct.stv0900_init_params, ptr %4, i32 0, i32 10
  store i32 %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.stv0900_config, ptr %0, i32 0, i32 13
  %56 = load i8, ptr %55, align 1
  %57 = zext i8 %56 to i32
  %58 = getelementptr inbounds %struct.stv0900_init_params, ptr %4, i32 0, i32 11
  store i32 %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.stv0900_init_params, ptr %4, i32 0, i32 12
  store i32 1, ptr %59, align 4
  %60 = call fastcc i32 @stv0900_init_internal(ptr noundef %13, ptr noundef nonnull %4)
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %17
  %63 = load ptr, ptr %7, align 8
  %64 = getelementptr inbounds %struct.stv0900_internal, ptr %63, i32 0, i32 20
  %65 = load i8, ptr %64, align 2
  %66 = icmp ugt i8 %65, 47
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.stv0900_state, ptr %7, i32 0, i32 3, i32 1, i32 0, i32 8
  %69 = load i32, ptr %68, align 4
  %70 = or i32 %69, 67108864
  store i32 %70, ptr %68, align 4
  br label %71

71:                                               ; preds = %67, %62
  %72 = load i32, ptr @stvdebug, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %71
  %75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.stv0900_attach, i32 noundef %2) #11
  br label %82

76:                                               ; preds = %17, %9, %3
  %77 = load i32, ptr @stvdebug, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %76
  %80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.stv0900_attach, i32 noundef %2) #11
  br label %81

81:                                               ; preds = %79, %76
  tail call void @kfree(ptr noundef %7) #10
  br label %82

82:                                               ; preds = %81, %74, %71
  %83 = phi ptr [ null, %81 ], [ %13, %74 ], [ %13, %71 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #10
  ret ptr %83
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stv0900_init_internal(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = alloca [3 x i8], align 1
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [3 x i8], align 1
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [3 x i8], align 1
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca [3 x i8], align 1
  %10 = alloca %struct.i2c_msg, align 4
  %11 = alloca [3 x i8], align 1
  %12 = alloca %struct.i2c_msg, align 4
  %13 = alloca [2 x i8], align 2
  %14 = alloca i8, align 1
  %15 = alloca [2 x %struct.i2c_msg], align 4
  %16 = alloca [3 x i8], align 1
  %17 = alloca %struct.i2c_msg, align 4
  %18 = alloca [3 x i8], align 1
  %19 = alloca %struct.i2c_msg, align 4
  %20 = alloca [3 x i8], align 1
  %21 = alloca %struct.i2c_msg, align 4
  %22 = alloca [3 x i8], align 1
  %23 = alloca %struct.i2c_msg, align 4
  %24 = alloca [3 x i8], align 1
  %25 = alloca %struct.i2c_msg, align 4
  %26 = alloca [3 x i8], align 1
  %27 = alloca %struct.i2c_msg, align 4
  %28 = alloca [3 x i8], align 1
  %29 = alloca %struct.i2c_msg, align 4
  %30 = alloca [3 x i8], align 1
  %31 = alloca %struct.i2c_msg, align 4
  %32 = alloca [3 x i8], align 1
  %33 = alloca %struct.i2c_msg, align 4
  %34 = alloca [3 x i8], align 1
  %35 = alloca %struct.i2c_msg, align 4
  %36 = alloca [3 x i8], align 1
  %37 = alloca %struct.i2c_msg, align 4
  %38 = alloca [3 x i8], align 1
  %39 = alloca %struct.i2c_msg, align 4
  %40 = alloca [3 x i8], align 1
  %41 = alloca %struct.i2c_msg, align 4
  %42 = alloca [3 x i8], align 1
  %43 = alloca %struct.i2c_msg, align 4
  %44 = alloca [3 x i8], align 1
  %45 = alloca %struct.i2c_msg, align 4
  %46 = alloca [3 x i8], align 1
  %47 = alloca %struct.i2c_msg, align 4
  %48 = alloca [3 x i8], align 1
  %49 = alloca %struct.i2c_msg, align 4
  %50 = alloca [3 x i8], align 1
  %51 = alloca %struct.i2c_msg, align 4
  %52 = alloca [3 x i8], align 1
  %53 = alloca %struct.i2c_msg, align 4
  %54 = alloca [3 x i8], align 1
  %55 = alloca %struct.i2c_msg, align 4
  %56 = alloca [3 x i8], align 1
  %57 = alloca %struct.i2c_msg, align 4
  %58 = alloca [3 x i8], align 1
  %59 = alloca %struct.i2c_msg, align 4
  %60 = alloca [3 x i8], align 1
  %61 = alloca %struct.i2c_msg, align 4
  %62 = alloca [3 x i8], align 1
  %63 = alloca %struct.i2c_msg, align 4
  %64 = alloca [3 x i8], align 1
  %65 = alloca %struct.i2c_msg, align 4
  %66 = alloca [3 x i8], align 1
  %67 = alloca %struct.i2c_msg, align 4
  %68 = alloca [3 x i8], align 1
  %69 = alloca %struct.i2c_msg, align 4
  %70 = alloca [3 x i8], align 1
  %71 = alloca %struct.i2c_msg, align 4
  %72 = alloca [3 x i8], align 1
  %73 = alloca %struct.i2c_msg, align 4
  %74 = alloca [3 x i8], align 1
  %75 = alloca %struct.i2c_msg, align 4
  %76 = alloca [3 x i8], align 1
  %77 = alloca %struct.i2c_msg, align 4
  %78 = alloca [3 x i8], align 1
  %79 = alloca %struct.i2c_msg, align 4
  %80 = alloca [3 x i8], align 1
  %81 = alloca %struct.i2c_msg, align 4
  %82 = alloca [2 x i8], align 2
  %83 = alloca i8, align 1
  %84 = alloca [2 x %struct.i2c_msg], align 4
  %85 = alloca [3 x i8], align 1
  %86 = alloca %struct.i2c_msg, align 4
  %87 = alloca [3 x i8], align 1
  %88 = alloca %struct.i2c_msg, align 4
  %89 = alloca [3 x i8], align 1
  %90 = alloca %struct.i2c_msg, align 4
  %91 = alloca [3 x i8], align 1
  %92 = alloca %struct.i2c_msg, align 4
  %93 = alloca [3 x i8], align 1
  %94 = alloca %struct.i2c_msg, align 4
  %95 = alloca [3 x i8], align 1
  %96 = alloca %struct.i2c_msg, align 4
  %97 = alloca [3 x i8], align 1
  %98 = alloca %struct.i2c_msg, align 4
  %99 = alloca [3 x i8], align 1
  %100 = alloca %struct.i2c_msg, align 4
  %101 = alloca [3 x i8], align 1
  %102 = alloca %struct.i2c_msg, align 4
  %103 = alloca [3 x i8], align 1
  %104 = alloca %struct.i2c_msg, align 4
  %105 = alloca [2 x i8], align 2
  %106 = alloca i8, align 1
  %107 = alloca [2 x %struct.i2c_msg], align 4
  %108 = alloca [3 x i8], align 1
  %109 = alloca %struct.i2c_msg, align 4
  %110 = alloca [3 x i8], align 1
  %111 = alloca %struct.i2c_msg, align 4
  %112 = alloca [3 x i8], align 1
  %113 = alloca %struct.i2c_msg, align 4
  %114 = alloca [3 x i8], align 1
  %115 = alloca %struct.i2c_msg, align 4
  %116 = alloca [3 x i8], align 1
  %117 = alloca %struct.i2c_msg, align 4
  %118 = alloca [3 x i8], align 1
  %119 = alloca %struct.i2c_msg, align 4
  %120 = alloca [3 x i8], align 1
  %121 = alloca %struct.i2c_msg, align 4
  %122 = alloca [3 x i8], align 1
  %123 = alloca %struct.i2c_msg, align 4
  %124 = alloca [3 x i8], align 1
  %125 = alloca %struct.i2c_msg, align 4
  %126 = alloca [3 x i8], align 1
  %127 = alloca %struct.i2c_msg, align 4
  %128 = alloca [2 x i8], align 2
  %129 = alloca i8, align 1
  %130 = alloca [2 x %struct.i2c_msg], align 4
  %131 = alloca [3 x i8], align 1
  %132 = alloca %struct.i2c_msg, align 4
  %133 = alloca [3 x i8], align 1
  %134 = alloca %struct.i2c_msg, align 4
  %135 = alloca [2 x i8], align 2
  %136 = alloca i8, align 1
  %137 = alloca [2 x %struct.i2c_msg], align 4
  %138 = alloca [3 x i8], align 1
  %139 = alloca %struct.i2c_msg, align 4
  %140 = alloca [3 x i8], align 1
  %141 = alloca %struct.i2c_msg, align 4
  %142 = alloca [3 x i8], align 1
  %143 = alloca %struct.i2c_msg, align 4
  %144 = alloca [3 x i8], align 1
  %145 = alloca %struct.i2c_msg, align 4
  %146 = alloca [3 x i8], align 1
  %147 = alloca %struct.i2c_msg, align 4
  %148 = alloca [3 x i8], align 1
  %149 = alloca %struct.i2c_msg, align 4
  %150 = alloca [3 x i8], align 1
  %151 = alloca %struct.i2c_msg, align 4
  %152 = alloca [3 x i8], align 1
  %153 = alloca %struct.i2c_msg, align 4
  %154 = alloca [3 x i8], align 1
  %155 = alloca %struct.i2c_msg, align 4
  %156 = alloca [2 x i8], align 2
  %157 = alloca i8, align 1
  %158 = alloca [2 x %struct.i2c_msg], align 4
  %159 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %160 = load ptr, ptr %159, align 4
  %161 = getelementptr inbounds %struct.stv0900_state, ptr %160, i32 0, i32 1
  %162 = load ptr, ptr %161, align 4
  %163 = getelementptr inbounds %struct.stv0900_state, ptr %160, i32 0, i32 2
  %164 = load ptr, ptr %163, align 4
  %165 = load i8, ptr %164, align 4
  %166 = load ptr, ptr @stv0900_first_inode, align 4
  %167 = icmp eq ptr %166, null
  br i1 %167, label %182, label %168

168:                                              ; preds = %178, %2
  %169 = phi ptr [ %180, %178 ], [ %166, %2 ]
  %170 = load ptr, ptr %169, align 4
  %171 = getelementptr inbounds %struct.stv0900_internal, ptr %170, i32 0, i32 17
  %172 = load ptr, ptr %171, align 4
  %173 = icmp eq ptr %172, %162
  br i1 %173, label %174, label %178

174:                                              ; preds = %168
  %175 = getelementptr inbounds %struct.stv0900_internal, ptr %170, i32 0, i32 18
  %176 = load i8, ptr %175, align 4
  %177 = icmp eq i8 %176, %165
  br i1 %177, label %182, label %178

178:                                              ; preds = %174, %168
  %179 = getelementptr inbounds %struct.stv0900_inode, ptr %169, i32 0, i32 1
  %180 = load ptr, ptr %179, align 4
  %181 = icmp eq ptr %180, null
  br i1 %181, label %182, label %168

182:                                              ; preds = %178, %174, %2
  %183 = phi ptr [ null, %2 ], [ null, %178 ], [ %169, %174 ]
  %184 = load i32, ptr @stvdebug, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %188, label %186

186:                                              ; preds = %182
  %187 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0900_init_internal) #11
  br label %188

188:                                              ; preds = %186, %182
  %189 = icmp eq ptr %183, null
  br i1 %189, label %203, label %190

190:                                              ; preds = %188
  %191 = getelementptr inbounds %struct.stv0900_init_params, ptr %1, i32 0, i32 1
  %192 = load i32, ptr %191, align 4
  %193 = icmp eq i32 %192, 1
  br i1 %193, label %194, label %203

194:                                              ; preds = %190
  %195 = load ptr, ptr %183, align 4
  store ptr %195, ptr %160, align 4
  %196 = getelementptr inbounds %struct.stv0900_internal, ptr %195, i32 0, i32 23
  %197 = load i32, ptr %196, align 4
  %198 = add i32 %197, 1
  store i32 %198, ptr %196, align 4
  %199 = load i32, ptr @stvdebug, align 4
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %1763, label %201

201:                                              ; preds = %194
  %202 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.stv0900_init_internal) #11
  br label %1763

203:                                              ; preds = %190, %188
  %204 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %205 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %204, i32 noundef 3264, i32 noundef 244) #12
  store ptr %205, ptr %160, align 4
  %206 = icmp eq ptr %205, null
  br i1 %206, label %1763, label %207

207:                                              ; preds = %203
  %208 = load ptr, ptr @stv0900_first_inode, align 4
  %209 = icmp eq ptr %208, null
  br i1 %209, label %210, label %213

210:                                              ; preds = %207
  %211 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %212 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %211, i32 noundef 3264, i32 noundef 8) #12
  store ptr %212, ptr @stv0900_first_inode, align 4
  br label %222

213:                                              ; preds = %213, %207
  %214 = phi ptr [ %216, %213 ], [ %208, %207 ]
  %215 = getelementptr inbounds %struct.stv0900_inode, ptr %214, i32 0, i32 1
  %216 = load ptr, ptr %215, align 4
  %217 = icmp eq ptr %216, null
  br i1 %217, label %218, label %213

218:                                              ; preds = %213
  %219 = getelementptr inbounds %struct.stv0900_inode, ptr %214, i32 0, i32 1
  %220 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %221 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %220, i32 noundef 3264, i32 noundef 8) #12
  store ptr %221, ptr %219, align 4
  br label %222

222:                                              ; preds = %218, %210
  %223 = phi ptr [ %212, %210 ], [ %221, %218 ]
  %224 = icmp eq ptr %223, null
  br i1 %224, label %225, label %227

225:                                              ; preds = %222
  %226 = load ptr, ptr %160, align 4
  tail call void @kfree(ptr noundef %226) #10
  store ptr null, ptr %160, align 4
  br label %1763

227:                                              ; preds = %222
  store ptr %205, ptr %223, align 8
  %228 = getelementptr inbounds %struct.stv0900_inode, ptr %223, i32 0, i32 1
  store ptr null, ptr %228, align 4
  %229 = load ptr, ptr %160, align 4
  %230 = getelementptr inbounds %struct.stv0900_internal, ptr %229, i32 0, i32 23
  store i32 1, ptr %230, align 4
  %231 = load ptr, ptr %161, align 4
  %232 = load ptr, ptr %160, align 4
  %233 = getelementptr inbounds %struct.stv0900_internal, ptr %232, i32 0, i32 17
  store ptr %231, ptr %233, align 4
  %234 = load ptr, ptr %163, align 4
  %235 = load i8, ptr %234, align 4
  %236 = load ptr, ptr %160, align 4
  %237 = getelementptr inbounds %struct.stv0900_internal, ptr %236, i32 0, i32 18
  store i8 %235, ptr %237, align 4
  %238 = load ptr, ptr %163, align 4
  %239 = getelementptr inbounds %struct.stv0900_config, ptr %238, i32 0, i32 3
  %240 = load i8, ptr %239, align 4
  %241 = load ptr, ptr %160, align 4
  %242 = getelementptr inbounds %struct.stv0900_internal, ptr %241, i32 0, i32 19
  store i8 %240, ptr %242, align 1
  %243 = load ptr, ptr %160, align 4
  %244 = getelementptr inbounds %struct.stv0900_internal, ptr %243, i32 0, i32 22
  store i32 0, ptr %244, align 4
  %245 = load i32, ptr @stvdebug, align 4
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %249, label %247

247:                                              ; preds = %227
  %248 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.stv0900_init_internal) #11
  br label %249

249:                                              ; preds = %247, %227
  %250 = load ptr, ptr %160, align 4
  %251 = icmp eq ptr %250, null
  br i1 %251, label %1763, label %252

252:                                              ; preds = %249
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %156) #10
  store i8 -15, ptr %156, align 2
  %253 = getelementptr inbounds i8, ptr %156, i32 1
  store i8 0, ptr %253, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %157) #10
  store i8 0, ptr %157, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %158) #10
  %254 = getelementptr inbounds i8, ptr %158, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %254, i8 0, i32 16, i1 false) #10, !annotation !8
  %255 = getelementptr inbounds %struct.stv0900_internal, ptr %250, i32 0, i32 18
  %256 = load i8, ptr %255, align 4
  %257 = zext i8 %256 to i16
  store i16 %257, ptr %158, align 4
  %258 = getelementptr inbounds %struct.i2c_msg, ptr %158, i32 0, i32 1
  store i16 0, ptr %258, align 2
  store i16 2, ptr %254, align 4
  %259 = getelementptr inbounds %struct.i2c_msg, ptr %158, i32 0, i32 3
  store ptr %156, ptr %259, align 4
  %260 = getelementptr inbounds %struct.i2c_msg, ptr %158, i32 1
  store i16 %257, ptr %260, align 4
  %261 = getelementptr inbounds %struct.i2c_msg, ptr %158, i32 1, i32 1
  store i16 1, ptr %261, align 2
  %262 = getelementptr inbounds %struct.i2c_msg, ptr %158, i32 1, i32 2
  store i16 1, ptr %262, align 4
  %263 = getelementptr inbounds %struct.i2c_msg, ptr %158, i32 1, i32 3
  store ptr %157, ptr %263, align 4
  %264 = getelementptr inbounds %struct.stv0900_internal, ptr %250, i32 0, i32 17
  %265 = load ptr, ptr %264, align 4
  %266 = call i32 @i2c_transfer(ptr noundef %265, ptr noundef nonnull %158, i32 noundef 2) #10
  %267 = icmp ne i32 %266, 2
  %268 = load i32, ptr @stvdebug, align 4
  %269 = icmp ne i32 %268, 0
  %270 = select i1 %267, i1 %269, i1 false
  br i1 %270, label %271, label %273

271:                                              ; preds = %252
  %272 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0900_read_reg, i32 noundef %266, i32 noundef 61696) #11
  br label %273

273:                                              ; preds = %271, %252
  %274 = load i8, ptr %157, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %158) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %157) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %156) #10
  %275 = getelementptr inbounds %struct.stv0900_internal, ptr %250, i32 0, i32 20
  store i8 %274, ptr %275, align 2
  %276 = getelementptr inbounds %struct.stv0900_internal, ptr %250, i32 0, i32 22
  %277 = load i32, ptr %276, align 4
  switch i32 %277, label %984 [
    i32 0, label %278
    i32 1, label %1763
  ]

278:                                              ; preds = %273
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %154) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %155) #10
  %279 = getelementptr inbounds i8, ptr %155, i32 4
  store i32 3, ptr %279, align 4, !annotation !8
  %280 = load i8, ptr %255, align 4
  %281 = zext i8 %280 to i16
  store i16 %281, ptr %155, align 4
  %282 = getelementptr inbounds %struct.i2c_msg, ptr %155, i32 0, i32 1
  store i16 0, ptr %282, align 2
  %283 = getelementptr inbounds %struct.i2c_msg, ptr %155, i32 0, i32 3
  store ptr %154, ptr %283, align 4
  store i8 -12, ptr %154, align 1
  %284 = getelementptr inbounds [3 x i8], ptr %154, i32 0, i32 1
  store i8 22, ptr %284, align 1
  %285 = getelementptr inbounds [3 x i8], ptr %154, i32 0, i32 2
  store i8 92, ptr %285, align 1
  %286 = load ptr, ptr %264, align 4
  %287 = call i32 @i2c_transfer(ptr noundef %286, ptr noundef nonnull %155, i32 noundef 1) #10
  %288 = icmp ne i32 %287, 1
  %289 = load i32, ptr @stvdebug, align 4
  %290 = icmp ne i32 %289, 0
  %291 = select i1 %288, i1 %290, i1 false
  br i1 %291, label %292, label %294

292:                                              ; preds = %278
  %293 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %287) #11
  br label %294

294:                                              ; preds = %292, %278
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %155) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %154) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %152) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %153) #10
  %295 = getelementptr inbounds i8, ptr %153, i32 4
  store i32 3, ptr %295, align 4, !annotation !8
  %296 = load i8, ptr %255, align 4
  %297 = zext i8 %296 to i16
  store i16 %297, ptr %153, align 4
  %298 = getelementptr inbounds %struct.i2c_msg, ptr %153, i32 0, i32 1
  store i16 0, ptr %298, align 2
  %299 = getelementptr inbounds %struct.i2c_msg, ptr %153, i32 0, i32 3
  store ptr %152, ptr %299, align 4
  store i8 -14, ptr %152, align 1
  %300 = getelementptr inbounds [3 x i8], ptr %152, i32 0, i32 1
  store i8 22, ptr %300, align 1
  %301 = getelementptr inbounds [3 x i8], ptr %152, i32 0, i32 2
  store i8 92, ptr %301, align 1
  %302 = load ptr, ptr %264, align 4
  %303 = call i32 @i2c_transfer(ptr noundef %302, ptr noundef nonnull %153, i32 noundef 1) #10
  %304 = icmp ne i32 %303, 1
  %305 = load i32, ptr @stvdebug, align 4
  %306 = icmp ne i32 %305, 0
  %307 = select i1 %304, i1 %306, i1 false
  br i1 %307, label %308, label %310

308:                                              ; preds = %294
  %309 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %303) #11
  br label %310

310:                                              ; preds = %308, %294
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %153) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %152) #10
  call void @msleep(i32 noundef 3) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %150) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %151) #10
  %311 = getelementptr inbounds i8, ptr %151, i32 4
  store i32 3, ptr %311, align 4, !annotation !8
  %312 = load i8, ptr %255, align 4
  %313 = zext i8 %312 to i16
  store i16 %313, ptr %151, align 4
  %314 = getelementptr inbounds %struct.i2c_msg, ptr %151, i32 0, i32 1
  store i16 0, ptr %314, align 2
  %315 = getelementptr inbounds %struct.i2c_msg, ptr %151, i32 0, i32 3
  store ptr %150, ptr %315, align 4
  store i8 -12, ptr %150, align 1
  %316 = getelementptr inbounds [3 x i8], ptr %150, i32 0, i32 1
  store i8 -32, ptr %316, align 1
  %317 = getelementptr inbounds [3 x i8], ptr %150, i32 0, i32 2
  store i8 108, ptr %317, align 1
  %318 = load ptr, ptr %264, align 4
  %319 = call i32 @i2c_transfer(ptr noundef %318, ptr noundef nonnull %151, i32 noundef 1) #10
  %320 = icmp ne i32 %319, 1
  %321 = load i32, ptr @stvdebug, align 4
  %322 = icmp ne i32 %321, 0
  %323 = select i1 %320, i1 %322, i1 false
  br i1 %323, label %324, label %326

324:                                              ; preds = %310
  %325 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %319) #11
  br label %326

326:                                              ; preds = %324, %310
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %151) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %150) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %148) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %149) #10
  %327 = getelementptr inbounds i8, ptr %149, i32 4
  store i32 3, ptr %327, align 4, !annotation !8
  %328 = load i8, ptr %255, align 4
  %329 = zext i8 %328 to i16
  store i16 %329, ptr %149, align 4
  %330 = getelementptr inbounds %struct.i2c_msg, ptr %149, i32 0, i32 1
  store i16 0, ptr %330, align 2
  %331 = getelementptr inbounds %struct.i2c_msg, ptr %149, i32 0, i32 3
  store ptr %148, ptr %331, align 4
  store i8 -14, ptr %148, align 1
  %332 = getelementptr inbounds [3 x i8], ptr %148, i32 0, i32 1
  store i8 -32, ptr %332, align 1
  %333 = getelementptr inbounds [3 x i8], ptr %148, i32 0, i32 2
  store i8 111, ptr %333, align 1
  %334 = load ptr, ptr %264, align 4
  %335 = call i32 @i2c_transfer(ptr noundef %334, ptr noundef nonnull %149, i32 noundef 1) #10
  %336 = icmp ne i32 %335, 1
  %337 = load i32, ptr @stvdebug, align 4
  %338 = icmp ne i32 %337, 0
  %339 = select i1 %336, i1 %338, i1 false
  br i1 %339, label %340, label %342

340:                                              ; preds = %326
  %341 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %335) #11
  br label %342

342:                                              ; preds = %340, %326
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %149) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %148) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %146) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %147) #10
  %343 = getelementptr inbounds i8, ptr %147, i32 4
  store i32 3, ptr %343, align 4, !annotation !8
  %344 = load i8, ptr %255, align 4
  %345 = zext i8 %344 to i16
  store i16 %345, ptr %147, align 4
  %346 = getelementptr inbounds %struct.i2c_msg, ptr %147, i32 0, i32 1
  store i16 0, ptr %346, align 2
  %347 = getelementptr inbounds %struct.i2c_msg, ptr %147, i32 0, i32 3
  store ptr %146, ptr %347, align 4
  store i8 -15, ptr %146, align 1
  %348 = getelementptr inbounds [3 x i8], ptr %146, i32 0, i32 1
  store i8 42, ptr %348, align 1
  %349 = getelementptr inbounds [3 x i8], ptr %146, i32 0, i32 2
  store i8 32, ptr %349, align 1
  %350 = load ptr, ptr %264, align 4
  %351 = call i32 @i2c_transfer(ptr noundef %350, ptr noundef nonnull %147, i32 noundef 1) #10
  %352 = icmp ne i32 %351, 1
  %353 = load i32, ptr @stvdebug, align 4
  %354 = icmp ne i32 %353, 0
  %355 = select i1 %352, i1 %354, i1 false
  br i1 %355, label %356, label %358

356:                                              ; preds = %342
  %357 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %351) #11
  br label %358

358:                                              ; preds = %356, %342
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %147) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %146) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %144) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %145) #10
  %359 = getelementptr inbounds i8, ptr %145, i32 4
  store i32 3, ptr %359, align 4, !annotation !8
  %360 = load i8, ptr %255, align 4
  %361 = zext i8 %360 to i16
  store i16 %361, ptr %145, align 4
  %362 = getelementptr inbounds %struct.i2c_msg, ptr %145, i32 0, i32 1
  store i16 0, ptr %362, align 2
  %363 = getelementptr inbounds %struct.i2c_msg, ptr %145, i32 0, i32 3
  store ptr %144, ptr %363, align 4
  store i8 -15, ptr %144, align 1
  %364 = getelementptr inbounds [3 x i8], ptr %144, i32 0, i32 1
  store i8 43, ptr %364, align 1
  %365 = getelementptr inbounds [3 x i8], ptr %144, i32 0, i32 2
  store i8 32, ptr %365, align 1
  %366 = load ptr, ptr %264, align 4
  %367 = call i32 @i2c_transfer(ptr noundef %366, ptr noundef nonnull %145, i32 noundef 1) #10
  %368 = icmp ne i32 %367, 1
  %369 = load i32, ptr @stvdebug, align 4
  %370 = icmp ne i32 %369, 0
  %371 = select i1 %368, i1 %370, i1 false
  br i1 %371, label %372, label %374

372:                                              ; preds = %358
  %373 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %367) #11
  br label %374

374:                                              ; preds = %372, %358
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %145) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %144) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %142) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %143) #10
  %375 = getelementptr inbounds i8, ptr %143, i32 4
  store i32 3, ptr %375, align 4, !annotation !8
  %376 = load i8, ptr %255, align 4
  %377 = zext i8 %376 to i16
  store i16 %377, ptr %143, align 4
  %378 = getelementptr inbounds %struct.i2c_msg, ptr %143, i32 0, i32 1
  store i16 0, ptr %378, align 2
  %379 = getelementptr inbounds %struct.i2c_msg, ptr %143, i32 0, i32 3
  store ptr %142, ptr %379, align 4
  store i8 -15, ptr %142, align 1
  %380 = getelementptr inbounds [3 x i8], ptr %142, i32 0, i32 1
  store i8 -77, ptr %380, align 1
  %381 = getelementptr inbounds [3 x i8], ptr %142, i32 0, i32 2
  store i8 19, ptr %381, align 1
  %382 = load ptr, ptr %264, align 4
  %383 = call i32 @i2c_transfer(ptr noundef %382, ptr noundef nonnull %143, i32 noundef 1) #10
  %384 = icmp ne i32 %383, 1
  %385 = load i32, ptr @stvdebug, align 4
  %386 = icmp ne i32 %385, 0
  %387 = select i1 %384, i1 %386, i1 false
  br i1 %387, label %388, label %390

388:                                              ; preds = %374
  %389 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %383) #11
  br label %390

390:                                              ; preds = %388, %374
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %143) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %142) #10
  call void @msleep(i32 noundef 3) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %140) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %141) #10
  %391 = getelementptr inbounds i8, ptr %141, i32 4
  store i32 3, ptr %391, align 4, !annotation !8
  %392 = load i8, ptr %255, align 4
  %393 = zext i8 %392 to i16
  store i16 %393, ptr %141, align 4
  %394 = getelementptr inbounds %struct.i2c_msg, ptr %141, i32 0, i32 1
  store i16 0, ptr %394, align 2
  %395 = getelementptr inbounds %struct.i2c_msg, ptr %141, i32 0, i32 3
  store ptr %140, ptr %395, align 4
  store i8 -15, ptr %140, align 1
  %396 = getelementptr inbounds [3 x i8], ptr %140, i32 0, i32 1
  store i8 41, ptr %396, align 1
  %397 = getelementptr inbounds [3 x i8], ptr %140, i32 0, i32 2
  store i8 8, ptr %397, align 1
  %398 = load ptr, ptr %264, align 4
  %399 = call i32 @i2c_transfer(ptr noundef %398, ptr noundef nonnull %141, i32 noundef 1) #10
  %400 = icmp ne i32 %399, 1
  %401 = load i32, ptr @stvdebug, align 4
  %402 = icmp ne i32 %401, 0
  %403 = select i1 %400, i1 %402, i1 false
  br i1 %403, label %404, label %406

404:                                              ; preds = %390
  %405 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %399) #11
  br label %406

406:                                              ; preds = %404, %390
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %141) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %140) #10
  %407 = getelementptr inbounds %struct.stv0900_internal, ptr %250, i32 0, i32 19
  %408 = load i8, ptr %407, align 1
  switch i8 %408, label %427 [
    i8 0, label %409
    i8 2, label %409
  ]

409:                                              ; preds = %406, %406
  %410 = or i8 %408, 32
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %138) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %139) #10
  %411 = getelementptr inbounds i8, ptr %139, i32 4
  store i32 3, ptr %411, align 4, !annotation !8
  %412 = load i8, ptr %255, align 4
  %413 = zext i8 %412 to i16
  store i16 %413, ptr %139, align 4
  %414 = getelementptr inbounds %struct.i2c_msg, ptr %139, i32 0, i32 1
  store i16 0, ptr %414, align 2
  %415 = getelementptr inbounds %struct.i2c_msg, ptr %139, i32 0, i32 3
  store ptr %138, ptr %415, align 4
  store i8 -15, ptr %138, align 1
  %416 = getelementptr inbounds [3 x i8], ptr %138, i32 0, i32 1
  store i8 -74, ptr %416, align 1
  %417 = getelementptr inbounds [3 x i8], ptr %138, i32 0, i32 2
  store i8 %410, ptr %417, align 1
  %418 = load ptr, ptr %264, align 4
  %419 = call i32 @i2c_transfer(ptr noundef %418, ptr noundef nonnull %139, i32 noundef 1) #10
  %420 = icmp ne i32 %419, 1
  %421 = load i32, ptr @stvdebug, align 4
  %422 = icmp ne i32 %421, 0
  %423 = select i1 %420, i1 %422, i1 false
  br i1 %423, label %424, label %426

424:                                              ; preds = %409
  %425 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %419) #11
  br label %426

426:                                              ; preds = %424, %409
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %139) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %138) #10
  br label %466

427:                                              ; preds = %406
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %135) #10
  store i8 -15, ptr %135, align 2
  %428 = getelementptr inbounds i8, ptr %135, i32 1
  store i8 -74, ptr %428, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %136) #10
  store i8 0, ptr %136, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %137) #10
  %429 = getelementptr inbounds i8, ptr %137, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %429, i8 0, i32 16, i1 false) #10, !annotation !8
  %430 = load i8, ptr %255, align 4
  %431 = zext i8 %430 to i16
  store i16 %431, ptr %137, align 4
  %432 = getelementptr inbounds %struct.i2c_msg, ptr %137, i32 0, i32 1
  store i16 0, ptr %432, align 2
  store i16 2, ptr %429, align 4
  %433 = getelementptr inbounds %struct.i2c_msg, ptr %137, i32 0, i32 3
  store ptr %135, ptr %433, align 4
  %434 = getelementptr inbounds %struct.i2c_msg, ptr %137, i32 1
  store i16 %431, ptr %434, align 4
  %435 = getelementptr inbounds %struct.i2c_msg, ptr %137, i32 1, i32 1
  store i16 1, ptr %435, align 2
  %436 = getelementptr inbounds %struct.i2c_msg, ptr %137, i32 1, i32 2
  store i16 1, ptr %436, align 4
  %437 = getelementptr inbounds %struct.i2c_msg, ptr %137, i32 1, i32 3
  store ptr %136, ptr %437, align 4
  %438 = load ptr, ptr %264, align 4
  %439 = call i32 @i2c_transfer(ptr noundef %438, ptr noundef nonnull %137, i32 noundef 2) #10
  %440 = icmp ne i32 %439, 2
  %441 = load i32, ptr @stvdebug, align 4
  %442 = icmp ne i32 %441, 0
  %443 = select i1 %440, i1 %442, i1 false
  br i1 %443, label %444, label %446

444:                                              ; preds = %427
  %445 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0900_read_reg, i32 noundef %439, i32 noundef 61878) #11
  br label %446

446:                                              ; preds = %444, %427
  %447 = load i8, ptr %136, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %137) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %136) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %135) #10
  %448 = and i8 %447, 2
  %449 = or i8 %448, 32
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %133) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %134) #10
  %450 = getelementptr inbounds i8, ptr %134, i32 4
  store i32 3, ptr %450, align 4, !annotation !8
  %451 = load i8, ptr %255, align 4
  %452 = zext i8 %451 to i16
  store i16 %452, ptr %134, align 4
  %453 = getelementptr inbounds %struct.i2c_msg, ptr %134, i32 0, i32 1
  store i16 0, ptr %453, align 2
  %454 = getelementptr inbounds %struct.i2c_msg, ptr %134, i32 0, i32 3
  store ptr %133, ptr %454, align 4
  store i8 -15, ptr %133, align 1
  %455 = getelementptr inbounds [3 x i8], ptr %133, i32 0, i32 1
  store i8 -74, ptr %455, align 1
  %456 = getelementptr inbounds [3 x i8], ptr %133, i32 0, i32 2
  store i8 %449, ptr %456, align 1
  %457 = load ptr, ptr %264, align 4
  %458 = call i32 @i2c_transfer(ptr noundef %457, ptr noundef nonnull %134, i32 noundef 1) #10
  %459 = icmp ne i32 %458, 1
  %460 = load i32, ptr @stvdebug, align 4
  %461 = icmp ne i32 %460, 0
  %462 = select i1 %459, i1 %461, i1 false
  br i1 %462, label %463, label %465

463:                                              ; preds = %446
  %464 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %458) #11
  br label %465

465:                                              ; preds = %463, %446
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %134) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %133) #10
  br label %466

466:                                              ; preds = %465, %426
  call void @msleep(i32 noundef 3) #10
  %467 = getelementptr inbounds i8, ptr %132, i32 4
  %468 = getelementptr inbounds %struct.i2c_msg, ptr %132, i32 0, i32 1
  %469 = getelementptr inbounds %struct.i2c_msg, ptr %132, i32 0, i32 3
  %470 = getelementptr inbounds [3 x i8], ptr %131, i32 0, i32 1
  %471 = getelementptr inbounds [3 x i8], ptr %131, i32 0, i32 2
  br label %472

472:                                              ; preds = %492, %466
  %473 = phi i32 [ 0, %466 ], [ %493, %492 ]
  %474 = getelementptr [181 x [2 x i16]], ptr @STV0900_InitVal, i32 0, i32 %473
  %475 = load i16, ptr %474, align 2
  %476 = getelementptr [181 x [2 x i16]], ptr @STV0900_InitVal, i32 0, i32 %473, i32 1
  %477 = load i16, ptr %476, align 2
  %478 = trunc i16 %477 to i8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %131) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %132) #10
  store i32 3, ptr %467, align 4, !annotation !8
  %479 = load i8, ptr %255, align 4
  %480 = zext i8 %479 to i16
  store i16 %480, ptr %132, align 4
  store i16 0, ptr %468, align 2
  store ptr %131, ptr %469, align 4
  %481 = lshr i16 %475, 8
  %482 = trunc i16 %481 to i8
  store i8 %482, ptr %131, align 1
  %483 = trunc i16 %475 to i8
  store i8 %483, ptr %470, align 1
  store i8 %478, ptr %471, align 1
  %484 = load ptr, ptr %264, align 4
  %485 = call i32 @i2c_transfer(ptr noundef %484, ptr noundef nonnull %132, i32 noundef 1) #10
  %486 = icmp ne i32 %485, 1
  %487 = load i32, ptr @stvdebug, align 4
  %488 = icmp ne i32 %487, 0
  %489 = select i1 %486, i1 %488, i1 false
  br i1 %489, label %490, label %492

490:                                              ; preds = %472
  %491 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %485) #11
  br label %492

492:                                              ; preds = %490, %472
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %132) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %131) #10
  %493 = add nuw nsw i32 %473, 1
  %494 = icmp eq i32 %493, 181
  br i1 %494, label %495, label %472

495:                                              ; preds = %492
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %128) #10
  store i8 -15, ptr %128, align 2
  %496 = getelementptr inbounds i8, ptr %128, i32 1
  store i8 0, ptr %496, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %129) #10
  store i8 0, ptr %129, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %130) #10
  %497 = getelementptr inbounds i8, ptr %130, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %497, i8 0, i32 16, i1 false) #10, !annotation !8
  %498 = load i8, ptr %255, align 4
  %499 = zext i8 %498 to i16
  store i16 %499, ptr %130, align 4
  %500 = getelementptr inbounds %struct.i2c_msg, ptr %130, i32 0, i32 1
  store i16 0, ptr %500, align 2
  store i16 2, ptr %497, align 4
  %501 = getelementptr inbounds %struct.i2c_msg, ptr %130, i32 0, i32 3
  store ptr %128, ptr %501, align 4
  %502 = getelementptr inbounds %struct.i2c_msg, ptr %130, i32 1
  store i16 %499, ptr %502, align 4
  %503 = getelementptr inbounds %struct.i2c_msg, ptr %130, i32 1, i32 1
  store i16 1, ptr %503, align 2
  %504 = getelementptr inbounds %struct.i2c_msg, ptr %130, i32 1, i32 2
  store i16 1, ptr %504, align 4
  %505 = getelementptr inbounds %struct.i2c_msg, ptr %130, i32 1, i32 3
  store ptr %129, ptr %505, align 4
  %506 = load ptr, ptr %264, align 4
  %507 = call i32 @i2c_transfer(ptr noundef %506, ptr noundef nonnull %130, i32 noundef 2) #10
  %508 = icmp ne i32 %507, 2
  %509 = load i32, ptr @stvdebug, align 4
  %510 = icmp ne i32 %509, 0
  %511 = select i1 %508, i1 %510, i1 false
  br i1 %511, label %512, label %514

512:                                              ; preds = %495
  %513 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0900_read_reg, i32 noundef %507, i32 noundef 61696) #11
  br label %514

514:                                              ; preds = %512, %495
  %515 = load i8, ptr %129, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %130) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %129) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %128) #10
  %516 = icmp ugt i8 %515, 31
  br i1 %516, label %517, label %562

517:                                              ; preds = %514
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %126) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %127) #10
  %518 = getelementptr inbounds i8, ptr %127, i32 4
  store i32 3, ptr %518, align 4, !annotation !8
  %519 = load i8, ptr %255, align 4
  %520 = zext i8 %519 to i16
  store i16 %520, ptr %127, align 4
  %521 = getelementptr inbounds %struct.i2c_msg, ptr %127, i32 0, i32 1
  store i16 0, ptr %521, align 2
  %522 = getelementptr inbounds %struct.i2c_msg, ptr %127, i32 0, i32 3
  store ptr %126, ptr %522, align 4
  store i8 -10, ptr %126, align 1
  %523 = getelementptr inbounds [3 x i8], ptr %126, i32 0, i32 1
  store i8 48, ptr %523, align 1
  %524 = getelementptr inbounds [3 x i8], ptr %126, i32 0, i32 2
  store i8 12, ptr %524, align 1
  %525 = load ptr, ptr %264, align 4
  %526 = call i32 @i2c_transfer(ptr noundef %525, ptr noundef nonnull %127, i32 noundef 1) #10
  %527 = icmp ne i32 %526, 1
  %528 = load i32, ptr @stvdebug, align 4
  %529 = icmp ne i32 %528, 0
  %530 = select i1 %527, i1 %529, i1 false
  br i1 %530, label %531, label %533

531:                                              ; preds = %517
  %532 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %526) #11
  br label %533

533:                                              ; preds = %531, %517
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %127) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %126) #10
  %534 = getelementptr inbounds i8, ptr %125, i32 4
  %535 = getelementptr inbounds %struct.i2c_msg, ptr %125, i32 0, i32 1
  %536 = getelementptr inbounds %struct.i2c_msg, ptr %125, i32 0, i32 3
  %537 = getelementptr inbounds [3 x i8], ptr %124, i32 0, i32 1
  %538 = getelementptr inbounds [3 x i8], ptr %124, i32 0, i32 2
  br label %539

539:                                              ; preds = %559, %533
  %540 = phi i32 [ 0, %533 ], [ %560, %559 ]
  %541 = getelementptr [32 x [2 x i16]], ptr @STV0900_Cut20_AddOnVal, i32 0, i32 %540
  %542 = load i16, ptr %541, align 2
  %543 = getelementptr [32 x [2 x i16]], ptr @STV0900_Cut20_AddOnVal, i32 0, i32 %540, i32 1
  %544 = load i16, ptr %543, align 2
  %545 = trunc i16 %544 to i8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %124) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %125) #10
  store i32 3, ptr %534, align 4, !annotation !8
  %546 = load i8, ptr %255, align 4
  %547 = zext i8 %546 to i16
  store i16 %547, ptr %125, align 4
  store i16 0, ptr %535, align 2
  store ptr %124, ptr %536, align 4
  %548 = lshr i16 %542, 8
  %549 = trunc i16 %548 to i8
  store i8 %549, ptr %124, align 1
  %550 = trunc i16 %542 to i8
  store i8 %550, ptr %537, align 1
  store i8 %545, ptr %538, align 1
  %551 = load ptr, ptr %264, align 4
  %552 = call i32 @i2c_transfer(ptr noundef %551, ptr noundef nonnull %125, i32 noundef 1) #10
  %553 = icmp ne i32 %552, 1
  %554 = load i32, ptr @stvdebug, align 4
  %555 = icmp ne i32 %554, 0
  %556 = select i1 %553, i1 %555, i1 false
  br i1 %556, label %557, label %559

557:                                              ; preds = %539
  %558 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %552) #11
  br label %559

559:                                              ; preds = %557, %539
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %125) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %124) #10
  %560 = add nuw nsw i32 %540, 1
  %561 = icmp eq i32 %560, 32
  br i1 %561, label %562, label %539

562:                                              ; preds = %559, %514
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %122) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %123) #10
  %563 = getelementptr inbounds i8, ptr %123, i32 4
  store i32 3, ptr %563, align 4, !annotation !8
  %564 = load i8, ptr %255, align 4
  %565 = zext i8 %564 to i16
  store i16 %565, ptr %123, align 4
  %566 = getelementptr inbounds %struct.i2c_msg, ptr %123, i32 0, i32 1
  store i16 0, ptr %566, align 2
  %567 = getelementptr inbounds %struct.i2c_msg, ptr %123, i32 0, i32 3
  store ptr %122, ptr %567, align 4
  store i8 -11, ptr %122, align 1
  %568 = getelementptr inbounds [3 x i8], ptr %122, i32 0, i32 1
  store i8 -95, ptr %568, align 1
  %569 = getelementptr inbounds [3 x i8], ptr %122, i32 0, i32 2
  store i8 108, ptr %569, align 1
  %570 = load ptr, ptr %264, align 4
  %571 = call i32 @i2c_transfer(ptr noundef %570, ptr noundef nonnull %123, i32 noundef 1) #10
  %572 = icmp ne i32 %571, 1
  %573 = load i32, ptr @stvdebug, align 4
  %574 = icmp ne i32 %573, 0
  %575 = select i1 %572, i1 %574, i1 false
  br i1 %575, label %576, label %578

576:                                              ; preds = %562
  %577 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %571) #11
  br label %578

578:                                              ; preds = %576, %562
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %123) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %122) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %120) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %121) #10
  %579 = getelementptr inbounds i8, ptr %121, i32 4
  store i32 3, ptr %579, align 4, !annotation !8
  %580 = load i8, ptr %255, align 4
  %581 = zext i8 %580 to i16
  store i16 %581, ptr %121, align 4
  %582 = getelementptr inbounds %struct.i2c_msg, ptr %121, i32 0, i32 1
  store i16 0, ptr %582, align 2
  %583 = getelementptr inbounds %struct.i2c_msg, ptr %121, i32 0, i32 3
  store ptr %120, ptr %583, align 4
  store i8 -13, ptr %120, align 1
  %584 = getelementptr inbounds [3 x i8], ptr %120, i32 0, i32 1
  store i8 -95, ptr %584, align 1
  %585 = getelementptr inbounds [3 x i8], ptr %120, i32 0, i32 2
  store i8 108, ptr %585, align 1
  %586 = load ptr, ptr %264, align 4
  %587 = call i32 @i2c_transfer(ptr noundef %586, ptr noundef nonnull %121, i32 noundef 1) #10
  %588 = icmp ne i32 %587, 1
  %589 = load i32, ptr @stvdebug, align 4
  %590 = icmp ne i32 %589, 0
  %591 = select i1 %588, i1 %590, i1 false
  br i1 %591, label %592, label %594

592:                                              ; preds = %578
  %593 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %587) #11
  br label %594

594:                                              ; preds = %592, %578
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %121) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %120) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %118) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %119) #10
  %595 = getelementptr inbounds i8, ptr %119, i32 4
  store i32 3, ptr %595, align 4, !annotation !8
  %596 = load i8, ptr %255, align 4
  %597 = zext i8 %596 to i16
  store i16 %597, ptr %119, align 4
  %598 = getelementptr inbounds %struct.i2c_msg, ptr %119, i32 0, i32 1
  store i16 0, ptr %598, align 2
  %599 = getelementptr inbounds %struct.i2c_msg, ptr %119, i32 0, i32 3
  store ptr %118, ptr %599, align 4
  store i8 -11, ptr %118, align 1
  %600 = getelementptr inbounds [3 x i8], ptr %118, i32 0, i32 1
  store i8 81, ptr %600, align 1
  %601 = getelementptr inbounds [3 x i8], ptr %118, i32 0, i32 2
  store i8 1, ptr %601, align 1
  %602 = load ptr, ptr %264, align 4
  %603 = call i32 @i2c_transfer(ptr noundef %602, ptr noundef nonnull %119, i32 noundef 1) #10
  %604 = icmp ne i32 %603, 1
  %605 = load i32, ptr @stvdebug, align 4
  %606 = icmp ne i32 %605, 0
  %607 = select i1 %604, i1 %606, i1 false
  br i1 %607, label %608, label %610

608:                                              ; preds = %594
  %609 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %603) #11
  br label %610

610:                                              ; preds = %608, %594
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %119) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %118) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %116) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %117) #10
  %611 = getelementptr inbounds i8, ptr %117, i32 4
  store i32 3, ptr %611, align 4, !annotation !8
  %612 = load i8, ptr %255, align 4
  %613 = zext i8 %612 to i16
  store i16 %613, ptr %117, align 4
  %614 = getelementptr inbounds %struct.i2c_msg, ptr %117, i32 0, i32 1
  store i16 0, ptr %614, align 2
  %615 = getelementptr inbounds %struct.i2c_msg, ptr %117, i32 0, i32 3
  store ptr %116, ptr %615, align 4
  store i8 -13, ptr %116, align 1
  %616 = getelementptr inbounds [3 x i8], ptr %116, i32 0, i32 1
  store i8 81, ptr %616, align 1
  %617 = getelementptr inbounds [3 x i8], ptr %116, i32 0, i32 2
  store i8 33, ptr %617, align 1
  %618 = load ptr, ptr %264, align 4
  %619 = call i32 @i2c_transfer(ptr noundef %618, ptr noundef nonnull %117, i32 noundef 1) #10
  %620 = icmp ne i32 %619, 1
  %621 = load i32, ptr @stvdebug, align 4
  %622 = icmp ne i32 %621, 0
  %623 = select i1 %620, i1 %622, i1 false
  br i1 %623, label %624, label %626

624:                                              ; preds = %610
  %625 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %619) #11
  br label %626

626:                                              ; preds = %624, %610
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %117) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %116) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %114) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %115) #10
  %627 = getelementptr inbounds i8, ptr %115, i32 4
  store i32 3, ptr %627, align 4, !annotation !8
  %628 = load i8, ptr %255, align 4
  %629 = zext i8 %628 to i16
  store i16 %629, ptr %115, align 4
  %630 = getelementptr inbounds %struct.i2c_msg, ptr %115, i32 0, i32 1
  store i16 0, ptr %630, align 2
  %631 = getelementptr inbounds %struct.i2c_msg, ptr %115, i32 0, i32 3
  store ptr %114, ptr %631, align 4
  store i8 -11, ptr %114, align 1
  %632 = getelementptr inbounds [3 x i8], ptr %114, i32 0, i32 1
  store i8 111, ptr %632, align 1
  %633 = getelementptr inbounds [3 x i8], ptr %114, i32 0, i32 2
  store i8 32, ptr %633, align 1
  %634 = load ptr, ptr %264, align 4
  %635 = call i32 @i2c_transfer(ptr noundef %634, ptr noundef nonnull %115, i32 noundef 1) #10
  %636 = icmp ne i32 %635, 1
  %637 = load i32, ptr @stvdebug, align 4
  %638 = icmp ne i32 %637, 0
  %639 = select i1 %636, i1 %638, i1 false
  br i1 %639, label %640, label %642

640:                                              ; preds = %626
  %641 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %635) #11
  br label %642

642:                                              ; preds = %640, %626
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %115) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %114) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %112) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %113) #10
  %643 = getelementptr inbounds i8, ptr %113, i32 4
  store i32 3, ptr %643, align 4, !annotation !8
  %644 = load i8, ptr %255, align 4
  %645 = zext i8 %644 to i16
  store i16 %645, ptr %113, align 4
  %646 = getelementptr inbounds %struct.i2c_msg, ptr %113, i32 0, i32 1
  store i16 0, ptr %646, align 2
  %647 = getelementptr inbounds %struct.i2c_msg, ptr %113, i32 0, i32 3
  store ptr %112, ptr %647, align 4
  store i8 -13, ptr %112, align 1
  %648 = getelementptr inbounds [3 x i8], ptr %112, i32 0, i32 1
  store i8 111, ptr %648, align 1
  %649 = getelementptr inbounds [3 x i8], ptr %112, i32 0, i32 2
  store i8 32, ptr %649, align 1
  %650 = load ptr, ptr %264, align 4
  %651 = call i32 @i2c_transfer(ptr noundef %650, ptr noundef nonnull %113, i32 noundef 1) #10
  %652 = icmp ne i32 %651, 1
  %653 = load i32, ptr @stvdebug, align 4
  %654 = icmp ne i32 %653, 0
  %655 = select i1 %652, i1 %654, i1 false
  br i1 %655, label %656, label %658

656:                                              ; preds = %642
  %657 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %651) #11
  br label %658

658:                                              ; preds = %656, %642
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %113) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %112) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %110) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %111) #10
  %659 = getelementptr inbounds i8, ptr %111, i32 4
  store i32 3, ptr %659, align 4, !annotation !8
  %660 = load i8, ptr %255, align 4
  %661 = zext i8 %660 to i16
  store i16 %661, ptr %111, align 4
  %662 = getelementptr inbounds %struct.i2c_msg, ptr %111, i32 0, i32 1
  store i16 0, ptr %662, align 2
  %663 = getelementptr inbounds %struct.i2c_msg, ptr %111, i32 0, i32 3
  store ptr %110, ptr %663, align 4
  store i8 -1, ptr %110, align 1
  %664 = getelementptr inbounds [3 x i8], ptr %110, i32 0, i32 1
  store i8 17, ptr %664, align 1
  %665 = getelementptr inbounds [3 x i8], ptr %110, i32 0, i32 2
  store i8 -128, ptr %665, align 1
  %666 = load ptr, ptr %264, align 4
  %667 = call i32 @i2c_transfer(ptr noundef %666, ptr noundef nonnull %111, i32 noundef 1) #10
  %668 = icmp ne i32 %667, 1
  %669 = load i32, ptr @stvdebug, align 4
  %670 = icmp ne i32 %669, 0
  %671 = select i1 %668, i1 %670, i1 false
  br i1 %671, label %672, label %674

672:                                              ; preds = %658
  %673 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %667) #11
  br label %674

674:                                              ; preds = %672, %658
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %111) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %110) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %108) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %109) #10
  %675 = getelementptr inbounds i8, ptr %109, i32 4
  store i32 3, ptr %675, align 4, !annotation !8
  %676 = load i8, ptr %255, align 4
  %677 = zext i8 %676 to i16
  store i16 %677, ptr %109, align 4
  %678 = getelementptr inbounds %struct.i2c_msg, ptr %109, i32 0, i32 1
  store i16 0, ptr %678, align 2
  %679 = getelementptr inbounds %struct.i2c_msg, ptr %109, i32 0, i32 3
  store ptr %108, ptr %679, align 4
  store i8 -1, ptr %108, align 1
  %680 = getelementptr inbounds [3 x i8], ptr %108, i32 0, i32 1
  store i8 17, ptr %680, align 1
  %681 = getelementptr inbounds [3 x i8], ptr %108, i32 0, i32 2
  store i8 0, ptr %681, align 1
  %682 = load ptr, ptr %264, align 4
  %683 = call i32 @i2c_transfer(ptr noundef %682, ptr noundef nonnull %109, i32 noundef 1) #10
  %684 = icmp ne i32 %683, 1
  %685 = load i32, ptr @stvdebug, align 4
  %686 = icmp ne i32 %685, 0
  %687 = select i1 %684, i1 %686, i1 false
  br i1 %687, label %688, label %691

688:                                              ; preds = %674
  %689 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %683) #11
  %690 = load i32, ptr @stvdebug, align 4
  br label %691

691:                                              ; preds = %688, %674
  %692 = phi i32 [ %685, %674 ], [ %690, %688 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %109) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %108) #10
  %693 = load ptr, ptr %160, align 4
  %694 = getelementptr inbounds %struct.stv0900_init_params, ptr %1, i32 0, i32 1
  %695 = load i32, ptr %694, align 4
  %696 = getelementptr inbounds %struct.stv0900_internal, ptr %693, i32 0, i32 3
  store i32 %695, ptr %696, align 4
  %697 = icmp eq i32 %692, 0
  br i1 %697, label %700, label %698

698:                                              ; preds = %691
  %699 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0900_st_dvbs2_single) #11
  br label %700

700:                                              ; preds = %698, %691
  %701 = icmp eq i32 %695, 0
  br i1 %701, label %917, label %702

702:                                              ; preds = %700
  %703 = load i32, ptr %696, align 4
  %704 = icmp eq i32 %703, 1
  br i1 %704, label %705, label %730

705:                                              ; preds = %702
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %105) #10
  store i8 -6, ptr %105, align 2
  %706 = getelementptr inbounds i8, ptr %105, i32 1
  store i8 -122, ptr %706, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %106) #10
  store i8 0, ptr %106, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %107) #10
  %707 = getelementptr inbounds i8, ptr %107, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %707, i8 0, i32 16, i1 false) #10, !annotation !8
  %708 = getelementptr inbounds %struct.stv0900_internal, ptr %693, i32 0, i32 18
  %709 = load i8, ptr %708, align 4
  %710 = zext i8 %709 to i16
  store i16 %710, ptr %107, align 4
  %711 = getelementptr inbounds %struct.i2c_msg, ptr %107, i32 0, i32 1
  store i16 0, ptr %711, align 2
  store i16 2, ptr %707, align 4
  %712 = getelementptr inbounds %struct.i2c_msg, ptr %107, i32 0, i32 3
  store ptr %105, ptr %712, align 4
  %713 = getelementptr inbounds %struct.i2c_msg, ptr %107, i32 1
  store i16 %710, ptr %713, align 4
  %714 = getelementptr inbounds %struct.i2c_msg, ptr %107, i32 1, i32 1
  store i16 1, ptr %714, align 2
  %715 = getelementptr inbounds %struct.i2c_msg, ptr %107, i32 1, i32 2
  store i16 1, ptr %715, align 4
  %716 = getelementptr inbounds %struct.i2c_msg, ptr %107, i32 1, i32 3
  store ptr %106, ptr %716, align 4
  %717 = getelementptr inbounds %struct.stv0900_internal, ptr %693, i32 0, i32 17
  %718 = load ptr, ptr %717, align 4
  %719 = call i32 @i2c_transfer(ptr noundef %718, ptr noundef nonnull %107, i32 noundef 2) #10
  %720 = icmp ne i32 %719, 2
  %721 = load i32, ptr @stvdebug, align 4
  %722 = icmp ne i32 %721, 0
  %723 = select i1 %720, i1 %722, i1 false
  br i1 %723, label %724, label %726

724:                                              ; preds = %705
  %725 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0900_read_reg, i32 noundef %719, i32 noundef 64134) #11
  br label %726

726:                                              ; preds = %724, %705
  %727 = load i8, ptr %106, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %107) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %106) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %105) #10
  %728 = and i8 %727, 1
  %729 = icmp eq i8 %728, 0
  br i1 %729, label %730, label %936

730:                                              ; preds = %726, %702
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %103) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %104) #10
  %731 = getelementptr inbounds i8, ptr %104, i32 4
  store i32 3, ptr %731, align 4, !annotation !8
  %732 = getelementptr inbounds %struct.stv0900_internal, ptr %693, i32 0, i32 18
  %733 = load i8, ptr %732, align 4
  %734 = zext i8 %733 to i16
  store i16 %734, ptr %104, align 4
  %735 = getelementptr inbounds %struct.i2c_msg, ptr %104, i32 0, i32 1
  store i16 0, ptr %735, align 2
  %736 = getelementptr inbounds %struct.i2c_msg, ptr %104, i32 0, i32 3
  store ptr %103, ptr %736, align 4
  store i8 -6, ptr %103, align 1
  %737 = getelementptr inbounds [3 x i8], ptr %103, i32 0, i32 1
  store i8 -122, ptr %737, align 1
  %738 = getelementptr inbounds [3 x i8], ptr %103, i32 0, i32 2
  store i8 29, ptr %738, align 1
  %739 = getelementptr inbounds %struct.stv0900_internal, ptr %693, i32 0, i32 17
  %740 = load ptr, ptr %739, align 4
  %741 = call i32 @i2c_transfer(ptr noundef %740, ptr noundef nonnull %104, i32 noundef 1) #10
  %742 = icmp ne i32 %741, 1
  %743 = load i32, ptr @stvdebug, align 4
  %744 = icmp ne i32 %743, 0
  %745 = select i1 %742, i1 %744, i1 false
  br i1 %745, label %746, label %748

746:                                              ; preds = %730
  %747 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %741) #11
  br label %748

748:                                              ; preds = %746, %730
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %104) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %103) #10
  store i32 1, ptr %696, align 4
  call void @stv0900_write_bits(ptr noundef %693, i32 noundef -15662976, i8 noundef zeroext 1) #10
  call void @stv0900_write_bits(ptr noundef %693, i32 noundef -15662976, i8 noundef zeroext 0) #10
  %749 = getelementptr inbounds i8, ptr %102, i32 4
  %750 = getelementptr inbounds %struct.i2c_msg, ptr %102, i32 0, i32 1
  %751 = getelementptr inbounds %struct.i2c_msg, ptr %102, i32 0, i32 3
  %752 = getelementptr inbounds [3 x i8], ptr %101, i32 0, i32 1
  %753 = getelementptr inbounds [3 x i8], ptr %101, i32 0, i32 2
  br label %760

754:                                              ; preds = %777
  %755 = getelementptr inbounds i8, ptr %100, i32 4
  %756 = getelementptr inbounds %struct.i2c_msg, ptr %100, i32 0, i32 1
  %757 = getelementptr inbounds %struct.i2c_msg, ptr %100, i32 0, i32 3
  %758 = getelementptr inbounds [3 x i8], ptr %99, i32 0, i32 1
  %759 = getelementptr inbounds [3 x i8], ptr %99, i32 0, i32 2
  br label %780

760:                                              ; preds = %777, %748
  %761 = phi i32 [ 0, %748 ], [ %778, %777 ]
  %762 = trunc i32 %761 to i16
  %763 = add i16 %762, -2896
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %101) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %102) #10
  store i32 3, ptr %749, align 4, !annotation !8
  %764 = load i8, ptr %732, align 4
  %765 = zext i8 %764 to i16
  store i16 %765, ptr %102, align 4
  store i16 0, ptr %750, align 2
  store ptr %101, ptr %751, align 4
  %766 = lshr i16 %763, 8
  %767 = trunc i16 %766 to i8
  store i8 %767, ptr %101, align 1
  %768 = trunc i16 %763 to i8
  store i8 %768, ptr %752, align 1
  store i8 -1, ptr %753, align 1
  %769 = load ptr, ptr %739, align 4
  %770 = call i32 @i2c_transfer(ptr noundef %769, ptr noundef nonnull %102, i32 noundef 1) #10
  %771 = icmp ne i32 %770, 1
  %772 = load i32, ptr @stvdebug, align 4
  %773 = icmp ne i32 %772, 0
  %774 = select i1 %771, i1 %773, i1 false
  br i1 %774, label %775, label %777

775:                                              ; preds = %760
  %776 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %770) #11
  br label %777

777:                                              ; preds = %775, %760
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %102) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %101) #10
  %778 = add nuw nsw i32 %761, 1
  %779 = icmp eq i32 %778, 7
  br i1 %779, label %754, label %760

780:                                              ; preds = %797, %754
  %781 = phi i32 [ 0, %754 ], [ %798, %797 ]
  %782 = trunc i32 %781 to i16
  %783 = add i16 %782, -2889
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %99) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %100) #10
  store i32 3, ptr %755, align 4, !annotation !8
  %784 = load i8, ptr %732, align 4
  %785 = zext i8 %784 to i16
  store i16 %785, ptr %100, align 4
  store i16 0, ptr %756, align 2
  store ptr %99, ptr %757, align 4
  %786 = lshr i16 %783, 8
  %787 = trunc i16 %786 to i8
  store i8 %787, ptr %99, align 1
  %788 = trunc i16 %783 to i8
  store i8 %788, ptr %758, align 1
  store i8 -52, ptr %759, align 1
  %789 = load ptr, ptr %739, align 4
  %790 = call i32 @i2c_transfer(ptr noundef %789, ptr noundef nonnull %100, i32 noundef 1) #10
  %791 = icmp ne i32 %790, 1
  %792 = load i32, ptr @stvdebug, align 4
  %793 = icmp ne i32 %792, 0
  %794 = select i1 %791, i1 %793, i1 false
  br i1 %794, label %795, label %797

795:                                              ; preds = %780
  %796 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %790) #11
  br label %797

797:                                              ; preds = %795, %780
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %100) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %99) #10
  %798 = add nuw nsw i32 %781, 1
  %799 = icmp eq i32 %798, 8
  br i1 %799, label %800, label %780

800:                                              ; preds = %797
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %97) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %98) #10
  %801 = getelementptr inbounds i8, ptr %98, i32 4
  store i32 3, ptr %801, align 4, !annotation !8
  %802 = load i8, ptr %732, align 4
  %803 = zext i8 %802 to i16
  store i16 %803, ptr %98, align 4
  %804 = getelementptr inbounds %struct.i2c_msg, ptr %98, i32 0, i32 1
  store i16 0, ptr %804, align 2
  %805 = getelementptr inbounds %struct.i2c_msg, ptr %98, i32 0, i32 3
  store ptr %97, ptr %805, align 4
  store i8 -12, ptr %97, align 1
  %806 = getelementptr inbounds [3 x i8], ptr %97, i32 0, i32 1
  store i8 -66, ptr %806, align 1
  %807 = getelementptr inbounds [3 x i8], ptr %97, i32 0, i32 2
  store i8 -1, ptr %807, align 1
  %808 = load ptr, ptr %739, align 4
  %809 = call i32 @i2c_transfer(ptr noundef %808, ptr noundef nonnull %98, i32 noundef 1) #10
  %810 = icmp ne i32 %809, 1
  %811 = load i32, ptr @stvdebug, align 4
  %812 = icmp ne i32 %811, 0
  %813 = select i1 %810, i1 %812, i1 false
  br i1 %813, label %814, label %816

814:                                              ; preds = %800
  %815 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %809) #11
  br label %816

816:                                              ; preds = %814, %800
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %98) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %97) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %95) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %96) #10
  %817 = getelementptr inbounds i8, ptr %96, i32 4
  store i32 3, ptr %817, align 4, !annotation !8
  %818 = load i8, ptr %732, align 4
  %819 = zext i8 %818 to i16
  store i16 %819, ptr %96, align 4
  %820 = getelementptr inbounds %struct.i2c_msg, ptr %96, i32 0, i32 1
  store i16 0, ptr %820, align 2
  %821 = getelementptr inbounds %struct.i2c_msg, ptr %96, i32 0, i32 3
  store ptr %95, ptr %821, align 4
  store i8 -12, ptr %95, align 1
  %822 = getelementptr inbounds [3 x i8], ptr %95, i32 0, i32 1
  store i8 -65, ptr %822, align 1
  %823 = getelementptr inbounds [3 x i8], ptr %95, i32 0, i32 2
  store i8 -49, ptr %823, align 1
  %824 = load ptr, ptr %739, align 4
  %825 = call i32 @i2c_transfer(ptr noundef %824, ptr noundef nonnull %96, i32 noundef 1) #10
  %826 = icmp ne i32 %825, 1
  %827 = load i32, ptr @stvdebug, align 4
  %828 = icmp ne i32 %827, 0
  %829 = select i1 %826, i1 %828, i1 false
  br i1 %829, label %830, label %832

830:                                              ; preds = %816
  %831 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %825) #11
  br label %832

832:                                              ; preds = %830, %816
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %96) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %95) #10
  %833 = getelementptr inbounds i8, ptr %94, i32 4
  %834 = getelementptr inbounds %struct.i2c_msg, ptr %94, i32 0, i32 1
  %835 = getelementptr inbounds %struct.i2c_msg, ptr %94, i32 0, i32 3
  %836 = getelementptr inbounds [3 x i8], ptr %93, i32 0, i32 1
  %837 = getelementptr inbounds [3 x i8], ptr %93, i32 0, i32 2
  br label %844

838:                                              ; preds = %861
  %839 = getelementptr inbounds i8, ptr %92, i32 4
  %840 = getelementptr inbounds %struct.i2c_msg, ptr %92, i32 0, i32 1
  %841 = getelementptr inbounds %struct.i2c_msg, ptr %92, i32 0, i32 3
  %842 = getelementptr inbounds [3 x i8], ptr %91, i32 0, i32 1
  %843 = getelementptr inbounds [3 x i8], ptr %91, i32 0, i32 2
  br label %864

844:                                              ; preds = %861, %832
  %845 = phi i32 [ 0, %832 ], [ %862, %861 ]
  %846 = trunc i32 %845 to i16
  %847 = add i16 %846, -3408
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %93) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %94) #10
  store i32 3, ptr %833, align 4, !annotation !8
  %848 = load i8, ptr %732, align 4
  %849 = zext i8 %848 to i16
  store i16 %849, ptr %94, align 4
  store i16 0, ptr %834, align 2
  store ptr %93, ptr %835, align 4
  %850 = lshr i16 %847, 8
  %851 = trunc i16 %850 to i8
  store i8 %851, ptr %93, align 1
  %852 = trunc i16 %847 to i8
  store i8 %852, ptr %836, align 1
  store i8 -1, ptr %837, align 1
  %853 = load ptr, ptr %739, align 4
  %854 = call i32 @i2c_transfer(ptr noundef %853, ptr noundef nonnull %94, i32 noundef 1) #10
  %855 = icmp ne i32 %854, 1
  %856 = load i32, ptr @stvdebug, align 4
  %857 = icmp ne i32 %856, 0
  %858 = select i1 %855, i1 %857, i1 false
  br i1 %858, label %859, label %861

859:                                              ; preds = %844
  %860 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %854) #11
  br label %861

861:                                              ; preds = %859, %844
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %94) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %93) #10
  %862 = add nuw nsw i32 %845, 1
  %863 = icmp eq i32 %862, 7
  br i1 %863, label %838, label %844

864:                                              ; preds = %881, %838
  %865 = phi i32 [ 0, %838 ], [ %882, %881 ]
  %866 = trunc i32 %865 to i16
  %867 = add i16 %866, -3401
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %91) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %92) #10
  store i32 3, ptr %839, align 4, !annotation !8
  %868 = load i8, ptr %732, align 4
  %869 = zext i8 %868 to i16
  store i16 %869, ptr %92, align 4
  store i16 0, ptr %840, align 2
  store ptr %91, ptr %841, align 4
  %870 = lshr i16 %867, 8
  %871 = trunc i16 %870 to i8
  store i8 %871, ptr %91, align 1
  %872 = trunc i16 %867 to i8
  store i8 %872, ptr %842, align 1
  store i8 -52, ptr %843, align 1
  %873 = load ptr, ptr %739, align 4
  %874 = call i32 @i2c_transfer(ptr noundef %873, ptr noundef nonnull %92, i32 noundef 1) #10
  %875 = icmp ne i32 %874, 1
  %876 = load i32, ptr @stvdebug, align 4
  %877 = icmp ne i32 %876, 0
  %878 = select i1 %875, i1 %877, i1 false
  br i1 %878, label %879, label %881

879:                                              ; preds = %864
  %880 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %874) #11
  br label %881

881:                                              ; preds = %879, %864
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %92) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %91) #10
  %882 = add nuw nsw i32 %865, 1
  %883 = icmp eq i32 %882, 8
  br i1 %883, label %884, label %864

884:                                              ; preds = %881
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %89) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %90) #10
  %885 = getelementptr inbounds i8, ptr %90, i32 4
  store i32 3, ptr %885, align 4, !annotation !8
  %886 = load i8, ptr %732, align 4
  %887 = zext i8 %886 to i16
  store i16 %887, ptr %90, align 4
  %888 = getelementptr inbounds %struct.i2c_msg, ptr %90, i32 0, i32 1
  store i16 0, ptr %888, align 2
  %889 = getelementptr inbounds %struct.i2c_msg, ptr %90, i32 0, i32 3
  store ptr %89, ptr %889, align 4
  store i8 -14, ptr %89, align 1
  %890 = getelementptr inbounds [3 x i8], ptr %89, i32 0, i32 1
  store i8 -66, ptr %890, align 1
  %891 = getelementptr inbounds [3 x i8], ptr %89, i32 0, i32 2
  store i8 -1, ptr %891, align 1
  %892 = load ptr, ptr %739, align 4
  %893 = call i32 @i2c_transfer(ptr noundef %892, ptr noundef nonnull %90, i32 noundef 1) #10
  %894 = icmp ne i32 %893, 1
  %895 = load i32, ptr @stvdebug, align 4
  %896 = icmp ne i32 %895, 0
  %897 = select i1 %894, i1 %896, i1 false
  br i1 %897, label %898, label %900

898:                                              ; preds = %884
  %899 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %893) #11
  br label %900

900:                                              ; preds = %898, %884
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %90) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %89) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %87) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %88) #10
  %901 = getelementptr inbounds i8, ptr %88, i32 4
  store i32 3, ptr %901, align 4, !annotation !8
  %902 = load i8, ptr %732, align 4
  %903 = zext i8 %902 to i16
  store i16 %903, ptr %88, align 4
  %904 = getelementptr inbounds %struct.i2c_msg, ptr %88, i32 0, i32 1
  store i16 0, ptr %904, align 2
  %905 = getelementptr inbounds %struct.i2c_msg, ptr %88, i32 0, i32 3
  store ptr %87, ptr %905, align 4
  store i8 -14, ptr %87, align 1
  %906 = getelementptr inbounds [3 x i8], ptr %87, i32 0, i32 1
  store i8 -65, ptr %906, align 1
  %907 = getelementptr inbounds [3 x i8], ptr %87, i32 0, i32 2
  store i8 -49, ptr %907, align 1
  %908 = load ptr, ptr %739, align 4
  %909 = call i32 @i2c_transfer(ptr noundef %908, ptr noundef nonnull %88, i32 noundef 1) #10
  %910 = icmp ne i32 %909, 1
  %911 = load i32, ptr @stvdebug, align 4
  %912 = icmp ne i32 %911, 0
  %913 = select i1 %910, i1 %912, i1 false
  br i1 %913, label %914, label %916

914:                                              ; preds = %900
  %915 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %909) #11
  br label %916

916:                                              ; preds = %914, %900
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %88) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %87) #10
  br label %936

917:                                              ; preds = %700
  call void @stv0900_stop_all_s2_modcod(ptr noundef %693, i32 noundef 1) #10
  call void @stv0900_activate_s2_modcod_single(ptr noundef %693, i32 noundef 0) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %85) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %86) #10
  %918 = getelementptr inbounds i8, ptr %86, i32 4
  store i32 3, ptr %918, align 4, !annotation !8
  %919 = getelementptr inbounds %struct.stv0900_internal, ptr %693, i32 0, i32 18
  %920 = load i8, ptr %919, align 4
  %921 = zext i8 %920 to i16
  store i16 %921, ptr %86, align 4
  %922 = getelementptr inbounds %struct.i2c_msg, ptr %86, i32 0, i32 1
  store i16 0, ptr %922, align 2
  %923 = getelementptr inbounds %struct.i2c_msg, ptr %86, i32 0, i32 3
  store ptr %85, ptr %923, align 4
  store i8 -6, ptr %85, align 1
  %924 = getelementptr inbounds [3 x i8], ptr %85, i32 0, i32 1
  store i8 -122, ptr %924, align 1
  %925 = getelementptr inbounds [3 x i8], ptr %85, i32 0, i32 2
  store i8 4, ptr %925, align 1
  %926 = getelementptr inbounds %struct.stv0900_internal, ptr %693, i32 0, i32 17
  %927 = load ptr, ptr %926, align 4
  %928 = call i32 @i2c_transfer(ptr noundef %927, ptr noundef nonnull %86, i32 noundef 1) #10
  %929 = icmp ne i32 %928, 1
  %930 = load i32, ptr @stvdebug, align 4
  %931 = icmp ne i32 %930, 0
  %932 = select i1 %929, i1 %931, i1 false
  br i1 %932, label %933, label %935

933:                                              ; preds = %917
  %934 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %928) #11
  br label %935

935:                                              ; preds = %933, %917
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %86) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %85) #10
  store i32 0, ptr %696, align 4
  call void @stv0900_write_bits(ptr noundef %693, i32 noundef -15662976, i8 noundef zeroext 1) #10
  call void @stv0900_write_bits(ptr noundef %693, i32 noundef -15662976, i8 noundef zeroext 0) #10
  call void @stv0900_write_bits(ptr noundef %693, i32 noundef -179306495, i8 noundef zeroext 1) #10
  call void @stv0900_write_bits(ptr noundef %693, i32 noundef -179306495, i8 noundef zeroext 0) #10
  call void @stv0900_write_bits(ptr noundef %693, i32 noundef -212860927, i8 noundef zeroext 1) #10
  call void @stv0900_write_bits(ptr noundef %693, i32 noundef -212860927, i8 noundef zeroext 0) #10
  br label %936

936:                                              ; preds = %935, %916, %726
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %82) #10
  store i8 -15, ptr %82, align 2
  %937 = getelementptr inbounds i8, ptr %82, i32 1
  store i8 0, ptr %937, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %83) #10
  store i8 0, ptr %83, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %84) #10
  %938 = getelementptr inbounds i8, ptr %84, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %938, i8 0, i32 16, i1 false) #10, !annotation !8
  %939 = getelementptr inbounds %struct.stv0900_internal, ptr %693, i32 0, i32 18
  %940 = load i8, ptr %939, align 4
  %941 = zext i8 %940 to i16
  store i16 %941, ptr %84, align 4
  %942 = getelementptr inbounds %struct.i2c_msg, ptr %84, i32 0, i32 1
  store i16 0, ptr %942, align 2
  store i16 2, ptr %938, align 4
  %943 = getelementptr inbounds %struct.i2c_msg, ptr %84, i32 0, i32 3
  store ptr %82, ptr %943, align 4
  %944 = getelementptr inbounds %struct.i2c_msg, ptr %84, i32 1
  store i16 %941, ptr %944, align 4
  %945 = getelementptr inbounds %struct.i2c_msg, ptr %84, i32 1, i32 1
  store i16 1, ptr %945, align 2
  %946 = getelementptr inbounds %struct.i2c_msg, ptr %84, i32 1, i32 2
  store i16 1, ptr %946, align 4
  %947 = getelementptr inbounds %struct.i2c_msg, ptr %84, i32 1, i32 3
  store ptr %83, ptr %947, align 4
  %948 = getelementptr inbounds %struct.stv0900_internal, ptr %693, i32 0, i32 17
  %949 = load ptr, ptr %948, align 4
  %950 = call i32 @i2c_transfer(ptr noundef %949, ptr noundef nonnull %84, i32 noundef 2) #10
  %951 = icmp ne i32 %950, 2
  %952 = load i32, ptr @stvdebug, align 4
  %953 = icmp ne i32 %952, 0
  %954 = select i1 %951, i1 %953, i1 false
  br i1 %954, label %955, label %957

955:                                              ; preds = %936
  %956 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0900_read_reg, i32 noundef %950, i32 noundef 61696) #11
  br label %957

957:                                              ; preds = %955, %936
  %958 = load i8, ptr %83, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %84) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %83) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %82) #10
  %959 = getelementptr inbounds %struct.stv0900_internal, ptr %693, i32 0, i32 20
  store i8 %958, ptr %959, align 2
  %960 = getelementptr inbounds %struct.stv0900_init_params, ptr %1, i32 0, i32 2
  %961 = load i32, ptr %960, align 4
  %962 = getelementptr inbounds %struct.stv0900_internal, ptr %693, i32 0, i32 2
  store i32 %961, ptr %962, align 4
  %963 = load i32, ptr %1, align 4
  store i32 %963, ptr %693, align 4
  %964 = load i32, ptr %960, align 4
  %965 = trunc i32 %964 to i8
  call void @stv0900_write_bits(ptr noundef %693, i32 noundef -200278013, i8 noundef zeroext %965)
  %966 = load i32, ptr %960, align 4
  %967 = trunc i32 %966 to i8
  call void @stv0900_write_bits(ptr noundef %693, i32 noundef -233832445, i8 noundef zeroext %967)
  %968 = getelementptr inbounds %struct.stv0900_init_params, ptr %1, i32 0, i32 13
  %969 = load ptr, ptr %968, align 4
  %970 = getelementptr inbounds %struct.stv0900_internal, ptr %693, i32 0, i32 21
  store ptr %969, ptr %970, align 4
  %971 = icmp eq ptr %969, null
  br i1 %971, label %985, label %972

972:                                              ; preds = %957
  %973 = load i16, ptr %969, align 2
  %974 = icmp eq i16 %973, -1
  br i1 %974, label %1264, label %975

975:                                              ; preds = %972
  %976 = getelementptr inbounds i8, ptr %57, i32 4
  %977 = getelementptr inbounds %struct.i2c_msg, ptr %57, i32 0, i32 1
  %978 = getelementptr inbounds %struct.i2c_msg, ptr %57, i32 0, i32 3
  %979 = getelementptr inbounds [3 x i8], ptr %56, i32 0, i32 1
  %980 = getelementptr inbounds [3 x i8], ptr %56, i32 0, i32 2
  %981 = trunc i16 %973 to i8
  %982 = lshr i16 %973, 8
  %983 = trunc i16 %982 to i8
  br label %1238

984:                                              ; preds = %273
  br label %1763

985:                                              ; preds = %957
  %986 = getelementptr inbounds %struct.stv0900_init_params, ptr %1, i32 0, i32 3
  %987 = load i32, ptr %986, align 4
  %988 = getelementptr inbounds %struct.stv0900_init_params, ptr %1, i32 0, i32 8
  %989 = load i32, ptr %988, align 4
  %990 = load i32, ptr @stvdebug, align 4
  %991 = icmp eq i32 %990, 0
  br i1 %991, label %994, label %992

992:                                              ; preds = %985
  %993 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0900_set_ts_parallel_serial) #11
  br label %994

994:                                              ; preds = %992, %985
  %995 = load i8, ptr %959, align 2
  %996 = icmp ugt i8 %995, 31
  %997 = add i32 %987, -3
  %998 = icmp ult i32 %997, 2
  %999 = add i32 %989, -3
  %1000 = icmp ult i32 %999, 2
  br i1 %996, label %1001, label %1109

1001:                                             ; preds = %994
  br i1 %998, label %1002, label %1069

1002:                                             ; preds = %1001
  br i1 %1000, label %1020, label %1003

1003:                                             ; preds = %1002
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %80) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %81) #10
  %1004 = getelementptr inbounds i8, ptr %81, i32 4
  store i32 3, ptr %1004, align 4, !annotation !8
  %1005 = load i8, ptr %939, align 4
  %1006 = zext i8 %1005 to i16
  store i16 %1006, ptr %81, align 4
  %1007 = getelementptr inbounds %struct.i2c_msg, ptr %81, i32 0, i32 1
  store i16 0, ptr %1007, align 2
  %1008 = getelementptr inbounds %struct.i2c_msg, ptr %81, i32 0, i32 3
  store ptr %80, ptr %1008, align 4
  store i8 -10, ptr %80, align 1
  %1009 = getelementptr inbounds [3 x i8], ptr %80, i32 0, i32 1
  store i8 48, ptr %1009, align 1
  %1010 = getelementptr inbounds [3 x i8], ptr %80, i32 0, i32 2
  store i8 0, ptr %1010, align 1
  %1011 = load ptr, ptr %948, align 4
  %1012 = call i32 @i2c_transfer(ptr noundef %1011, ptr noundef nonnull %81, i32 noundef 1) #10
  %1013 = icmp ne i32 %1012, 1
  %1014 = load i32, ptr @stvdebug, align 4
  %1015 = icmp ne i32 %1014, 0
  %1016 = select i1 %1013, i1 %1015, i1 false
  br i1 %1016, label %1017, label %1019

1017:                                             ; preds = %1003
  %1018 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %1012) #11
  br label %1019

1019:                                             ; preds = %1017, %1003
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %81) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %80) #10
  br label %1217

1020:                                             ; preds = %1002
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %78) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %79) #10
  %1021 = getelementptr inbounds i8, ptr %79, i32 4
  store i32 3, ptr %1021, align 4, !annotation !8
  %1022 = load i8, ptr %939, align 4
  %1023 = zext i8 %1022 to i16
  store i16 %1023, ptr %79, align 4
  %1024 = getelementptr inbounds %struct.i2c_msg, ptr %79, i32 0, i32 1
  store i16 0, ptr %1024, align 2
  %1025 = getelementptr inbounds %struct.i2c_msg, ptr %79, i32 0, i32 3
  store ptr %78, ptr %1025, align 4
  store i8 -10, ptr %78, align 1
  %1026 = getelementptr inbounds [3 x i8], ptr %78, i32 0, i32 1
  store i8 48, ptr %1026, align 1
  %1027 = getelementptr inbounds [3 x i8], ptr %78, i32 0, i32 2
  store i8 6, ptr %1027, align 1
  %1028 = load ptr, ptr %948, align 4
  %1029 = call i32 @i2c_transfer(ptr noundef %1028, ptr noundef nonnull %79, i32 noundef 1) #10
  %1030 = icmp ne i32 %1029, 1
  %1031 = load i32, ptr @stvdebug, align 4
  %1032 = icmp ne i32 %1031, 0
  %1033 = select i1 %1030, i1 %1032, i1 false
  br i1 %1033, label %1034, label %1036

1034:                                             ; preds = %1020
  %1035 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %1029) #11
  br label %1036

1036:                                             ; preds = %1034, %1020
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %79) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %78) #10
  call void @stv0900_write_bits(ptr noundef %693, i32 noundef -177012544, i8 noundef zeroext 3) #10
  call void @stv0900_write_bits(ptr noundef %693, i32 noundef -210566976, i8 noundef zeroext 0) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %76) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %77) #10
  %1037 = getelementptr inbounds i8, ptr %77, i32 4
  store i32 3, ptr %1037, align 4, !annotation !8
  %1038 = load i8, ptr %939, align 4
  %1039 = zext i8 %1038 to i16
  store i16 %1039, ptr %77, align 4
  %1040 = getelementptr inbounds %struct.i2c_msg, ptr %77, i32 0, i32 1
  store i16 0, ptr %1040, align 2
  %1041 = getelementptr inbounds %struct.i2c_msg, ptr %77, i32 0, i32 3
  store ptr %76, ptr %1041, align 4
  store i8 -11, ptr %76, align 1
  %1042 = getelementptr inbounds [3 x i8], ptr %76, i32 0, i32 1
  store i8 -128, ptr %1042, align 1
  %1043 = getelementptr inbounds [3 x i8], ptr %76, i32 0, i32 2
  store i8 20, ptr %1043, align 1
  %1044 = load ptr, ptr %948, align 4
  %1045 = call i32 @i2c_transfer(ptr noundef %1044, ptr noundef nonnull %77, i32 noundef 1) #10
  %1046 = icmp ne i32 %1045, 1
  %1047 = load i32, ptr @stvdebug, align 4
  %1048 = icmp ne i32 %1047, 0
  %1049 = select i1 %1046, i1 %1048, i1 false
  br i1 %1049, label %1050, label %1052

1050:                                             ; preds = %1036
  %1051 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %1045) #11
  br label %1052

1052:                                             ; preds = %1050, %1036
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %77) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %76) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %74) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %75) #10
  %1053 = getelementptr inbounds i8, ptr %75, i32 4
  store i32 3, ptr %1053, align 4, !annotation !8
  %1054 = load i8, ptr %939, align 4
  %1055 = zext i8 %1054 to i16
  store i16 %1055, ptr %75, align 4
  %1056 = getelementptr inbounds %struct.i2c_msg, ptr %75, i32 0, i32 1
  store i16 0, ptr %1056, align 2
  %1057 = getelementptr inbounds %struct.i2c_msg, ptr %75, i32 0, i32 3
  store ptr %74, ptr %1057, align 4
  store i8 -13, ptr %74, align 1
  %1058 = getelementptr inbounds [3 x i8], ptr %74, i32 0, i32 1
  store i8 -128, ptr %1058, align 1
  %1059 = getelementptr inbounds [3 x i8], ptr %74, i32 0, i32 2
  store i8 40, ptr %1059, align 1
  %1060 = load ptr, ptr %948, align 4
  %1061 = call i32 @i2c_transfer(ptr noundef %1060, ptr noundef nonnull %75, i32 noundef 1) #10
  %1062 = icmp ne i32 %1061, 1
  %1063 = load i32, ptr @stvdebug, align 4
  %1064 = icmp ne i32 %1063, 0
  %1065 = select i1 %1062, i1 %1064, i1 false
  br i1 %1065, label %1066, label %1068

1066:                                             ; preds = %1052
  %1067 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %1061) #11
  br label %1068

1068:                                             ; preds = %1066, %1052
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %75) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %74) #10
  br label %1217

1069:                                             ; preds = %1001
  br i1 %1000, label %1087, label %1070

1070:                                             ; preds = %1069
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %72) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %73) #10
  %1071 = getelementptr inbounds i8, ptr %73, i32 4
  store i32 3, ptr %1071, align 4, !annotation !8
  %1072 = load i8, ptr %939, align 4
  %1073 = zext i8 %1072 to i16
  store i16 %1073, ptr %73, align 4
  %1074 = getelementptr inbounds %struct.i2c_msg, ptr %73, i32 0, i32 1
  store i16 0, ptr %1074, align 2
  %1075 = getelementptr inbounds %struct.i2c_msg, ptr %73, i32 0, i32 3
  store ptr %72, ptr %1075, align 4
  store i8 -10, ptr %72, align 1
  %1076 = getelementptr inbounds [3 x i8], ptr %72, i32 0, i32 1
  store i8 48, ptr %1076, align 1
  %1077 = getelementptr inbounds [3 x i8], ptr %72, i32 0, i32 2
  store i8 12, ptr %1077, align 1
  %1078 = load ptr, ptr %948, align 4
  %1079 = call i32 @i2c_transfer(ptr noundef %1078, ptr noundef nonnull %73, i32 noundef 1) #10
  %1080 = icmp ne i32 %1079, 1
  %1081 = load i32, ptr @stvdebug, align 4
  %1082 = icmp ne i32 %1081, 0
  %1083 = select i1 %1080, i1 %1082, i1 false
  br i1 %1083, label %1084, label %1086

1084:                                             ; preds = %1070
  %1085 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %1079) #11
  br label %1086

1086:                                             ; preds = %1084, %1070
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %73) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %72) #10
  br label %1217

1087:                                             ; preds = %1069
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %70) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %71) #10
  %1088 = getelementptr inbounds i8, ptr %71, i32 4
  store i32 3, ptr %1088, align 4, !annotation !8
  %1089 = load i8, ptr %939, align 4
  %1090 = zext i8 %1089 to i16
  store i16 %1090, ptr %71, align 4
  %1091 = getelementptr inbounds %struct.i2c_msg, ptr %71, i32 0, i32 1
  store i16 0, ptr %1091, align 2
  %1092 = getelementptr inbounds %struct.i2c_msg, ptr %71, i32 0, i32 3
  store ptr %70, ptr %1092, align 4
  store i8 -10, ptr %70, align 1
  %1093 = getelementptr inbounds [3 x i8], ptr %70, i32 0, i32 1
  store i8 48, ptr %1093, align 1
  %1094 = getelementptr inbounds [3 x i8], ptr %70, i32 0, i32 2
  store i8 10, ptr %1094, align 1
  %1095 = load ptr, ptr %948, align 4
  %1096 = call i32 @i2c_transfer(ptr noundef %1095, ptr noundef nonnull %71, i32 noundef 1) #10
  %1097 = icmp ne i32 %1096, 1
  %1098 = load i32, ptr @stvdebug, align 4
  %1099 = icmp ne i32 %1098, 0
  %1100 = select i1 %1097, i1 %1099, i1 false
  br i1 %1100, label %1101, label %1104

1101:                                             ; preds = %1087
  %1102 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %1096) #11
  %1103 = load i32, ptr @stvdebug, align 4
  br label %1104

1104:                                             ; preds = %1101, %1087
  %1105 = phi i32 [ %1098, %1087 ], [ %1103, %1101 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %71) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %70) #10
  %1106 = icmp eq i32 %1105, 0
  br i1 %1106, label %1217, label %1107

1107:                                             ; preds = %1104
  %1108 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.stv0900_set_ts_parallel_serial) #11
  br label %1217

1109:                                             ; preds = %994
  br i1 %998, label %1110, label %1177

1110:                                             ; preds = %1109
  br i1 %1000, label %1128, label %1111

1111:                                             ; preds = %1110
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %68) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %69) #10
  %1112 = getelementptr inbounds i8, ptr %69, i32 4
  store i32 3, ptr %1112, align 4, !annotation !8
  %1113 = load i8, ptr %939, align 4
  %1114 = zext i8 %1113 to i16
  store i16 %1114, ptr %69, align 4
  %1115 = getelementptr inbounds %struct.i2c_msg, ptr %69, i32 0, i32 1
  store i16 0, ptr %1115, align 2
  %1116 = getelementptr inbounds %struct.i2c_msg, ptr %69, i32 0, i32 3
  store ptr %68, ptr %1116, align 4
  store i8 -10, ptr %68, align 1
  %1117 = getelementptr inbounds [3 x i8], ptr %68, i32 0, i32 1
  store i8 112, ptr %1117, align 1
  %1118 = getelementptr inbounds [3 x i8], ptr %68, i32 0, i32 2
  store i8 16, ptr %1118, align 1
  %1119 = load ptr, ptr %948, align 4
  %1120 = call i32 @i2c_transfer(ptr noundef %1119, ptr noundef nonnull %69, i32 noundef 1) #10
  %1121 = icmp ne i32 %1120, 1
  %1122 = load i32, ptr @stvdebug, align 4
  %1123 = icmp ne i32 %1122, 0
  %1124 = select i1 %1121, i1 %1123, i1 false
  br i1 %1124, label %1125, label %1127

1125:                                             ; preds = %1111
  %1126 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %1120) #11
  br label %1127

1127:                                             ; preds = %1125, %1111
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %69) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %68) #10
  br label %1217

1128:                                             ; preds = %1110
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %66) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %67) #10
  %1129 = getelementptr inbounds i8, ptr %67, i32 4
  store i32 3, ptr %1129, align 4, !annotation !8
  %1130 = load i8, ptr %939, align 4
  %1131 = zext i8 %1130 to i16
  store i16 %1131, ptr %67, align 4
  %1132 = getelementptr inbounds %struct.i2c_msg, ptr %67, i32 0, i32 1
  store i16 0, ptr %1132, align 2
  %1133 = getelementptr inbounds %struct.i2c_msg, ptr %67, i32 0, i32 3
  store ptr %66, ptr %1133, align 4
  store i8 -10, ptr %66, align 1
  %1134 = getelementptr inbounds [3 x i8], ptr %66, i32 0, i32 1
  store i8 112, ptr %1134, align 1
  %1135 = getelementptr inbounds [3 x i8], ptr %66, i32 0, i32 2
  store i8 22, ptr %1135, align 1
  %1136 = load ptr, ptr %948, align 4
  %1137 = call i32 @i2c_transfer(ptr noundef %1136, ptr noundef nonnull %67, i32 noundef 1) #10
  %1138 = icmp ne i32 %1137, 1
  %1139 = load i32, ptr @stvdebug, align 4
  %1140 = icmp ne i32 %1139, 0
  %1141 = select i1 %1138, i1 %1140, i1 false
  br i1 %1141, label %1142, label %1144

1142:                                             ; preds = %1128
  %1143 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %1137) #11
  br label %1144

1144:                                             ; preds = %1142, %1128
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %67) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %66) #10
  call void @stv0900_write_bits(ptr noundef %693, i32 noundef -177012544, i8 noundef zeroext 3) #10
  call void @stv0900_write_bits(ptr noundef %693, i32 noundef -210566976, i8 noundef zeroext 0) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %64) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %65) #10
  %1145 = getelementptr inbounds i8, ptr %65, i32 4
  store i32 3, ptr %1145, align 4, !annotation !8
  %1146 = load i8, ptr %939, align 4
  %1147 = zext i8 %1146 to i16
  store i16 %1147, ptr %65, align 4
  %1148 = getelementptr inbounds %struct.i2c_msg, ptr %65, i32 0, i32 1
  store i16 0, ptr %1148, align 2
  %1149 = getelementptr inbounds %struct.i2c_msg, ptr %65, i32 0, i32 3
  store ptr %64, ptr %1149, align 4
  store i8 -11, ptr %64, align 1
  %1150 = getelementptr inbounds [3 x i8], ptr %64, i32 0, i32 1
  store i8 -128, ptr %1150, align 1
  %1151 = getelementptr inbounds [3 x i8], ptr %64, i32 0, i32 2
  store i8 20, ptr %1151, align 1
  %1152 = load ptr, ptr %948, align 4
  %1153 = call i32 @i2c_transfer(ptr noundef %1152, ptr noundef nonnull %65, i32 noundef 1) #10
  %1154 = icmp ne i32 %1153, 1
  %1155 = load i32, ptr @stvdebug, align 4
  %1156 = icmp ne i32 %1155, 0
  %1157 = select i1 %1154, i1 %1156, i1 false
  br i1 %1157, label %1158, label %1160

1158:                                             ; preds = %1144
  %1159 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %1153) #11
  br label %1160

1160:                                             ; preds = %1158, %1144
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %65) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %64) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %62) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %63) #10
  %1161 = getelementptr inbounds i8, ptr %63, i32 4
  store i32 3, ptr %1161, align 4, !annotation !8
  %1162 = load i8, ptr %939, align 4
  %1163 = zext i8 %1162 to i16
  store i16 %1163, ptr %63, align 4
  %1164 = getelementptr inbounds %struct.i2c_msg, ptr %63, i32 0, i32 1
  store i16 0, ptr %1164, align 2
  %1165 = getelementptr inbounds %struct.i2c_msg, ptr %63, i32 0, i32 3
  store ptr %62, ptr %1165, align 4
  store i8 -13, ptr %62, align 1
  %1166 = getelementptr inbounds [3 x i8], ptr %62, i32 0, i32 1
  store i8 -128, ptr %1166, align 1
  %1167 = getelementptr inbounds [3 x i8], ptr %62, i32 0, i32 2
  store i8 40, ptr %1167, align 1
  %1168 = load ptr, ptr %948, align 4
  %1169 = call i32 @i2c_transfer(ptr noundef %1168, ptr noundef nonnull %63, i32 noundef 1) #10
  %1170 = icmp ne i32 %1169, 1
  %1171 = load i32, ptr @stvdebug, align 4
  %1172 = icmp ne i32 %1171, 0
  %1173 = select i1 %1170, i1 %1172, i1 false
  br i1 %1173, label %1174, label %1176

1174:                                             ; preds = %1160
  %1175 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %1169) #11
  br label %1176

1176:                                             ; preds = %1174, %1160
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %63) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %62) #10
  br label %1217

1177:                                             ; preds = %1109
  br i1 %1000, label %1195, label %1178

1178:                                             ; preds = %1177
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %60) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %61) #10
  %1179 = getelementptr inbounds i8, ptr %61, i32 4
  store i32 3, ptr %1179, align 4, !annotation !8
  %1180 = load i8, ptr %939, align 4
  %1181 = zext i8 %1180 to i16
  store i16 %1181, ptr %61, align 4
  %1182 = getelementptr inbounds %struct.i2c_msg, ptr %61, i32 0, i32 1
  store i16 0, ptr %1182, align 2
  %1183 = getelementptr inbounds %struct.i2c_msg, ptr %61, i32 0, i32 3
  store ptr %60, ptr %1183, align 4
  store i8 -10, ptr %60, align 1
  %1184 = getelementptr inbounds [3 x i8], ptr %60, i32 0, i32 1
  store i8 112, ptr %1184, align 1
  %1185 = getelementptr inbounds [3 x i8], ptr %60, i32 0, i32 2
  store i8 20, ptr %1185, align 1
  %1186 = load ptr, ptr %948, align 4
  %1187 = call i32 @i2c_transfer(ptr noundef %1186, ptr noundef nonnull %61, i32 noundef 1) #10
  %1188 = icmp ne i32 %1187, 1
  %1189 = load i32, ptr @stvdebug, align 4
  %1190 = icmp ne i32 %1189, 0
  %1191 = select i1 %1188, i1 %1190, i1 false
  br i1 %1191, label %1192, label %1194

1192:                                             ; preds = %1178
  %1193 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %1187) #11
  br label %1194

1194:                                             ; preds = %1192, %1178
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %61) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %60) #10
  br label %1217

1195:                                             ; preds = %1177
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %58) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %59) #10
  %1196 = getelementptr inbounds i8, ptr %59, i32 4
  store i32 3, ptr %1196, align 4, !annotation !8
  %1197 = load i8, ptr %939, align 4
  %1198 = zext i8 %1197 to i16
  store i16 %1198, ptr %59, align 4
  %1199 = getelementptr inbounds %struct.i2c_msg, ptr %59, i32 0, i32 1
  store i16 0, ptr %1199, align 2
  %1200 = getelementptr inbounds %struct.i2c_msg, ptr %59, i32 0, i32 3
  store ptr %58, ptr %1200, align 4
  store i8 -10, ptr %58, align 1
  %1201 = getelementptr inbounds [3 x i8], ptr %58, i32 0, i32 1
  store i8 112, ptr %1201, align 1
  %1202 = getelementptr inbounds [3 x i8], ptr %58, i32 0, i32 2
  store i8 18, ptr %1202, align 1
  %1203 = load ptr, ptr %948, align 4
  %1204 = call i32 @i2c_transfer(ptr noundef %1203, ptr noundef nonnull %59, i32 noundef 1) #10
  %1205 = icmp ne i32 %1204, 1
  %1206 = load i32, ptr @stvdebug, align 4
  %1207 = icmp ne i32 %1206, 0
  %1208 = select i1 %1205, i1 %1207, i1 false
  br i1 %1208, label %1209, label %1212

1209:                                             ; preds = %1195
  %1210 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %1204) #11
  %1211 = load i32, ptr @stvdebug, align 4
  br label %1212

1212:                                             ; preds = %1209, %1195
  %1213 = phi i32 [ %1206, %1195 ], [ %1211, %1209 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %59) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %58) #10
  %1214 = icmp eq i32 %1213, 0
  br i1 %1214, label %1217, label %1215

1215:                                             ; preds = %1212
  %1216 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.stv0900_set_ts_parallel_serial) #11
  br label %1217

1217:                                             ; preds = %1215, %1212, %1194, %1176, %1127, %1107, %1104, %1086, %1068, %1019
  %1218 = add i32 %987, -1
  %1219 = icmp ult i32 %1218, 4
  br i1 %1219, label %1220, label %1227

1220:                                             ; preds = %1217
  %1221 = shl i32 %1218, 3
  %1222 = lshr i32 257, %1221
  %1223 = trunc i32 %1222 to i8
  %1224 = shl i32 %1218, 3
  %1225 = lshr i32 16777472, %1224
  %1226 = trunc i32 %1225 to i8
  call void @stv0900_write_bits(ptr noundef %693, i32 noundef -177078208, i8 noundef zeroext %1223) #10
  call void @stv0900_write_bits(ptr noundef %693, i32 noundef -177078144, i8 noundef zeroext %1226) #10
  br label %1227

1227:                                             ; preds = %1220, %1217
  %1228 = add i32 %989, -1
  %1229 = icmp ult i32 %1228, 4
  br i1 %1229, label %1230, label %1237

1230:                                             ; preds = %1227
  %1231 = shl i32 %1228, 3
  %1232 = lshr i32 257, %1231
  %1233 = trunc i32 %1232 to i8
  %1234 = shl i32 %1228, 3
  %1235 = lshr i32 16777472, %1234
  %1236 = trunc i32 %1235 to i8
  call void @stv0900_write_bits(ptr noundef %693, i32 noundef -210632640, i8 noundef zeroext %1233) #10
  call void @stv0900_write_bits(ptr noundef %693, i32 noundef -210632576, i8 noundef zeroext %1236) #10
  br label %1237

1237:                                             ; preds = %1230, %1227
  call void @stv0900_write_bits(ptr noundef %693, i32 noundef -210632703, i8 noundef zeroext 1) #10
  call void @stv0900_write_bits(ptr noundef %693, i32 noundef -210632703, i8 noundef zeroext 0) #10
  call void @stv0900_write_bits(ptr noundef %693, i32 noundef -177078271, i8 noundef zeroext 1) #10
  call void @stv0900_write_bits(ptr noundef %693, i32 noundef -177078271, i8 noundef zeroext 0) #10
  br label %1265

1238:                                             ; preds = %1255, %975
  %1239 = phi i8 [ %981, %975 ], [ %1261, %1255 ]
  %1240 = phi i8 [ %983, %975 ], [ %1263, %1255 ]
  %1241 = phi ptr [ %969, %975 ], [ %1257, %1255 ]
  %1242 = phi i32 [ 0, %975 ], [ %1256, %1255 ]
  %1243 = getelementptr %struct.stv0900_reg, ptr %1241, i32 %1242, i32 1
  %1244 = load i8, ptr %1243, align 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %56) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %57) #10
  store i32 3, ptr %976, align 4, !annotation !8
  %1245 = load i8, ptr %939, align 4
  %1246 = zext i8 %1245 to i16
  store i16 %1246, ptr %57, align 4
  store i16 0, ptr %977, align 2
  store ptr %56, ptr %978, align 4
  store i8 %1240, ptr %56, align 1
  store i8 %1239, ptr %979, align 1
  store i8 %1244, ptr %980, align 1
  %1247 = load ptr, ptr %948, align 4
  %1248 = call i32 @i2c_transfer(ptr noundef %1247, ptr noundef nonnull %57, i32 noundef 1) #10
  %1249 = icmp ne i32 %1248, 1
  %1250 = load i32, ptr @stvdebug, align 4
  %1251 = icmp ne i32 %1250, 0
  %1252 = select i1 %1249, i1 %1251, i1 false
  br i1 %1252, label %1253, label %1255

1253:                                             ; preds = %1238
  %1254 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %1248) #11
  br label %1255

1255:                                             ; preds = %1253, %1238
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %57) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %56) #10
  %1256 = add i32 %1242, 1
  %1257 = load ptr, ptr %970, align 4
  %1258 = getelementptr %struct.stv0900_reg, ptr %1257, i32 %1256
  %1259 = load i16, ptr %1258, align 2
  %1260 = icmp eq i16 %1259, -1
  %1261 = trunc i16 %1259 to i8
  %1262 = lshr i16 %1259, 8
  %1263 = trunc i16 %1262 to i8
  br i1 %1260, label %1264, label %1238

1264:                                             ; preds = %1255, %972
  call void @stv0900_write_bits(ptr noundef %693, i32 noundef -210632703, i8 noundef zeroext 1)
  call void @stv0900_write_bits(ptr noundef %693, i32 noundef -210632703, i8 noundef zeroext 0)
  call void @stv0900_write_bits(ptr noundef %693, i32 noundef -177078271, i8 noundef zeroext 1)
  call void @stv0900_write_bits(ptr noundef %693, i32 noundef -177078271, i8 noundef zeroext 0)
  br label %1265

1265:                                             ; preds = %1264, %1237
  %1266 = getelementptr inbounds %struct.stv0900_init_params, ptr %1, i32 0, i32 6
  %1267 = load i32, ptr %1266, align 4
  %1268 = getelementptr inbounds %struct.stv0900_internal, ptr %693, i32 0, i32 8
  store i32 %1267, ptr %1268, align 4
  %1269 = getelementptr inbounds %struct.stv0900_init_params, ptr %1, i32 0, i32 11
  %1270 = load i32, ptr %1269, align 4
  %1271 = getelementptr %struct.stv0900_internal, ptr %693, i32 0, i32 8, i32 1
  store i32 %1270, ptr %1271, align 4
  %1272 = load i32, ptr %1266, align 4
  %1273 = icmp eq i32 %1272, 3
  br i1 %1273, label %1274, label %1403

1274:                                             ; preds = %1265
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %54) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %55) #10
  %1275 = getelementptr inbounds i8, ptr %55, i32 4
  store i32 3, ptr %1275, align 4, !annotation !8
  %1276 = load i8, ptr %939, align 4
  %1277 = zext i8 %1276 to i16
  store i16 %1277, ptr %55, align 4
  %1278 = getelementptr inbounds %struct.i2c_msg, ptr %55, i32 0, i32 1
  store i16 0, ptr %1278, align 2
  %1279 = getelementptr inbounds %struct.i2c_msg, ptr %55, i32 0, i32 3
  store ptr %54, ptr %1279, align 4
  store i8 -12, ptr %54, align 1
  %1280 = getelementptr inbounds [3 x i8], ptr %54, i32 0, i32 1
  store i8 -32, ptr %1280, align 1
  %1281 = getelementptr inbounds [3 x i8], ptr %54, i32 0, i32 2
  store i8 60, ptr %1281, align 1
  %1282 = load ptr, ptr %948, align 4
  %1283 = call i32 @i2c_transfer(ptr noundef %1282, ptr noundef nonnull %55, i32 noundef 1) #10
  %1284 = icmp ne i32 %1283, 1
  %1285 = load i32, ptr @stvdebug, align 4
  %1286 = icmp ne i32 %1285, 0
  %1287 = select i1 %1284, i1 %1286, i1 false
  br i1 %1287, label %1288, label %1290

1288:                                             ; preds = %1274
  %1289 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %1283) #11
  br label %1290

1290:                                             ; preds = %1288, %1274
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %55) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %54) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %52) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %53) #10
  %1291 = getelementptr inbounds i8, ptr %53, i32 4
  store i32 3, ptr %1291, align 4, !annotation !8
  %1292 = load i8, ptr %939, align 4
  %1293 = zext i8 %1292 to i16
  store i16 %1293, ptr %53, align 4
  %1294 = getelementptr inbounds %struct.i2c_msg, ptr %53, i32 0, i32 1
  store i16 0, ptr %1294, align 2
  %1295 = getelementptr inbounds %struct.i2c_msg, ptr %53, i32 0, i32 3
  store ptr %52, ptr %1295, align 4
  store i8 -12, ptr %52, align 1
  %1296 = getelementptr inbounds [3 x i8], ptr %52, i32 0, i32 1
  store i8 -31, ptr %1296, align 1
  %1297 = getelementptr inbounds [3 x i8], ptr %52, i32 0, i32 2
  store i8 -122, ptr %1297, align 1
  %1298 = load ptr, ptr %948, align 4
  %1299 = call i32 @i2c_transfer(ptr noundef %1298, ptr noundef nonnull %53, i32 noundef 1) #10
  %1300 = icmp ne i32 %1299, 1
  %1301 = load i32, ptr @stvdebug, align 4
  %1302 = icmp ne i32 %1301, 0
  %1303 = select i1 %1300, i1 %1302, i1 false
  br i1 %1303, label %1304, label %1306

1304:                                             ; preds = %1290
  %1305 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %1299) #11
  br label %1306

1306:                                             ; preds = %1304, %1290
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %53) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %52) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %50) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %51) #10
  %1307 = getelementptr inbounds i8, ptr %51, i32 4
  store i32 3, ptr %1307, align 4, !annotation !8
  %1308 = load i8, ptr %939, align 4
  %1309 = zext i8 %1308 to i16
  store i16 %1309, ptr %51, align 4
  %1310 = getelementptr inbounds %struct.i2c_msg, ptr %51, i32 0, i32 1
  store i16 0, ptr %1310, align 2
  %1311 = getelementptr inbounds %struct.i2c_msg, ptr %51, i32 0, i32 3
  store ptr %50, ptr %1311, align 4
  store i8 -12, ptr %50, align 1
  %1312 = getelementptr inbounds [3 x i8], ptr %50, i32 0, i32 1
  store i8 -18, ptr %1312, align 1
  %1313 = getelementptr inbounds [3 x i8], ptr %50, i32 0, i32 2
  store i8 24, ptr %1313, align 1
  %1314 = load ptr, ptr %948, align 4
  %1315 = call i32 @i2c_transfer(ptr noundef %1314, ptr noundef nonnull %51, i32 noundef 1) #10
  %1316 = icmp ne i32 %1315, 1
  %1317 = load i32, ptr @stvdebug, align 4
  %1318 = icmp ne i32 %1317, 0
  %1319 = select i1 %1316, i1 %1318, i1 false
  br i1 %1319, label %1320, label %1322

1320:                                             ; preds = %1306
  %1321 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %1315) #11
  br label %1322

1322:                                             ; preds = %1320, %1306
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %51) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %50) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %48) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %49) #10
  %1323 = getelementptr inbounds i8, ptr %49, i32 4
  store i32 3, ptr %1323, align 4, !annotation !8
  %1324 = load i8, ptr %939, align 4
  %1325 = zext i8 %1324 to i16
  store i16 %1325, ptr %49, align 4
  %1326 = getelementptr inbounds %struct.i2c_msg, ptr %49, i32 0, i32 1
  store i16 0, ptr %1326, align 2
  %1327 = getelementptr inbounds %struct.i2c_msg, ptr %49, i32 0, i32 3
  store ptr %48, ptr %1327, align 4
  store i8 -12, ptr %48, align 1
  %1328 = getelementptr inbounds [3 x i8], ptr %48, i32 0, i32 1
  store i8 -28, ptr %1328, align 1
  %1329 = getelementptr inbounds [3 x i8], ptr %48, i32 0, i32 2
  store i8 27, ptr %1329, align 1
  %1330 = load ptr, ptr %948, align 4
  %1331 = call i32 @i2c_transfer(ptr noundef %1330, ptr noundef nonnull %49, i32 noundef 1) #10
  %1332 = icmp ne i32 %1331, 1
  %1333 = load i32, ptr @stvdebug, align 4
  %1334 = icmp ne i32 %1333, 0
  %1335 = select i1 %1332, i1 %1334, i1 false
  br i1 %1335, label %1336, label %1338

1336:                                             ; preds = %1322
  %1337 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %1331) #11
  br label %1338

1338:                                             ; preds = %1336, %1322
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %49) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %48) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %46) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %47) #10
  %1339 = getelementptr inbounds i8, ptr %47, i32 4
  store i32 3, ptr %1339, align 4, !annotation !8
  %1340 = load i8, ptr %939, align 4
  %1341 = zext i8 %1340 to i16
  store i16 %1341, ptr %47, align 4
  %1342 = getelementptr inbounds %struct.i2c_msg, ptr %47, i32 0, i32 1
  store i16 0, ptr %1342, align 2
  %1343 = getelementptr inbounds %struct.i2c_msg, ptr %47, i32 0, i32 3
  store ptr %46, ptr %1343, align 4
  store i8 -12, ptr %46, align 1
  %1344 = getelementptr inbounds [3 x i8], ptr %46, i32 0, i32 1
  store i8 -25, ptr %1344, align 1
  %1345 = getelementptr inbounds [3 x i8], ptr %46, i32 0, i32 2
  store i8 5, ptr %1345, align 1
  %1346 = load ptr, ptr %948, align 4
  %1347 = call i32 @i2c_transfer(ptr noundef %1346, ptr noundef nonnull %47, i32 noundef 1) #10
  %1348 = icmp ne i32 %1347, 1
  %1349 = load i32, ptr @stvdebug, align 4
  %1350 = icmp ne i32 %1349, 0
  %1351 = select i1 %1348, i1 %1350, i1 false
  br i1 %1351, label %1352, label %1354

1352:                                             ; preds = %1338
  %1353 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %1347) #11
  br label %1354

1354:                                             ; preds = %1352, %1338
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %47) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %46) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %44) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %45) #10
  %1355 = getelementptr inbounds i8, ptr %45, i32 4
  store i32 3, ptr %1355, align 4, !annotation !8
  %1356 = load i8, ptr %939, align 4
  %1357 = zext i8 %1356 to i16
  store i16 %1357, ptr %45, align 4
  %1358 = getelementptr inbounds %struct.i2c_msg, ptr %45, i32 0, i32 1
  store i16 0, ptr %1358, align 2
  %1359 = getelementptr inbounds %struct.i2c_msg, ptr %45, i32 0, i32 3
  store ptr %44, ptr %1359, align 4
  store i8 -12, ptr %44, align 1
  %1360 = getelementptr inbounds [3 x i8], ptr %44, i32 0, i32 1
  store i8 -24, ptr %1360, align 1
  %1361 = getelementptr inbounds [3 x i8], ptr %44, i32 0, i32 2
  store i8 23, ptr %1361, align 1
  %1362 = load ptr, ptr %948, align 4
  %1363 = call i32 @i2c_transfer(ptr noundef %1362, ptr noundef nonnull %45, i32 noundef 1) #10
  %1364 = icmp ne i32 %1363, 1
  %1365 = load i32, ptr @stvdebug, align 4
  %1366 = icmp ne i32 %1365, 0
  %1367 = select i1 %1364, i1 %1366, i1 false
  br i1 %1367, label %1368, label %1370

1368:                                             ; preds = %1354
  %1369 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %1363) #11
  br label %1370

1370:                                             ; preds = %1368, %1354
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %45) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %44) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %42) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %43) #10
  %1371 = getelementptr inbounds i8, ptr %43, i32 4
  store i32 3, ptr %1371, align 4, !annotation !8
  %1372 = load i8, ptr %939, align 4
  %1373 = zext i8 %1372 to i16
  store i16 %1373, ptr %43, align 4
  %1374 = getelementptr inbounds %struct.i2c_msg, ptr %43, i32 0, i32 1
  store i16 0, ptr %1374, align 2
  %1375 = getelementptr inbounds %struct.i2c_msg, ptr %43, i32 0, i32 3
  store ptr %42, ptr %1375, align 4
  store i8 -12, ptr %42, align 1
  %1376 = getelementptr inbounds [3 x i8], ptr %42, i32 0, i32 1
  store i8 -20, ptr %1376, align 1
  %1377 = getelementptr inbounds [3 x i8], ptr %42, i32 0, i32 2
  store i8 31, ptr %1377, align 1
  %1378 = load ptr, ptr %948, align 4
  %1379 = call i32 @i2c_transfer(ptr noundef %1378, ptr noundef nonnull %43, i32 noundef 1) #10
  %1380 = icmp ne i32 %1379, 1
  %1381 = load i32, ptr @stvdebug, align 4
  %1382 = icmp ne i32 %1381, 0
  %1383 = select i1 %1380, i1 %1382, i1 false
  br i1 %1383, label %1384, label %1386

1384:                                             ; preds = %1370
  %1385 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %1379) #11
  br label %1386

1386:                                             ; preds = %1384, %1370
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %43) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %42) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %40) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %41) #10
  %1387 = getelementptr inbounds i8, ptr %41, i32 4
  store i32 3, ptr %1387, align 4, !annotation !8
  %1388 = load i8, ptr %939, align 4
  %1389 = zext i8 %1388 to i16
  store i16 %1389, ptr %41, align 4
  %1390 = getelementptr inbounds %struct.i2c_msg, ptr %41, i32 0, i32 1
  store i16 0, ptr %1390, align 2
  %1391 = getelementptr inbounds %struct.i2c_msg, ptr %41, i32 0, i32 3
  store ptr %40, ptr %1391, align 4
  store i8 -12, ptr %40, align 1
  %1392 = getelementptr inbounds [3 x i8], ptr %40, i32 0, i32 1
  store i8 -19, ptr %1392, align 1
  %1393 = getelementptr inbounds [3 x i8], ptr %40, i32 0, i32 2
  store i8 0, ptr %1393, align 1
  %1394 = load ptr, ptr %948, align 4
  %1395 = call i32 @i2c_transfer(ptr noundef %1394, ptr noundef nonnull %41, i32 noundef 1) #10
  %1396 = icmp ne i32 %1395, 1
  %1397 = load i32, ptr @stvdebug, align 4
  %1398 = icmp ne i32 %1397, 0
  %1399 = select i1 %1396, i1 %1398, i1 false
  br i1 %1399, label %1400, label %1402

1400:                                             ; preds = %1386
  %1401 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %1395) #11
  br label %1402

1402:                                             ; preds = %1400, %1386
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %41) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %40) #10
  br label %1403

1403:                                             ; preds = %1402, %1265
  %1404 = phi i8 [ 3, %1402 ], [ 6, %1265 ]
  call void @stv0900_write_bits(ptr noundef %693, i32 noundef -186646416, i8 noundef zeroext %1404)
  %1405 = getelementptr inbounds %struct.stv0900_init_params, ptr %1, i32 0, i32 4
  %1406 = load i8, ptr %1405, align 4
  call void @stv0900_write_bits(ptr noundef %693, i32 noundef -186646525, i8 noundef zeroext %1406)
  %1407 = getelementptr inbounds %struct.stv0900_init_params, ptr %1, i32 0, i32 5
  %1408 = load i32, ptr %1407, align 4
  %1409 = icmp eq i32 %1408, 1
  br i1 %1409, label %1410, label %1427

1410:                                             ; preds = %1403
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %38) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %39) #10
  %1411 = getelementptr inbounds i8, ptr %39, i32 4
  store i32 3, ptr %1411, align 4, !annotation !8
  %1412 = load i8, ptr %939, align 4
  %1413 = zext i8 %1412 to i16
  store i16 %1413, ptr %39, align 4
  %1414 = getelementptr inbounds %struct.i2c_msg, ptr %39, i32 0, i32 1
  store i16 0, ptr %1414, align 2
  %1415 = getelementptr inbounds %struct.i2c_msg, ptr %39, i32 0, i32 3
  store ptr %38, ptr %1415, align 4
  store i8 -15, ptr %38, align 1
  %1416 = getelementptr inbounds [3 x i8], ptr %38, i32 0, i32 1
  store i8 -32, ptr %1416, align 1
  %1417 = getelementptr inbounds [3 x i8], ptr %38, i32 0, i32 2
  store i8 38, ptr %1417, align 1
  %1418 = load ptr, ptr %948, align 4
  %1419 = call i32 @i2c_transfer(ptr noundef %1418, ptr noundef nonnull %39, i32 noundef 1) #10
  %1420 = icmp ne i32 %1419, 1
  %1421 = load i32, ptr @stvdebug, align 4
  %1422 = icmp ne i32 %1421, 0
  %1423 = select i1 %1420, i1 %1422, i1 false
  br i1 %1423, label %1424, label %1426

1424:                                             ; preds = %1410
  %1425 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %1419) #11
  br label %1426

1426:                                             ; preds = %1424, %1410
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %39) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %38) #10
  br label %1427

1427:                                             ; preds = %1426, %1403
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %36) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %37) #10
  %1428 = getelementptr inbounds i8, ptr %37, i32 4
  store i32 3, ptr %1428, align 4, !annotation !8
  %1429 = load i8, ptr %939, align 4
  %1430 = zext i8 %1429 to i16
  store i16 %1430, ptr %37, align 4
  %1431 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 0, i32 1
  store i16 0, ptr %1431, align 2
  %1432 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 0, i32 3
  store ptr %36, ptr %1432, align 4
  store i8 -12, ptr %36, align 1
  %1433 = getelementptr inbounds [3 x i8], ptr %36, i32 0, i32 1
  store i8 -16, ptr %1433, align 1
  %1434 = getelementptr inbounds [3 x i8], ptr %36, i32 0, i32 2
  store i8 1, ptr %1434, align 1
  %1435 = load ptr, ptr %948, align 4
  %1436 = call i32 @i2c_transfer(ptr noundef %1435, ptr noundef nonnull %37, i32 noundef 1) #10
  %1437 = icmp ne i32 %1436, 1
  %1438 = load i32, ptr @stvdebug, align 4
  %1439 = icmp ne i32 %1438, 0
  %1440 = select i1 %1437, i1 %1439, i1 false
  br i1 %1440, label %1441, label %1443

1441:                                             ; preds = %1427
  %1442 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %1436) #11
  br label %1443

1443:                                             ; preds = %1441, %1427
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %37) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %36) #10
  %1444 = load i32, ptr %1269, align 4
  %1445 = icmp eq i32 %1444, 3
  br i1 %1445, label %1446, label %1575

1446:                                             ; preds = %1443
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %34) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %35) #10
  %1447 = getelementptr inbounds i8, ptr %35, i32 4
  store i32 3, ptr %1447, align 4, !annotation !8
  %1448 = load i8, ptr %939, align 4
  %1449 = zext i8 %1448 to i16
  store i16 %1449, ptr %35, align 4
  %1450 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 0, i32 1
  store i16 0, ptr %1450, align 2
  %1451 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 0, i32 3
  store ptr %34, ptr %1451, align 4
  store i8 -14, ptr %34, align 1
  %1452 = getelementptr inbounds [3 x i8], ptr %34, i32 0, i32 1
  store i8 -32, ptr %1452, align 1
  %1453 = getelementptr inbounds [3 x i8], ptr %34, i32 0, i32 2
  store i8 60, ptr %1453, align 1
  %1454 = load ptr, ptr %948, align 4
  %1455 = call i32 @i2c_transfer(ptr noundef %1454, ptr noundef nonnull %35, i32 noundef 1) #10
  %1456 = icmp ne i32 %1455, 1
  %1457 = load i32, ptr @stvdebug, align 4
  %1458 = icmp ne i32 %1457, 0
  %1459 = select i1 %1456, i1 %1458, i1 false
  br i1 %1459, label %1460, label %1462

1460:                                             ; preds = %1446
  %1461 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %1455) #11
  br label %1462

1462:                                             ; preds = %1460, %1446
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %35) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %34) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %32) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %33) #10
  %1463 = getelementptr inbounds i8, ptr %33, i32 4
  store i32 3, ptr %1463, align 4, !annotation !8
  %1464 = load i8, ptr %939, align 4
  %1465 = zext i8 %1464 to i16
  store i16 %1465, ptr %33, align 4
  %1466 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 0, i32 1
  store i16 0, ptr %1466, align 2
  %1467 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 0, i32 3
  store ptr %32, ptr %1467, align 4
  store i8 -14, ptr %32, align 1
  %1468 = getelementptr inbounds [3 x i8], ptr %32, i32 0, i32 1
  store i8 -31, ptr %1468, align 1
  %1469 = getelementptr inbounds [3 x i8], ptr %32, i32 0, i32 2
  store i8 -122, ptr %1469, align 1
  %1470 = load ptr, ptr %948, align 4
  %1471 = call i32 @i2c_transfer(ptr noundef %1470, ptr noundef nonnull %33, i32 noundef 1) #10
  %1472 = icmp ne i32 %1471, 1
  %1473 = load i32, ptr @stvdebug, align 4
  %1474 = icmp ne i32 %1473, 0
  %1475 = select i1 %1472, i1 %1474, i1 false
  br i1 %1475, label %1476, label %1478

1476:                                             ; preds = %1462
  %1477 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %1471) #11
  br label %1478

1478:                                             ; preds = %1476, %1462
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %33) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %32) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %30) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %31) #10
  %1479 = getelementptr inbounds i8, ptr %31, i32 4
  store i32 3, ptr %1479, align 4, !annotation !8
  %1480 = load i8, ptr %939, align 4
  %1481 = zext i8 %1480 to i16
  store i16 %1481, ptr %31, align 4
  %1482 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 0, i32 1
  store i16 0, ptr %1482, align 2
  %1483 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 0, i32 3
  store ptr %30, ptr %1483, align 4
  store i8 -14, ptr %30, align 1
  %1484 = getelementptr inbounds [3 x i8], ptr %30, i32 0, i32 1
  store i8 -18, ptr %1484, align 1
  %1485 = getelementptr inbounds [3 x i8], ptr %30, i32 0, i32 2
  store i8 24, ptr %1485, align 1
  %1486 = load ptr, ptr %948, align 4
  %1487 = call i32 @i2c_transfer(ptr noundef %1486, ptr noundef nonnull %31, i32 noundef 1) #10
  %1488 = icmp ne i32 %1487, 1
  %1489 = load i32, ptr @stvdebug, align 4
  %1490 = icmp ne i32 %1489, 0
  %1491 = select i1 %1488, i1 %1490, i1 false
  br i1 %1491, label %1492, label %1494

1492:                                             ; preds = %1478
  %1493 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %1487) #11
  br label %1494

1494:                                             ; preds = %1492, %1478
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %31) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %30) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %28) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %29) #10
  %1495 = getelementptr inbounds i8, ptr %29, i32 4
  store i32 3, ptr %1495, align 4, !annotation !8
  %1496 = load i8, ptr %939, align 4
  %1497 = zext i8 %1496 to i16
  store i16 %1497, ptr %29, align 4
  %1498 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 1
  store i16 0, ptr %1498, align 2
  %1499 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 3
  store ptr %28, ptr %1499, align 4
  store i8 -14, ptr %28, align 1
  %1500 = getelementptr inbounds [3 x i8], ptr %28, i32 0, i32 1
  store i8 -28, ptr %1500, align 1
  %1501 = getelementptr inbounds [3 x i8], ptr %28, i32 0, i32 2
  store i8 27, ptr %1501, align 1
  %1502 = load ptr, ptr %948, align 4
  %1503 = call i32 @i2c_transfer(ptr noundef %1502, ptr noundef nonnull %29, i32 noundef 1) #10
  %1504 = icmp ne i32 %1503, 1
  %1505 = load i32, ptr @stvdebug, align 4
  %1506 = icmp ne i32 %1505, 0
  %1507 = select i1 %1504, i1 %1506, i1 false
  br i1 %1507, label %1508, label %1510

1508:                                             ; preds = %1494
  %1509 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %1503) #11
  br label %1510

1510:                                             ; preds = %1508, %1494
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %29) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %28) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %26) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %27) #10
  %1511 = getelementptr inbounds i8, ptr %27, i32 4
  store i32 3, ptr %1511, align 4, !annotation !8
  %1512 = load i8, ptr %939, align 4
  %1513 = zext i8 %1512 to i16
  store i16 %1513, ptr %27, align 4
  %1514 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 1
  store i16 0, ptr %1514, align 2
  %1515 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 3
  store ptr %26, ptr %1515, align 4
  store i8 -14, ptr %26, align 1
  %1516 = getelementptr inbounds [3 x i8], ptr %26, i32 0, i32 1
  store i8 -25, ptr %1516, align 1
  %1517 = getelementptr inbounds [3 x i8], ptr %26, i32 0, i32 2
  store i8 5, ptr %1517, align 1
  %1518 = load ptr, ptr %948, align 4
  %1519 = call i32 @i2c_transfer(ptr noundef %1518, ptr noundef nonnull %27, i32 noundef 1) #10
  %1520 = icmp ne i32 %1519, 1
  %1521 = load i32, ptr @stvdebug, align 4
  %1522 = icmp ne i32 %1521, 0
  %1523 = select i1 %1520, i1 %1522, i1 false
  br i1 %1523, label %1524, label %1526

1524:                                             ; preds = %1510
  %1525 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %1519) #11
  br label %1526

1526:                                             ; preds = %1524, %1510
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %27) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %26) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %24) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %25) #10
  %1527 = getelementptr inbounds i8, ptr %25, i32 4
  store i32 3, ptr %1527, align 4, !annotation !8
  %1528 = load i8, ptr %939, align 4
  %1529 = zext i8 %1528 to i16
  store i16 %1529, ptr %25, align 4
  %1530 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 1
  store i16 0, ptr %1530, align 2
  %1531 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 3
  store ptr %24, ptr %1531, align 4
  store i8 -14, ptr %24, align 1
  %1532 = getelementptr inbounds [3 x i8], ptr %24, i32 0, i32 1
  store i8 -24, ptr %1532, align 1
  %1533 = getelementptr inbounds [3 x i8], ptr %24, i32 0, i32 2
  store i8 23, ptr %1533, align 1
  %1534 = load ptr, ptr %948, align 4
  %1535 = call i32 @i2c_transfer(ptr noundef %1534, ptr noundef nonnull %25, i32 noundef 1) #10
  %1536 = icmp ne i32 %1535, 1
  %1537 = load i32, ptr @stvdebug, align 4
  %1538 = icmp ne i32 %1537, 0
  %1539 = select i1 %1536, i1 %1538, i1 false
  br i1 %1539, label %1540, label %1542

1540:                                             ; preds = %1526
  %1541 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %1535) #11
  br label %1542

1542:                                             ; preds = %1540, %1526
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %25) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %24) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %22) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #10
  %1543 = getelementptr inbounds i8, ptr %23, i32 4
  store i32 3, ptr %1543, align 4, !annotation !8
  %1544 = load i8, ptr %939, align 4
  %1545 = zext i8 %1544 to i16
  store i16 %1545, ptr %23, align 4
  %1546 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 1
  store i16 0, ptr %1546, align 2
  %1547 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 3
  store ptr %22, ptr %1547, align 4
  store i8 -14, ptr %22, align 1
  %1548 = getelementptr inbounds [3 x i8], ptr %22, i32 0, i32 1
  store i8 -20, ptr %1548, align 1
  %1549 = getelementptr inbounds [3 x i8], ptr %22, i32 0, i32 2
  store i8 31, ptr %1549, align 1
  %1550 = load ptr, ptr %948, align 4
  %1551 = call i32 @i2c_transfer(ptr noundef %1550, ptr noundef nonnull %23, i32 noundef 1) #10
  %1552 = icmp ne i32 %1551, 1
  %1553 = load i32, ptr @stvdebug, align 4
  %1554 = icmp ne i32 %1553, 0
  %1555 = select i1 %1552, i1 %1554, i1 false
  br i1 %1555, label %1556, label %1558

1556:                                             ; preds = %1542
  %1557 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %1551) #11
  br label %1558

1558:                                             ; preds = %1556, %1542
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %22) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %20) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #10
  %1559 = getelementptr inbounds i8, ptr %21, i32 4
  store i32 3, ptr %1559, align 4, !annotation !8
  %1560 = load i8, ptr %939, align 4
  %1561 = zext i8 %1560 to i16
  store i16 %1561, ptr %21, align 4
  %1562 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 1
  store i16 0, ptr %1562, align 2
  %1563 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 3
  store ptr %20, ptr %1563, align 4
  store i8 -14, ptr %20, align 1
  %1564 = getelementptr inbounds [3 x i8], ptr %20, i32 0, i32 1
  store i8 -19, ptr %1564, align 1
  %1565 = getelementptr inbounds [3 x i8], ptr %20, i32 0, i32 2
  store i8 0, ptr %1565, align 1
  %1566 = load ptr, ptr %948, align 4
  %1567 = call i32 @i2c_transfer(ptr noundef %1566, ptr noundef nonnull %21, i32 noundef 1) #10
  %1568 = icmp ne i32 %1567, 1
  %1569 = load i32, ptr @stvdebug, align 4
  %1570 = icmp ne i32 %1569, 0
  %1571 = select i1 %1568, i1 %1570, i1 false
  br i1 %1571, label %1572, label %1574

1572:                                             ; preds = %1558
  %1573 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %1567) #11
  br label %1574

1574:                                             ; preds = %1572, %1558
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %20) #10
  br label %1575

1575:                                             ; preds = %1574, %1443
  %1576 = phi i8 [ 3, %1574 ], [ 6, %1443 ]
  call void @stv0900_write_bits(ptr noundef %693, i32 noundef -220200848, i8 noundef zeroext %1576)
  %1577 = getelementptr inbounds %struct.stv0900_init_params, ptr %1, i32 0, i32 9
  %1578 = load i8, ptr %1577, align 4
  call void @stv0900_write_bits(ptr noundef %693, i32 noundef -220200957, i8 noundef zeroext %1578)
  %1579 = getelementptr inbounds %struct.stv0900_init_params, ptr %1, i32 0, i32 10
  %1580 = load i32, ptr %1579, align 4
  %1581 = icmp eq i32 %1580, 1
  br i1 %1581, label %1582, label %1599

1582:                                             ; preds = %1575
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %18) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #10
  %1583 = getelementptr inbounds i8, ptr %19, i32 4
  store i32 3, ptr %1583, align 4, !annotation !8
  %1584 = load i8, ptr %939, align 4
  %1585 = zext i8 %1584 to i16
  store i16 %1585, ptr %19, align 4
  %1586 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 1
  store i16 0, ptr %1586, align 2
  %1587 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 3
  store ptr %18, ptr %1587, align 4
  store i8 -15, ptr %18, align 1
  %1588 = getelementptr inbounds [3 x i8], ptr %18, i32 0, i32 1
  store i8 -30, ptr %1588, align 1
  %1589 = getelementptr inbounds [3 x i8], ptr %18, i32 0, i32 2
  store i8 38, ptr %1589, align 1
  %1590 = load ptr, ptr %948, align 4
  %1591 = call i32 @i2c_transfer(ptr noundef %1590, ptr noundef nonnull %19, i32 noundef 1) #10
  %1592 = icmp ne i32 %1591, 1
  %1593 = load i32, ptr @stvdebug, align 4
  %1594 = icmp ne i32 %1593, 0
  %1595 = select i1 %1592, i1 %1594, i1 false
  br i1 %1595, label %1596, label %1598

1596:                                             ; preds = %1582
  %1597 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %1591) #11
  br label %1598

1598:                                             ; preds = %1596, %1582
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %18) #10
  br label %1599

1599:                                             ; preds = %1598, %1575
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %16) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #10
  %1600 = getelementptr inbounds i8, ptr %17, i32 4
  store i32 3, ptr %1600, align 4, !annotation !8
  %1601 = load i8, ptr %939, align 4
  %1602 = zext i8 %1601 to i16
  store i16 %1602, ptr %17, align 4
  %1603 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %1603, align 2
  %1604 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %16, ptr %1604, align 4
  store i8 -14, ptr %16, align 1
  %1605 = getelementptr inbounds [3 x i8], ptr %16, i32 0, i32 1
  store i8 -16, ptr %1605, align 1
  %1606 = getelementptr inbounds [3 x i8], ptr %16, i32 0, i32 2
  store i8 1, ptr %1606, align 1
  %1607 = load ptr, ptr %948, align 4
  %1608 = call i32 @i2c_transfer(ptr noundef %1607, ptr noundef nonnull %17, i32 noundef 1) #10
  %1609 = icmp ne i32 %1608, 1
  %1610 = load i32, ptr @stvdebug, align 4
  %1611 = icmp ne i32 %1610, 0
  %1612 = select i1 %1609, i1 %1611, i1 false
  br i1 %1612, label %1613, label %1615

1613:                                             ; preds = %1599
  %1614 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %1608) #11
  br label %1615

1615:                                             ; preds = %1613, %1599
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %16) #10
  %1616 = getelementptr inbounds %struct.stv0900_init_params, ptr %1, i32 0, i32 7
  %1617 = load i32, ptr %1616, align 4
  %1618 = trunc i32 %1617 to i8
  call void @stv0900_write_bits(ptr noundef %693, i32 noundef -186580864, i8 noundef zeroext %1618)
  %1619 = getelementptr inbounds %struct.stv0900_init_params, ptr %1, i32 0, i32 12
  %1620 = load i32, ptr %1619, align 4
  %1621 = trunc i32 %1620 to i8
  call void @stv0900_write_bits(ptr noundef %693, i32 noundef -220135296, i8 noundef zeroext %1621)
  %1622 = icmp eq ptr %693, null
  br i1 %1622, label %1730, label %1623

1623:                                             ; preds = %1615
  %1624 = getelementptr inbounds %struct.stv0900_internal, ptr %693, i32 0, i32 22
  %1625 = load i32, ptr %1624, align 4
  %1626 = icmp eq i32 %1625, 0
  br i1 %1626, label %1627, label %1730

1627:                                             ; preds = %1623
  %1628 = load i32, ptr @stvdebug, align 4
  %1629 = icmp eq i32 %1628, 0
  br i1 %1629, label %1633, label %1630

1630:                                             ; preds = %1627
  %1631 = load i32, ptr %693, align 4
  %1632 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.stv0900_set_mclk, i32 noundef 135000000, i32 noundef %1631) #11
  br label %1633

1633:                                             ; preds = %1630, %1627
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #10
  store i8 -15, ptr %13, align 2
  %1634 = getelementptr inbounds i8, ptr %13, i32 1
  store i8 -74, ptr %1634, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %14) #10
  store i8 0, ptr %14, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #10
  %1635 = getelementptr inbounds i8, ptr %15, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %1635, i8 0, i32 16, i1 false) #10, !annotation !8
  %1636 = load i8, ptr %939, align 4
  %1637 = zext i8 %1636 to i16
  store i16 %1637, ptr %15, align 4
  %1638 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %1638, align 2
  store i16 2, ptr %1635, align 4
  %1639 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %13, ptr %1639, align 4
  %1640 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1
  store i16 %1637, ptr %1640, align 4
  %1641 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1, i32 1
  store i16 1, ptr %1641, align 2
  %1642 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1, i32 2
  store i16 1, ptr %1642, align 4
  %1643 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1, i32 3
  store ptr %14, ptr %1643, align 4
  %1644 = load ptr, ptr %948, align 4
  %1645 = call i32 @i2c_transfer(ptr noundef %1644, ptr noundef nonnull %15, i32 noundef 2) #10
  %1646 = icmp ne i32 %1645, 2
  %1647 = load i32, ptr @stvdebug, align 4
  %1648 = icmp ne i32 %1647, 0
  %1649 = select i1 %1646, i1 %1648, i1 false
  br i1 %1649, label %1650, label %1652

1650:                                             ; preds = %1633
  %1651 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0900_read_reg, i32 noundef %1645, i32 noundef 61878) #11
  br label %1652

1652:                                             ; preds = %1650, %1633
  %1653 = load i8, ptr %14, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #10
  %1654 = and i8 %1653, 32
  %1655 = icmp eq i8 %1654, 0
  %1656 = select i1 %1655, i32 810000000, i32 540000000
  %1657 = load i32, ptr %693, align 4
  %1658 = udiv i32 %1656, %1657
  %1659 = trunc i32 %1658 to i8
  %1660 = add i8 %1659, -1
  call void @stv0900_write_bits(ptr noundef nonnull %693, i32 noundef -239927041, i8 noundef zeroext %1660) #10
  %1661 = load i32, ptr %693, align 4
  %1662 = call fastcc i32 @stv0900_get_mclk_freq(ptr noundef nonnull %693, i32 noundef %1661) #10
  %1663 = getelementptr inbounds %struct.stv0900_internal, ptr %693, i32 0, i32 1
  store i32 %1662, ptr %1663, align 4
  %1664 = sdiv i32 %1662, 704000
  %1665 = trunc i32 %1664 to i8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %11) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #10
  %1666 = getelementptr inbounds i8, ptr %12, i32 4
  store i32 3, ptr %1666, align 4, !annotation !8
  %1667 = load i8, ptr %939, align 4
  %1668 = zext i8 %1667 to i16
  store i16 %1668, ptr %12, align 4
  %1669 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  store i16 0, ptr %1669, align 2
  %1670 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  store ptr %11, ptr %1670, align 4
  store i8 -15, ptr %11, align 1
  %1671 = getelementptr inbounds [3 x i8], ptr %11, i32 0, i32 1
  store i8 -87, ptr %1671, align 1
  %1672 = getelementptr inbounds [3 x i8], ptr %11, i32 0, i32 2
  store i8 %1665, ptr %1672, align 1
  %1673 = load ptr, ptr %948, align 4
  %1674 = call i32 @i2c_transfer(ptr noundef %1673, ptr noundef nonnull %12, i32 noundef 1) #10
  %1675 = icmp ne i32 %1674, 1
  %1676 = load i32, ptr @stvdebug, align 4
  %1677 = icmp ne i32 %1676, 0
  %1678 = select i1 %1675, i1 %1677, i1 false
  br i1 %1678, label %1679, label %1681

1679:                                             ; preds = %1652
  %1680 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %1674) #11
  br label %1681

1681:                                             ; preds = %1679, %1652
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %11) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #10
  %1682 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 3, ptr %1682, align 4, !annotation !8
  %1683 = load i8, ptr %939, align 4
  %1684 = zext i8 %1683 to i16
  store i16 %1684, ptr %10, align 4
  %1685 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %1685, align 2
  %1686 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %9, ptr %1686, align 4
  store i8 -15, ptr %9, align 1
  %1687 = getelementptr inbounds [3 x i8], ptr %9, i32 0, i32 1
  store i8 -86, ptr %1687, align 1
  %1688 = getelementptr inbounds [3 x i8], ptr %9, i32 0, i32 2
  store i8 %1665, ptr %1688, align 1
  %1689 = load ptr, ptr %948, align 4
  %1690 = call i32 @i2c_transfer(ptr noundef %1689, ptr noundef nonnull %10, i32 noundef 1) #10
  %1691 = icmp ne i32 %1690, 1
  %1692 = load i32, ptr @stvdebug, align 4
  %1693 = icmp ne i32 %1692, 0
  %1694 = select i1 %1691, i1 %1693, i1 false
  br i1 %1694, label %1695, label %1697

1695:                                             ; preds = %1681
  %1696 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %1690) #11
  br label %1697

1697:                                             ; preds = %1695, %1681
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #10
  %1698 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 3, ptr %1698, align 4, !annotation !8
  %1699 = load i8, ptr %939, align 4
  %1700 = zext i8 %1699 to i16
  store i16 %1700, ptr %8, align 4
  %1701 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %1701, align 2
  %1702 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %1702, align 4
  store i8 -15, ptr %7, align 1
  %1703 = getelementptr inbounds [3 x i8], ptr %7, i32 0, i32 1
  store i8 -103, ptr %1703, align 1
  %1704 = getelementptr inbounds [3 x i8], ptr %7, i32 0, i32 2
  store i8 %1665, ptr %1704, align 1
  %1705 = load ptr, ptr %948, align 4
  %1706 = call i32 @i2c_transfer(ptr noundef %1705, ptr noundef nonnull %8, i32 noundef 1) #10
  %1707 = icmp ne i32 %1706, 1
  %1708 = load i32, ptr @stvdebug, align 4
  %1709 = icmp ne i32 %1708, 0
  %1710 = select i1 %1707, i1 %1709, i1 false
  br i1 %1710, label %1711, label %1713

1711:                                             ; preds = %1697
  %1712 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %1706) #11
  br label %1713

1713:                                             ; preds = %1711, %1697
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %1714 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 3, ptr %1714, align 4, !annotation !8
  %1715 = load i8, ptr %939, align 4
  %1716 = zext i8 %1715 to i16
  store i16 %1716, ptr %6, align 4
  %1717 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %1717, align 2
  %1718 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %1718, align 4
  store i8 -15, ptr %5, align 1
  %1719 = getelementptr inbounds [3 x i8], ptr %5, i32 0, i32 1
  store i8 -102, ptr %1719, align 1
  %1720 = getelementptr inbounds [3 x i8], ptr %5, i32 0, i32 2
  store i8 %1665, ptr %1720, align 1
  %1721 = load ptr, ptr %948, align 4
  %1722 = call i32 @i2c_transfer(ptr noundef %1721, ptr noundef nonnull %6, i32 noundef 1) #10
  %1723 = icmp ne i32 %1722, 1
  %1724 = load i32, ptr @stvdebug, align 4
  %1725 = icmp ne i32 %1724, 0
  %1726 = select i1 %1723, i1 %1725, i1 false
  br i1 %1726, label %1727, label %1729

1727:                                             ; preds = %1713
  %1728 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %1722) #11
  br label %1729

1729:                                             ; preds = %1727, %1713
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #10
  br label %1730

1730:                                             ; preds = %1729, %1623, %1615
  call void @msleep(i32 noundef 3) #10
  %1731 = getelementptr inbounds %struct.stv0900_internal, ptr %693, i32 0, i32 19
  %1732 = load i8, ptr %1731, align 1
  switch i8 %1732, label %1751 [
    i8 0, label %1733
    i8 2, label %1733
  ]

1733:                                             ; preds = %1730, %1730
  %1734 = or i8 %1732, 32
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %1735 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 3, ptr %1735, align 4, !annotation !8
  %1736 = load i8, ptr %939, align 4
  %1737 = zext i8 %1736 to i16
  store i16 %1737, ptr %4, align 4
  %1738 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %1738, align 2
  %1739 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %1739, align 4
  store i8 -15, ptr %3, align 1
  %1740 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 1
  store i8 -74, ptr %1740, align 1
  %1741 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 2
  store i8 %1734, ptr %1741, align 1
  %1742 = load ptr, ptr %948, align 4
  %1743 = call i32 @i2c_transfer(ptr noundef %1742, ptr noundef nonnull %4, i32 noundef 1) #10
  %1744 = icmp ne i32 %1743, 1
  %1745 = load i32, ptr @stvdebug, align 4
  %1746 = icmp ne i32 %1745, 0
  %1747 = select i1 %1744, i1 %1746, i1 false
  br i1 %1747, label %1748, label %1750

1748:                                             ; preds = %1733
  %1749 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %1743) #11
  br label %1750

1750:                                             ; preds = %1748, %1733
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #10
  br label %1755

1751:                                             ; preds = %1730
  %1752 = call zeroext i8 @stv0900_read_reg(ptr noundef %693, i16 noundef zeroext -3658)
  %1753 = and i8 %1752, 2
  %1754 = or i8 %1753, 32
  call void @stv0900_write_reg(ptr noundef %693, i16 noundef zeroext -3658, i8 noundef zeroext %1754)
  br label %1755

1755:                                             ; preds = %1751, %1750
  call void @msleep(i32 noundef 3) #10
  %1756 = load i32, ptr %693, align 4
  %1757 = call fastcc i32 @stv0900_get_mclk_freq(ptr noundef %693, i32 noundef %1756)
  %1758 = getelementptr inbounds %struct.stv0900_internal, ptr %693, i32 0, i32 1
  store i32 %1757, ptr %1758, align 4
  %1759 = getelementptr inbounds %struct.stv0900_internal, ptr %693, i32 0, i32 22
  %1760 = load i32, ptr %1759, align 4
  %1761 = icmp eq i32 %1760, 0
  %1762 = select i1 %1761, i32 0, i32 3
  br label %1763

1763:                                             ; preds = %1755, %984, %273, %249, %225, %203, %201, %194
  %1764 = phi i32 [ 1, %225 ], [ %1762, %1755 ], [ 0, %201 ], [ 0, %194 ], [ 1, %203 ], [ 1, %249 ], [ 3, %984 ], [ %277, %273 ]
  ret i32 %1764
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stv0900_release(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr @stvdebug, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0900_release) #11
  br label %8

8:                                                ; preds = %6, %1
  %9 = getelementptr inbounds %struct.stv0900_state, ptr %3, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.stv0900_config, ptr %10, i32 0, i32 15
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %8
  tail call void %12(ptr noundef %0, i32 noundef 0) #10
  br label %15

15:                                               ; preds = %14, %8
  %16 = load ptr, ptr %3, align 4
  %17 = getelementptr inbounds %struct.stv0900_internal, ptr %16, i32 0, i32 23
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, -1
  store i32 %19, ptr %17, align 4
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %21, label %69

21:                                               ; preds = %15
  %22 = load i32, ptr @stvdebug, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.stv0900_release) #11
  br label %26

26:                                               ; preds = %24, %21
  %27 = load ptr, ptr %3, align 4
  %28 = load ptr, ptr @stv0900_first_inode, align 4
  %29 = getelementptr inbounds %struct.stv0900_internal, ptr %27, i32 0, i32 17
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.stv0900_internal, ptr %27, i32 0, i32 18
  %32 = load i8, ptr %31, align 4
  %33 = icmp eq ptr %28, null
  br i1 %33, label %67, label %34

34:                                               ; preds = %44, %26
  %35 = phi ptr [ %46, %44 ], [ %28, %26 ]
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.stv0900_internal, ptr %36, i32 0, i32 17
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, %30
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.stv0900_internal, ptr %36, i32 0, i32 18
  %42 = load i8, ptr %41, align 4
  %43 = icmp eq i8 %42, %32
  br i1 %43, label %48, label %44

44:                                               ; preds = %40, %34
  %45 = getelementptr inbounds %struct.stv0900_inode, ptr %35, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %67, label %34

48:                                               ; preds = %40
  %49 = icmp eq ptr %35, %28
  br i1 %49, label %50, label %53

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.stv0900_inode, ptr %28, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  store ptr %52, ptr @stv0900_first_inode, align 4
  br label %65

53:                                               ; preds = %53, %48
  %54 = phi ptr [ %56, %53 ], [ %28, %48 ]
  %55 = getelementptr inbounds %struct.stv0900_inode, ptr %54, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, %35
  br i1 %57, label %58, label %53

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.stv0900_inode, ptr %54, i32 0, i32 1
  %60 = getelementptr inbounds %struct.stv0900_inode, ptr %35, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store ptr null, ptr %59, align 4
  br label %65

64:                                               ; preds = %58
  store ptr %61, ptr %59, align 4
  br label %65

65:                                               ; preds = %64, %63, %50
  tail call void @kfree(ptr noundef nonnull %35) #10
  %66 = load ptr, ptr %3, align 4
  br label %67

67:                                               ; preds = %65, %44, %26
  %68 = phi ptr [ %27, %26 ], [ %66, %65 ], [ %27, %44 ]
  tail call void @kfree(ptr noundef %68) #10
  br label %69

69:                                               ; preds = %67, %15
  tail call void @kfree(ptr noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0900_init(ptr nocapture noundef readonly %0) #1 {
  %2 = load i32, ptr @stvdebug, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0900_init) #11
  br label %6

6:                                                ; preds = %4, %1
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.stv0900_state, ptr %8, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = load ptr, ptr %8, align 4
  %12 = tail call i32 @shiftx(i32 noundef -177078271, i32 noundef %10, i32 noundef 33554432) #10
  tail call void @stv0900_write_bits(ptr noundef %11, i32 noundef %12, i8 noundef zeroext 1) #10
  %13 = load ptr, ptr %7, align 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.stv0900_state, ptr %13, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 @shiftx(i32 noundef -241172473, i32 noundef %16, i32 noundef 1048576) #10
  %18 = getelementptr inbounds %struct.stv0900_state, ptr %13, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.stv0900_config, ptr %19, i32 0, i32 4
  %21 = load i8, ptr %20, align 1
  tail call void @stv0900_write_bits(ptr noundef %14, i32 noundef %17, i8 noundef zeroext %21) #10
  %22 = tail call i32 @shiftx(i32 noundef -241172416, i32 noundef %16, i32 noundef 1048576) #10
  tail call void @stv0900_write_bits(ptr noundef %14, i32 noundef %22, i8 noundef zeroext 1) #10
  %23 = tail call i32 @shiftx(i32 noundef -241172416, i32 noundef %16, i32 noundef 1048576) #10
  tail call void @stv0900_write_bits(ptr noundef %14, i32 noundef %23, i8 noundef zeroext 0) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0900_sleep(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr @stvdebug, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0900_sleep) #11
  br label %8

8:                                                ; preds = %6, %1
  %9 = getelementptr inbounds %struct.stv0900_state, ptr %3, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.stv0900_config, ptr %10, i32 0, i32 15
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %8
  tail call void %12(ptr noundef %0, i32 noundef 0) #10
  br label %15

15:                                               ; preds = %14, %8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @stv0900_frontend_algo(ptr nocapture noundef readnone %0) #0 {
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @stv0900_get_frontend(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #8 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.stv0900_state, ptr %4, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr %struct.stv0900_internal, ptr %5, i32 0, i32 15, i32 %7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds i8, ptr %8, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds i8, ptr %8, i32 8
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %9, 0
  %15 = select i1 %14, i32 0, i32 %11
  store i32 %15, ptr %1, align 4
  %16 = select i1 %14, i32 0, i32 %13
  %17 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 10
  store i32 %16, ptr %17, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0900_read_status(ptr noundef %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca i8, align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [2 x i8], align 2
  %7 = alloca i8, align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr @stvdebug, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.stv0900_read_status) #11
  br label %15

15:                                               ; preds = %13, %2
  %16 = load ptr, ptr %10, align 4
  %17 = getelementptr inbounds %struct.stv0900_state, ptr %10, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 @shiftx(i32 noundef -199557024, i32 noundef %18, i32 noundef 33554432) #10
  %20 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %16, i32 noundef %19) #10
  switch i8 %20, label %42 [
    i8 3, label %29
    i8 2, label %21
  ]

21:                                               ; preds = %15
  %22 = tail call i32 @shiftx(i32 noundef -200146936, i32 noundef %18, i32 noundef 33554432) #10
  %23 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %16, i32 noundef %22) #10
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %21
  %26 = tail call i32 @shiftx(i32 noundef -177668094, i32 noundef %18, i32 noundef 33554432) #10
  %27 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %16, i32 noundef %26) #10
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %42, label %37

29:                                               ; preds = %15
  %30 = tail call i32 @shiftx(i32 noundef -200146936, i32 noundef %18, i32 noundef 33554432) #10
  %31 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %16, i32 noundef %30) #10
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %29
  %34 = tail call i32 @shiftx(i32 noundef -180486136, i32 noundef %18, i32 noundef 33554432) #10
  %35 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %16, i32 noundef %34) #10
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %33, %25
  %38 = tail call i32 @shiftx(i32 noundef -176095104, i32 noundef %18, i32 noundef 33554432) #10
  %39 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %16, i32 noundef %38) #10
  %40 = icmp ne i8 %39, 0
  %41 = zext i1 %40 to i32
  br label %42

42:                                               ; preds = %37, %33, %29, %25, %21, %15
  %43 = phi i32 [ 0, %15 ], [ 0, %25 ], [ 0, %21 ], [ 0, %33 ], [ 0, %29 ], [ %41, %37 ]
  %44 = load i32, ptr @stvdebug, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %116, label %46

46:                                               ; preds = %42
  %47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.stv0900_status, i32 noundef %43) #11
  %48 = load i32, ptr @stvdebug, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %116, label %50

50:                                               ; preds = %46
  %51 = tail call i32 @shiftx(i32 noundef 62852, i32 noundef %18, i32 noundef 512) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #10
  %52 = lshr i32 %51, 8
  %53 = trunc i32 %52 to i8
  store i8 %53, ptr %6, align 2
  %54 = getelementptr inbounds i8, ptr %6, i32 1
  %55 = trunc i32 %51 to i8
  store i8 %55, ptr %54, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #10
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #10
  %56 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %56, i8 0, i32 16, i1 false) #10, !annotation !8
  %57 = getelementptr inbounds %struct.stv0900_internal, ptr %16, i32 0, i32 18
  %58 = load i8, ptr %57, align 4
  %59 = zext i8 %58 to i16
  store i16 %59, ptr %8, align 4
  %60 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %60, align 2
  store i16 2, ptr %56, align 4
  %61 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %61, align 4
  %62 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  store i16 %59, ptr %62, align 4
  %63 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %63, align 2
  %64 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 1, ptr %64, align 4
  %65 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %65, align 4
  %66 = getelementptr inbounds %struct.stv0900_internal, ptr %16, i32 0, i32 17
  %67 = load ptr, ptr %66, align 4
  %68 = call i32 @i2c_transfer(ptr noundef %67, ptr noundef nonnull %8, i32 noundef 2) #10
  %69 = icmp ne i32 %68, 2
  %70 = load i32, ptr @stvdebug, align 4
  %71 = icmp ne i32 %70, 0
  %72 = select i1 %69, i1 %71, i1 false
  br i1 %72, label %73, label %76

73:                                               ; preds = %50
  %74 = and i32 %51, 65535
  %75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0900_read_reg, i32 noundef %68, i32 noundef %74) #11
  br label %76

76:                                               ; preds = %73, %50
  %77 = load i8, ptr %7, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #10
  %78 = call i32 @shiftx(i32 noundef 62851, i32 noundef %18, i32 noundef 512) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  %79 = lshr i32 %78, 8
  %80 = trunc i32 %79 to i8
  store i8 %80, ptr %3, align 2
  %81 = getelementptr inbounds i8, ptr %3, i32 1
  %82 = trunc i32 %78 to i8
  store i8 %82, ptr %81, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %83 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %83, i8 0, i32 16, i1 false) #10, !annotation !8
  %84 = load i8, ptr %57, align 4
  %85 = zext i8 %84 to i16
  store i16 %85, ptr %5, align 4
  %86 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %86, align 2
  store i16 2, ptr %83, align 4
  %87 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %87, align 4
  %88 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %85, ptr %88, align 4
  %89 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %89, align 2
  %90 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %90, align 4
  %91 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %91, align 4
  %92 = load ptr, ptr %66, align 4
  %93 = call i32 @i2c_transfer(ptr noundef %92, ptr noundef nonnull %5, i32 noundef 2) #10
  %94 = icmp ne i32 %93, 2
  %95 = load i32, ptr @stvdebug, align 4
  %96 = icmp ne i32 %95, 0
  %97 = select i1 %94, i1 %96, i1 false
  br i1 %97, label %98, label %101

98:                                               ; preds = %76
  %99 = and i32 %78, 65535
  %100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0900_read_reg, i32 noundef %93, i32 noundef %99) #11
  br label %101

101:                                              ; preds = %98, %76
  %102 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  %103 = load i32, ptr %16, align 4
  %104 = call fastcc i32 @stv0900_get_mclk_freq(ptr noundef %16, i32 noundef %103) #10
  %105 = load i32, ptr @stvdebug, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %116, label %107

107:                                              ; preds = %101
  %108 = udiv i32 %104, 1000000
  %109 = zext i8 %102 to i32
  %110 = shl nuw nsw i32 %109, 8
  %111 = zext i8 %77 to i32
  %112 = or i32 %110, %111
  %113 = mul nuw nsw i32 %108, %112
  %114 = lshr i32 %113, 14
  %115 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %114) #11
  br label %116

116:                                              ; preds = %107, %101, %46, %42
  %117 = icmp eq i32 %43, 1
  br i1 %117, label %118, label %130

118:                                              ; preds = %116
  %119 = load i32, ptr @stvdebug, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %118
  %122 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #11
  br label %123

123:                                              ; preds = %121, %118
  store i32 30, ptr %1, align 4
  %124 = getelementptr inbounds %struct.stv0900_state, ptr %10, i32 0, i32 2
  %125 = load ptr, ptr %124, align 4
  %126 = getelementptr inbounds %struct.stv0900_config, ptr %125, i32 0, i32 15
  %127 = load ptr, ptr %126, align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %142, label %129

129:                                              ; preds = %123
  call void %127(ptr noundef %0, i32 noundef 1) #10
  br label %142

130:                                              ; preds = %116
  store i32 0, ptr %1, align 4
  %131 = getelementptr inbounds %struct.stv0900_state, ptr %10, i32 0, i32 2
  %132 = load ptr, ptr %131, align 4
  %133 = getelementptr inbounds %struct.stv0900_config, ptr %132, i32 0, i32 15
  %134 = load ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %137, label %136

136:                                              ; preds = %130
  call void %134(ptr noundef %0, i32 noundef 0) #10
  br label %137

137:                                              ; preds = %136, %130
  %138 = load i32, ptr @stvdebug, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %137
  %141 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #11
  br label %142

142:                                              ; preds = %140, %137, %129, %123
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0900_read_ber(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.stv0900_state, ptr %4, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @shiftx(i32 noundef -199557024, i32 noundef %7, i32 noundef 33554432) #10
  %9 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %5, i32 noundef %8) #10
  switch i8 %9, label %64 [
    i8 2, label %37
    i8 3, label %10
  ]

10:                                               ; preds = %10, %2
  %11 = phi i32 [ %26, %10 ], [ 0, %2 ]
  %12 = phi i32 [ %27, %10 ], [ 0, %2 ]
  tail call void @msleep(i32 noundef 5) #10
  %13 = tail call i32 @shiftx(i32 noundef -174522241, i32 noundef %7, i32 noundef 33554432) #10
  %14 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %5, i32 noundef %13) #10
  %15 = tail call i32 @shiftx(i32 noundef -174456577, i32 noundef %7, i32 noundef 33554432) #10
  %16 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %5, i32 noundef %15) #10
  %17 = tail call i32 @shiftx(i32 noundef -174391041, i32 noundef %7, i32 noundef 33554432) #10
  %18 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %5, i32 noundef %17) #10
  %19 = zext i8 %18 to i32
  %20 = zext i8 %16 to i32
  %21 = zext i8 %14 to i32
  %22 = shl nuw nsw i32 %21, 16
  %23 = shl nuw nsw i32 %20, 8
  %24 = add i32 %22, %11
  %25 = add i32 %24, %23
  %26 = add i32 %25, %19
  %27 = add nuw nsw i32 %12, 1
  %28 = icmp eq i32 %27, 5
  br i1 %28, label %29, label %10

29:                                               ; preds = %10
  %30 = udiv i32 %26, 5
  %31 = tail call i32 @shiftx(i32 noundef -180486128, i32 noundef %7, i32 noundef 33554432) #10
  %32 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %5, i32 noundef %31) #10
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %64, label %34

34:                                               ; preds = %29
  %35 = mul i32 %30, 9766
  %36 = lshr i32 %35, 13
  br label %64

37:                                               ; preds = %37, %2
  %38 = phi i32 [ %53, %37 ], [ 0, %2 ]
  %39 = phi i32 [ %54, %37 ], [ 0, %2 ]
  tail call void @msleep(i32 noundef 5) #10
  %40 = tail call i32 @shiftx(i32 noundef -174522241, i32 noundef %7, i32 noundef 33554432) #10
  %41 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %5, i32 noundef %40) #10
  %42 = tail call i32 @shiftx(i32 noundef -174456577, i32 noundef %7, i32 noundef 33554432) #10
  %43 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %5, i32 noundef %42) #10
  %44 = tail call i32 @shiftx(i32 noundef -174391041, i32 noundef %7, i32 noundef 33554432) #10
  %45 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %5, i32 noundef %44) #10
  %46 = zext i8 %45 to i32
  %47 = zext i8 %43 to i32
  %48 = zext i8 %41 to i32
  %49 = shl nuw nsw i32 %48, 16
  %50 = shl nuw nsw i32 %47, 8
  %51 = add i32 %49, %38
  %52 = add i32 %51, %50
  %53 = add i32 %52, %46
  %54 = add nuw nsw i32 %39, 1
  %55 = icmp eq i32 %54, 5
  br i1 %55, label %56, label %37

56:                                               ; preds = %37
  %57 = udiv i32 %53, 5
  %58 = tail call i32 @shiftx(i32 noundef -177668094, i32 noundef %7, i32 noundef 33554432) #10
  %59 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %5, i32 noundef %58) #10
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = mul i32 %57, 9766
  %63 = lshr i32 %62, 13
  br label %64

64:                                               ; preds = %61, %56, %34, %29, %2
  %65 = phi i32 [ %36, %34 ], [ %30, %29 ], [ %63, %61 ], [ %57, %56 ], [ 10000000, %2 ]
  store i32 %65, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0900_read_signal_strength(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.stv0900_state, ptr %4, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = load i32, ptr @stvdebug, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0900_get_rf_level) #11
  br label %12

12:                                               ; preds = %10, %2
  %13 = tail call i32 @shiftx(i32 noundef -200408833, i32 noundef %7, i32 noundef 33554432) #10
  %14 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %5, i32 noundef %13) #10
  %15 = zext i8 %14 to i32
  %16 = shl nuw nsw i32 %15, 8
  %17 = tail call i32 @shiftx(i32 noundef -200343297, i32 noundef %7, i32 noundef 33554432) #10
  %18 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %5, i32 noundef %17) #10
  %19 = zext i8 %18 to i32
  %20 = or i32 %16, %19
  %21 = add nsw i32 %20, -1962
  %22 = icmp ult i32 %21, 49912
  br i1 %22, label %23, label %61

23:                                               ; preds = %41, %12
  %24 = phi i32 [ %43, %41 ], [ 13, %12 ]
  %25 = phi i32 [ %42, %41 ], [ 0, %12 ]
  %26 = add i32 %25, %24
  %27 = ashr i32 %26, 1
  %28 = getelementptr [500 x %struct.stv000_lookpoint], ptr getelementptr inbounds ({ i32, <{ [14 x %struct.stv000_lookpoint], [486 x %struct.stv000_lookpoint] }> }, ptr @stv0900_rf, i32 0, i32 1, i32 0, i32 0, i32 0), i32 0, i32 %25, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = icmp sgt i32 %29, %20
  %31 = getelementptr [500 x %struct.stv000_lookpoint], ptr getelementptr inbounds ({ i32, <{ [14 x %struct.stv000_lookpoint], [486 x %struct.stv000_lookpoint] }> }, ptr @stv0900_rf, i32 0, i32 1, i32 0, i32 0, i32 0), i32 0, i32 %27, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = icmp sgt i32 %20, %32
  %34 = select i1 %30, i1 true, i1 %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %23
  %36 = icmp sgt i32 %32, %20
  %37 = icmp sgt i32 %20, %29
  %38 = select i1 %36, i1 true, i1 %37
  %39 = select i1 %38, i32 %27, i32 %25
  %40 = select i1 %38, i32 %24, i32 %27
  br label %41

41:                                               ; preds = %35, %23
  %42 = phi i32 [ %39, %35 ], [ %25, %23 ]
  %43 = phi i32 [ %40, %35 ], [ %27, %23 ]
  %44 = sub i32 %43, %42
  %45 = icmp sgt i32 %44, 1
  br i1 %45, label %23, label %46

46:                                               ; preds = %41
  %47 = getelementptr [500 x %struct.stv000_lookpoint], ptr getelementptr inbounds ({ i32, <{ [14 x %struct.stv000_lookpoint], [486 x %struct.stv000_lookpoint] }> }, ptr @stv0900_rf, i32 0, i32 1, i32 0, i32 0, i32 0), i32 0, i32 %42
  %48 = getelementptr [500 x %struct.stv000_lookpoint], ptr getelementptr inbounds ({ i32, <{ [14 x %struct.stv000_lookpoint], [486 x %struct.stv000_lookpoint] }> }, ptr @stv0900_rf, i32 0, i32 1, i32 0, i32 0, i32 0), i32 0, i32 %42, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = sub i32 %20, %49
  %51 = getelementptr [500 x %struct.stv000_lookpoint], ptr getelementptr inbounds ({ i32, <{ [14 x %struct.stv000_lookpoint], [486 x %struct.stv000_lookpoint] }> }, ptr @stv0900_rf, i32 0, i32 1, i32 0, i32 0, i32 0), i32 0, i32 %43
  %52 = load i32, ptr %51, align 4
  %53 = load i32, ptr %47, align 4
  %54 = sub i32 %52, %53
  %55 = mul i32 %54, %50
  %56 = getelementptr [500 x %struct.stv000_lookpoint], ptr getelementptr inbounds ({ i32, <{ [14 x %struct.stv000_lookpoint], [486 x %struct.stv000_lookpoint] }> }, ptr @stv0900_rf, i32 0, i32 1, i32 0, i32 0, i32 0), i32 0, i32 %43, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = sub i32 %57, %49
  %59 = sdiv i32 %55, %58
  %60 = add i32 %59, %53
  br label %64

61:                                               ; preds = %12
  %62 = icmp ugt i32 %20, 51873
  %63 = select i1 %62, i32 5, i32 -100
  br label %64

64:                                               ; preds = %61, %46
  %65 = phi i32 [ %60, %46 ], [ %63, %61 ]
  %66 = load i32, ptr @stvdebug, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %64
  %69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.stv0900_get_rf_level, i32 noundef %65) #11
  br label %70

70:                                               ; preds = %68, %64
  %71 = mul i32 %65, 936
  %72 = add i32 %71, 93600
  %73 = tail call i32 @llvm.smax.i32(i32 %72, i32 0)
  %74 = tail call i32 @llvm.umin.i32(i32 %73, i32 65535)
  %75 = trunc i32 %74 to i16
  store i16 %75, ptr %1, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0900_read_snr(ptr noundef %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.stv0900_state, ptr %4, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = load i32, ptr @stvdebug, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0900_carr_get_quality) #11
  br label %12

12:                                               ; preds = %10, %2
  %13 = tail call i32 @stv0900_get_standard(ptr noundef %0, i32 noundef %7) #10
  %14 = icmp eq i32 %13, 1
  %15 = select i1 %14, i32 -192675585, i32 -192937729
  %16 = select i1 %14, i32 -192610049, i32 -192872193
  %17 = tail call i32 @shiftx(i32 noundef %15, i32 noundef %7, i32 noundef 33554432) #10
  %18 = tail call i32 @shiftx(i32 noundef %16, i32 noundef %7, i32 noundef 33554432) #10
  %19 = tail call i32 @shiftx(i32 noundef -200146936, i32 noundef %7, i32 noundef 33554432) #10
  %20 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %5, i32 noundef %19) #10
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %80, label %22

22:                                               ; preds = %12
  tail call void @msleep(i32 noundef 5) #10
  br label %23

23:                                               ; preds = %23, %22
  %24 = phi i32 [ 0, %22 ], [ %33, %23 ]
  %25 = phi i32 [ 0, %22 ], [ %32, %23 ]
  %26 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %5, i32 noundef %17) #10
  %27 = zext i8 %26 to i32
  %28 = shl nuw nsw i32 %27, 8
  %29 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %5, i32 noundef %18) #10
  %30 = zext i8 %29 to i32
  %31 = add i32 %25, %30
  %32 = add i32 %31, %28
  tail call void @msleep(i32 noundef 1) #10
  %33 = add nuw nsw i32 %24, 1
  %34 = icmp eq i32 %33, 16
  br i1 %34, label %35, label %23

35:                                               ; preds = %23
  %36 = sdiv i32 %32, 16
  %37 = add i32 %32, -7696
  %38 = icmp ult i32 %37, 205888
  br i1 %38, label %39, label %77

39:                                               ; preds = %57, %35
  %40 = phi i32 [ %59, %57 ], [ 54, %35 ]
  %41 = phi i32 [ %58, %57 ], [ 0, %35 ]
  %42 = add i32 %41, %40
  %43 = ashr i32 %42, 1
  %44 = getelementptr [500 x %struct.stv000_lookpoint], ptr getelementptr inbounds ({ i32, <{ [55 x %struct.stv000_lookpoint], [445 x %struct.stv000_lookpoint] }> }, ptr @stv0900_s2_cn, i32 0, i32 1, i32 0, i32 0, i32 0), i32 0, i32 %41, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = icmp sgt i32 %45, %36
  %47 = getelementptr [500 x %struct.stv000_lookpoint], ptr getelementptr inbounds ({ i32, <{ [55 x %struct.stv000_lookpoint], [445 x %struct.stv000_lookpoint] }> }, ptr @stv0900_s2_cn, i32 0, i32 1, i32 0, i32 0, i32 0), i32 0, i32 %43, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = icmp sgt i32 %36, %48
  %50 = select i1 %46, i1 true, i1 %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %39
  %52 = icmp sgt i32 %48, %36
  %53 = icmp sgt i32 %36, %45
  %54 = select i1 %52, i1 true, i1 %53
  %55 = select i1 %54, i32 %43, i32 %41
  %56 = select i1 %54, i32 %40, i32 %43
  br label %57

57:                                               ; preds = %51, %39
  %58 = phi i32 [ %55, %51 ], [ %41, %39 ]
  %59 = phi i32 [ %56, %51 ], [ %43, %39 ]
  %60 = sub i32 %59, %58
  %61 = icmp sgt i32 %60, 1
  br i1 %61, label %39, label %62

62:                                               ; preds = %57
  %63 = getelementptr [500 x %struct.stv000_lookpoint], ptr getelementptr inbounds ({ i32, <{ [55 x %struct.stv000_lookpoint], [445 x %struct.stv000_lookpoint] }> }, ptr @stv0900_s2_cn, i32 0, i32 1, i32 0, i32 0, i32 0), i32 0, i32 %58
  %64 = getelementptr [500 x %struct.stv000_lookpoint], ptr getelementptr inbounds ({ i32, <{ [55 x %struct.stv000_lookpoint], [445 x %struct.stv000_lookpoint] }> }, ptr @stv0900_s2_cn, i32 0, i32 1, i32 0, i32 0, i32 0), i32 0, i32 %58, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = sub i32 %36, %65
  %67 = getelementptr [500 x %struct.stv000_lookpoint], ptr getelementptr inbounds ({ i32, <{ [55 x %struct.stv000_lookpoint], [445 x %struct.stv000_lookpoint] }> }, ptr @stv0900_s2_cn, i32 0, i32 1, i32 0, i32 0, i32 0), i32 0, i32 %59
  %68 = load i32, ptr %67, align 4
  %69 = load i32, ptr %63, align 4
  %70 = sub i32 %68, %69
  %71 = mul i32 %70, %66
  %72 = getelementptr [500 x %struct.stv000_lookpoint], ptr getelementptr inbounds ({ i32, <{ [55 x %struct.stv000_lookpoint], [445 x %struct.stv000_lookpoint] }> }, ptr @stv0900_s2_cn, i32 0, i32 1, i32 0, i32 0, i32 0), i32 0, i32 %59, i32 1
  %73 = load i32, ptr %72, align 4
  %74 = sub i32 %73, %65
  %75 = sdiv i32 %71, %74
  %76 = add i32 %75, %69
  br label %80

77:                                               ; preds = %35
  %78 = icmp slt i32 %32, 213568
  %79 = select i1 %78, i32 1000, i32 -100
  br label %80

80:                                               ; preds = %77, %62, %12
  %81 = phi i32 [ %76, %62 ], [ -100, %12 ], [ %79, %77 ]
  %82 = mul i32 %81, 384
  %83 = add i32 %82, 11520
  %84 = tail call i32 @llvm.smax.i32(i32 %83, i32 0)
  %85 = tail call i32 @llvm.umin.i32(i32 %84, i32 65535)
  %86 = trunc i32 %85 to i16
  store i16 %86, ptr %1, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0900_read_ucblocks(ptr noundef %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca i8, align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [2 x i8], align 2
  %7 = alloca i8, align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = alloca [2 x i8], align 2
  %10 = alloca i8, align 1
  %11 = alloca [2 x %struct.i2c_msg], align 4
  %12 = alloca [2 x i8], align 2
  %13 = alloca i8, align 1
  %14 = alloca [2 x %struct.i2c_msg], align 4
  %15 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.stv0900_state, ptr %16, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  store i32 0, ptr %1, align 4
  %20 = tail call i32 @stv0900_get_standard(ptr noundef %0, i32 noundef %19) #10
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %134

22:                                               ; preds = %2
  %23 = tail call i32 @shiftx(i32 noundef 62827, i32 noundef %19, i32 noundef 512) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #10
  %24 = lshr i32 %23, 8
  %25 = trunc i32 %24 to i8
  store i8 %25, ptr %12, align 2
  %26 = getelementptr inbounds i8, ptr %12, i32 1
  %27 = trunc i32 %23 to i8
  store i8 %27, ptr %26, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #10
  store i8 0, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #10
  %28 = getelementptr inbounds i8, ptr %14, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %28, i8 0, i32 16, i1 false) #10, !annotation !8
  %29 = getelementptr inbounds %struct.stv0900_internal, ptr %17, i32 0, i32 18
  %30 = load i8, ptr %29, align 4
  %31 = zext i8 %30 to i16
  store i16 %31, ptr %14, align 4
  %32 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %32, align 2
  store i16 2, ptr %28, align 4
  %33 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %12, ptr %33, align 4
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1
  store i16 %31, ptr %34, align 4
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 1
  store i16 1, ptr %35, align 2
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 2
  store i16 1, ptr %36, align 4
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 3
  store ptr %13, ptr %37, align 4
  %38 = getelementptr inbounds %struct.stv0900_internal, ptr %17, i32 0, i32 17
  %39 = load ptr, ptr %38, align 4
  %40 = call i32 @i2c_transfer(ptr noundef %39, ptr noundef nonnull %14, i32 noundef 2) #10
  %41 = icmp ne i32 %40, 2
  %42 = load i32, ptr @stvdebug, align 4
  %43 = icmp ne i32 %42, 0
  %44 = select i1 %41, i1 %43, i1 false
  br i1 %44, label %45, label %48

45:                                               ; preds = %22
  %46 = and i32 %23, 65535
  %47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0900_read_reg, i32 noundef %40, i32 noundef %46) #11
  br label %48

48:                                               ; preds = %45, %22
  %49 = load i8, ptr %13, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #10
  %50 = call i32 @shiftx(i32 noundef 62828, i32 noundef %19, i32 noundef 512) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #10
  %51 = lshr i32 %50, 8
  %52 = trunc i32 %51 to i8
  store i8 %52, ptr %9, align 2
  %53 = getelementptr inbounds i8, ptr %9, i32 1
  %54 = trunc i32 %50 to i8
  store i8 %54, ptr %53, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #10
  store i8 0, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #10
  %55 = getelementptr inbounds i8, ptr %11, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %55, i8 0, i32 16, i1 false) #10, !annotation !8
  %56 = load i8, ptr %29, align 4
  %57 = zext i8 %56 to i16
  store i16 %57, ptr %11, align 4
  %58 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %58, align 2
  store i16 2, ptr %55, align 4
  %59 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %9, ptr %59, align 4
  %60 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1
  store i16 %57, ptr %60, align 4
  %61 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 1
  store i16 1, ptr %61, align 2
  %62 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 2
  store i16 1, ptr %62, align 4
  %63 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 3
  store ptr %10, ptr %63, align 4
  %64 = load ptr, ptr %38, align 4
  %65 = call i32 @i2c_transfer(ptr noundef %64, ptr noundef nonnull %11, i32 noundef 2) #10
  %66 = icmp ne i32 %65, 2
  %67 = load i32, ptr @stvdebug, align 4
  %68 = icmp ne i32 %67, 0
  %69 = select i1 %66, i1 %68, i1 false
  br i1 %69, label %70, label %73

70:                                               ; preds = %48
  %71 = and i32 %50, 65535
  %72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0900_read_reg, i32 noundef %65, i32 noundef %71) #11
  br label %73

73:                                               ; preds = %70, %48
  %74 = load i8, ptr %10, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #10
  %75 = zext i8 %49 to i32
  %76 = shl nuw nsw i32 %75, 8
  %77 = zext i8 %74 to i32
  %78 = or i32 %76, %77
  %79 = call i32 @shiftx(i32 noundef 62829, i32 noundef %19, i32 noundef 512) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #10
  %80 = lshr i32 %79, 8
  %81 = trunc i32 %80 to i8
  store i8 %81, ptr %6, align 2
  %82 = getelementptr inbounds i8, ptr %6, i32 1
  %83 = trunc i32 %79 to i8
  store i8 %83, ptr %82, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #10
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #10
  %84 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %84, i8 0, i32 16, i1 false) #10, !annotation !8
  %85 = load i8, ptr %29, align 4
  %86 = zext i8 %85 to i16
  store i16 %86, ptr %8, align 4
  %87 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %87, align 2
  store i16 2, ptr %84, align 4
  %88 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %88, align 4
  %89 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  store i16 %86, ptr %89, align 4
  %90 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %90, align 2
  %91 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 1, ptr %91, align 4
  %92 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %92, align 4
  %93 = load ptr, ptr %38, align 4
  %94 = call i32 @i2c_transfer(ptr noundef %93, ptr noundef nonnull %8, i32 noundef 2) #10
  %95 = icmp ne i32 %94, 2
  %96 = load i32, ptr @stvdebug, align 4
  %97 = icmp ne i32 %96, 0
  %98 = select i1 %95, i1 %97, i1 false
  br i1 %98, label %99, label %102

99:                                               ; preds = %73
  %100 = and i32 %79, 65535
  %101 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0900_read_reg, i32 noundef %94, i32 noundef %100) #11
  br label %102

102:                                              ; preds = %99, %73
  %103 = load i8, ptr %7, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #10
  %104 = call i32 @shiftx(i32 noundef 62830, i32 noundef %19, i32 noundef 512) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  %105 = lshr i32 %104, 8
  %106 = trunc i32 %105 to i8
  store i8 %106, ptr %3, align 2
  %107 = getelementptr inbounds i8, ptr %3, i32 1
  %108 = trunc i32 %104 to i8
  store i8 %108, ptr %107, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %109 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %109, i8 0, i32 16, i1 false) #10, !annotation !8
  %110 = load i8, ptr %29, align 4
  %111 = zext i8 %110 to i16
  store i16 %111, ptr %5, align 4
  %112 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %112, align 2
  store i16 2, ptr %109, align 4
  %113 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %113, align 4
  %114 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %111, ptr %114, align 4
  %115 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %115, align 2
  %116 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %116, align 4
  %117 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %117, align 4
  %118 = load ptr, ptr %38, align 4
  %119 = call i32 @i2c_transfer(ptr noundef %118, ptr noundef nonnull %5, i32 noundef 2) #10
  %120 = icmp ne i32 %119, 2
  %121 = load i32, ptr @stvdebug, align 4
  %122 = icmp ne i32 %121, 0
  %123 = select i1 %120, i1 %122, i1 false
  br i1 %123, label %124, label %127

124:                                              ; preds = %102
  %125 = and i32 %104, 65535
  %126 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0900_read_reg, i32 noundef %119, i32 noundef %125) #11
  br label %127

127:                                              ; preds = %124, %102
  %128 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  %129 = zext i8 %103 to i32
  %130 = shl nuw nsw i32 %129, 8
  %131 = zext i8 %128 to i32
  %132 = or i32 %130, %131
  %133 = add nuw nsw i32 %132, %78
  store i32 %133, ptr %1, align 4
  br label %134

134:                                              ; preds = %127, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0900_send_master_cmd(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, ptr %1, i32 0, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = getelementptr inbounds %struct.stv0900_state, ptr %4, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  tail call fastcc void @stv0900_diseqc_send(ptr noundef %5, ptr noundef %1, i32 noundef %8, i32 noundef %10)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0900_recv_slave_reply(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #1 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca i8, align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.stv0900_state, ptr %7, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.dvb_diseqc_slave_reply, ptr %1, i32 0, i32 1
  store i8 0, ptr %11, align 4
  %12 = tail call i32 @shiftx(i32 noundef -240910208, i32 noundef %10, i32 noundef 1048576) #10
  %13 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %8, i32 noundef %12)
  %14 = icmp eq i8 %13, 1
  br i1 %14, label %23, label %15

15:                                               ; preds = %15, %2
  %16 = phi i32 [ %17, %15 ], [ 0, %2 ]
  tail call void @msleep(i32 noundef 10) #10
  %17 = add nuw nsw i32 %16, 1
  %18 = tail call i32 @shiftx(i32 noundef -240910208, i32 noundef %10, i32 noundef 1048576) #10
  %19 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %8, i32 noundef %18)
  %20 = icmp ne i8 %19, 1
  %21 = icmp ult i32 %16, 9
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %15, label %23

23:                                               ; preds = %15, %2
  %24 = tail call i32 @shiftx(i32 noundef -240910208, i32 noundef %10, i32 noundef 1048576) #10
  %25 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %8, i32 noundef %24)
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %66, label %27

27:                                               ; preds = %23
  %28 = tail call i32 @shiftx(i32 noundef -240844785, i32 noundef %10, i32 noundef 1048576) #10
  %29 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %8, i32 noundef %28)
  store i8 %29, ptr %11, align 4
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %66, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds i8, ptr %3, i32 1
  %33 = getelementptr inbounds i8, ptr %5, i32 4
  %34 = getelementptr inbounds %struct.stv0900_internal, ptr %8, i32 0, i32 18
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  %41 = getelementptr inbounds %struct.stv0900_internal, ptr %8, i32 0, i32 17
  br label %42

42:                                               ; preds = %59, %31
  %43 = phi i32 [ 0, %31 ], [ %62, %59 ]
  %44 = call i32 @shiftx(i32 noundef 61862, i32 noundef %10, i32 noundef 16) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  %45 = lshr i32 %44, 8
  %46 = trunc i32 %45 to i8
  store i8 %46, ptr %3, align 2
  %47 = trunc i32 %44 to i8
  store i8 %47, ptr %32, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %33, i8 0, i32 16, i1 false) #10, !annotation !8
  %48 = load i8, ptr %34, align 4
  %49 = zext i8 %48 to i16
  store i16 %49, ptr %5, align 4
  store i16 0, ptr %35, align 2
  store i16 2, ptr %33, align 4
  store ptr %3, ptr %36, align 4
  store i16 %49, ptr %37, align 4
  store i16 1, ptr %38, align 2
  store i16 1, ptr %39, align 4
  store ptr %4, ptr %40, align 4
  %50 = load ptr, ptr %41, align 4
  %51 = call i32 @i2c_transfer(ptr noundef %50, ptr noundef nonnull %5, i32 noundef 2) #10
  %52 = icmp ne i32 %51, 2
  %53 = load i32, ptr @stvdebug, align 4
  %54 = icmp ne i32 %53, 0
  %55 = select i1 %52, i1 %54, i1 false
  br i1 %55, label %56, label %59

56:                                               ; preds = %42
  %57 = and i32 %44, 65535
  %58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0900_read_reg, i32 noundef %51, i32 noundef %57) #11
  br label %59

59:                                               ; preds = %56, %42
  %60 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  %61 = getelementptr [4 x i8], ptr %1, i32 0, i32 %43
  store i8 %60, ptr %61, align 1
  %62 = add nuw nsw i32 %43, 1
  %63 = load i8, ptr %11, align 4
  %64 = zext i8 %63 to i32
  %65 = icmp ult i32 %62, %64
  br i1 %65, label %42, label %66

66:                                               ; preds = %59, %27, %23
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0900_send_burst(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.stv0900_state, ptr %5, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  switch i32 %1, label %15 [
    i32 0, label %10
    i32 1, label %9
  ]

9:                                                ; preds = %2
  br label %10

10:                                               ; preds = %9, %2
  %11 = phi i8 [ 2, %9 ], [ 3, %2 ]
  %12 = phi i8 [ -1, %9 ], [ 0, %2 ]
  %13 = tail call i32 @shiftx(i32 noundef -241172473, i32 noundef %8, i32 noundef 1048576) #10
  tail call void @stv0900_write_bits(ptr noundef %6, i32 noundef %13, i8 noundef zeroext %11)
  store i8 %12, ptr %3, align 1
  %14 = load i32, ptr %7, align 4
  call fastcc void @stv0900_diseqc_send(ptr noundef %6, ptr noundef nonnull %3, i32 noundef 1, i32 noundef %14)
  br label %15

15:                                               ; preds = %10, %2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0900_set_tone(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.stv0900_state, ptr %4, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = load i32, ptr @stvdebug, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = icmp eq i32 %1, 0
  %12 = select i1 %11, ptr @.str.20, ptr @.str.21
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.stv0900_set_tone, ptr noundef nonnull %12) #11
  br label %14

14:                                               ; preds = %10, %2
  switch i32 %1, label %26 [
    i32 0, label %15
    i32 1, label %17
  ]

15:                                               ; preds = %14
  %16 = tail call i32 @shiftx(i32 noundef -241172473, i32 noundef %7, i32 noundef 1048576) #10
  tail call void @stv0900_write_bits(ptr noundef %5, i32 noundef %16, i8 noundef zeroext 0)
  br label %23

17:                                               ; preds = %14
  %18 = tail call i32 @shiftx(i32 noundef -241172473, i32 noundef %7, i32 noundef 1048576) #10
  %19 = getelementptr inbounds %struct.stv0900_state, ptr %4, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.stv0900_config, ptr %20, i32 0, i32 4
  %22 = load i8, ptr %21, align 1
  tail call void @stv0900_write_bits(ptr noundef %5, i32 noundef %18, i8 noundef zeroext %22)
  br label %23

23:                                               ; preds = %17, %15
  %24 = tail call i32 @shiftx(i32 noundef -241172416, i32 noundef %7, i32 noundef 1048576) #10
  tail call void @stv0900_write_bits(ptr noundef %5, i32 noundef %24, i8 noundef zeroext 1)
  %25 = tail call i32 @shiftx(i32 noundef -241172416, i32 noundef %7, i32 noundef 1048576) #10
  tail call void @stv0900_write_bits(ptr noundef %5, i32 noundef %25, i8 noundef zeroext 0)
  br label %26

26:                                               ; preds = %23, %14
  %27 = phi i32 [ -22, %14 ], [ 0, %23 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0900_i2c_gate_ctrl(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.stv0900_state, ptr %4, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @shiftx(i32 noundef -248905600, i32 noundef %7, i32 noundef -65536) #10
  %9 = trunc i32 %1 to i8
  tail call void @stv0900_write_bits(ptr noundef %5, i32 noundef %8, i8 noundef zeroext %9)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0900_search(ptr noundef %0) #1 {
  %2 = alloca [3 x i8], align 1
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [3 x i8], align 1
  %5 = alloca %struct.i2c_msg, align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.stv0900_state, ptr %7, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %12 = getelementptr %struct.stv0900_internal, ptr %8, i32 0, i32 15, i32 %10
  %13 = load i32, ptr @stvdebug, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.stv0900_search) #11
  br label %17

17:                                               ; preds = %15, %1
  %18 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 10
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, -100000
  %21 = icmp ult i32 %20, 69900001
  br i1 %21, label %22, label %128

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.stv0900_state, ptr %7, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.stv0900_config, ptr %24, i32 0, i32 14
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %22
  %29 = tail call i32 %26(ptr noundef %0, i32 noundef 0) #10
  br label %30

30:                                               ; preds = %28, %22
  %31 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 24
  %32 = load i32, ptr %31, align 4
  %33 = load i32, ptr @stvdebug, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0900_set_mis) #11
  %37 = load i32, ptr @stvdebug, align 4
  %38 = icmp eq i32 %37, 0
  %39 = icmp ugt i32 %32, 255
  br i1 %39, label %42, label %47

40:                                               ; preds = %30
  %41 = icmp ugt i32 %32, 255
  br i1 %41, label %45, label %50

42:                                               ; preds = %35
  br i1 %38, label %45, label %43

43:                                               ; preds = %42
  %44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #11
  br label %45

45:                                               ; preds = %43, %42, %40
  %46 = tail call i32 @shiftx(i32 noundef -179306464, i32 noundef %10, i32 noundef 33554432) #10
  tail call void @stv0900_write_bits(ptr noundef %8, i32 noundef %46, i8 noundef zeroext 0) #10
  br label %95

47:                                               ; preds = %35
  br i1 %38, label %50, label %48

48:                                               ; preds = %47
  %49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %32) #11
  br label %50

50:                                               ; preds = %48, %47, %40
  %51 = tail call i32 @shiftx(i32 noundef -179306464, i32 noundef %10, i32 noundef 33554432) #10
  tail call void @stv0900_write_bits(ptr noundef %8, i32 noundef %51, i8 noundef zeroext 1) #10
  %52 = tail call i32 @shiftx(i32 noundef 62814, i32 noundef %10, i32 noundef 512) #10
  %53 = trunc i32 %32 to i8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %54 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 3, ptr %54, align 4, !annotation !8
  %55 = getelementptr inbounds %struct.stv0900_internal, ptr %8, i32 0, i32 18
  %56 = load i8, ptr %55, align 4
  %57 = zext i8 %56 to i16
  store i16 %57, ptr %5, align 4
  %58 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %58, align 2
  %59 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %59, align 4
  %60 = lshr i32 %52, 8
  %61 = trunc i32 %60 to i8
  store i8 %61, ptr %4, align 1
  %62 = trunc i32 %52 to i8
  %63 = getelementptr inbounds [3 x i8], ptr %4, i32 0, i32 1
  store i8 %62, ptr %63, align 1
  %64 = getelementptr inbounds [3 x i8], ptr %4, i32 0, i32 2
  store i8 %53, ptr %64, align 1
  %65 = getelementptr inbounds %struct.stv0900_internal, ptr %8, i32 0, i32 17
  %66 = load ptr, ptr %65, align 4
  %67 = call i32 @i2c_transfer(ptr noundef %66, ptr noundef nonnull %5, i32 noundef 1) #10
  %68 = icmp ne i32 %67, 1
  %69 = load i32, ptr @stvdebug, align 4
  %70 = icmp ne i32 %69, 0
  %71 = select i1 %68, i1 %70, i1 false
  br i1 %71, label %72, label %74

72:                                               ; preds = %50
  %73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %67) #11
  br label %74

74:                                               ; preds = %72, %50
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #10
  %75 = call i32 @shiftx(i32 noundef 62815, i32 noundef %10, i32 noundef 512) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %76 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 3, ptr %76, align 4, !annotation !8
  %77 = load i8, ptr %55, align 4
  %78 = zext i8 %77 to i16
  store i16 %78, ptr %3, align 4
  %79 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %79, align 2
  %80 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %80, align 4
  %81 = lshr i32 %75, 8
  %82 = trunc i32 %81 to i8
  store i8 %82, ptr %2, align 1
  %83 = trunc i32 %75 to i8
  %84 = getelementptr inbounds [3 x i8], ptr %2, i32 0, i32 1
  store i8 %83, ptr %84, align 1
  %85 = getelementptr inbounds [3 x i8], ptr %2, i32 0, i32 2
  store i8 -1, ptr %85, align 1
  %86 = load ptr, ptr %65, align 4
  %87 = call i32 @i2c_transfer(ptr noundef %86, ptr noundef nonnull %3, i32 noundef 1) #10
  %88 = icmp ne i32 %87, 1
  %89 = load i32, ptr @stvdebug, align 4
  %90 = icmp ne i32 %89, 0
  %91 = select i1 %88, i1 %90, i1 false
  br i1 %91, label %92, label %94

92:                                               ; preds = %74
  %93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %87) #11
  br label %94

94:                                               ; preds = %92, %74
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #10
  br label %95

95:                                               ; preds = %94, %45
  %96 = load i32, ptr %11, align 4
  %97 = load i32, ptr %18, align 4
  %98 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %99 = load i32, ptr %98, align 4
  %100 = icmp eq i32 %99, 5
  %101 = zext i1 %100 to i32
  %102 = getelementptr %struct.stv0900_internal, ptr %8, i32 0, i32 10, i32 %10
  store i32 %101, ptr %102, align 4
  %103 = getelementptr %struct.stv0900_internal, ptr %8, i32 0, i32 6, i32 %10
  store i32 %97, ptr %103, align 4
  %104 = getelementptr %struct.stv0900_internal, ptr %8, i32 0, i32 7, i32 %10
  store i32 10000000, ptr %104, align 4
  %105 = getelementptr %struct.stv0900_internal, ptr %8, i32 0, i32 4, i32 %10
  store i32 %96, ptr %105, align 4
  %106 = getelementptr %struct.stv0900_internal, ptr %8, i32 0, i32 9, i32 %10
  store i32 0, ptr %106, align 4
  %107 = getelementptr %struct.stv0900_internal, ptr %8, i32 0, i32 11, i32 %10
  store i32 0, ptr %107, align 4
  %108 = getelementptr %struct.stv0900_internal, ptr %8, i32 0, i32 14, i32 %10
  store i32 8, ptr %108, align 4
  %109 = call i32 @stv0900_algo(ptr noundef %0) #10
  %110 = icmp eq i32 %109, 12
  br i1 %110, label %111, label %121

111:                                              ; preds = %95
  %112 = getelementptr inbounds %struct.stv0900_internal, ptr %8, i32 0, i32 22
  %113 = load i32, ptr %112, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %111
  %116 = load i32, ptr %12, align 4
  %117 = icmp eq i32 %116, 1
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i32, ptr @stvdebug, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %128, label %124

121:                                              ; preds = %115, %111, %95
  %122 = load i32, ptr @stvdebug, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %121, %118
  %125 = phi ptr [ @.str.22, %118 ], [ @.str.23, %121 ]
  %126 = phi i32 [ 1, %118 ], [ 4, %121 ]
  %127 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %125) #11
  br label %128

128:                                              ; preds = %124, %121, %118, %17
  %129 = phi i32 [ 1, %118 ], [ 4, %121 ], [ 4, %17 ], [ %126, %124 ]
  ret i32 %129
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stv0900_get_mclk_freq(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #1 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca i8, align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [2 x i8], align 2
  %7 = alloca i8, align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #10
  store i8 -15, ptr %6, align 2
  %9 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 -77, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #10
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #10
  %10 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %10, i8 0, i32 16, i1 false) #10, !annotation !8
  %11 = getelementptr inbounds %struct.stv0900_internal, ptr %0, i32 0, i32 18
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i16
  store i16 %13, ptr %8, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %14, align 2
  store i16 2, ptr %10, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %15, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  store i16 %13, ptr %16, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %17, align 2
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %19, align 4
  %20 = getelementptr inbounds %struct.stv0900_internal, ptr %0, i32 0, i32 17
  %21 = load ptr, ptr %20, align 4
  %22 = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %8, i32 noundef 2) #10
  %23 = icmp ne i32 %22, 2
  %24 = load i32, ptr @stvdebug, align 4
  %25 = icmp ne i32 %24, 0
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0900_read_reg, i32 noundef %22, i32 noundef 61875) #11
  br label %29

29:                                               ; preds = %27, %2
  %30 = load i8, ptr %7, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #10
  %31 = zext i8 %30 to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i8 -15, ptr %3, align 2
  %32 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 -74, ptr %32, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %33 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %33, i8 0, i32 16, i1 false) #10, !annotation !8
  %34 = load i8, ptr %11, align 4
  %35 = zext i8 %34 to i16
  store i16 %35, ptr %5, align 4
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %36, align 2
  store i16 2, ptr %33, align 4
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %37, align 4
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %35, ptr %38, align 4
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %39, align 2
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %40, align 4
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %41, align 4
  %42 = load ptr, ptr %20, align 4
  %43 = call i32 @i2c_transfer(ptr noundef %42, ptr noundef nonnull %5, i32 noundef 2) #10
  %44 = icmp ne i32 %43, 2
  %45 = load i32, ptr @stvdebug, align 4
  %46 = icmp ne i32 %45, 0
  %47 = select i1 %44, i1 %46, i1 false
  br i1 %47, label %48, label %51

48:                                               ; preds = %29
  %49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0900_read_reg, i32 noundef %43, i32 noundef 61878) #11
  %50 = load i32, ptr @stvdebug, align 4
  br label %51

51:                                               ; preds = %48, %29
  %52 = phi i32 [ %45, %29 ], [ %50, %48 ]
  %53 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  %54 = and i8 %53, 32
  %55 = icmp eq i8 %54, 0
  %56 = select i1 %55, i32 6, i32 4
  %57 = add nuw nsw i32 %31, 1
  %58 = mul i32 %57, %1
  %59 = udiv i32 %58, %56
  %60 = icmp eq i32 %52, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %51
  %62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.stv0900_get_mclk_freq, i32 noundef %59) #11
  br label %63

63:                                               ; preds = %61, %51
  ret i32 %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stv0900_get_standard(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stv0900_diseqc_send(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 {
  %5 = alloca [3 x i8], align 1
  %6 = alloca %struct.i2c_msg, align 4
  %7 = tail call i32 @shiftx(i32 noundef -241172472, i32 noundef %3, i32 noundef 1048576) #10
  tail call void @stv0900_write_bits(ptr noundef %0, i32 noundef %7, i8 noundef zeroext 1)
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %43, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds i8, ptr %6, i32 4
  %11 = getelementptr inbounds %struct.stv0900_internal, ptr %0, i32 0, i32 18
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  %14 = getelementptr inbounds [3 x i8], ptr %5, i32 0, i32 1
  %15 = getelementptr inbounds [3 x i8], ptr %5, i32 0, i32 2
  %16 = getelementptr inbounds %struct.stv0900_internal, ptr %0, i32 0, i32 17
  br label %17

17:                                               ; preds = %40, %9
  %18 = phi i32 [ 0, %9 ], [ %41, %40 ]
  br label %19

19:                                               ; preds = %19, %17
  %20 = call i32 @shiftx(i32 noundef -240648128, i32 noundef %3, i32 noundef 1048576) #10
  %21 = call zeroext i8 @stv0900_get_bits(ptr noundef %0, i32 noundef %20)
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %19

23:                                               ; preds = %19
  %24 = call i32 @shiftx(i32 noundef 61863, i32 noundef %3, i32 noundef 16) #10
  %25 = getelementptr i8, ptr %1, i32 %18
  %26 = load i8, ptr %25, align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  store i32 3, ptr %10, align 4, !annotation !8
  %27 = load i8, ptr %11, align 4
  %28 = zext i8 %27 to i16
  store i16 %28, ptr %6, align 4
  store i16 0, ptr %12, align 2
  store ptr %5, ptr %13, align 4
  %29 = lshr i32 %24, 8
  %30 = trunc i32 %29 to i8
  store i8 %30, ptr %5, align 1
  %31 = trunc i32 %24 to i8
  store i8 %31, ptr %14, align 1
  store i8 %26, ptr %15, align 1
  %32 = load ptr, ptr %16, align 4
  %33 = call i32 @i2c_transfer(ptr noundef %32, ptr noundef nonnull %6, i32 noundef 1) #10
  %34 = icmp ne i32 %33, 1
  %35 = load i32, ptr @stvdebug, align 4
  %36 = icmp ne i32 %35, 0
  %37 = select i1 %34, i1 %36, i1 false
  br i1 %37, label %38, label %40

38:                                               ; preds = %23
  %39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_write_reg, i32 noundef %33) #11
  br label %40

40:                                               ; preds = %38, %23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #10
  %41 = add nuw i32 %18, 1
  %42 = icmp eq i32 %41, %2
  br i1 %42, label %43, label %17

43:                                               ; preds = %40, %4
  %44 = call i32 @shiftx(i32 noundef -241172472, i32 noundef %3, i32 noundef 1048576) #10
  call void @stv0900_write_bits(ptr noundef %0, i32 noundef %44, i8 noundef zeroext 0)
  %45 = call i32 @shiftx(i32 noundef -240648160, i32 noundef %3, i32 noundef 1048576) #10
  %46 = call zeroext i8 @stv0900_get_bits(ptr noundef %0, i32 noundef %45)
  %47 = icmp eq i8 %46, 1
  br i1 %47, label %56, label %48

48:                                               ; preds = %48, %43
  %49 = phi i32 [ %50, %48 ], [ 0, %43 ]
  call void @msleep(i32 noundef 10) #10
  %50 = add nuw nsw i32 %49, 1
  %51 = call i32 @shiftx(i32 noundef -240648160, i32 noundef %3, i32 noundef 1048576) #10
  %52 = call zeroext i8 @stv0900_get_bits(ptr noundef %0, i32 noundef %51)
  %53 = icmp ne i8 %52, 1
  %54 = icmp ult i32 %49, 9
  %55 = select i1 %53, i1 %54, i1 false
  br i1 %55, label %48, label %56

56:                                               ; preds = %48, %43
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stv0900_algo(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

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
