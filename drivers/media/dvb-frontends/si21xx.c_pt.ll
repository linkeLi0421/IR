; ModuleID = '/llk/IR/drivers/media/dvb-frontends/si21xx.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/si21xx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_si21xx_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22si21xx_attach\22\09\09\09\09\09"
module asm "__kstrtabns_si21xx_attach:\09\09\09\09\09"
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
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.si21xx_state = type { ptr, ptr, %struct.dvb_frontend, i8, i32, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }

@debug = internal global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"\017si21xx: %s\0A\00", align 1
@__func__.si21xx_attach = private unnamed_addr constant [14 x i8] c"si21xx_attach\00", align 1
@si21xx_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"SL SI21XX DVB-S\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 125000, i32 0, i32 1000000, i32 45000000, i32 500, i32 1710 }, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr null, ptr @si21xx_release, ptr null, ptr @si21xx_init, ptr @si21xx_sleep, ptr null, ptr null, ptr @si21_write, ptr null, ptr null, ptr @si21xx_set_frontend, ptr null, ptr null, ptr @si21_read_status, ptr @si21_read_ber, ptr @si21_read_signal_strength, ptr @si21_read_snr, ptr @si21_read_ucblocks, ptr null, ptr @si21xx_send_diseqc_msg, ptr null, ptr @si21xx_send_diseqc_burst, ptr @si21xx_set_tone, ptr @si21xx_set_voltage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@__kstrtab_si21xx_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_si21xx_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_si21xx_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @si21xx_attach to i32), ptr @__kstrtab_si21xx_attach, ptr @__kstrtabns_si21xx_attach }, section "___ksymtab+si21xx_attach", align 4
@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.66 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [57 x i8] c"parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1
@__UNIQUE_ID_description251 = internal constant [45 x i8] c"description=SL SI21XX DVB Demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [25 x i8] c"author=Igor M. Liplianin\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"\017si21xx: %s: readreg error (reg == 0x%02x, ret == %i)\0A\00", align 1
@__func__.si21_readreg = private unnamed_addr constant [13 x i8] c"si21_readreg\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c"\017si21xx: %s: writereg error (reg == 0x%02x, data == 0x%02x, ret == %i)\0A\00", align 1
@__func__.si21_writereg = private unnamed_addr constant [14 x i8] c"si21_writereg\00", align 1
@__func__.si21xx_release = private unnamed_addr constant [15 x i8] c"si21xx_release\00", align 1
@__func__.si21xx_init = private unnamed_addr constant [12 x i8] c"si21xx_init\00", align 1
@serit_sp1511lhb_inittab = internal unnamed_addr constant [148 x i8] c"\01( \03' \E0E\E1\08\FE\01\01(\89\09\04\80\05\01\06\00 \03$\88)\09*\0F,\10-\19.\08/\100\194 5\03E\02FEG\D0H\00I@J\03L\FDO.P.Q\10R\10V\92Y\00Z-[3\\\1F_vb\C0c\C0d\F3e\F3y@j@k\0Al\80m'q\06u`x\00y\B5|\05}\1A\87U\88r\8F\08\90\E0\94@\A0?\A1\C0\A4\CC\A5f\A6f\A7{\A8{\A9{\AA\9A\ED\04\AD\00\AE\03\CC\AB\01\08\FF\FF", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"\017si21xx:  %s : TS Set Error\0A\00", align 1
@.str.4 = private unnamed_addr constant [74 x i8] c"\017si21xx: %s: writereg error (reg1 == 0x%02x, data == 0x%02x, ret == %i)\0A\00", align 1
@__func__.si21_writeregs = private unnamed_addr constant [15 x i8] c"si21_writeregs\00", align 1
@__func__.si21xx_sleep = private unnamed_addr constant [13 x i8] c"si21xx_sleep\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"\017si21xx: %s: readreg error (ret == %i)\0A\00", align 1
@__func__.si21_readregs = private unnamed_addr constant [14 x i8] c"si21_readregs\00", align 1
@__const.si21xx_set_frontend.afs = private unnamed_addr constant [10 x i32] [i32 200, i32 192, i32 193, i32 194, i32 195, i32 196, i32 204, i32 205, i32 206, i32 207], align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"\017si21xx: %s : FE_SET_FRONTEND\0A\00", align 1
@__func__.si21xx_set_frontend = private unnamed_addr constant [20 x i8] c"si21xx_set_frontend\00", align 1
@.str.7 = private unnamed_addr constant [57 x i8] c"\017si21xx: %s: unsupported delivery system selected (%d)\0A\00", align 1
@__const.si21xx_setacquire.coderates = private unnamed_addr constant [10 x i8] c"\00\01\02\04\00\08\10 \00?", align 1
@__func__.si21xx_setacquire = private unnamed_addr constant [18 x i8] c"si21xx_setacquire\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"\017si21xx: %s : srate = %i\0A\00", align 1
@__func__.si21xx_set_symbolrate = private unnamed_addr constant [22 x i8] c"si21xx_set_symbolrate\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"\017si21xx: %s : FE_READ_STATUS : VSTATUS: 0x%02x\0A\00", align 1
@__func__.si21_read_status = private unnamed_addr constant [17 x i8] c"si21_read_status\00", align 1
@__func__.si21_read_ber = private unnamed_addr constant [14 x i8] c"si21_read_ber\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"\017si21xx: %s : AGCPWR: 0x%02x%02x, signal=0x%04x\0A\00", align 1
@__func__.si21_read_signal_strength = private unnamed_addr constant [26 x i8] c"si21_read_signal_strength\00", align 1
@__func__.si21_read_snr = private unnamed_addr constant [14 x i8] c"si21_read_snr\00", align 1
@__func__.si21_read_ucblocks = private unnamed_addr constant [19 x i8] c"si21_read_ucblocks\00", align 1
@__func__.si21xx_send_diseqc_msg = private unnamed_addr constant [23 x i8] c"si21xx_send_diseqc_msg\00", align 1
@__func__.si21xx_send_diseqc_burst = private unnamed_addr constant [25 x i8] c"si21xx_send_diseqc_burst\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__func__.si21xx_wait_diseqc_idle = private unnamed_addr constant [24 x i8] c"si21xx_wait_diseqc_idle\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"\017si21xx: %s: timeout!!\0A\00", align 1
@__func__.si21xx_set_tone = private unnamed_addr constant [16 x i8] c"si21xx_set_tone\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"\017si21xx: %s: %s\0A\00", align 1
@__func__.si21xx_set_voltage = private unnamed_addr constant [19 x i8] c"si21xx_set_voltage\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"SEC_VOLTAGE_13\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"SEC_VOLTAGE_18\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_license253, ptr @__ksymtab_si21xx_attach, ptr @__param_debug], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @si21xx_attach(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [2 x i8], align 2
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca [1 x i8], align 1
  %9 = alloca [1 x i8], align 1
  %10 = alloca [2 x %struct.i2c_msg], align 4
  %11 = load i32, ptr @debug, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.si21xx_attach) #8
  br label %15

15:                                               ; preds = %13, %2
  %16 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %17 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 1060) #9
  %18 = icmp eq ptr %17, null
  br i1 %18, label %83, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.si21xx_state, ptr %17, i32 0, i32 1
  store ptr %0, ptr %20, align 4
  store ptr %1, ptr %17, align 8
  %21 = getelementptr inbounds %struct.si21xx_state, ptr %17, i32 0, i32 3
  %22 = load i8, ptr %21, align 8
  %23 = and i8 %22, -2
  store i8 %23, ptr %21, align 8
  %24 = getelementptr inbounds %struct.si21xx_state, ptr %17, i32 0, i32 4
  store i32 0, ptr %24, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #10
  store i8 1, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #10
  store i8 0, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #10
  %25 = getelementptr inbounds i8, ptr %10, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %25, i8 0, i32 16, i1 false) #10, !annotation !8
  %26 = load i8, ptr %0, align 4
  %27 = zext i8 %26 to i16
  store i16 %27, ptr %10, align 4
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %28, align 2
  store i16 1, ptr %25, align 4
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %8, ptr %29, align 4
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1
  store i16 %27, ptr %30, align 4
  %31 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 1
  store i16 1, ptr %31, align 2
  %32 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 2
  store i16 1, ptr %32, align 4
  %33 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 3
  store ptr %9, ptr %33, align 4
  %34 = call i32 @i2c_transfer(ptr noundef %1, ptr noundef nonnull %10, i32 noundef 2) #10
  %35 = icmp ne i32 %34, 2
  %36 = load i32, ptr @debug, align 4
  %37 = icmp ne i32 %36, 0
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %39, label %41

39:                                               ; preds = %19
  %40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.si21_readreg, i32 noundef 1, i32 noundef %34) #8
  br label %41

41:                                               ; preds = %39, %19
  %42 = load i8, ptr %9, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #10
  %43 = or i8 %42, 64
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #10
  store i8 1, ptr %6, align 2
  %44 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 %43, ptr %44, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #10
  %45 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 2, ptr %45, align 4, !annotation !8
  %46 = load i8, ptr %0, align 4
  %47 = zext i8 %46 to i16
  store i16 %47, ptr %7, align 4
  %48 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %48, align 2
  %49 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %49, align 4
  %50 = call i32 @i2c_transfer(ptr noundef %1, ptr noundef nonnull %7, i32 noundef 1) #10
  %51 = icmp ne i32 %50, 1
  %52 = load i32, ptr @debug, align 4
  %53 = icmp ne i32 %52, 0
  %54 = select i1 %51, i1 %53, i1 false
  br i1 %54, label %55, label %58

55:                                               ; preds = %41
  %56 = zext i8 %43 to i32
  %57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.si21_writereg, i32 noundef 1, i32 noundef %56, i32 noundef %50) #8
  br label %58

58:                                               ; preds = %55, %41
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #10
  call void @msleep(i32 noundef 200) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 0, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %59 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %59, i8 0, i32 16, i1 false) #10, !annotation !8
  %60 = load i8, ptr %0, align 4
  %61 = zext i8 %60 to i16
  store i16 %61, ptr %5, align 4
  %62 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %62, align 2
  store i16 1, ptr %59, align 4
  %63 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %63, align 4
  %64 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %61, ptr %64, align 4
  %65 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %65, align 2
  %66 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %66, align 4
  %67 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %67, align 4
  %68 = call i32 @i2c_transfer(ptr noundef %1, ptr noundef nonnull %5, i32 noundef 2) #10
  %69 = icmp ne i32 %68, 2
  %70 = load i32, ptr @debug, align 4
  %71 = icmp ne i32 %70, 0
  %72 = select i1 %69, i1 %71, i1 false
  br i1 %72, label %73, label %75

73:                                               ; preds = %58
  %74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.si21_readreg, i32 noundef 0, i32 noundef %68) #8
  br label %75

75:                                               ; preds = %73, %58
  %76 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  %77 = and i8 %76, -17
  %78 = icmp eq i8 %77, 4
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.si21xx_state, ptr %17, i32 0, i32 2
  %81 = getelementptr inbounds %struct.si21xx_state, ptr %17, i32 0, i32 2, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %81, ptr noundef nonnull align 4 dereferenceable(544) @si21xx_ops, i32 544, i1 false)
  %82 = getelementptr inbounds %struct.si21xx_state, ptr %17, i32 0, i32 2, i32 3
  store ptr %17, ptr %82, align 8
  br label %84

83:                                               ; preds = %75, %15
  call void @kfree(ptr noundef %17) #10
  br label %84

84:                                               ; preds = %83, %79
  %85 = phi ptr [ null, %83 ], [ %80, %79 ]
  ret ptr %85
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @si21xx_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr @debug, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.si21xx_release) #8
  br label %8

