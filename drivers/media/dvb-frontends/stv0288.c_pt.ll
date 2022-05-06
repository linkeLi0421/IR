; ModuleID = '/llk/IR/drivers/media/dvb-frontends/stv0288.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/stv0288.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stv0288_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22stv0288_attach\22\09\09\09\09\09"
module asm "__kstrtabns_stv0288_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.66 }
%union.anon.66 = type { ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.stv0288_state = type { ptr, ptr, %struct.dvb_frontend, i8, i32, i32, i32, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.stv0288_config = type { i8, ptr, i32, ptr }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }

@debug = internal global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"\017stv0288: stv0288 id %x\0A\00", align 1
@stv0288_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"ST STV0288 DVB-S\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 1000000, i32 0, i32 1000000, i32 45000000, i32 500, i32 1710 }, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr null, ptr @stv0288_release, ptr null, ptr @stv0288_init, ptr @stv0288_sleep, ptr null, ptr null, ptr @stv0288_write, ptr null, ptr null, ptr @stv0288_set_frontend, ptr null, ptr null, ptr @stv0288_read_status, ptr @stv0288_read_ber, ptr @stv0288_read_signal_strength, ptr @stv0288_read_snr, ptr @stv0288_read_ucblocks, ptr null, ptr @stv0288_send_diseqc_msg, ptr null, ptr @stv0288_send_diseqc_burst, ptr @stv0288_set_tone, ptr @stv0288_set_voltage, ptr null, ptr null, ptr @stv0288_i2c_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@__kstrtab_stv0288_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_stv0288_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_stv0288_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stv0288_attach to i32), ptr @__kstrtab_stv0288_attach, ptr @__kstrtabns_stv0288_attach }, section "___ksymtab+stv0288_attach", align 4
@__param_str_debug_legacy_dish_switch = internal constant [25 x i8] c"debug_legacy_dish_switch\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug_legacy_dish_switch = internal global i32 0, align 4
@__param_debug_legacy_dish_switch = internal constant %struct.kernel_param { ptr @__param_str_debug_legacy_dish_switch, ptr @__this_module, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.66 { ptr @debug_legacy_dish_switch } }, section "__param", align 4
@__UNIQUE_ID_debug_legacy_dish_switchtype249 = internal constant [38 x i8] c"parmtype=debug_legacy_dish_switch:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug_legacy_dish_switch250 = internal constant [86 x i8] c"parm=debug_legacy_dish_switch:Enable timing analysis for Dish Network legacy switches\00", section ".modinfo", align 1
@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.66 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype251 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug252 = internal constant [57 x i8] c"parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1
@__UNIQUE_ID_description253 = internal constant [46 x i8] c"description=ST STV0288 DVB Demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author254 = internal constant [44 x i8] c"author=Georg Acher, Bob Liu, Igor liplianin\00", section ".modinfo", align 1
@__UNIQUE_ID_license255 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.1 = private unnamed_addr constant [73 x i8] c"\017stv0288: %s: writereg error (reg == 0x%02x, val == 0x%02x, ret == %i)\0A\00", align 1
@__func__.stv0288_writeregI = private unnamed_addr constant [18 x i8] c"stv0288_writeregI\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"\017stv0288: %s: readreg error (reg == 0x%02x, ret == %i)\0A\00", align 1
@__func__.stv0288_readreg = private unnamed_addr constant [16 x i8] c"stv0288_readreg\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"\017stv0288: stv0288: init chip\0A\00", align 1
@stv0288_inittab = internal unnamed_addr constant [212 x i8] c"\01\15\02 \09\00\0A\04\0B\00\0C\00\0D\00\0E\D4\0F0\11\80\12\03\13H\14\84\15E\16\B7\17\9C\18\00\19\A6\1A\88\1B\8F\1C\F0 \0B!T\22\00#\00+\FF,\F70\001\1E2\143\0F4\095\0C6\057/8\169\BE:\00;\13<\11=0@cA\04B C\00D\00E\00F\00G\00J\00P\10Q8R!XTY\86Z\00[\9B\\\08]\7F^\00_\FFp\00q\00r\00t\00u\00v\00\81\00\82?\83?\84\00\85\00\88\00\89\00\8A\00\8B\00\8C\00\90\00\91\00\92\00\93\00\94\1C\97\00\A0H\A1\00\B0\B8\B1:\B2\10\B3\82\B4\80\B5\82\B6\82\B7\82\B8 \B9\00\F0\00\F1\00\F2\C0Q6R\09S\94TbU)VdW+\FF\FF", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"\017stv0288: %s : FE_SET_FRONTEND\0A\00", align 1
@__func__.stv0288_set_frontend = private unnamed_addr constant [21 x i8] c"stv0288_set_frontend\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"\017stv0288: %s: unsupported delivery system selected (%d)\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.6 = private unnamed_addr constant [44 x i8] c"\017stv0288: stv0288: stv0288_set_symbolrate\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"\017stv0288: %s : FE_READ_STATUS : VSTATUS: 0x%02x\0A\00", align 1
@__func__.stv0288_read_status = private unnamed_addr constant [20 x i8] c"stv0288_read_status\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"\017stv0288: stv0288 has locked\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"\017stv0288: stv0288_read_ber %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"\017stv0288: stv0288_read_signal_strength %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"\017stv0288: stv0288_read_snr %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"\017stv0288: %s\0A\00", align 1
@__func__.stv0288_send_diseqc_msg = private unnamed_addr constant [24 x i8] c"stv0288_send_diseqc_msg\00", align 1
@__func__.stv0288_send_diseqc_burst = private unnamed_addr constant [26 x i8] c"stv0288_send_diseqc_burst\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"\017stv0288: %s: %s\0A\00", align 1
@__func__.stv0288_set_voltage = private unnamed_addr constant [20 x i8] c"stv0288_set_voltage\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"SEC_VOLTAGE_13\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"SEC_VOLTAGE_18\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_author254, ptr @__UNIQUE_ID_debug252, ptr @__UNIQUE_ID_debug_legacy_dish_switch250, ptr @__UNIQUE_ID_debug_legacy_dish_switchtype249, ptr @__UNIQUE_ID_debugtype251, ptr @__UNIQUE_ID_description253, ptr @__UNIQUE_ID_license255, ptr @__ksymtab_stv0288_attach, ptr @__param_debug, ptr @__param_debug_legacy_dish_switch], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @stv0288_attach(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [2 x i8], align 2
  %7 = alloca %struct.i2c_msg, align 4
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 1068) #8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %61, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.stv0288_state, ptr %9, i32 0, i32 1
  store ptr %0, ptr %12, align 4
  store ptr %1, ptr %9, align 8
  %13 = getelementptr inbounds %struct.stv0288_state, ptr %9, i32 0, i32 3
  %14 = load i8, ptr %13, align 8
  %15 = and i8 %14, -2
  store i8 %15, ptr %13, align 8
  %16 = getelementptr inbounds %struct.stv0288_state, ptr %9, i32 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #9
  store i8 65, ptr %6, align 2
  %17 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 4, ptr %17, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #9
  %18 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 2, ptr %18, align 4, !annotation !8
  %19 = load i8, ptr %0, align 4
  %20 = zext i8 %19 to i16
  store i16 %20, ptr %7, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %21, align 2
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %22, align 4
  %23 = call i32 @i2c_transfer(ptr noundef %1, ptr noundef nonnull %7, i32 noundef 1) #9
  %24 = icmp ne i32 %23, 1
  %25 = load i32, ptr @debug, align 4
  %26 = icmp ne i32 %25, 0
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %28, label %30