8:                                                ; preds = %6, %1
  tail call void @kfree(ptr noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @si21xx_init(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [60 x i8], align 1
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [60 x i8], align 1
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [60 x i8], align 1
  %7 = alloca %struct.i2c_msg, align 4
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr @debug, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.si21xx_init) #8
  br label %14

14:                                               ; preds = %12, %1
  %15 = getelementptr inbounds i8, ptr %6, i32 1
  %16 = getelementptr inbounds i8, ptr %7, i32 4
  %17 = getelementptr inbounds %struct.si21xx_state, ptr %9, i32 0, i32 1
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  br label %20

20:                                               ; preds = %37, %14
  %21 = phi i8 [ 40, %14 ], [ %43, %37 ]
  %22 = phi i8 [ 1, %14 ], [ %40, %37 ]
  %23 = phi i32 [ 0, %14 ], [ %38, %37 ]
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(60) %15, i8 0, i32 59, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #10
  store i32 0, ptr %16, align 4, !annotation !8
  %24 = load ptr, ptr %17, align 4
  %25 = load i8, ptr %24, align 4
  %26 = zext i8 %25 to i16
  store i16 %26, ptr %7, align 4
  store i16 0, ptr %18, align 2
  store i16 2, ptr %16, align 4
  store ptr %6, ptr %19, align 4
  store i8 %22, ptr %6, align 1
  store i8 %21, ptr %15, align 1
  %27 = load ptr, ptr %9, align 4
  %28 = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %7, i32 noundef 1) #10
  %29 = icmp ne i32 %28, 1
  %30 = load i32, ptr @debug, align 4
  %31 = icmp ne i32 %30, 0
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %33, label %37

33:                                               ; preds = %20
  %34 = zext i8 %22 to i32
  %35 = zext i8 %21 to i32
  %36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.si21_writeregs, i32 noundef %34, i32 noundef %35, i32 noundef %28) #8
  br label %37

37:                                               ; preds = %33, %20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %6) #10
  %38 = add nuw nsw i32 %23, 2
  %39 = getelementptr [148 x i8], ptr @serit_sp1511lhb_inittab, i32 0, i32 %38
  %40 = load i8, ptr %39, align 1
  %41 = or i32 %38, 1
  %42 = getelementptr [148 x i8], ptr @serit_sp1511lhb_inittab, i32 0, i32 %41
  %43 = load i8, ptr %42, align 1
  %44 = icmp eq i32 %38, 146
  %45 = icmp eq i32 %41, 147
  %46 = and i1 %44, %45
  br i1 %46, label %47, label %20

47:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %4) #10
  %48 = getelementptr inbounds i8, ptr %4, i32 1
  %49 = getelementptr inbounds i8, ptr %4, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(60) %49, i8 0, i32 58, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %50 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %50, align 4, !annotation !8
  %51 = load ptr, ptr %17, align 4
  %52 = load i8, ptr %51, align 4
  %53 = zext i8 %52 to i16
  store i16 %53, ptr %5, align 4
  %54 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %54, align 2
  %55 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %55, align 4
  store i8 1, ptr %4, align 1
  store i8 8, ptr %48, align 1
  %56 = load ptr, ptr %9, align 4
  %57 = call i32 @i2c_transfer(ptr noundef %56, ptr noundef nonnull %5, i32 noundef 1) #10
  %58 = icmp ne i32 %57, 1
  %59 = load i32, ptr @debug, align 4
  %60 = icmp ne i32 %59, 0
  %61 = select i1 %58, i1 %60, i1 false
  br i1 %61, label %62, label %64

62:                                               ; preds = %47
  %63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.si21_writeregs, i32 noundef 1, i32 noundef 8, i32 noundef %57) #8
  br label %64

64:                                               ; preds = %62, %47
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %2) #10
  %65 = getelementptr inbounds i8, ptr %2, i32 1
  %66 = getelementptr inbounds i8, ptr %2, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(60) %66, i8 0, i32 57, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %67 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 3, ptr %67, align 4, !annotation !8
  %68 = load ptr, ptr %17, align 4
  %69 = load i8, ptr %68, align 4
  %70 = zext i8 %69 to i16
  store i16 %70, ptr %3, align 4
  %71 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %71, align 2
  %72 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %72, align 4
  store i8 2, ptr %2, align 1
  store i8 7, ptr %65, align 1
  %73 = getelementptr inbounds i8, ptr %2, i32 2
  store i8 0, ptr %73, align 1
  %74 = load ptr, ptr %9, align 4
  %75 = call i32 @i2c_transfer(ptr noundef %74, ptr noundef nonnull %3, i32 noundef 1) #10
  %76 = icmp ne i32 %75, 1
  %77 = load i32, ptr @debug, align 4
  %78 = icmp ne i32 %77, 0
  %79 = select i1 %76, i1 %78, i1 false
  br i1 %79, label %80, label %83

80:                                               ; preds = %64
  %81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.si21_writeregs, i32 noundef 2, i32 noundef 7, i32 noundef %75) #8
  %82 = load i32, ptr @debug, align 4
  br label %83

83:                                               ; preds = %80, %64
  %84 = phi i32 [ %77, %64 ], [ %82, %80 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %2) #10
  %85 = icmp ne i32 %84, 0
  %86 = select i1 %76, i1 %85, i1 false
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.si21xx_init) #8
  br label %89

89:                                               ; preds = %87, %83
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @si21xx_sleep(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [60 x i8], align 1
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca i8, align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca i8, align 1
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #10
  store i8 0, ptr %6, align 1, !annotation !8
  %9 = load i32, ptr @debug, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.si21xx_sleep) #8
  br label %13

13:                                               ; preds = %11, %1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  store i8 1, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %14 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %14, i8 0, i32 16, i1 false) #10, !annotation !8
  %15 = getelementptr inbounds %struct.si21xx_state, ptr %8, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = load i8, ptr %16, align 4
  %18 = zext i8 %17 to i16
  store i16 %18, ptr %5, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %19, align 2
  store i16 1, ptr %14, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %20, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %22 = load i8, ptr %16, align 4
  %23 = zext i8 %22 to i16
  store i16 %23, ptr %21, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %24, align 2
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %25, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %6, ptr %26, align 4
  %27 = load ptr, ptr %8, align 4
  %28 = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %5, i32 noundef 2) #10
  %29 = icmp ne i32 %28, 2
  %30 = load i32, ptr @debug, align 4
  %31 = icmp ne i32 %30, 0
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %33, label %35

33:                                               ; preds = %13
  %34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.si21_readregs, i32 noundef %28) #8
  br label %35

35:                                               ; preds = %33, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  %36 = load i8, ptr %6, align 1
  %37 = or i8 %36, 64
  store i8 %37, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %2) #10
  %38 = getelementptr inbounds i8, ptr %2, i32 1
  %39 = getelementptr inbounds i8, ptr %2, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(60) %39, i8 0, i32 58, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %40 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %40, align 4, !annotation !8
  %41 = load ptr, ptr %15, align 4
  %42 = load i8, ptr %41, align 4
  %43 = zext i8 %42 to i16
  store i16 %43, ptr %3, align 4
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %44, align 2
  %45 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %45, align 4
  store i8 1, ptr %2, align 1
  store i8 %37, ptr %38, align 1
  %46 = load ptr, ptr %8, align 4
  %47 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %3, i32 noundef 1) #10
  %48 = icmp ne i32 %47, 1
  %49 = load i32, ptr @debug, align 4
  %50 = icmp ne i32 %49, 0
  %51 = select i1 %48, i1 %50, i1 false
  br i1 %51, label %52, label %56

52:                                               ; preds = %35
  %53 = load i8, ptr %6, align 1
  %54 = zext i8 %53 to i32
  %55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.si21_writeregs, i32 noundef 1, i32 noundef %54, i32 noundef %47) #8
  br label %56

56:                                               ; preds = %52, %35
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %2) #10
  %57 = getelementptr inbounds %struct.si21xx_state, ptr %8, i32 0, i32 3
  %58 = load i8, ptr %57, align 4
  %59 = and i8 %58, -2
  store i8 %59, ptr %57, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @si21_write(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
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
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #10
  store i8 %10, ptr %4, align 2
  %13 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 %12, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %14 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %14, align 4, !annotation !8
  %15 = getelementptr inbounds %struct.si21xx_state, ptr %9, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = load i8, ptr %16, align 4
  %18 = zext i8 %17 to i16
  store i16 %18, ptr %5, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %19, align 2
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %20, align 4
  %21 = load ptr, ptr %9, align 4
  %22 = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %5, i32 noundef 1) #10
  %23 = icmp ne i32 %22, 1
  %24 = load i32, ptr @debug, align 4
  %25 = icmp ne i32 %24, 0
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %27, label %31

27:                                               ; preds = %7
  %28 = zext i8 %10 to i32
  %29 = zext i8 %12 to i32
  %30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.si21_writereg, i32 noundef %28, i32 noundef %29, i32 noundef %22) #8
  br label %31

31:                                               ; preds = %27, %7
  %32 = select i1 %23, i32 -121, i32 0
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #10
  br label %33

33:                                               ; preds = %31, %3
  %34 = phi i32 [ %32, %31 ], [ -22, %3 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @si21xx_set_frontend(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [60 x i8], align 1
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [60 x i8], align 1
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [60 x i8], align 1
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca [60 x i8], align 1
  %9 = alloca %struct.i2c_msg, align 4
  %10 = alloca [60 x i8], align 1
  %11 = alloca %struct.i2c_msg, align 4
  %12 = alloca i8, align 1
  %13 = alloca [2 x %struct.i2c_msg], align 4
  %14 = alloca [60 x i8], align 1
  %15 = alloca %struct.i2c_msg, align 4
  %16 = alloca [60 x i8], align 1
  %17 = alloca %struct.i2c_msg, align 4
  %18 = alloca i8, align 1
  %19 = alloca [60 x i8], align 1
  %20 = alloca %struct.i2c_msg, align 4
  %21 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %24 = load i32, ptr @debug, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %1
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.si21xx_set_frontend) #8
  br label %28

28:                                               ; preds = %26, %1
  %29 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 5
  br i1 %31, label %32, label %51

32:                                               ; preds = %28
  %33 = load i32, ptr %23, align 4
  %34 = mul i32 %33, 10
  %35 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 10
  %36 = load i32, ptr %35, align 4
  %37 = udiv i32 %36, 100
  %38 = mul i32 %37, 135
  %39 = sdiv i32 %38, 200
  %40 = sub i32 %34, %39
  %41 = add i32 %39, %34
  %42 = add i32 %34, 400000
  %43 = sdiv i32 %42, 100000
  %44 = mul nsw i32 %43, -100000
  %45 = srem i32 %34, 500000
  %46 = sub i32 %34, %45
  %47 = add i32 %46, 500000
  %48 = icmp ult i32 %40, %47
  %49 = icmp ult i32 %47, %41
  %50 = and i1 %48, %49
  br i1 %50, label %60, label %56

51:                                               ; preds = %28
  %52 = load i32, ptr @debug, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %623, label %54

54:                                               ; preds = %51
  %55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.si21xx_set_frontend, i32 noundef %30) #8
  br label %623

56:                                               ; preds = %32
  %57 = icmp ult i32 %40, %46
  %58 = icmp ult i32 %46, %41
  %59 = and i1 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56, %32
  br label %61

61:                                               ; preds = %60, %56
  %62 = phi i1 [ true, %56 ], [ false, %60 ]
  %63 = srem i32 %34, 480000
  %64 = sub i32 %34, %63
  %65 = add i32 %64, 480000
  %66 = icmp ult i32 %40, %65
  %67 = icmp ult i32 %65, %41
  %68 = and i1 %66, %67
  br i1 %68, label %73, label %69

69:                                               ; preds = %61
  %70 = icmp ult i32 %40, %64
  %71 = icmp ult i32 %64, %41
  %72 = and i1 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %69, %61
  br label %74

74:                                               ; preds = %73, %69
  %75 = phi i1 [ false, %73 ], [ true, %69 ]
  %76 = srem i32 %34, 482500
  %77 = sub i32 %34, %76
  %78 = add i32 %77, 482500
  %79 = icmp ult i32 %40, %78
  %80 = icmp ult i32 %78, %41
  %81 = and i1 %79, %80
  br i1 %81, label %86, label %82