28:                                               ; preds = %11
  %29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0288_writeregI, i32 noundef 65, i32 noundef 4, i32 noundef %23) #10
  br label %30

30:                                               ; preds = %28, %11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #9
  call void @msleep(i32 noundef 200) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  store i8 0, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  %31 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %31, i8 0, i32 16, i1 false) #9, !annotation !8
  %32 = load i8, ptr %0, align 4
  %33 = zext i8 %32 to i16
  store i16 %33, ptr %5, align 4
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %34, align 2
  store i16 1, ptr %31, align 4
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %35, align 4
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %33, ptr %36, align 4
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %37, align 2
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %38, align 4
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %39, align 4
  %40 = call i32 @i2c_transfer(ptr noundef %1, ptr noundef nonnull %5, i32 noundef 2) #9
  %41 = icmp ne i32 %40, 2
  %42 = load i32, ptr @debug, align 4
  %43 = icmp ne i32 %42, 0
  %44 = select i1 %41, i1 %43, i1 false
  br i1 %44, label %45, label %48

45:                                               ; preds = %30
  %46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.stv0288_readreg, i32 noundef 0, i32 noundef %40) #10
  %47 = load i32, ptr @debug, align 4
  br label %48

48:                                               ; preds = %45, %30
  %49 = phi i32 [ %42, %30 ], [ %47, %45 ]
  %50 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  %51 = icmp eq i32 %49, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = zext i8 %50 to i32
  %54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %53) #10
  br label %55

55:                                               ; preds = %52, %48
  %56 = icmp eq i8 %50, 17
  br i1 %56, label %57, label %61

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.stv0288_state, ptr %9, i32 0, i32 2
  %59 = getelementptr inbounds %struct.stv0288_state, ptr %9, i32 0, i32 2, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %59, ptr noundef nonnull align 4 dereferenceable(544) @stv0288_ops, i32 544, i1 false)
  %60 = getelementptr inbounds %struct.stv0288_state, ptr %9, i32 0, i32 2, i32 3
  store ptr %9, ptr %60, align 8
  br label %62

61:                                               ; preds = %55, %2
  call void @kfree(ptr noundef %9) #9
  br label %62

62:                                               ; preds = %61, %57
  %63 = phi ptr [ null, %61 ], [ %58, %57 ]
  ret ptr %63
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stv0288_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0288_init(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [2 x i8], align 2
  %7 = alloca %struct.i2c_msg, align 4
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr @debug, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #10
  br label %14

14:                                               ; preds = %12, %1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #9
  store i8 65, ptr %6, align 2
  %15 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 4, ptr %15, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #9
  %16 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 2, ptr %16, align 4, !annotation !8
  %17 = getelementptr inbounds %struct.stv0288_state, ptr %9, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = load i8, ptr %18, align 4
  %20 = zext i8 %19 to i16
  store i16 %20, ptr %7, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %21, align 2
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %22, align 4
  %23 = load ptr, ptr %9, align 4
  %24 = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %7, i32 noundef 1) #9
  %25 = icmp ne i32 %24, 1
  %26 = load i32, ptr @debug, align 4
  %27 = icmp ne i32 %26, 0
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %29, label %31

29:                                               ; preds = %14
  %30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0288_writeregI, i32 noundef 65, i32 noundef 4, i32 noundef %24) #10
  br label %31

31:                                               ; preds = %29, %14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #9
  call void @msleep(i32 noundef 50) #9
  %32 = load ptr, ptr %17, align 4
  %33 = getelementptr inbounds %struct.stv0288_config, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %48, label %36

36:                                               ; preds = %31
  %37 = load i8, ptr %34, align 1
  %38 = getelementptr i8, ptr %34, i32 1
  %39 = load i8, ptr %38, align 1
  %40 = icmp eq i8 %37, -1
  %41 = icmp eq i8 %39, -1
  %42 = select i1 %40, i1 %41, i1 false
  br i1 %42, label %111, label %43

43:                                               ; preds = %36
  %44 = getelementptr inbounds i8, ptr %2, i32 1
  %45 = getelementptr inbounds i8, ptr %3, i32 4
  %46 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  %47 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  br label %81

48:                                               ; preds = %31
  %49 = getelementptr inbounds i8, ptr %4, i32 1
  %50 = getelementptr inbounds i8, ptr %5, i32 4
  %51 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  %52 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  br label %53

53:                                               ; preds = %79, %48
  %54 = phi i32 [ %80, %79 ], [ 0, %48 ]
  %55 = getelementptr [212 x i8], ptr @stv0288_inittab, i32 0, i32 %54
  %56 = load i8, ptr %55, align 1
  %57 = icmp eq i8 %56, -1
  %58 = or i32 %54, 1
  br i1 %57, label %59, label %63

59:                                               ; preds = %53
  %60 = getelementptr [212 x i8], ptr @stv0288_inittab, i32 0, i32 %58
  %61 = load i8, ptr %60, align 1
  %62 = icmp eq i8 %61, -1
  br i1 %62, label %111, label %63

63:                                               ; preds = %59, %53
  %64 = getelementptr [212 x i8], ptr @stv0288_inittab, i32 0, i32 %58
  %65 = load i8, ptr %64, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #9
  store i8 %56, ptr %4, align 2
  store i8 %65, ptr %49, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  store i32 0, ptr %50, align 4, !annotation !8
  %66 = load ptr, ptr %17, align 4
  %67 = load i8, ptr %66, align 4
  %68 = zext i8 %67 to i16
  store i16 %68, ptr %5, align 4
  store i16 0, ptr %51, align 2
  store i16 2, ptr %50, align 4
  store ptr %4, ptr %52, align 4
  %69 = load ptr, ptr %9, align 4
  %70 = call i32 @i2c_transfer(ptr noundef %69, ptr noundef nonnull %5, i32 noundef 1) #9
  %71 = icmp ne i32 %70, 1
  %72 = load i32, ptr @debug, align 4
  %73 = icmp ne i32 %72, 0
  %74 = select i1 %71, i1 %73, i1 false
  br i1 %74, label %75, label %79

75:                                               ; preds = %63
  %76 = zext i8 %56 to i32
  %77 = zext i8 %65 to i32
  %78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0288_writeregI, i32 noundef %76, i32 noundef %77, i32 noundef %70) #10
  br label %79

79:                                               ; preds = %75, %63
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #9
  %80 = add i32 %54, 2
  br label %53

81:                                               ; preds = %98, %43
  %82 = phi i8 [ %39, %43 ], [ %107, %98 ]
  %83 = phi i8 [ %37, %43 ], [ %104, %98 ]
  %84 = phi i32 [ 0, %43 ], [ %99, %98 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #9
  store i8 %83, ptr %2, align 2
  store i8 %82, ptr %44, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  store i32 0, ptr %45, align 4, !annotation !8
  %85 = load ptr, ptr %17, align 4
  %86 = load i8, ptr %85, align 4
  %87 = zext i8 %86 to i16
  store i16 %87, ptr %3, align 4
  store i16 0, ptr %46, align 2
  store i16 2, ptr %45, align 4
  store ptr %2, ptr %47, align 4
  %88 = load ptr, ptr %9, align 4
  %89 = call i32 @i2c_transfer(ptr noundef %88, ptr noundef nonnull %3, i32 noundef 1) #9
  %90 = icmp ne i32 %89, 1
  %91 = load i32, ptr @debug, align 4
  %92 = icmp ne i32 %91, 0
  %93 = select i1 %90, i1 %92, i1 false
  br i1 %93, label %94, label %98

94:                                               ; preds = %81
  %95 = zext i8 %83 to i32
  %96 = zext i8 %82 to i32
  %97 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0288_writeregI, i32 noundef %95, i32 noundef %96, i32 noundef %89) #10
  br label %98