82:                                               ; preds = %74
  %83 = icmp ult i32 %40, %77
  %84 = icmp ult i32 %77, %41
  %85 = and i1 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %82, %74
  br label %87

87:                                               ; preds = %86, %82
  %88 = phi i1 [ false, %86 ], [ true, %82 ]
  %89 = srem i32 %34, 485000
  %90 = sub i32 %34, %89
  %91 = add i32 %90, 485000
  %92 = icmp ult i32 %40, %91
  %93 = icmp ult i32 %91, %41
  %94 = and i1 %92, %93
  br i1 %94, label %99, label %95

95:                                               ; preds = %87
  %96 = icmp ult i32 %40, %90
  %97 = icmp ult i32 %90, %41
  %98 = and i1 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %95, %87
  br label %100

100:                                              ; preds = %99, %95
  %101 = phi i1 [ false, %99 ], [ true, %95 ]
  %102 = srem i32 %34, 487500
  %103 = sub i32 %34, %102
  %104 = add i32 %103, 487500
  %105 = icmp ult i32 %40, %104
  %106 = icmp ult i32 %104, %41
  %107 = and i1 %105, %106
  br i1 %107, label %112, label %108

108:                                              ; preds = %100
  %109 = icmp ult i32 %40, %103
  %110 = icmp ult i32 %103, %41
  %111 = and i1 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %108, %100
  br label %113

113:                                              ; preds = %112, %108
  %114 = phi i1 [ false, %112 ], [ true, %108 ]
  %115 = srem i32 %34, 490000
  %116 = sub i32 %34, %115
  %117 = add i32 %116, 490000
  %118 = icmp ult i32 %40, %117
  %119 = icmp ult i32 %117, %41
  %120 = and i1 %118, %119
  br i1 %120, label %125, label %121

121:                                              ; preds = %113
  %122 = icmp ult i32 %40, %116
  %123 = icmp ult i32 %116, %41
  %124 = and i1 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %121, %113
  br label %126

126:                                              ; preds = %125, %121
  %127 = phi i1 [ false, %125 ], [ true, %121 ]
  %128 = srem i32 %34, 510000
  %129 = sub i32 %34, %128
  %130 = add i32 %129, 510000
  %131 = icmp ult i32 %40, %130
  %132 = icmp ult i32 %130, %41
  %133 = and i1 %131, %132
  br i1 %133, label %138, label %134

134:                                              ; preds = %126
  %135 = icmp ult i32 %40, %129
  %136 = icmp ult i32 %129, %41
  %137 = and i1 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %134, %126
  br label %139

139:                                              ; preds = %138, %134
  %140 = phi i1 [ false, %138 ], [ true, %134 ]
  %141 = srem i32 %34, 512500
  %142 = sub i32 %34, %141
  %143 = add i32 %142, 512500
  %144 = icmp ult i32 %40, %143
  %145 = icmp ult i32 %143, %41
  %146 = and i1 %144, %145
  br i1 %146, label %151, label %147

147:                                              ; preds = %139
  %148 = icmp ult i32 %40, %142
  %149 = icmp ult i32 %142, %41
  %150 = and i1 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %147, %139
  br label %152

152:                                              ; preds = %151, %147
  %153 = phi i1 [ false, %151 ], [ true, %147 ]
  %154 = srem i32 %34, 515000
  %155 = sub i32 %34, %154
  %156 = add i32 %155, 515000
  %157 = icmp ult i32 %40, %156
  %158 = icmp ult i32 %156, %41
  %159 = and i1 %157, %158
  br i1 %159, label %164, label %160

160:                                              ; preds = %152
  %161 = icmp ult i32 %40, %155
  %162 = icmp ult i32 %155, %41
  %163 = and i1 %161, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %160, %152
  br label %165

165:                                              ; preds = %164, %160
  %166 = phi i1 [ false, %164 ], [ true, %160 ]
  %167 = srem i32 %34, 517500
  %168 = sub i32 %34, %167
  %169 = add i32 %168, 517500
  %170 = icmp ult i32 %40, %169
  %171 = icmp ult i32 %169, %41
  %172 = and i1 %170, %171
  br i1 %172, label %177, label %173

173:                                              ; preds = %165
  %174 = icmp ult i32 %40, %168
  %175 = icmp ult i32 %168, %41
  %176 = and i1 %174, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %173, %165
  br label %178

178:                                              ; preds = %177, %173
  %179 = phi i1 [ false, %177 ], [ true, %173 ]
  %180 = srem i32 %34, 1000000
  %181 = sub i32 %34, %180
  %182 = add i32 %181, 1000000
  %183 = icmp ult i32 %40, %182
  %184 = icmp ult i32 %182, %41
  %185 = and i1 %183, %184
  br i1 %185, label %190, label %186

186:                                              ; preds = %178
  %187 = icmp ult i32 %40, %181
  %188 = icmp ult i32 %181, %41
  %189 = and i1 %187, %188
  br i1 %189, label %190, label %191

190:                                              ; preds = %186, %178
  br label %191

191:                                              ; preds = %190, %186
  %192 = phi i1 [ true, %186 ], [ false, %190 ]
  %193 = srem i32 %34, 960000
  %194 = sub i32 %34, %193
  %195 = add i32 %194, 960000
  %196 = icmp ult i32 %40, %195
  %197 = icmp ult i32 %195, %41
  %198 = and i1 %196, %197
  br i1 %198, label %203, label %199

199:                                              ; preds = %191
  %200 = icmp ult i32 %40, %194
  %201 = icmp ult i32 %194, %41
  %202 = and i1 %200, %201
  br i1 %202, label %203, label %204

203:                                              ; preds = %199, %191
  br label %204

204:                                              ; preds = %203, %199
  %205 = phi i1 [ true, %203 ], [ false, %199 ]
  %206 = srem i32 %34, 965000
  %207 = sub i32 %34, %206
  %208 = add i32 %207, 965000
  %209 = icmp ult i32 %40, %208
  %210 = icmp ult i32 %208, %41
  %211 = and i1 %209, %210
  br i1 %211, label %216, label %212

212:                                              ; preds = %204
  %213 = icmp ult i32 %40, %207
  %214 = icmp ult i32 %207, %41
  %215 = and i1 %213, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %212, %204
  br label %217

217:                                              ; preds = %216, %212
  %218 = phi i1 [ true, %216 ], [ false, %212 ]
  %219 = srem i32 %34, 970000
  %220 = sub i32 %34, %219
  %221 = add i32 %220, 970000
  %222 = icmp ult i32 %40, %221
  %223 = icmp ult i32 %221, %41
  %224 = and i1 %222, %223
  br i1 %224, label %229, label %225

225:                                              ; preds = %217
  %226 = icmp ult i32 %40, %220
  %227 = icmp ult i32 %220, %41
  %228 = and i1 %226, %227
  br i1 %228, label %229, label %230

229:                                              ; preds = %225, %217
  br label %230

230:                                              ; preds = %229, %225
  %231 = phi i1 [ true, %229 ], [ false, %225 ]
  %232 = srem i32 %34, 975000
  %233 = sub i32 %34, %232
  %234 = add i32 %233, 975000
  %235 = icmp ult i32 %40, %234
  %236 = icmp ult i32 %234, %41
  %237 = and i1 %235, %236
  br i1 %237, label %242, label %238

238:                                              ; preds = %230
  %239 = icmp ult i32 %40, %233
  %240 = icmp ult i32 %233, %41
  %241 = and i1 %239, %240
  br i1 %241, label %242, label %243

242:                                              ; preds = %238, %230
  br label %243

243:                                              ; preds = %242, %238
  %244 = phi i1 [ true, %242 ], [ false, %238 ]
  %245 = srem i32 %34, 980000
  %246 = sub i32 %34, %245
  %247 = add i32 %246, 980000
  %248 = icmp ult i32 %40, %247
  %249 = icmp ult i32 %247, %41
  %250 = and i1 %248, %249
  br i1 %250, label %255, label %251

251:                                              ; preds = %243
  %252 = icmp ult i32 %40, %246
  %253 = icmp ult i32 %246, %41
  %254 = and i1 %252, %253
  br i1 %254, label %255, label %256

255:                                              ; preds = %251, %243
  br label %256

256:                                              ; preds = %255, %251
  %257 = phi i1 [ true, %255 ], [ false, %251 ]
  %258 = srem i32 %34, 1020000
  %259 = sub i32 %34, %258
  %260 = add i32 %259, 1020000
  %261 = icmp ult i32 %40, %260
  %262 = icmp ult i32 %260, %41
  %263 = and i1 %261, %262
  br i1 %263, label %268, label %264

264:                                              ; preds = %256
  %265 = icmp ult i32 %40, %259
  %266 = icmp ult i32 %259, %41
  %267 = and i1 %265, %266
  br i1 %267, label %268, label %269

268:                                              ; preds = %264, %256
  br label %269

269:                                              ; preds = %268, %264
  %270 = phi i1 [ true, %268 ], [ false, %264 ]
  %271 = srem i32 %34, 1025000
  %272 = sub i32 %34, %271
  %273 = add i32 %272, 1025000
  %274 = icmp ult i32 %40, %273
  %275 = icmp ult i32 %273, %41
  %276 = and i1 %274, %275
  br i1 %276, label %281, label %277

277:                                              ; preds = %269
  %278 = icmp ult i32 %40, %272
  %279 = icmp ult i32 %272, %41
  %280 = and i1 %278, %279
  br i1 %280, label %281, label %282

281:                                              ; preds = %277, %269
  br label %282

282:                                              ; preds = %281, %277
  %283 = phi i1 [ true, %281 ], [ false, %277 ]
  %284 = srem i32 %34, 1030000
  %285 = sub i32 %34, %284
  %286 = add i32 %285, 1030000
  %287 = icmp ult i32 %40, %286
  %288 = icmp ult i32 %286, %41
  %289 = and i1 %287, %288
  br i1 %289, label %294, label %290

290:                                              ; preds = %282
  %291 = icmp ult i32 %40, %285
  %292 = icmp ult i32 %285, %41
  %293 = and i1 %291, %292
  br i1 %293, label %294, label %295

294:                                              ; preds = %290, %282
  br label %295

295:                                              ; preds = %294, %290
  %296 = phi i1 [ true, %294 ], [ false, %290 ]
  %297 = srem i32 %34, 1035000
  %298 = sub i32 %34, %297
  %299 = add i32 %298, 1035000
  %300 = icmp ult i32 %40, %299
  %301 = icmp ult i32 %299, %41
  %302 = and i1 %300, %301
  br i1 %302, label %307, label %303

303:                                              ; preds = %295
  %304 = icmp ult i32 %40, %298
  %305 = icmp ult i32 %298, %41
  %306 = and i1 %304, %305
  br i1 %306, label %307, label %308

307:                                              ; preds = %303, %295
  br label %308

308:                                              ; preds = %307, %303
  %309 = phi i1 [ true, %307 ], [ false, %303 ]
  %310 = add i32 %44, %34
  br i1 %192, label %338, label %339

311:                                              ; preds = %338
  %312 = xor i1 %75, true
  %313 = or i1 %205, %312
  %314 = or i1 %313, %218
  %315 = xor i1 %88, true
  %316 = or i1 %314, %315
  %317 = or i1 %316, %231
  %318 = xor i1 %101, true
  %319 = or i1 %317, %318
  %320 = or i1 %319, %244
  %321 = xor i1 %114, true
  %322 = or i1 %320, %321
  %323 = or i1 %322, %257
  %324 = xor i1 %127, true
  %325 = or i1 %323, %324
  %326 = or i1 %325, %270
  %327 = xor i1 %140, true
  %328 = or i1 %326, %327
  %329 = or i1 %328, %283
  %330 = xor i1 %153, true
  %331 = or i1 %329, %330
  %332 = or i1 %331, %296
  %333 = xor i1 %166, true
  %334 = or i1 %332, %333
  %335 = or i1 %334, %309
  %336 = xor i1 %179, true
  %337 = or i1 %335, %336
  br i1 %337, label %339, label %370