98:                                               ; preds = %94, %81
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #9
  %99 = add i32 %84, 2
  %100 = load ptr, ptr %17, align 4
  %101 = getelementptr inbounds %struct.stv0288_config, ptr %100, i32 0, i32 1
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr i8, ptr %102, i32 %99
  %104 = load i8, ptr %103, align 1
  %105 = or i32 %99, 1
  %106 = getelementptr i8, ptr %102, i32 %105
  %107 = load i8, ptr %106, align 1
  %108 = icmp eq i8 %104, -1
  %109 = icmp eq i8 %107, -1
  %110 = select i1 %108, i1 %109, i1 false
  br i1 %110, label %111, label %81

111:                                              ; preds = %98, %59, %36
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0288_sleep(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #9
  store i8 65, ptr %2, align 2
  %6 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 -124, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  %7 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %7, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.stv0288_state, ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load i8, ptr %9, align 4
  %11 = zext i8 %10 to i16
  store i16 %11, ptr %3, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %12, align 2
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %13, align 4
  %14 = load ptr, ptr %5, align 4
  %15 = call i32 @i2c_transfer(ptr noundef %14, ptr noundef nonnull %3, i32 noundef 1) #9
  %16 = icmp ne i32 %15, 1
  %17 = load i32, ptr @debug, align 4
  %18 = icmp ne i32 %17, 0
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0288_writeregI, i32 noundef 65, i32 noundef 132, i32 noundef %15) #10
  br label %22

22:                                               ; preds = %20, %1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #9
  %23 = getelementptr inbounds %struct.stv0288_state, ptr %5, i32 0, i32 3
  %24 = load i8, ptr %23, align 4
  %25 = and i8 %24, -2
  store i8 %25, ptr %23, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0288_write(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  %6 = icmp eq i32 %2, 2
  br i1 %6, label %7, label %33

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = load i8, ptr %1, align 1
  %11 = getelementptr i8, ptr %1, i32 1
  %12 = load i8, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #9
  store i8 %10, ptr %4, align 2
  %13 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 %12, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  %14 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %14, align 4, !annotation !8
  %15 = getelementptr inbounds %struct.stv0288_state, ptr %9, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = load i8, ptr %16, align 4
  %18 = zext i8 %17 to i16
  store i16 %18, ptr %5, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %19, align 2
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %20, align 4
  %21 = load ptr, ptr %9, align 4
  %22 = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %5, i32 noundef 1) #9
  %23 = icmp ne i32 %22, 1
  %24 = load i32, ptr @debug, align 4
  %25 = icmp ne i32 %24, 0
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %27, label %31

27:                                               ; preds = %7
  %28 = zext i8 %10 to i32
  %29 = zext i8 %12 to i32
  %30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0288_writeregI, i32 noundef %28, i32 noundef %29, i32 noundef %22) #10
  br label %31

31:                                               ; preds = %27, %7
  %32 = select i1 %23, i32 -121, i32 0
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #9
  br label %33

33:                                               ; preds = %31, %3
  %34 = phi i32 [ %32, %31 ], [ -22, %3 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0288_set_frontend(ptr noundef %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [2 x i8], align 2
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca [2 x i8], align 2
  %9 = alloca %struct.i2c_msg, align 4
  %10 = alloca [2 x i8], align 2
  %11 = alloca %struct.i2c_msg, align 4
  %12 = alloca [2 x i8], align 2
  %13 = alloca %struct.i2c_msg, align 4
  %14 = alloca [2 x i8], align 2
  %15 = alloca %struct.i2c_msg, align 4
  %16 = alloca [2 x i8], align 2
  %17 = alloca %struct.i2c_msg, align 4
  %18 = alloca [2 x i8], align 2
  %19 = alloca %struct.i2c_msg, align 4
  %20 = alloca [2 x i8], align 2
  %21 = alloca %struct.i2c_msg, align 4
  %22 = alloca [2 x i8], align 2
  %23 = alloca %struct.i2c_msg, align 4
  %24 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %27 = load i32, ptr @debug, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %1
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.stv0288_set_frontend) #10
  br label %31

31:                                               ; preds = %29, %1
  %32 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 5
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = load i32, ptr @debug, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %266, label %38

38:                                               ; preds = %35
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.stv0288_set_frontend, i32 noundef %33) #10
  br label %266

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.stv0288_state, ptr %25, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.stv0288_config, ptr %42, i32 0, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %40
  %47 = tail call i32 %44(ptr noundef %0, i32 noundef 0) #9
  br label %48

48:                                               ; preds = %46, %40
  %49 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %59, label %52

52:                                               ; preds = %48
  %53 = tail call i32 %50(ptr noundef %0) #9
  %54 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %52
  %58 = tail call i32 %55(ptr noundef %0, i32 noundef 0) #9
  br label %59

59:                                               ; preds = %57, %52, %48
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 2147480) #9
  %61 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 10
  %62 = load i32, ptr %61, align 4
  %63 = add i32 %62, -45000001
  %64 = icmp ult i32 %63, -44000001
  br i1 %64, label %244, label %65

65:                                               ; preds = %59
  %66 = load ptr, ptr %24, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %22) #9
  store i8 34, ptr %22, align 2
  %67 = getelementptr inbounds i8, ptr %22, i32 1
  store i8 0, ptr %67, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #9
  %68 = getelementptr inbounds i8, ptr %23, i32 4
  store i32 2, ptr %68, align 4, !annotation !8
  %69 = getelementptr inbounds %struct.stv0288_state, ptr %66, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = load i8, ptr %70, align 4
  %72 = zext i8 %71 to i16
  store i16 %72, ptr %23, align 4
  %73 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 1
  store i16 0, ptr %73, align 2
  %74 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 3
  store ptr %22, ptr %74, align 4
  %75 = load ptr, ptr %66, align 4
  %76 = call i32 @i2c_transfer(ptr noundef %75, ptr noundef nonnull %23, i32 noundef 1) #9
  %77 = icmp ne i32 %76, 1
  %78 = load i32, ptr @debug, align 4
  %79 = icmp ne i32 %78, 0
  %80 = select i1 %77, i1 %79, i1 false
  br i1 %80, label %81, label %83

81:                                               ; preds = %65
  %82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0288_writeregI, i32 noundef 34, i32 noundef 0, i32 noundef %76) #10
  br label %83