338:                                              ; preds = %308
  br i1 %62, label %311, label %344

339:                                              ; preds = %344, %311, %308
  %340 = phi i32 [ %369, %344 ], [ 0, %308 ], [ 0, %311 ]
  %341 = getelementptr [10 x i32], ptr @__const.si21xx_set_frontend.afs, i32 0, i32 %340
  %342 = load i32, ptr %341, align 4
  %343 = trunc i32 %342 to i8
  br label %370

344:                                              ; preds = %338
  %345 = or i1 %205, %75
  %346 = or i1 %345, %218
  %347 = or i1 %346, %88
  %348 = select i1 %345, i32 1, i32 2
  %349 = or i1 %347, %231
  %350 = or i1 %349, %101
  %351 = select i1 %347, i32 %348, i32 3
  %352 = or i1 %350, %244
  %353 = or i1 %352, %114
  %354 = select i1 %350, i32 %351, i32 4
  %355 = or i1 %353, %257
  %356 = or i1 %355, %127
  %357 = select i1 %353, i32 %354, i32 5
  %358 = or i1 %356, %270
  %359 = or i1 %358, %140
  %360 = select i1 %356, i32 %357, i32 6
  %361 = or i1 %359, %283
  %362 = or i1 %361, %153
  %363 = select i1 %359, i32 %360, i32 7
  %364 = or i1 %362, %296
  %365 = or i1 %364, %166
  %366 = select i1 %362, i32 %363, i32 8
  %367 = or i1 %365, %309
  %368 = or i1 %367, %179
  %369 = select i1 %365, i32 %366, i32 9
  br i1 %368, label %339, label %370

370:                                              ; preds = %344, %339, %311
  %371 = phi i8 [ %343, %339 ], [ -56, %311 ], [ 0, %344 ]
  %372 = add i8 %371, 48
  %373 = icmp ult i8 %372, -16
  %374 = select i1 %373, i8 -56, i8 %371
  %375 = sdiv i32 %310, 10
  %376 = shl i32 %375, 14
  %377 = zext i8 %374 to i32
  %378 = mul nuw nsw i32 %377, 1000
  %379 = sdiv i32 %376, %378
  %380 = trunc i32 %43 to i8
  %381 = trunc i32 %379 to i8
  %382 = lshr i32 %379, 8
  %383 = trunc i32 %382 to i8
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %19) #10
  %384 = getelementptr inbounds i8, ptr %19, i32 1
  %385 = getelementptr inbounds i8, ptr %19, i32 5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(60) %385, i8 0, i32 55, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #10
  %386 = getelementptr inbounds i8, ptr %20, i32 4
  store i32 5, ptr %386, align 4, !annotation !8
  %387 = getelementptr inbounds %struct.si21xx_state, ptr %22, i32 0, i32 1
  %388 = load ptr, ptr %387, align 4
  %389 = load i8, ptr %388, align 4
  %390 = zext i8 %389 to i16
  store i16 %390, ptr %20, align 4
  %391 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 1
  store i16 0, ptr %391, align 2
  %392 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 3
  store ptr %19, ptr %392, align 4
  store i8 21, ptr %19, align 1
  store i8 %374, ptr %384, align 1
  %393 = getelementptr inbounds i8, ptr %19, i32 2
  store i8 %380, ptr %393, align 1
  %394 = getelementptr inbounds i8, ptr %19, i32 3
  store i8 %381, ptr %394, align 1
  %395 = getelementptr inbounds i8, ptr %19, i32 4
  store i8 %383, ptr %395, align 1
  %396 = load ptr, ptr %22, align 4
  %397 = call i32 @i2c_transfer(ptr noundef %396, ptr noundef nonnull %20, i32 noundef 1) #10
  %398 = icmp ne i32 %397, 1
  %399 = load i32, ptr @debug, align 4
  %400 = icmp ne i32 %399, 0
  %401 = select i1 %398, i1 %400, i1 false
  br i1 %401, label %402, label %405

402:                                              ; preds = %370
  %403 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.si21_writeregs, i32 noundef 21, i32 noundef %377, i32 noundef %397) #8
  %404 = load i32, ptr @debug, align 4
  br label %405

405:                                              ; preds = %402, %370
  %406 = phi i32 [ %399, %370 ], [ %404, %402 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #10
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %19) #10
  %407 = getelementptr inbounds %struct.si21xx_state, ptr %22, i32 0, i32 5
  store i32 %377, ptr %407, align 4
  %408 = load i32, ptr %35, align 4
  %409 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 5
  %410 = load i32, ptr %409, align 4
  %411 = load ptr, ptr %21, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %18) #10
  store i8 0, ptr %18, align 1, !annotation !8
  %412 = icmp eq i32 %406, 0
  br i1 %412, label %413, label %416

413:                                              ; preds = %405
  %414 = getelementptr [10 x i8], ptr @__const.si21xx_setacquire.coderates, i32 0, i32 %410
  %415 = load i8, ptr %414, align 1
  br label %425

416:                                              ; preds = %405
  %417 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.si21xx_setacquire) #8
  %418 = load i32, ptr @debug, align 4
  %419 = getelementptr [10 x i8], ptr @__const.si21xx_setacquire.coderates, i32 0, i32 %410
  %420 = load i8, ptr %419, align 1
  %421 = load ptr, ptr %21, align 4
  %422 = icmp eq i32 %418, 0
  br i1 %422, label %425, label %423

423:                                              ; preds = %416
  %424 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.si21xx_set_symbolrate, i32 noundef %408) #8
  br label %425

425:                                              ; preds = %423, %416, %413
  %426 = phi ptr [ %411, %413 ], [ %421, %423 ], [ %421, %416 ]
  %427 = phi i8 [ %415, %413 ], [ %420, %423 ], [ %420, %416 ]
  %428 = add i32 %408, -45000001
  %429 = icmp ult i32 %428, -44000001
  br i1 %429, label %486, label %430

430:                                              ; preds = %425
  %431 = getelementptr inbounds %struct.si21xx_state, ptr %426, i32 0, i32 5
  %432 = load i32, ptr %431, align 4
  %433 = freeze i32 %408
  %434 = udiv i32 %433, 100
  %435 = mul i32 %434, 100
  %436 = sub i32 %433, %435
  %437 = shl nuw nsw i32 %436, 23
  %438 = udiv i32 %437, %432
  %439 = udiv i32 %438, 100
  %440 = urem i32 %434, 100
  %441 = shl nuw nsw i32 %440, 23
  %442 = udiv i32 %441, %432
  %443 = add nuw nsw i32 %442, %439
  %444 = udiv i32 %408, 10000
  %445 = udiv i32 %443, 100
  %446 = trunc i32 %444 to i16
  %447 = urem i16 %446, 100
  %448 = zext i16 %447 to i32
  %449 = shl nuw nsw i32 %448, 23
  %450 = udiv i32 %449, %432
  %451 = add nuw nsw i32 %445, %450
  %452 = udiv i32 %408, 1000000
  %453 = udiv i32 %451, 100
  %454 = trunc i32 %452 to i8
  %455 = urem i8 %454, 100
  %456 = zext i8 %455 to i32
  %457 = shl nuw nsw i32 %456, 23
  %458 = udiv i32 %457, %432
  %459 = add nuw nsw i32 %453, %458
  %460 = trunc i32 %459 to i8
  %461 = lshr i32 %459, 8
  %462 = trunc i32 %461 to i8
  %463 = lshr i32 %459, 16
  %464 = trunc i32 %463 to i8
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %16) #10
  %465 = getelementptr inbounds i8, ptr %16, i32 1
  %466 = getelementptr inbounds i8, ptr %16, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(60) %466, i8 0, i32 56, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #10
  %467 = getelementptr inbounds i8, ptr %17, i32 4
  store i32 4, ptr %467, align 4, !annotation !8
  %468 = getelementptr inbounds %struct.si21xx_state, ptr %426, i32 0, i32 1
  %469 = load ptr, ptr %468, align 4
  %470 = load i8, ptr %469, align 4
  %471 = zext i8 %470 to i16
  store i16 %471, ptr %17, align 4
  %472 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %472, align 2
  %473 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %16, ptr %473, align 4
  store i8 63, ptr %16, align 1
  store i8 %460, ptr %465, align 1
  %474 = getelementptr inbounds i8, ptr %16, i32 2
  store i8 %462, ptr %474, align 1
  %475 = getelementptr inbounds i8, ptr %16, i32 3
  store i8 %464, ptr %475, align 1
  %476 = load ptr, ptr %426, align 4
  %477 = call i32 @i2c_transfer(ptr noundef %476, ptr noundef nonnull %17, i32 noundef 1) #10
  %478 = icmp ne i32 %477, 1
  %479 = load i32, ptr @debug, align 4
  %480 = icmp ne i32 %479, 0
  %481 = select i1 %478, i1 %480, i1 false
  br i1 %481, label %482, label %485

482:                                              ; preds = %430
  %483 = and i32 %459, 255
  %484 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.si21_writeregs, i32 noundef 63, i32 noundef %483, i32 noundef %477) #8
  br label %485

485:                                              ; preds = %482, %430
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %16) #10
  br label %486

486:                                              ; preds = %485, %425
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %14) #10
  %487 = getelementptr inbounds i8, ptr %14, i32 1
  %488 = getelementptr inbounds i8, ptr %14, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(60) %488, i8 0, i32 58, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #10
  %489 = getelementptr inbounds i8, ptr %15, i32 4
  store i32 2, ptr %489, align 4, !annotation !8
  %490 = getelementptr inbounds %struct.si21xx_state, ptr %411, i32 0, i32 1
  %491 = load ptr, ptr %490, align 4
  %492 = load i8, ptr %491, align 4
  %493 = zext i8 %492 to i16
  store i16 %493, ptr %15, align 4
  %494 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %494, align 2
  %495 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %14, ptr %495, align 4
  store i8 -96, ptr %14, align 1
  store i8 %427, ptr %487, align 1
  %496 = load ptr, ptr %411, align 4
  %497 = call i32 @i2c_transfer(ptr noundef %496, ptr noundef nonnull %15, i32 noundef 1) #10
  %498 = icmp ne i32 %497, 1
  %499 = load i32, ptr @debug, align 4
  %500 = icmp ne i32 %499, 0
  %501 = select i1 %498, i1 %500, i1 false
  br i1 %501, label %502, label %505

502:                                              ; preds = %486
  %503 = zext i8 %427 to i32
  %504 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.si21_writeregs, i32 noundef 160, i32 noundef %503, i32 noundef %497) #8
  br label %505

505:                                              ; preds = %502, %486
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %14) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #10
  store i8 20, ptr %12, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #10
  %506 = getelementptr inbounds i8, ptr %13, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %506, i8 0, i32 16, i1 false) #10, !annotation !8
  %507 = load ptr, ptr %490, align 4
  %508 = load i8, ptr %507, align 4
  %509 = zext i8 %508 to i16
  store i16 %509, ptr %13, align 4
  %510 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %510, align 2
  store i16 1, ptr %506, align 4
  %511 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %12, ptr %511, align 4
  %512 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1
  %513 = load i8, ptr %507, align 4
  %514 = zext i8 %513 to i16
  store i16 %514, ptr %512, align 4
  %515 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 1
  store i16 1, ptr %515, align 2
  %516 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 2
  store i16 1, ptr %516, align 4
  %517 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 3
  store ptr %18, ptr %517, align 4
  %518 = load ptr, ptr %411, align 4
  %519 = call i32 @i2c_transfer(ptr noundef %518, ptr noundef nonnull %13, i32 noundef 2) #10
  %520 = icmp ne i32 %519, 2
  %521 = load i32, ptr @debug, align 4
  %522 = icmp ne i32 %521, 0
  %523 = select i1 %520, i1 %522, i1 false
  br i1 %523, label %524, label %526