83:                                               ; preds = %81, %65
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %22) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %20) #9
  store i8 35, ptr %20, align 2
  %84 = getelementptr inbounds i8, ptr %20, i32 1
  store i8 0, ptr %84, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #9
  %85 = getelementptr inbounds i8, ptr %21, i32 4
  store i32 2, ptr %85, align 4, !annotation !8
  %86 = load ptr, ptr %69, align 4
  %87 = load i8, ptr %86, align 4
  %88 = zext i8 %87 to i16
  store i16 %88, ptr %21, align 4
  %89 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 1
  store i16 0, ptr %89, align 2
  %90 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 3
  store ptr %20, ptr %90, align 4
  %91 = load ptr, ptr %66, align 4
  %92 = call i32 @i2c_transfer(ptr noundef %91, ptr noundef nonnull %21, i32 noundef 1) #9
  %93 = icmp ne i32 %92, 1
  %94 = load i32, ptr @debug, align 4
  %95 = icmp ne i32 %94, 0
  %96 = select i1 %93, i1 %95, i1 false
  br i1 %96, label %97, label %99

97:                                               ; preds = %83
  %98 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0288_writeregI, i32 noundef 35, i32 noundef 0, i32 noundef %92) #10
  br label %99

99:                                               ; preds = %97, %83
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %18) #9
  store i8 43, ptr %18, align 2
  %100 = getelementptr inbounds i8, ptr %18, i32 1
  store i8 -1, ptr %100, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #9
  %101 = getelementptr inbounds i8, ptr %19, i32 4
  store i32 2, ptr %101, align 4, !annotation !8
  %102 = load ptr, ptr %69, align 4
  %103 = load i8, ptr %102, align 4
  %104 = zext i8 %103 to i16
  store i16 %104, ptr %19, align 4
  %105 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 1
  store i16 0, ptr %105, align 2
  %106 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 3
  store ptr %18, ptr %106, align 4
  %107 = load ptr, ptr %66, align 4
  %108 = call i32 @i2c_transfer(ptr noundef %107, ptr noundef nonnull %19, i32 noundef 1) #9
  %109 = icmp ne i32 %108, 1
  %110 = load i32, ptr @debug, align 4
  %111 = icmp ne i32 %110, 0
  %112 = select i1 %109, i1 %111, i1 false
  br i1 %112, label %113, label %115

113:                                              ; preds = %99
  %114 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0288_writeregI, i32 noundef 43, i32 noundef 255, i32 noundef %108) #10
  br label %115

115:                                              ; preds = %113, %99
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #9
  store i8 44, ptr %16, align 2
  %116 = getelementptr inbounds i8, ptr %16, i32 1
  store i8 -9, ptr %116, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #9
  %117 = getelementptr inbounds i8, ptr %17, i32 4
  store i32 2, ptr %117, align 4, !annotation !8
  %118 = load ptr, ptr %69, align 4
  %119 = load i8, ptr %118, align 4
  %120 = zext i8 %119 to i16
  store i16 %120, ptr %17, align 4
  %121 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %121, align 2
  %122 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %16, ptr %122, align 4
  %123 = load ptr, ptr %66, align 4
  %124 = call i32 @i2c_transfer(ptr noundef %123, ptr noundef nonnull %17, i32 noundef 1) #9
  %125 = icmp ne i32 %124, 1
  %126 = load i32, ptr @debug, align 4
  %127 = icmp ne i32 %126, 0
  %128 = select i1 %125, i1 %127, i1 false
  br i1 %128, label %129, label %131

129:                                              ; preds = %115
  %130 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0288_writeregI, i32 noundef 44, i32 noundef 247, i32 noundef %124) #10
  br label %131

131:                                              ; preds = %129, %115
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #9
  %132 = udiv i32 %62, 1000
  %133 = shl nuw nsw i32 %132, 15
  %134 = udiv i32 %133, 3125
  %135 = lshr i32 %134, 12
  %136 = trunc i32 %135 to i8
  %137 = lshr i32 %134, 4
  %138 = trunc i32 %137 to i8
  %139 = trunc i32 %134 to i8
  %140 = shl i8 %139, 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #9
  store i8 40, ptr %14, align 2
  %141 = getelementptr inbounds i8, ptr %14, i32 1
  store i8 -128, ptr %141, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #9
  %142 = getelementptr inbounds i8, ptr %15, i32 4
  store i32 2, ptr %142, align 4, !annotation !8
  %143 = load ptr, ptr %69, align 4
  %144 = load i8, ptr %143, align 4
  %145 = zext i8 %144 to i16
  store i16 %145, ptr %15, align 4
  %146 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %146, align 2
  %147 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %14, ptr %147, align 4
  %148 = load ptr, ptr %66, align 4
  %149 = call i32 @i2c_transfer(ptr noundef %148, ptr noundef nonnull %15, i32 noundef 1) #9
  %150 = icmp ne i32 %149, 1
  %151 = load i32, ptr @debug, align 4
  %152 = icmp ne i32 %151, 0
  %153 = select i1 %150, i1 %152, i1 false
  br i1 %153, label %154, label %156

154:                                              ; preds = %131
  %155 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0288_writeregI, i32 noundef 40, i32 noundef 128, i32 noundef %149) #10
  br label %156

156:                                              ; preds = %154, %131
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #9
  store i8 41, ptr %12, align 2
  %157 = getelementptr inbounds i8, ptr %12, i32 1
  store i8 0, ptr %157, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #9
  %158 = getelementptr inbounds i8, ptr %13, i32 4
  store i32 2, ptr %158, align 4, !annotation !8
  %159 = load ptr, ptr %69, align 4
  %160 = load i8, ptr %159, align 4
  %161 = zext i8 %160 to i16
  store i16 %161, ptr %13, align 4
  %162 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %162, align 2
  %163 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %12, ptr %163, align 4
  %164 = load ptr, ptr %66, align 4
  %165 = call i32 @i2c_transfer(ptr noundef %164, ptr noundef nonnull %13, i32 noundef 1) #9
  %166 = icmp ne i32 %165, 1
  %167 = load i32, ptr @debug, align 4
  %168 = icmp ne i32 %167, 0
  %169 = select i1 %166, i1 %168, i1 false
  br i1 %169, label %170, label %172

170:                                              ; preds = %156
  %171 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0288_writeregI, i32 noundef 41, i32 noundef 0, i32 noundef %165) #10
  br label %172

172:                                              ; preds = %170, %156
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #9
  store i8 42, ptr %10, align 2
  %173 = getelementptr inbounds i8, ptr %10, i32 1
  store i8 0, ptr %173, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #9
  %174 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 2, ptr %174, align 4, !annotation !8
  %175 = load ptr, ptr %69, align 4
  %176 = load i8, ptr %175, align 4
  %177 = zext i8 %176 to i16
  store i16 %177, ptr %11, align 4
  %178 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %178, align 2
  %179 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %10, ptr %179, align 4
  %180 = load ptr, ptr %66, align 4
  %181 = call i32 @i2c_transfer(ptr noundef %180, ptr noundef nonnull %11, i32 noundef 1) #9
  %182 = icmp ne i32 %181, 1
  %183 = load i32, ptr @debug, align 4
  %184 = icmp ne i32 %183, 0
  %185 = select i1 %182, i1 %184, i1 false
  br i1 %185, label %186, label %188

186:                                              ; preds = %172
  %187 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0288_writeregI, i32 noundef 42, i32 noundef 0, i32 noundef %181) #10
  br label %188