524:                                              ; preds = %505
  %525 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.si21_readregs, i32 noundef %519) #8
  br label %526

526:                                              ; preds = %524, %505
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #10
  %527 = load i8, ptr %18, align 1
  %528 = and i8 %527, 127
  store i8 %528, ptr %18, align 1
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %10) #10
  %529 = getelementptr inbounds i8, ptr %10, i32 1
  %530 = getelementptr inbounds i8, ptr %10, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(60) %530, i8 0, i32 58, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #10
  %531 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 2, ptr %531, align 4, !annotation !8
  %532 = load ptr, ptr %490, align 4
  %533 = load i8, ptr %532, align 4
  %534 = zext i8 %533 to i16
  store i16 %534, ptr %11, align 4
  %535 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %535, align 2
  %536 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %10, ptr %536, align 4
  store i8 20, ptr %10, align 1
  store i8 %528, ptr %529, align 1
  %537 = load ptr, ptr %411, align 4
  %538 = call i32 @i2c_transfer(ptr noundef %537, ptr noundef nonnull %11, i32 noundef 1) #10
  %539 = icmp ne i32 %538, 1
  %540 = load i32, ptr @debug, align 4
  %541 = icmp ne i32 %540, 0
  %542 = select i1 %539, i1 %541, i1 false
  br i1 %542, label %543, label %547

543:                                              ; preds = %526
  %544 = load i8, ptr %18, align 1
  %545 = zext i8 %544 to i32
  %546 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.si21_writeregs, i32 noundef 20, i32 noundef %545, i32 noundef %538) #8
  br label %547

547:                                              ; preds = %543, %526
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %8) #10
  %548 = getelementptr inbounds i8, ptr %8, i32 1
  %549 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(60) %549, i8 0, i32 56, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #10
  %550 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 4, ptr %550, align 4, !annotation !8
  %551 = load ptr, ptr %490, align 4
  %552 = load i8, ptr %551, align 4
  %553 = zext i8 %552 to i16
  store i16 %553, ptr %9, align 4
  %554 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %554, align 2
  %555 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %555, align 4
  store i8 -111, ptr %8, align 1
  store i8 -53, ptr %548, align 1
  %556 = getelementptr inbounds i8, ptr %8, i32 2
  store i8 64, ptr %556, align 1
  %557 = getelementptr inbounds i8, ptr %8, i32 3
  store i8 -53, ptr %557, align 1
  %558 = load ptr, ptr %411, align 4
  %559 = call i32 @i2c_transfer(ptr noundef %558, ptr noundef nonnull %9, i32 noundef 1) #10
  %560 = icmp ne i32 %559, 1
  %561 = load i32, ptr @debug, align 4
  %562 = icmp ne i32 %561, 0
  %563 = select i1 %560, i1 %562, i1 false
  br i1 %563, label %564, label %566

564:                                              ; preds = %547
  %565 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.si21_writeregs, i32 noundef 145, i32 noundef 203, i32 noundef %559) #8
  br label %566

566:                                              ; preds = %564, %547
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %8) #10
  store i8 86, ptr %18, align 1
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %6) #10
  %567 = getelementptr inbounds i8, ptr %6, i32 1
  %568 = getelementptr inbounds i8, ptr %6, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(60) %568, i8 0, i32 58, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #10
  %569 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 2, ptr %569, align 4, !annotation !8
  %570 = load ptr, ptr %490, align 4
  %571 = load i8, ptr %570, align 4
  %572 = zext i8 %571 to i16
  store i16 %572, ptr %7, align 4
  %573 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %573, align 2
  %574 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %574, align 4
  store i8 -115, ptr %6, align 1
  store i8 86, ptr %567, align 1
  %575 = load ptr, ptr %411, align 4
  %576 = call i32 @i2c_transfer(ptr noundef %575, ptr noundef nonnull %7, i32 noundef 1) #10
  %577 = icmp ne i32 %576, 1
  %578 = load i32, ptr @debug, align 4
  %579 = icmp ne i32 %578, 0
  %580 = select i1 %577, i1 %579, i1 false
  br i1 %580, label %581, label %585

581:                                              ; preds = %566
  %582 = load i8, ptr %18, align 1
  %583 = zext i8 %582 to i32
  %584 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.si21_writeregs, i32 noundef 141, i32 noundef %583, i32 noundef %576) #8
  br label %585

585:                                              ; preds = %581, %566
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %6) #10
  store i8 5, ptr %18, align 1
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %4) #10
  %586 = getelementptr inbounds i8, ptr %4, i32 1
  %587 = getelementptr inbounds i8, ptr %4, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(60) %587, i8 0, i32 58, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %588 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %588, align 4, !annotation !8
  %589 = load ptr, ptr %490, align 4
  %590 = load i8, ptr %589, align 4
  %591 = zext i8 %590 to i16
  store i16 %591, ptr %5, align 4
  %592 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %592, align 2
  %593 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %593, align 4
  store i8 -128, ptr %4, align 1
  store i8 5, ptr %586, align 1
  %594 = load ptr, ptr %411, align 4
  %595 = call i32 @i2c_transfer(ptr noundef %594, ptr noundef nonnull %5, i32 noundef 1) #10
  %596 = icmp ne i32 %595, 1
  %597 = load i32, ptr @debug, align 4
  %598 = icmp ne i32 %597, 0
  %599 = select i1 %596, i1 %598, i1 false
  br i1 %599, label %600, label %604

600:                                              ; preds = %585
  %601 = load i8, ptr %18, align 1
  %602 = zext i8 %601 to i32
  %603 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.si21_writeregs, i32 noundef 128, i32 noundef %602, i32 noundef %595) #8
  br label %604

604:                                              ; preds = %600, %585
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %2) #10
  %605 = getelementptr inbounds i8, ptr %2, i32 1
  %606 = getelementptr inbounds i8, ptr %2, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(60) %606, i8 0, i32 58, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %607 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %607, align 4, !annotation !8
  %608 = load ptr, ptr %490, align 4
  %609 = load i8, ptr %608, align 4
  %610 = zext i8 %609 to i16
  store i16 %610, ptr %3, align 4
  %611 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %611, align 2
  %612 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %612, align 4
  store i8 20, ptr %2, align 1
  store i8 -128, ptr %605, align 1
  %613 = load ptr, ptr %411, align 4
  %614 = call i32 @i2c_transfer(ptr noundef %613, ptr noundef nonnull %3, i32 noundef 1) #10
  %615 = icmp ne i32 %614, 1
  %616 = load i32, ptr @debug, align 4
  %617 = icmp ne i32 %616, 0
  %618 = select i1 %615, i1 %617, i1 false
  br i1 %618, label %619, label %621

619:                                              ; preds = %604
  %620 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.si21_writeregs, i32 noundef 20, i32 noundef 128, i32 noundef %614) #8
  br label %621

621:                                              ; preds = %619, %604
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %18) #10
  %622 = select i1 %398, i32 -121, i32 0
  br label %623

623:                                              ; preds = %621, %54, %51
  %624 = phi i32 [ -95, %54 ], [ -95, %51 ], [ %622, %621 ]
  ret i32 %624
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @si21_read_status(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = alloca [1 x i8], align 1
  %6 = alloca [1 x i8], align 1
  %7 = alloca [2 x %struct.i2c_msg], align 4
  %8 = alloca [2 x i8], align 2
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #10
  store i16 0, ptr %8, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #10
  store i8 40, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #10
  store i8 0, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #10
  %11 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %11, i8 0, i32 16, i1 false) #10, !annotation !8
  %12 = getelementptr inbounds %struct.si21xx_state, ptr %10, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i16
  store i16 %15, ptr %7, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %16, align 2
  store i16 1, ptr %11, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %5, ptr %17, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1
  %19 = load i8, ptr %13, align 4
  %20 = zext i8 %19 to i16
  store i16 %20, ptr %18, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 1
  store i16 1, ptr %21, align 2
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 2
  store i16 1, ptr %22, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 3
  store ptr %6, ptr %23, align 4
  %24 = load ptr, ptr %10, align 4
  %25 = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %7, i32 noundef 2) #10
  %26 = icmp ne i32 %25, 2
  %27 = load i32, ptr @debug, align 4
  %28 = icmp ne i32 %27, 0
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.si21_readreg, i32 noundef 40, i32 noundef %25) #8
  br label %32

32:                                               ; preds = %30, %2
  %33 = load i8, ptr %6, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 15, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  %34 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %34, i8 0, i32 16, i1 false) #10, !annotation !8
  %35 = load ptr, ptr %12, align 4
  %36 = load i8, ptr %35, align 4
  %37 = zext i8 %36 to i16
  store i16 %37, ptr %4, align 4
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %38, align 2
  store i16 1, ptr %34, align 4
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %39, align 4
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  %41 = load i8, ptr %35, align 4
  %42 = zext i8 %41 to i16
  store i16 %42, ptr %40, align 4
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  store i16 1, ptr %43, align 2
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  store i16 2, ptr %44, align 4
  %45 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  store ptr %8, ptr %45, align 4
  %46 = load ptr, ptr %10, align 4
  %47 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %4, i32 noundef 2) #10
  %48 = icmp ne i32 %47, 2
  %49 = load i32, ptr @debug, align 4
  %50 = icmp ne i32 %49, 0
  %51 = select i1 %48, i1 %50, i1 false
  br i1 %51, label %52, label %55

52:                                               ; preds = %32
  %53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.si21_readregs, i32 noundef %47) #8
  %54 = load i32, ptr @debug, align 4
  br label %55

55:                                               ; preds = %52, %32
  %56 = phi i32 [ %49, %32 ], [ %54, %52 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %57 = load i8, ptr %8, align 2
  %58 = trunc i8 %57 to i7
  %59 = call i7 @llvm.bitreverse.i7(i7 %58)
  %60 = getelementptr inbounds [2 x i8], ptr %8, i32 0, i32 1
  %61 = load i8, ptr %60, align 1
  %62 = and i8 %61, -128
  %63 = zext i7 %59 to i8
  %64 = or i8 %62, %63
  %65 = icmp eq i32 %56, 0
  %66 = zext i8 %64 to i32
  br i1 %65, label %69, label %67

67:                                               ; preds = %55
  %68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.si21_read_status, i32 noundef %66) #8
  br label %69

69:                                               ; preds = %67, %55
  %70 = icmp ugt i8 %33, 10
  %71 = zext i1 %70 to i32
  %72 = and i32 %66, 2
  %73 = or i32 %72, %71
  %74 = lshr i32 %66, 3
  %75 = and i32 %74, 4
  %76 = or i32 %75, %73
  %77 = lshr i32 %66, 3
  %78 = and i32 %77, 8
  %79 = or i32 %78, %76
  %80 = and i32 %66, 123
  %81 = icmp eq i32 %80, 123
  %82 = or i32 %79, 16
  %83 = select i1 %81, i32 %82, i32 %79
  store i32 %83, ptr %1, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @si21_read_ber(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [1 x i8], align 1
  %7 = alloca [1 x i8], align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr @debug, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.si21_read_ber) #8
  br label %15

15:                                               ; preds = %13, %2
  %16 = getelementptr inbounds %struct.si21xx_state, ptr %10, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %69

19:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #10
  store i8 29, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #10
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #10
  %20 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %20, i8 0, i32 16, i1 false) #10, !annotation !8
  %21 = getelementptr inbounds %struct.si21xx_state, ptr %10, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = load i8, ptr %22, align 4
  %24 = zext i8 %23 to i16
  store i16 %24, ptr %8, align 4
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %25, align 2
  store i16 1, ptr %20, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %26, align 4
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  %28 = load i8, ptr %22, align 4
  %29 = zext i8 %28 to i16
  store i16 %29, ptr %27, align 4
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %30, align 2
  %31 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 1, ptr %31, align 4
  %32 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %32, align 4
  %33 = load ptr, ptr %10, align 4
  %34 = call i32 @i2c_transfer(ptr noundef %33, ptr noundef nonnull %8, i32 noundef 2) #10
  %35 = icmp ne i32 %34, 2
  %36 = load i32, ptr @debug, align 4
  %37 = icmp ne i32 %36, 0
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %39, label %41

39:                                               ; preds = %19
  %40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.si21_readreg, i32 noundef 29, i32 noundef %34) #8
  br label %41

41:                                               ; preds = %39, %19
  %42 = load i8, ptr %7, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  %43 = zext i8 %42 to i32
  %44 = shl nuw nsw i32 %43, 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 30, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %45 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %45, i8 0, i32 16, i1 false) #10, !annotation !8
  %46 = load ptr, ptr %21, align 4
  %47 = load i8, ptr %46, align 4
  %48 = zext i8 %47 to i16
  store i16 %48, ptr %5, align 4
  %49 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %49, align 2
  store i16 1, ptr %45, align 4
  %50 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %50, align 4
  %51 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %52 = load i8, ptr %46, align 4
  %53 = zext i8 %52 to i16
  store i16 %53, ptr %51, align 4
  %54 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %54, align 2
  %55 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %55, align 4
  %56 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %56, align 4
  %57 = load ptr, ptr %10, align 4
  %58 = call i32 @i2c_transfer(ptr noundef %57, ptr noundef nonnull %5, i32 noundef 2) #10
  %59 = icmp ne i32 %58, 2
  %60 = load i32, ptr @debug, align 4
  %61 = icmp ne i32 %60, 0
  %62 = select i1 %59, i1 %61, i1 false
  br i1 %62, label %63, label %65

63:                                               ; preds = %41
  %64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.si21_readreg, i32 noundef 30, i32 noundef %58) #8
  br label %65

65:                                               ; preds = %63, %41
  %66 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  %67 = zext i8 %66 to i32
  %68 = or i32 %44, %67
  store i32 %68, ptr %1, align 4
  br label %69

69:                                               ; preds = %65, %15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @si21_read_signal_strength(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [1 x i8], align 1
  %7 = alloca [1 x i8], align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = alloca [1 x i8], align 1
  %10 = alloca [1 x i8], align 1
  %11 = alloca [2 x %struct.i2c_msg], align 4
  %12 = alloca [1 x i8], align 1
  %13 = alloca [1 x i8], align 1
  %14 = alloca [2 x %struct.i2c_msg], align 4
  %15 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #10
  store i8 39, ptr %12, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #10
  store i8 0, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #10
  %17 = getelementptr inbounds i8, ptr %14, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %17, i8 0, i32 16, i1 false) #10, !annotation !8
  %18 = getelementptr inbounds %struct.si21xx_state, ptr %16, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = load i8, ptr %19, align 4
  %21 = zext i8 %20 to i16
  store i16 %21, ptr %14, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %22, align 2
  store i16 1, ptr %17, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %12, ptr %23, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1
  %25 = load i8, ptr %19, align 4
  %26 = zext i8 %25 to i16
  store i16 %26, ptr %24, align 4
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 1
  store i16 1, ptr %27, align 2
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 2
  store i16 1, ptr %28, align 4
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 3
  store ptr %13, ptr %29, align 4
  %30 = load ptr, ptr %16, align 4
  %31 = call i32 @i2c_transfer(ptr noundef %30, ptr noundef nonnull %14, i32 noundef 2) #10
  %32 = icmp ne i32 %31, 2
  %33 = load i32, ptr @debug, align 4
  %34 = icmp ne i32 %33, 0
  %35 = select i1 %32, i1 %34, i1 false
  br i1 %35, label %36, label %38

36:                                               ; preds = %2
  %37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.si21_readreg, i32 noundef 39, i32 noundef %31) #8
  br label %38

38:                                               ; preds = %36, %2
  %39 = load i8, ptr %13, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #10
  %40 = zext i8 %39 to i16
  %41 = mul nuw nsw i16 %40, 3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #10
  store i8 40, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #10
  store i8 0, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #10
  %42 = getelementptr inbounds i8, ptr %11, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %42, i8 0, i32 16, i1 false) #10, !annotation !8
  %43 = load ptr, ptr %18, align 4
  %44 = load i8, ptr %43, align 4
  %45 = zext i8 %44 to i16
  store i16 %45, ptr %11, align 4
  %46 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %46, align 2
  store i16 1, ptr %42, align 4
  %47 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %9, ptr %47, align 4
  %48 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1
  %49 = load i8, ptr %43, align 4
  %50 = zext i8 %49 to i16
  store i16 %50, ptr %48, align 4
  %51 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 1
  store i16 1, ptr %51, align 2
  %52 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 2
  store i16 1, ptr %52, align 4
  %53 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 3
  store ptr %10, ptr %53, align 4
  %54 = load ptr, ptr %16, align 4
  %55 = call i32 @i2c_transfer(ptr noundef %54, ptr noundef nonnull %11, i32 noundef 2) #10
  %56 = icmp ne i32 %55, 2
  %57 = load i32, ptr @debug, align 4
  %58 = icmp ne i32 %57, 0
  %59 = select i1 %56, i1 %58, i1 false
  br i1 %59, label %60, label %63

60:                                               ; preds = %38
  %61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.si21_readreg, i32 noundef 40, i32 noundef %55) #8
  %62 = load i32, ptr @debug, align 4
  br label %63

63:                                               ; preds = %60, %38
  %64 = phi i32 [ %57, %38 ], [ %62, %60 ]
  %65 = load i8, ptr %10, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #10
  %66 = zext i8 %65 to i16
  %67 = mul i16 %41, %66
  %68 = icmp eq i32 %64, 0
  br i1 %68, label %118, label %69

69:                                               ; preds = %63
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #10
  store i8 39, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #10
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #10
  %70 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %70, i8 0, i32 16, i1 false) #10, !annotation !8
  %71 = load ptr, ptr %18, align 4
  %72 = load i8, ptr %71, align 4
  %73 = zext i8 %72 to i16
  store i16 %73, ptr %8, align 4
  %74 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %74, align 2
  store i16 1, ptr %70, align 4
  %75 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %75, align 4
  %76 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  %77 = load i8, ptr %71, align 4
  %78 = zext i8 %77 to i16
  store i16 %78, ptr %76, align 4
  %79 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %79, align 2
  %80 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 1, ptr %80, align 4
  %81 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %81, align 4
  %82 = load ptr, ptr %16, align 4
  %83 = call i32 @i2c_transfer(ptr noundef %82, ptr noundef nonnull %8, i32 noundef 2) #10
  %84 = icmp ne i32 %83, 2
  %85 = load i32, ptr @debug, align 4
  %86 = icmp ne i32 %85, 0
  %87 = select i1 %84, i1 %86, i1 false
  br i1 %87, label %88, label %90

88:                                               ; preds = %69
  %89 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.si21_readreg, i32 noundef 39, i32 noundef %83) #8
  br label %90

90:                                               ; preds = %88, %69
  %91 = load i8, ptr %7, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  %92 = zext i8 %91 to i32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 40, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %93 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %93, i8 0, i32 16, i1 false) #10, !annotation !8
  %94 = load ptr, ptr %18, align 4
  %95 = load i8, ptr %94, align 4
  %96 = zext i8 %95 to i16
  store i16 %96, ptr %5, align 4
  %97 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %97, align 2
  store i16 1, ptr %93, align 4
  %98 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %98, align 4
  %99 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %100 = load i8, ptr %94, align 4
  %101 = zext i8 %100 to i16
  store i16 %101, ptr %99, align 4
  %102 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %102, align 2
  %103 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %103, align 4
  %104 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %104, align 4
  %105 = load ptr, ptr %16, align 4
  %106 = call i32 @i2c_transfer(ptr noundef %105, ptr noundef nonnull %5, i32 noundef 2) #10
  %107 = icmp ne i32 %106, 2
  %108 = load i32, ptr @debug, align 4
  %109 = icmp ne i32 %108, 0
  %110 = select i1 %107, i1 %109, i1 false
  br i1 %110, label %111, label %113

111:                                              ; preds = %90
  %112 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.si21_readreg, i32 noundef 40, i32 noundef %106) #8
  br label %113

113:                                              ; preds = %111, %90
  %114 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  %115 = zext i8 %114 to i32
  %116 = zext i16 %67 to i32
  %117 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.si21_read_signal_strength, i32 noundef %92, i32 noundef %115, i32 noundef %116) #8
  br label %118

118:                                              ; preds = %113, %63
  %119 = shl i16 %67, 4
  store i16 %119, ptr %1, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @si21_read_snr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [1 x i8], align 1
  %7 = alloca [1 x i8], align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #10
  store i8 36, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #10
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #10
  %11 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %11, i8 0, i32 16, i1 false) #10, !annotation !8
  %12 = getelementptr inbounds %struct.si21xx_state, ptr %10, i32 0, i32 1
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
  %25 = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %8, i32 noundef 2) #10
  %26 = icmp ne i32 %25, 2
  %27 = load i32, ptr @debug, align 4
  %28 = icmp ne i32 %27, 0
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.si21_readreg, i32 noundef 36, i32 noundef %25) #8
  br label %32

32:                                               ; preds = %30, %2
  %33 = load i8, ptr %7, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  %34 = zext i8 %33 to i32
  %35 = shl nuw nsw i32 %34, 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 37, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %36 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %36, i8 0, i32 16, i1 false) #10, !annotation !8
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
  %49 = call i32 @i2c_transfer(ptr noundef %48, ptr noundef nonnull %5, i32 noundef 2) #10
  %50 = icmp ne i32 %49, 2
  %51 = load i32, ptr @debug, align 4
  %52 = icmp ne i32 %51, 0
  %53 = select i1 %50, i1 %52, i1 false
  br i1 %53, label %54, label %56

54:                                               ; preds = %32
  %55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.si21_readreg, i32 noundef 37, i32 noundef %49) #8
  br label %56

56:                                               ; preds = %54, %32
  %57 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
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
  %68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.si21_read_snr) #8
  br label %69

69:                                               ; preds = %67, %56
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @si21_read_ucblocks(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [1 x i8], align 1
  %7 = alloca [1 x i8], align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr @debug, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.si21_read_ucblocks) #8
  br label %15

15:                                               ; preds = %13, %2
  %16 = getelementptr inbounds %struct.si21xx_state, ptr %10, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %69

19:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #10
  store i8 29, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #10
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #10
  %20 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %20, i8 0, i32 16, i1 false) #10, !annotation !8
  %21 = getelementptr inbounds %struct.si21xx_state, ptr %10, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = load i8, ptr %22, align 4
  %24 = zext i8 %23 to i16
  store i16 %24, ptr %8, align 4
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %25, align 2
  store i16 1, ptr %20, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %26, align 4
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  %28 = load i8, ptr %22, align 4
  %29 = zext i8 %28 to i16
  store i16 %29, ptr %27, align 4
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %30, align 2
  %31 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 1, ptr %31, align 4
  %32 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %32, align 4
  %33 = load ptr, ptr %10, align 4
  %34 = call i32 @i2c_transfer(ptr noundef %33, ptr noundef nonnull %8, i32 noundef 2) #10
  %35 = icmp ne i32 %34, 2
  %36 = load i32, ptr @debug, align 4
  %37 = icmp ne i32 %36, 0
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %39, label %41

39:                                               ; preds = %19
  %40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.si21_readreg, i32 noundef 29, i32 noundef %34) #8
  br label %41