188:                                              ; preds = %186, %172
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #9
  store i8 40, ptr %8, align 2
  %189 = getelementptr inbounds i8, ptr %8, i32 1
  store i8 %136, ptr %189, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #9
  %190 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 2, ptr %190, align 4, !annotation !8
  %191 = load ptr, ptr %69, align 4
  %192 = load i8, ptr %191, align 4
  %193 = zext i8 %192 to i16
  store i16 %193, ptr %9, align 4
  %194 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %194, align 2
  %195 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %195, align 4
  %196 = load ptr, ptr %66, align 4
  %197 = call i32 @i2c_transfer(ptr noundef %196, ptr noundef nonnull %9, i32 noundef 1) #9
  %198 = icmp ne i32 %197, 1
  %199 = load i32, ptr @debug, align 4
  %200 = icmp ne i32 %199, 0
  %201 = select i1 %198, i1 %200, i1 false
  br i1 %201, label %202, label %204

202:                                              ; preds = %188
  %203 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0288_writeregI, i32 noundef 40, i32 noundef %135, i32 noundef %197) #10
  br label %204

204:                                              ; preds = %202, %188
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #9
  store i8 41, ptr %6, align 2
  %205 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 %138, ptr %205, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #9
  %206 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 2, ptr %206, align 4, !annotation !8
  %207 = load ptr, ptr %69, align 4
  %208 = load i8, ptr %207, align 4
  %209 = zext i8 %208 to i16
  store i16 %209, ptr %7, align 4
  %210 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %210, align 2
  %211 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %211, align 4
  %212 = load ptr, ptr %66, align 4
  %213 = call i32 @i2c_transfer(ptr noundef %212, ptr noundef nonnull %7, i32 noundef 1) #9
  %214 = icmp ne i32 %213, 1
  %215 = load i32, ptr @debug, align 4
  %216 = icmp ne i32 %215, 0
  %217 = select i1 %214, i1 %216, i1 false
  br i1 %217, label %218, label %221

218:                                              ; preds = %204
  %219 = and i32 %137, 255
  %220 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0288_writeregI, i32 noundef 41, i32 noundef %219, i32 noundef %213) #10
  br label %221

221:                                              ; preds = %218, %204
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #9
  store i8 42, ptr %4, align 2
  %222 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 %140, ptr %222, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  %223 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %223, align 4, !annotation !8
  %224 = load ptr, ptr %69, align 4
  %225 = load i8, ptr %224, align 4
  %226 = zext i8 %225 to i16
  store i16 %226, ptr %5, align 4
  %227 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %227, align 2
  %228 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %228, align 4
  %229 = load ptr, ptr %66, align 4
  %230 = call i32 @i2c_transfer(ptr noundef %229, ptr noundef nonnull %5, i32 noundef 1) #9
  %231 = icmp ne i32 %230, 1
  %232 = load i32, ptr @debug, align 4
  %233 = icmp ne i32 %232, 0
  %234 = select i1 %231, i1 %233, i1 false
  br i1 %234, label %235, label %239

235:                                              ; preds = %221
  %236 = zext i8 %140 to i32
  %237 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0288_writeregI, i32 noundef 42, i32 noundef %236, i32 noundef %230) #10
  %238 = load i32, ptr @debug, align 4
  br label %239

239:                                              ; preds = %235, %221
  %240 = phi i32 [ %232, %221 ], [ %238, %235 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #9
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %244, label %242

242:                                              ; preds = %239
  %243 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #10
  br label %244

244:                                              ; preds = %242, %239, %59
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #9
  store i8 21, ptr %2, align 2
  %245 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 -59, ptr %245, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  %246 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %246, align 4, !annotation !8
  %247 = load ptr, ptr %41, align 4
  %248 = load i8, ptr %247, align 4
  %249 = zext i8 %248 to i16
  store i16 %249, ptr %3, align 4
  %250 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %250, align 2
  %251 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %251, align 4
  %252 = load ptr, ptr %25, align 4
  %253 = call i32 @i2c_transfer(ptr noundef %252, ptr noundef nonnull %3, i32 noundef 1) #9
  %254 = icmp ne i32 %253, 1
  %255 = load i32, ptr @debug, align 4
  %256 = icmp ne i32 %255, 0
  %257 = select i1 %254, i1 %256, i1 false
  br i1 %257, label %258, label %260

258:                                              ; preds = %244
  %259 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0288_writeregI, i32 noundef 21, i32 noundef 197, i32 noundef %253) #10
  br label %260

260:                                              ; preds = %258, %244
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #9
  %261 = load i32, ptr %26, align 4
  %262 = getelementptr inbounds %struct.stv0288_state, ptr %25, i32 0, i32 4
  store i32 %261, ptr %262, align 4
  %263 = getelementptr inbounds %struct.stv0288_state, ptr %25, i32 0, i32 6
  store i32 9, ptr %263, align 4
  %264 = load i32, ptr %61, align 4
  %265 = getelementptr inbounds %struct.stv0288_state, ptr %25, i32 0, i32 5
  store i32 %264, ptr %265, align 4
  br label %266

266:                                              ; preds = %260, %38, %35
  %267 = phi i32 [ 0, %260 ], [ -95, %38 ], [ -95, %35 ]
  ret i32 %267
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0288_read_status(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  store i8 36, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  %8 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 16, i1 false) #9, !annotation !8
  %9 = getelementptr inbounds %struct.stv0288_state, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i16
  store i16 %12, ptr %5, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %13, align 2
  store i16 1, ptr %8, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %16 = load i8, ptr %10, align 4
  %17 = zext i8 %16 to i16
  store i16 %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %18, align 2
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %20, align 4
  %21 = load ptr, ptr %7, align 4
  %22 = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %5, i32 noundef 2) #9
  %23 = icmp ne i32 %22, 2
  %24 = load i32, ptr @debug, align 4
  %25 = icmp ne i32 %24, 0
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.stv0288_readreg, i32 noundef 36, i32 noundef %22) #10
  %29 = load i32, ptr @debug, align 4
  br label %30

30:                                               ; preds = %27, %2
  %31 = phi i32 [ %24, %2 ], [ %29, %27 ]
  %32 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  %33 = icmp eq i8 %32, -1
  %34 = select i1 %33, i8 0, i8 %32
  %35 = icmp eq i32 %31, 0
  %36 = zext i8 %34 to i32
  br i1 %35, label %39, label %37

37:                                               ; preds = %30
  %38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0288_read_status, i32 noundef %36) #10
  br label %39

39:                                               ; preds = %37, %30
  %40 = and i32 %36, 128
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, i32 0, i32 3
  %43 = lshr i32 %36, 2
  %44 = and i32 %43, 4
  %45 = or i32 %44, %42
  store i32 %45, ptr %1, align 4
  %46 = and i32 %36, 8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %39
  %49 = or i32 %45, 16
  store i32 %49, ptr %1, align 4
  %50 = load i32, ptr @debug, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #10
  br label %54

54:                                               ; preds = %52, %48, %39
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0288_read_ber(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [1 x i8], align 1
  %7 = alloca [1 x i8], align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.stv0288_state, ptr %10, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %68

14:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #9
  store i8 38, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #9
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #9
  %15 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %15, i8 0, i32 16, i1 false) #9, !annotation !8
  %16 = getelementptr inbounds %struct.stv0288_state, ptr %10, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load i8, ptr %17, align 4
  %19 = zext i8 %18 to i16
  store i16 %19, ptr %8, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %20, align 2
  store i16 1, ptr %15, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %21, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  %23 = load i8, ptr %17, align 4
  %24 = zext i8 %23 to i16
  store i16 %24, ptr %22, align 4
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %25, align 2
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 1, ptr %26, align 4
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %27, align 4
  %28 = load ptr, ptr %10, align 4
  %29 = call i32 @i2c_transfer(ptr noundef %28, ptr noundef nonnull %8, i32 noundef 2) #9
  %30 = icmp ne i32 %29, 2
  %31 = load i32, ptr @debug, align 4
  %32 = icmp ne i32 %31, 0
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %34, label %36