41:                                               ; preds = %39, %19
  %42 = load i8, ptr %7, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  %43 = zext i8 %42 to i32
  %44 = shl nuw nsw i32 %43, 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 30, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %45 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %45, i8 0, i32 16, i1 false) #10, !annotation !8
  %46 = load ptr, ptr %21, align 4
  %47 = load i8, ptr %46, align 4
  %48 = zext i8 %47 to i16
  store i16 %48, ptr %5, align 4
  %49 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %49, align 2
  store i16 1, ptr %45, align 4
  %50 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %50, align 4
  %51 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %52 = load i8, ptr %46, align 4
  %53 = zext i8 %52 to i16
  store i16 %53, ptr %51, align 4
  %54 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %54, align 2
  %55 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %55, align 4
  %56 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %56, align 4
  %57 = load ptr, ptr %10, align 4
  %58 = call i32 @i2c_transfer(ptr noundef %57, ptr noundef nonnull %5, i32 noundef 2) #10
  %59 = icmp ne i32 %58, 2
  %60 = load i32, ptr @debug, align 4
  %61 = icmp ne i32 %60, 0
  %62 = select i1 %59, i1 %61, i1 false
  br i1 %62, label %63, label %65

63:                                               ; preds = %41
  %64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.si21_readreg, i32 noundef 30, i32 noundef %58) #8
  br label %65

65:                                               ; preds = %63, %41
  %66 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  %67 = zext i8 %66 to i32
  %68 = or i32 %44, %67
  br label %69

69:                                               ; preds = %65, %15
  %70 = phi i32 [ %68, %65 ], [ 0, %15 ]
  store i32 %70, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @si21xx_send_diseqc_msg(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [60 x i8], align 1
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [60 x i8], align 1
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca i8, align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = alloca i8, align 1
  %10 = alloca [2 x %struct.i2c_msg], align 4
  %11 = alloca i8, align 1
  %12 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #10
  store i8 0, ptr %11, align 1, !annotation !8
  %14 = load i32, ptr @debug, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.si21xx_send_diseqc_msg) #8
  br label %18

18:                                               ; preds = %16, %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9)
  store i8 -60, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #10
  %19 = getelementptr inbounds i8, ptr %10, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %19, i8 0, i32 16, i1 false) #10, !annotation !8
  %20 = getelementptr inbounds %struct.si21xx_state, ptr %13, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = load i8, ptr %21, align 4
  %23 = zext i8 %22 to i16
  store i16 %23, ptr %10, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %24, align 2
  store i16 1, ptr %19, align 4
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %9, ptr %25, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1
  %27 = load i8, ptr %21, align 4
  %28 = zext i8 %27 to i16
  store i16 %28, ptr %26, align 4
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 1
  store i16 1, ptr %29, align 2
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 2
  store i16 1, ptr %30, align 4
  %31 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 3
  store ptr %11, ptr %31, align 4
  %32 = load ptr, ptr %13, align 4
  %33 = call i32 @i2c_transfer(ptr noundef %32, ptr noundef nonnull %10, i32 noundef 2) #10
  %34 = icmp ne i32 %33, 2
  %35 = load i32, ptr @debug, align 4
  %36 = icmp ne i32 %35, 0
  %37 = select i1 %34, i1 %36, i1 false
  br i1 %37, label %38, label %40

38:                                               ; preds = %18
  %39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.si21_readregs, i32 noundef %33) #8
  br label %40

40:                                               ; preds = %38, %18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7)
  store i8 -64, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #10
  %41 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %41, i8 0, i32 16, i1 false) #10, !annotation !8
  %42 = load ptr, ptr %20, align 4
  %43 = load i8, ptr %42, align 4
  %44 = zext i8 %43 to i16
  store i16 %44, ptr %8, align 4
  %45 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %45, align 2
  store i16 1, ptr %41, align 4
  %46 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %46, align 4
  %47 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  %48 = load i8, ptr %42, align 4
  %49 = zext i8 %48 to i16
  store i16 %49, ptr %47, align 4
  %50 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %50, align 2
  %51 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 1, ptr %51, align 4
  %52 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %11, ptr %52, align 4
  %53 = load ptr, ptr %13, align 4
  %54 = call i32 @i2c_transfer(ptr noundef %53, ptr noundef nonnull %8, i32 noundef 2) #10
  %55 = icmp ne i32 %54, 2
  %56 = load i32, ptr @debug, align 4
  %57 = icmp ne i32 %56, 0
  %58 = select i1 %55, i1 %57, i1 false
  br i1 %58, label %59, label %61

59:                                               ; preds = %40
  %60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.si21_readregs, i32 noundef %54) #8
  br label %61

61:                                               ; preds = %59, %40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7)
  %62 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, ptr %1, i32 0, i32 1
  %63 = load i8, ptr %62, align 1
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %5) #10
  %64 = getelementptr inbounds i8, ptr %5, i32 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(60) %64, i8 0, i32 59, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %65 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 0, ptr %65, align 4, !annotation !8
  %66 = load ptr, ptr %20, align 4
  %67 = load i8, ptr %66, align 4
  %68 = zext i8 %67 to i16
  store i16 %68, ptr %6, align 4
  %69 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %69, align 2
  %70 = zext i8 %63 to i16
  %71 = add nuw nsw i16 %70, 1
  store i16 %71, ptr %65, align 4
  %72 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %72, align 4
  %73 = icmp ugt i8 %63, 59
  br i1 %73, label %89, label %74

74:                                               ; preds = %61
  %75 = zext i8 %63 to i32
  store i8 -59, ptr %5, align 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %64, ptr align 1 %1, i32 %75, i1 false) #10
  %76 = load ptr, ptr %13, align 4
  %77 = call i32 @i2c_transfer(ptr noundef %76, ptr noundef nonnull %6, i32 noundef 1) #10
  %78 = icmp ne i32 %77, 1
  %79 = load i32, ptr @debug, align 4
  %80 = icmp ne i32 %79, 0
  %81 = select i1 %78, i1 %80, i1 false
  br i1 %81, label %82, label %86

82:                                               ; preds = %74
  %83 = load i8, ptr %1, align 1
  %84 = zext i8 %83 to i32
  %85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.si21_writeregs, i32 noundef 197, i32 noundef %84, i32 noundef %77) #8
  br label %86

86:                                               ; preds = %82, %74
  %87 = select i1 %78, i32 -121, i32 0
  %88 = load i8, ptr %62, align 1
  br label %89

89:                                               ; preds = %86, %61
  %90 = phi i8 [ %88, %86 ], [ %63, %61 ]
  %91 = phi i32 [ %87, %86 ], [ -22, %61 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %5) #10
  %92 = load i8, ptr %11, align 1
  %93 = and i8 %92, 112
  %94 = or i8 %90, %93
  %95 = or i8 %94, -128
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %3) #10
  %96 = getelementptr inbounds i8, ptr %3, i32 1
  %97 = getelementptr inbounds i8, ptr %3, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(60) %97, i8 0, i32 58, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %98 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %98, align 4, !annotation !8
  %99 = load ptr, ptr %20, align 4
  %100 = load i8, ptr %99, align 4
  %101 = zext i8 %100 to i16
  store i16 %101, ptr %4, align 4
  %102 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %102, align 2
  %103 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %103, align 4
  store i8 -64, ptr %3, align 1
  store i8 %95, ptr %96, align 1
  %104 = load ptr, ptr %13, align 4
  %105 = call i32 @i2c_transfer(ptr noundef %104, ptr noundef nonnull %4, i32 noundef 1) #10
  %106 = icmp ne i32 %105, 1
  %107 = load i32, ptr @debug, align 4
  %108 = icmp ne i32 %107, 0
  %109 = select i1 %106, i1 %108, i1 false
  br i1 %109, label %110, label %113

110:                                              ; preds = %89
  %111 = zext i8 %95 to i32
  %112 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.si21_writeregs, i32 noundef 192, i32 noundef %111, i32 noundef %105) #8
  br label %113

113:                                              ; preds = %110, %89
  %114 = or i1 %34, %55
  %115 = select i1 %114, i32 -1, i32 %91
  %116 = select i1 %106, i32 -121, i32 0
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %3) #10
  %117 = or i32 %116, %115
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #10
  ret i32 %117
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @si21xx_send_diseqc_burst(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [1 x i8], align 1
  %8 = alloca [1 x i8], align 1
  %9 = alloca [2 x %struct.i2c_msg], align 4
  %10 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = load i32, ptr @debug, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.si21xx_send_diseqc_burst) #8
  br label %16

16:                                               ; preds = %14, %2
  %17 = tail call fastcc i32 @si21xx_wait_diseqc_idle(ptr noundef %11)
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %87, label %19

19:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #10
  store i8 -63, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #10
  store i8 0, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #10
  %20 = getelementptr inbounds i8, ptr %9, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %20, i8 0, i32 16, i1 false) #10, !annotation !8
  %21 = getelementptr inbounds %struct.si21xx_state, ptr %11, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = load i8, ptr %22, align 4
  %24 = zext i8 %23 to i16
  store i16 %24, ptr %9, align 4
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %25, align 2
  store i16 1, ptr %20, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %7, ptr %26, align 4
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1
  %28 = load i8, ptr %22, align 4
  %29 = zext i8 %28 to i16
  store i16 %29, ptr %27, align 4
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 1
  store i16 1, ptr %30, align 2
  %31 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 2
  store i16 1, ptr %31, align 4
  %32 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 3
  store ptr %8, ptr %32, align 4
  %33 = load ptr, ptr %11, align 4
  %34 = call i32 @i2c_transfer(ptr noundef %33, ptr noundef nonnull %9, i32 noundef 2) #10
  %35 = icmp ne i32 %34, 2
  %36 = load i32, ptr @debug, align 4
  %37 = icmp ne i32 %36, 0
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %39, label %41

39:                                               ; preds = %19
  %40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.si21_readreg, i32 noundef 193, i32 noundef %34) #8
  br label %41

41:                                               ; preds = %39, %19
  %42 = load i8, ptr %8, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  %43 = or i8 %42, -128
  %44 = icmp eq i32 %1, 0
  %45 = and i8 %43, -17
  %46 = or i8 %42, -112
  %47 = select i1 %44, i8 %45, i8 %46
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #10
  store i8 -64, ptr %5, align 2
  %48 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 %47, ptr %48, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %49 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %49, align 4, !annotation !8
  %50 = load ptr, ptr %21, align 4
  %51 = load i8, ptr %50, align 4
  %52 = zext i8 %51 to i16
  store i16 %52, ptr %6, align 4
  %53 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %53, align 2
  %54 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %54, align 4
  %55 = load ptr, ptr %11, align 4
  %56 = call i32 @i2c_transfer(ptr noundef %55, ptr noundef nonnull %6, i32 noundef 1) #10
  %57 = icmp ne i32 %56, 1
  %58 = load i32, ptr @debug, align 4
  %59 = icmp ne i32 %58, 0
  %60 = select i1 %57, i1 %59, i1 false
  br i1 %60, label %61, label %64

61:                                               ; preds = %41
  %62 = zext i8 %47 to i32
  %63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.si21_writereg, i32 noundef 192, i32 noundef %62, i32 noundef %56) #8
  br label %64

64:                                               ; preds = %61, %41
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  br i1 %57, label %87, label %65

65:                                               ; preds = %64
  %66 = call fastcc i32 @si21xx_wait_diseqc_idle(ptr noundef %11)
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %87, label %68

68:                                               ; preds = %65
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i8 -64, ptr %3, align 2
  %69 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %43, ptr %69, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %70 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %70, align 4, !annotation !8
  %71 = load ptr, ptr %21, align 4
  %72 = load i8, ptr %71, align 4
  %73 = zext i8 %72 to i16
  store i16 %73, ptr %4, align 4
  %74 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %74, align 2
  %75 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %75, align 4
  %76 = load ptr, ptr %11, align 4
  %77 = call i32 @i2c_transfer(ptr noundef %76, ptr noundef nonnull %4, i32 noundef 1) #10
  %78 = icmp ne i32 %77, 1
  %79 = load i32, ptr @debug, align 4
  %80 = icmp ne i32 %79, 0
  %81 = select i1 %78, i1 %80, i1 false
  br i1 %81, label %82, label %85