34:                                               ; preds = %14
  %35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.stv0288_readreg, i32 noundef 38, i32 noundef %29) #10
  br label %36

36:                                               ; preds = %34, %14
  %37 = load i8, ptr %7, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #9
  %38 = zext i8 %37 to i32
  %39 = shl nuw nsw i32 %38, 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  store i8 39, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  %40 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %40, i8 0, i32 16, i1 false) #9, !annotation !8
  %41 = load ptr, ptr %16, align 4
  %42 = load i8, ptr %41, align 4
  %43 = zext i8 %42 to i16
  store i16 %43, ptr %5, align 4
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %44, align 2
  store i16 1, ptr %40, align 4
  %45 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %45, align 4
  %46 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %47 = load i8, ptr %41, align 4
  %48 = zext i8 %47 to i16
  store i16 %48, ptr %46, align 4
  %49 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %49, align 2
  %50 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %50, align 4
  %51 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %51, align 4
  %52 = load ptr, ptr %10, align 4
  %53 = call i32 @i2c_transfer(ptr noundef %52, ptr noundef nonnull %5, i32 noundef 2) #9
  %54 = icmp ne i32 %53, 2
  %55 = load i32, ptr @debug, align 4
  %56 = icmp ne i32 %55, 0
  %57 = select i1 %54, i1 %56, i1 false
  br i1 %57, label %58, label %60

58:                                               ; preds = %36
  %59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.stv0288_readreg, i32 noundef 39, i32 noundef %53) #10
  br label %60

60:                                               ; preds = %58, %36
  %61 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  %62 = zext i8 %61 to i32
  %63 = or i32 %39, %62
  store i32 %63, ptr %1, align 4
  %64 = load i32, ptr @debug, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %60
  %67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %63) #10
  br label %68

68:                                               ; preds = %66, %60, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0288_read_signal_strength(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  store i8 16, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  %8 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 16, i1 false) #9, !annotation !8
  %9 = getelementptr inbounds %struct.stv0288_state, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i16
  store i16 %12, ptr %5, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %13, align 2
  store i16 1, ptr %8, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %16 = load i8, ptr %10, align 4
  %17 = zext i8 %16 to i16
  store i16 %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %18, align 2
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %20, align 4
  %21 = load ptr, ptr %7, align 4
  %22 = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %5, i32 noundef 2) #9
  %23 = icmp ne i32 %22, 2
  %24 = load i32, ptr @debug, align 4
  %25 = icmp ne i32 %24, 0
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.stv0288_readreg, i32 noundef 16, i32 noundef %22) #10
  br label %29

29:                                               ; preds = %27, %2
  %30 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  %31 = zext i8 %30 to i32
  %32 = mul nsw i32 %31, -1280
  %33 = add nsw i32 %32, 65531
  %34 = lshr i32 %33, 2
  %35 = icmp sgt i32 %32, -65532
  %36 = trunc i32 %34 to i16
  %37 = select i1 %35, i16 -1, i16 %36
  store i16 %37, ptr %1, align 2
  %38 = load i32, ptr @debug, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %29
  %41 = zext i16 %37 to i32
  %42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %41) #10
  br label %43

43:                                               ; preds = %40, %29
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0288_read_snr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [1 x i8], align 1
  %7 = alloca [1 x i8], align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #9
  store i8 45, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #9
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #9
  %11 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %11, i8 0, i32 16, i1 false) #9, !annotation !8
  %12 = getelementptr inbounds %struct.stv0288_state, ptr %10, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i16
  store i16 %15, ptr %8, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %16, align 2
  store i16 1, ptr %11, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %17, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  %19 = load i8, ptr %13, align 4
  %20 = zext i8 %19 to i16
  store i16 %20, ptr %18, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %21, align 2
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 1, ptr %22, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %23, align 4
  %24 = load ptr, ptr %10, align 4
  %25 = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %8, i32 noundef 2) #9
  %26 = icmp ne i32 %25, 2
  %27 = load i32, ptr @debug, align 4
  %28 = icmp ne i32 %27, 0
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.stv0288_readreg, i32 noundef 45, i32 noundef %25) #10
  br label %32

32:                                               ; preds = %30, %2
  %33 = load i8, ptr %7, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #9
  %34 = zext i8 %33 to i32
  %35 = shl nuw nsw i32 %34, 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  store i8 46, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  %36 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %36, i8 0, i32 16, i1 false) #9, !annotation !8
  %37 = load ptr, ptr %12, align 4
  %38 = load i8, ptr %37, align 4
  %39 = zext i8 %38 to i16
  store i16 %39, ptr %5, align 4
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %40, align 2
  store i16 1, ptr %36, align 4
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %41, align 4
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %43 = load i8, ptr %37, align 4
  %44 = zext i8 %43 to i16
  store i16 %44, ptr %42, align 4
  %45 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %45, align 2
  %46 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %46, align 4
  %47 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %47, align 4
  %48 = load ptr, ptr %10, align 4
  %49 = call i32 @i2c_transfer(ptr noundef %48, ptr noundef nonnull %5, i32 noundef 2) #9
  %50 = icmp ne i32 %49, 2
  %51 = load i32, ptr @debug, align 4
  %52 = icmp ne i32 %51, 0
  %53 = select i1 %50, i1 %52, i1 false
  br i1 %53, label %54, label %56

54:                                               ; preds = %32
  %55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.stv0288_readreg, i32 noundef 46, i32 noundef %49) #10
  br label %56

56:                                               ; preds = %54, %32
  %57 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  %58 = zext i8 %57 to i32
  %59 = or i32 %35, %58
  %60 = sub nsw i32 24319, %59
  %61 = mul nsw i32 %60, 3
  %62 = call i32 @llvm.smax.i32(i32 %61, i32 0)
  %63 = call i32 @llvm.smin.i32(i32 %62, i32 65535)
  %64 = trunc i32 %63 to i16
  store i16 %64, ptr %1, align 2
  %65 = load i32, ptr @debug, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %56
  %68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %63) #10
  br label %69

69:                                               ; preds = %67, %56
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0288_read_ucblocks(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [1 x i8], align 1
  %7 = alloca [1 x i8], align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.stv0288_state, ptr %10, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %68

14:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #9
  store i8 38, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #9
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #9
  %15 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %15, i8 0, i32 16, i1 false) #9, !annotation !8
  %16 = getelementptr inbounds %struct.stv0288_state, ptr %10, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load i8, ptr %17, align 4
  %19 = zext i8 %18 to i16
  store i16 %19, ptr %8, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %20, align 2
  store i16 1, ptr %15, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %21, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  %23 = load i8, ptr %17, align 4
  %24 = zext i8 %23 to i16
  store i16 %24, ptr %22, align 4
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %25, align 2
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 1, ptr %26, align 4
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %27, align 4
  %28 = load ptr, ptr %10, align 4
  %29 = call i32 @i2c_transfer(ptr noundef %28, ptr noundef nonnull %8, i32 noundef 2) #9
  %30 = icmp ne i32 %29, 2
  %31 = load i32, ptr @debug, align 4
  %32 = icmp ne i32 %31, 0
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %34, label %36

34:                                               ; preds = %14
  %35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.stv0288_readreg, i32 noundef 38, i32 noundef %29) #10
  br label %36

36:                                               ; preds = %34, %14
  %37 = load i8, ptr %7, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #9
  %38 = zext i8 %37 to i32
  %39 = shl nuw nsw i32 %38, 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  store i8 39, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  %40 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %40, i8 0, i32 16, i1 false) #9, !annotation !8
  %41 = load ptr, ptr %16, align 4
  %42 = load i8, ptr %41, align 4
  %43 = zext i8 %42 to i16
  store i16 %43, ptr %5, align 4
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %44, align 2
  store i16 1, ptr %40, align 4
  %45 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %45, align 4
  %46 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %47 = load i8, ptr %41, align 4
  %48 = zext i8 %47 to i16
  store i16 %48, ptr %46, align 4
  %49 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %49, align 2
  %50 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %50, align 4
  %51 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %51, align 4
  %52 = load ptr, ptr %10, align 4
  %53 = call i32 @i2c_transfer(ptr noundef %52, ptr noundef nonnull %5, i32 noundef 2) #9
  %54 = icmp ne i32 %53, 2
  %55 = load i32, ptr @debug, align 4
  %56 = icmp ne i32 %55, 0
  %57 = select i1 %54, i1 %56, i1 false
  br i1 %57, label %58, label %60

58:                                               ; preds = %36
  %59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.stv0288_readreg, i32 noundef 39, i32 noundef %53) #10
  br label %60

60:                                               ; preds = %58, %36
  %61 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  %62 = zext i8 %61 to i32
  %63 = or i32 %39, %62
  store i32 %63, ptr %1, align 4
  %64 = load i32, ptr @debug, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %60
  %67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %63) #10
  br label %68

68:                                               ; preds = %66, %60, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0288_send_diseqc_msg(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [2 x i8], align 2
  %8 = alloca %struct.i2c_msg, align 4
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr @debug, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.stv0288_send_diseqc_msg) #10
  br label %15

15:                                               ; preds = %13, %2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #9
  store i8 9, ptr %7, align 2
  %16 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 0, ptr %16, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #9
  %17 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 2, ptr %17, align 4, !annotation !8
  %18 = getelementptr inbounds %struct.stv0288_state, ptr %10, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = load i8, ptr %19, align 4
  %21 = zext i8 %20 to i16
  store i16 %21, ptr %8, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %22, align 2
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %23, align 4
  %24 = load ptr, ptr %10, align 4
  %25 = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %8, i32 noundef 1) #9
  %26 = icmp ne i32 %25, 1
  %27 = load i32, ptr @debug, align 4
  %28 = icmp ne i32 %27, 0
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %32

30:                                               ; preds = %15
  %31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0288_writeregI, i32 noundef 9, i32 noundef 0, i32 noundef %25) #10
  br label %32

32:                                               ; preds = %30, %15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #9
  call void @msleep(i32 noundef 30) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #9
  store i8 5, ptr %5, align 2
  %33 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 18, ptr %33, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #9
  %34 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %34, align 4, !annotation !8
  %35 = load ptr, ptr %18, align 4
  %36 = load i8, ptr %35, align 4
  %37 = zext i8 %36 to i16
  store i16 %37, ptr %6, align 4
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %38, align 2
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %39, align 4
  %40 = load ptr, ptr %10, align 4
  %41 = call i32 @i2c_transfer(ptr noundef %40, ptr noundef nonnull %6, i32 noundef 1) #9
  %42 = icmp ne i32 %41, 1
  %43 = load i32, ptr @debug, align 4
  %44 = icmp ne i32 %43, 0
  %45 = select i1 %42, i1 %44, i1 false
  br i1 %45, label %46, label %48

46:                                               ; preds = %32
  %47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0288_writeregI, i32 noundef 5, i32 noundef 18, i32 noundef %41) #10
  br label %48

48:                                               ; preds = %46, %32
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #9
  %49 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, ptr %1, i32 0, i32 1
  %50 = load i8, ptr %49, align 1
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %82, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds i8, ptr %3, i32 1
  %54 = getelementptr inbounds i8, ptr %4, i32 4
  %55 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  %56 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  br label %62

57:                                               ; preds = %78
  %58 = add nuw nsw i32 %63, 1
  %59 = load i8, ptr %49, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp ult i32 %58, %60
  br i1 %61, label %62, label %79

62:                                               ; preds = %57, %52
  %63 = phi i32 [ 0, %52 ], [ %58, %57 ]
  %64 = getelementptr [6 x i8], ptr %1, i32 0, i32 %63
  %65 = load i8, ptr %64, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #9
  store i8 6, ptr %3, align 2
  store i8 %65, ptr %53, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  store i32 0, ptr %54, align 4, !annotation !8
  %66 = load ptr, ptr %18, align 4
  %67 = load i8, ptr %66, align 4
  %68 = zext i8 %67 to i16
  store i16 %68, ptr %4, align 4
  store i16 0, ptr %55, align 2
  store i16 2, ptr %54, align 4
  store ptr %3, ptr %56, align 4
  %69 = load ptr, ptr %10, align 4
  %70 = call i32 @i2c_transfer(ptr noundef %69, ptr noundef nonnull %4, i32 noundef 1) #9
  %71 = icmp ne i32 %70, 1
  %72 = load i32, ptr @debug, align 4
  %73 = icmp ne i32 %72, 0
  %74 = select i1 %71, i1 %73, i1 false
  br i1 %74, label %75, label %78

75:                                               ; preds = %62
  %76 = zext i8 %65 to i32
  %77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0288_writeregI, i32 noundef 6, i32 noundef %76, i32 noundef %70) #10
  br label %78

78:                                               ; preds = %75, %62
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  br i1 %71, label %84, label %57

79:                                               ; preds = %57
  %80 = zext i8 %59 to i32
  %81 = mul nuw nsw i32 %80, 12
  br label %82

82:                                               ; preds = %79, %48
  %83 = phi i32 [ %81, %79 ], [ 0, %48 ]
  call void @msleep(i32 noundef %83) #9
  br label %84

84:                                               ; preds = %82, %78
  %85 = phi i32 [ 0, %82 ], [ -121, %78 ]
  ret i32 %85
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0288_send_diseqc_burst(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [2 x i8], align 2
  %8 = alloca %struct.i2c_msg, align 4
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr @debug, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.stv0288_send_diseqc_burst) #10
  br label %15

15:                                               ; preds = %13, %2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #9
  store i8 5, ptr %7, align 2
  %16 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 3, ptr %16, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #9
  %17 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 2, ptr %17, align 4, !annotation !8
  %18 = getelementptr inbounds %struct.stv0288_state, ptr %10, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = load i8, ptr %19, align 4
  %21 = zext i8 %20 to i16
  store i16 %21, ptr %8, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %22, align 2
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %23, align 4
  %24 = load ptr, ptr %10, align 4
  %25 = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %8, i32 noundef 1) #9
  %26 = icmp ne i32 %25, 1
  %27 = load i32, ptr @debug, align 4
  %28 = icmp ne i32 %27, 0
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %32