82:                                               ; preds = %68
  %83 = zext i8 %43 to i32
  %84 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.si21_writereg, i32 noundef 192, i32 noundef %83, i32 noundef %77) #8
  br label %85

85:                                               ; preds = %82, %68
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  %86 = select i1 %78, i32 -121, i32 0
  br label %87

87:                                               ; preds = %85, %65, %64, %16
  %88 = phi i32 [ -110, %16 ], [ -121, %64 ], [ -110, %65 ], [ %86, %85 ]
  ret i32 %88
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @si21xx_set_tone(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [1 x i8], align 1
  %8 = alloca [1 x i8], align 1
  %9 = alloca [2 x %struct.i2c_msg], align 4
  %10 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = load i32, ptr @debug, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.si21xx_set_tone) #8
  br label %16

16:                                               ; preds = %14, %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #10
  store i8 -64, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #10
  store i8 0, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #10
  %17 = getelementptr inbounds i8, ptr %9, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %17, i8 0, i32 16, i1 false) #10, !annotation !8
  %18 = getelementptr inbounds %struct.si21xx_state, ptr %11, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = load i8, ptr %19, align 4
  %21 = zext i8 %20 to i16
  store i16 %21, ptr %9, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %22, align 2
  store i16 1, ptr %17, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %7, ptr %23, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1
  %25 = load i8, ptr %19, align 4
  %26 = zext i8 %25 to i16
  store i16 %26, ptr %24, align 4
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 1
  store i16 1, ptr %27, align 2
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 2
  store i16 1, ptr %28, align 4
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 3
  store ptr %8, ptr %29, align 4
  %30 = load ptr, ptr %11, align 4
  %31 = call i32 @i2c_transfer(ptr noundef %30, ptr noundef nonnull %9, i32 noundef 2) #10
  %32 = icmp ne i32 %31, 2
  %33 = load i32, ptr @debug, align 4
  %34 = icmp ne i32 %33, 0
  %35 = select i1 %32, i1 %34, i1 false
  br i1 %35, label %36, label %38

36:                                               ; preds = %16
  %37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.si21_readreg, i32 noundef 192, i32 noundef %31) #8
  br label %38

38:                                               ; preds = %36, %16
  %39 = load i8, ptr %8, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  switch i32 %1, label %81 [
    i32 0, label %40
    i32 1, label %60
  ]

40:                                               ; preds = %38
  %41 = or i8 %39, -96
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #10
  store i8 -64, ptr %5, align 2
  %42 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 %41, ptr %42, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %43 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %43, align 4, !annotation !8
  %44 = load ptr, ptr %18, align 4
  %45 = load i8, ptr %44, align 4
  %46 = zext i8 %45 to i16
  store i16 %46, ptr %6, align 4
  %47 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %47, align 2
  %48 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %48, align 4
  %49 = load ptr, ptr %11, align 4
  %50 = call i32 @i2c_transfer(ptr noundef %49, ptr noundef nonnull %6, i32 noundef 1) #10
  %51 = icmp ne i32 %50, 1
  %52 = load i32, ptr @debug, align 4
  %53 = icmp ne i32 %52, 0
  %54 = select i1 %51, i1 %53, i1 false
  br i1 %54, label %55, label %58

55:                                               ; preds = %40
  %56 = zext i8 %41 to i32
  %57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.si21_writereg, i32 noundef 192, i32 noundef %56, i32 noundef %50) #8
  br label %58

58:                                               ; preds = %55, %40
  %59 = select i1 %51, i32 -121, i32 0
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  br label %81

60:                                               ; preds = %38
  %61 = and i8 %39, 95
  %62 = or i8 %61, -128
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i8 -64, ptr %3, align 2
  %63 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %62, ptr %63, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %64 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %64, align 4, !annotation !8
  %65 = load ptr, ptr %18, align 4
  %66 = load i8, ptr %65, align 4
  %67 = zext i8 %66 to i16
  store i16 %67, ptr %4, align 4
  %68 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %68, align 2
  %69 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %69, align 4
  %70 = load ptr, ptr %11, align 4
  %71 = call i32 @i2c_transfer(ptr noundef %70, ptr noundef nonnull %4, i32 noundef 1) #10
  %72 = icmp ne i32 %71, 1
  %73 = load i32, ptr @debug, align 4
  %74 = icmp ne i32 %73, 0
  %75 = select i1 %72, i1 %74, i1 false
  br i1 %75, label %76, label %79

76:                                               ; preds = %60
  %77 = zext i8 %62 to i32
  %78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.si21_writereg, i32 noundef 192, i32 noundef %77, i32 noundef %71) #8
  br label %79

79:                                               ; preds = %76, %60
  %80 = select i1 %72, i32 -121, i32 0
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  br label %81

81:                                               ; preds = %79, %58, %38
  %82 = phi i32 [ %80, %79 ], [ %59, %58 ], [ -22, %38 ]
  ret i32 %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @si21xx_set_voltage(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [1 x i8], align 1
  %8 = alloca [1 x i8], align 1
  %9 = alloca [2 x %struct.i2c_msg], align 4
  %10 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = load i32, ptr @debug, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = icmp eq i32 %1, 0
  %16 = icmp eq i32 %1, 1
  %17 = select i1 %16, ptr @.str.14, ptr @.str.15
  %18 = select i1 %15, ptr @.str.13, ptr %17
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.si21xx_set_voltage, ptr noundef nonnull %18) #8
  br label %20

20:                                               ; preds = %14, %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #10
  store i8 -64, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #10
  store i8 0, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #10
  %21 = getelementptr inbounds i8, ptr %9, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %21, i8 0, i32 16, i1 false) #10, !annotation !8
  %22 = getelementptr inbounds %struct.si21xx_state, ptr %11, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = load i8, ptr %23, align 4
  %25 = zext i8 %24 to i16
  store i16 %25, ptr %9, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %26, align 2
  store i16 1, ptr %21, align 4
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %7, ptr %27, align 4
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1
  %29 = load i8, ptr %23, align 4
  %30 = zext i8 %29 to i16
  store i16 %30, ptr %28, align 4
  %31 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 1
  store i16 1, ptr %31, align 2
  %32 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 2
  store i16 1, ptr %32, align 4
  %33 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 3
  store ptr %8, ptr %33, align 4
  %34 = load ptr, ptr %11, align 4
  %35 = call i32 @i2c_transfer(ptr noundef %34, ptr noundef nonnull %9, i32 noundef 2) #10
  %36 = icmp ne i32 %35, 2
  %37 = load i32, ptr @debug, align 4
  %38 = icmp ne i32 %37, 0
  %39 = select i1 %36, i1 %38, i1 false
  br i1 %39, label %40, label %42

40:                                               ; preds = %20
  %41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.si21_readreg, i32 noundef 192, i32 noundef %35) #8
  br label %42

42:                                               ; preds = %40, %20
  %43 = load i8, ptr %8, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  switch i32 %1, label %85 [
    i32 1, label %44
    i32 0, label %64
  ]

44:                                               ; preds = %42
  %45 = or i8 %43, -64
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #10
  store i8 -64, ptr %5, align 2
  %46 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 %45, ptr %46, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %47 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %47, align 4, !annotation !8
  %48 = load ptr, ptr %22, align 4
  %49 = load i8, ptr %48, align 4
  %50 = zext i8 %49 to i16
  store i16 %50, ptr %6, align 4
  %51 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %51, align 2
  %52 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %52, align 4
  %53 = load ptr, ptr %11, align 4
  %54 = call i32 @i2c_transfer(ptr noundef %53, ptr noundef nonnull %6, i32 noundef 1) #10
  %55 = icmp ne i32 %54, 1
  %56 = load i32, ptr @debug, align 4
  %57 = icmp ne i32 %56, 0
  %58 = select i1 %55, i1 %57, i1 false
  br i1 %58, label %59, label %62

59:                                               ; preds = %44
  %60 = zext i8 %45 to i32
  %61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.si21_writereg, i32 noundef 192, i32 noundef %60, i32 noundef %54) #8
  br label %62

62:                                               ; preds = %59, %44
  %63 = select i1 %55, i32 -121, i32 0
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  br label %85

64:                                               ; preds = %42
  %65 = and i8 %43, 63
  %66 = or i8 %65, -128
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i8 -64, ptr %3, align 2
  %67 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %66, ptr %67, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %68 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %68, align 4, !annotation !8
  %69 = load ptr, ptr %22, align 4
  %70 = load i8, ptr %69, align 4
  %71 = zext i8 %70 to i16
  store i16 %71, ptr %4, align 4
  %72 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %72, align 2
  %73 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %73, align 4
  %74 = load ptr, ptr %11, align 4
  %75 = call i32 @i2c_transfer(ptr noundef %74, ptr noundef nonnull %4, i32 noundef 1) #10
  %76 = icmp ne i32 %75, 1
  %77 = load i32, ptr @debug, align 4
  %78 = icmp ne i32 %77, 0
  %79 = select i1 %76, i1 %78, i1 false
  br i1 %79, label %80, label %83

80:                                               ; preds = %64
  %81 = zext i8 %66 to i32
  %82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.si21_writereg, i32 noundef 192, i32 noundef %81, i32 noundef %75) #8
  br label %83

83:                                               ; preds = %80, %64
  %84 = select i1 %76, i32 -121, i32 0
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  br label %85

85:                                               ; preds = %83, %62, %42
  %86 = phi i32 [ %84, %83 ], [ %63, %62 ], [ -22, %42 ]
  ret i32 %86
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @si21xx_wait_diseqc_idle(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [1 x i8], align 1
  %3 = alloca [1 x i8], align 1
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = load volatile i32, ptr @jiffies, align 64
  %6 = load i32, ptr @debug, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.si21xx_wait_diseqc_idle) #8
  br label %10

10:                                               ; preds = %8, %1
  %11 = getelementptr inbounds i8, ptr %4, i32 4
  %12 = getelementptr inbounds %struct.si21xx_state, ptr %0, i32 0, i32 1
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  br label %19

19:                                               ; preds = %46, %10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #10
  store i8 -64, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 0, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %11, i8 0, i32 16, i1 false) #10, !annotation !8
  %20 = load ptr, ptr %12, align 4
  %21 = load i8, ptr %20, align 4
  %22 = zext i8 %21 to i16
  store i16 %22, ptr %4, align 4
  store i16 0, ptr %13, align 2
  store i16 1, ptr %11, align 4
  store ptr %2, ptr %14, align 4
  %23 = load i8, ptr %20, align 4
  %24 = zext i8 %23 to i16
  store i16 %24, ptr %15, align 4
  store i16 1, ptr %16, align 2
  store i16 1, ptr %17, align 4
  store ptr %3, ptr %18, align 4
  %25 = load ptr, ptr %0, align 4
  %26 = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %4, i32 noundef 2) #10
  %27 = icmp ne i32 %26, 2
  %28 = load i32, ptr @debug, align 4
  %29 = icmp ne i32 %28, 0
  %30 = select i1 %27, i1 %29, i1 false
  br i1 %30, label %31, label %33

31:                                               ; preds = %19
  %32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.si21_readreg, i32 noundef 192, i32 noundef %26) #8
  br label %33

33:                                               ; preds = %31, %19
  %34 = load i8, ptr %3, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #10
  %35 = and i8 %34, 8
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %33
  %38 = load volatile i32, ptr @jiffies, align 64
  %39 = sub i32 %38, %5
  %40 = icmp ugt i32 %39, 100
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load i32, ptr @debug, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.si21xx_wait_diseqc_idle) #8
  br label %47

46:                                               ; preds = %37
  call void @msleep(i32 noundef 10) #10
  br label %19

47:                                               ; preds = %44, %41, %33
  %48 = phi i32 [ -110, %44 ], [ -110, %41 ], [ 0, %33 ]
  ret i32 %48
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i7 @llvm.bitreverse.i7(i7) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind }

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