30:                                               ; preds = %15
  %31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0288_writeregI, i32 noundef 5, i32 noundef 3, i32 noundef %25) #10
  br label %32

32:                                               ; preds = %30, %15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #9
  br i1 %26, label %71, label %33

33:                                               ; preds = %32
  %34 = icmp ne i32 %1, 0
  %35 = sext i1 %34 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #9
  store i8 6, ptr %5, align 2
  %36 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 %35, ptr %36, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #9
  %37 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %37, align 4, !annotation !8
  %38 = load ptr, ptr %18, align 4
  %39 = load i8, ptr %38, align 4
  %40 = zext i8 %39 to i16
  store i16 %40, ptr %6, align 4
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %41, align 2
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %42, align 4
  %43 = load ptr, ptr %10, align 4
  %44 = call i32 @i2c_transfer(ptr noundef %43, ptr noundef nonnull %6, i32 noundef 1) #9
  %45 = icmp ne i32 %44, 1
  %46 = load i32, ptr @debug, align 4
  %47 = icmp ne i32 %46, 0
  %48 = select i1 %45, i1 %47, i1 false
  br i1 %48, label %49, label %52

49:                                               ; preds = %33
  %50 = zext i8 %35 to i32
  %51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0288_writeregI, i32 noundef 6, i32 noundef %50, i32 noundef %44) #10
  br label %52

52:                                               ; preds = %49, %33
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #9
  br i1 %45, label %71, label %53

53:                                               ; preds = %52
  call void @msleep(i32 noundef 15) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #9
  store i8 5, ptr %3, align 2
  %54 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 18, ptr %54, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  %55 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %55, align 4, !annotation !8
  %56 = load ptr, ptr %18, align 4
  %57 = load i8, ptr %56, align 4
  %58 = zext i8 %57 to i16
  store i16 %58, ptr %4, align 4
  %59 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %59, align 2
  %60 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %60, align 4
  %61 = load ptr, ptr %10, align 4
  %62 = call i32 @i2c_transfer(ptr noundef %61, ptr noundef nonnull %4, i32 noundef 1) #9
  %63 = icmp ne i32 %62, 1
  %64 = load i32, ptr @debug, align 4
  %65 = icmp ne i32 %64, 0
  %66 = select i1 %63, i1 %65, i1 false
  br i1 %66, label %67, label %69

67:                                               ; preds = %53
  %68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0288_writeregI, i32 noundef 5, i32 noundef 18, i32 noundef %62) #10
  br label %69

69:                                               ; preds = %67, %53
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  %70 = select i1 %63, i32 -121, i32 0
  br label %71

71:                                               ; preds = %69, %52, %32
  %72 = phi i32 [ -121, %32 ], [ -121, %52 ], [ %70, %69 ]
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0288_set_tone(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  switch i32 %1, label %46 [
    i32 0, label %9
    i32 1, label %27
  ]

9:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #9
  store i8 5, ptr %5, align 2
  %10 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 16, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #9
  %11 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %11, align 4, !annotation !8
  %12 = getelementptr inbounds %struct.stv0288_state, ptr %8, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i16
  store i16 %15, ptr %6, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %16, align 2
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %17, align 4
  %18 = load ptr, ptr %8, align 4
  %19 = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %6, i32 noundef 1) #9
  %20 = icmp ne i32 %19, 1
  %21 = load i32, ptr @debug, align 4
  %22 = icmp ne i32 %21, 0
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %26

24:                                               ; preds = %9
  %25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0288_writeregI, i32 noundef 5, i32 noundef 16, i32 noundef %19) #10
  br label %26

26:                                               ; preds = %24, %9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #9
  br i1 %20, label %46, label %45

27:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #9
  store i8 5, ptr %3, align 2
  %28 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 18, ptr %28, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  %29 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %29, align 4, !annotation !8
  %30 = getelementptr inbounds %struct.stv0288_state, ptr %8, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = load i8, ptr %31, align 4
  %33 = zext i8 %32 to i16
  store i16 %33, ptr %4, align 4
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %34, align 2
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %35, align 4
  %36 = load ptr, ptr %8, align 4
  %37 = call i32 @i2c_transfer(ptr noundef %36, ptr noundef nonnull %4, i32 noundef 1) #9
  %38 = icmp ne i32 %37, 1
  %39 = load i32, ptr @debug, align 4
  %40 = icmp ne i32 %39, 0
  %41 = select i1 %38, i1 %40, i1 false
  br i1 %41, label %42, label %44

42:                                               ; preds = %27
  %43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0288_writeregI, i32 noundef 5, i32 noundef 18, i32 noundef %37) #10
  br label %44

44:                                               ; preds = %42, %27
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  br i1 %38, label %46, label %45

45:                                               ; preds = %44, %26
  br label %46

46:                                               ; preds = %45, %44, %26, %2
  %47 = phi i32 [ 0, %45 ], [ -121, %26 ], [ -121, %44 ], [ -22, %2 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0288_set_voltage(ptr nocapture noundef readnone %0, i32 noundef %1) #0 {
  %3 = load i32, ptr @debug, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = icmp eq i32 %1, 0
  %7 = icmp eq i32 %1, 1
  %8 = select i1 %7, ptr @.str.15, ptr @.str.16
  %9 = select i1 %6, ptr @.str.14, ptr %8
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.stv0288_set_voltage, ptr noundef nonnull %9) #10
  br label %11

11:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0288_i2c_gate_ctrl(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %28, label %10

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #9
  store i8 1, ptr %5, align 2
  %11 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 -75, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #9
  %12 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %12, align 4, !annotation !8
  %13 = getelementptr inbounds %struct.stv0288_state, ptr %8, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load i8, ptr %14, align 4
  %16 = zext i8 %15 to i16
  store i16 %16, ptr %6, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %17, align 2
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %18, align 4
  %19 = load ptr, ptr %8, align 4
  %20 = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %6, i32 noundef 1) #9
  %21 = icmp ne i32 %20, 1
  %22 = load i32, ptr @debug, align 4
  %23 = icmp ne i32 %22, 0
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %27

25:                                               ; preds = %10
  %26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0288_writeregI, i32 noundef 1, i32 noundef 181, i32 noundef %20) #10
  br label %27

27:                                               ; preds = %25, %10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #9
  br label %46

28:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #9
  store i8 1, ptr %3, align 2
  %29 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 53, ptr %29, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  %30 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %30, align 4, !annotation !8
  %31 = getelementptr inbounds %struct.stv0288_state, ptr %8, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = load i8, ptr %32, align 4
  %34 = zext i8 %33 to i16
  store i16 %34, ptr %4, align 4
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %35, align 2
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %36, align 4
  %37 = load ptr, ptr %8, align 4
  %38 = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %4, i32 noundef 1) #9
  %39 = icmp ne i32 %38, 1
  %40 = load i32, ptr @debug, align 4
  %41 = icmp ne i32 %40, 0
  %42 = select i1 %39, i1 %41, i1 false
  br i1 %42, label %43, label %45

43:                                               ; preds = %28
  %44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0288_writeregI, i32 noundef 1, i32 noundef 53, i32 noundef %38) #10
  br label %45

45:                                               ; preds = %43, %28
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  br label %46

46:                                               ; preds = %45, %27
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %47(i32 noundef 214748) #9
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind allocsize(2) }
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
!8 = !{!"auto-init"}
