; ModuleID = '/llk/IR/drivers/media/dvb-frontends/si2165.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/si2165.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_device_id = type { [20 x i8], i32 }
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
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.si2165_reg_value_pair = type { i16, i8 }
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
%struct.si2165_state = type { ptr, ptr, %struct.dvb_frontend, %struct.si2165_config, i8, i8, i32, i32, i32, i64, i8, i8, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.73], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.73 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.74 }>
%union.anon.74 = type { i64 }
%struct.si2165_config = type { i8, i8, i32, i8 }
%struct.si2165_platform_data = type { ptr, i8, i32, i8 }
%struct.firmware = type { i32, ptr, ptr }

@si2165_id_table = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"si2165\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@__UNIQUE_ID_description249 = internal constant [60 x i8] c"description=Silicon Labs Si2165 DVB-C/-T Demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [45 x i8] c"author=Matthias Schwarzott <zzam@gentoo.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware252 = internal constant [29 x i8] c"firmware=dvb-demod-si2165.fw\00", section ".modinfo", align 1
@__this_module = external dso_local global %struct.module, align 64
@si2165_driver = internal global %struct.i2c_driver { i32 0, ptr @si2165_probe, ptr @si2165_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @si2165_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [7 x i8] c"si2165\00", align 1
@si2165_probe.regmap_config = internal constant %struct.regmap_config { ptr null, i32 16, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 2303, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"ref_freq of %d Hz not supported by this driver\0A\00", align 1
@si2165_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Silicon Labs \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 166667, i32 0, i32 1000000, i32 7200000, i32 0, i32 -1071972690 }, [8 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr @si2165_init, ptr @si2165_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @si2165_set_frontend, ptr @si2165_get_tune_settings, ptr null, ptr @si2165_read_status, ptr @si2165_read_ber, ptr null, ptr @si2165_read_snr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"Si2161\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Si2165\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"Unsupported Silicon Labs chip (type %d, rev %d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"Detected Silicon Labs %s-%c (type %d, rev %d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c" DVB-T\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c" DVB-C\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"could not set chip_mode\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"%s: ret == %d\0A\00", align 1
@__func__.si2165_write = private unnamed_addr constant [13 x i8] c"si2165_write\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"init_done was not set\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"dvb-demod-si2165.fw\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"no firmware file for revision=%d\0A\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"firmware file '%s' not found\0A\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"downloading firmware from file '%s' size=%d\0A\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"firmware size is not multiple of 4\0A\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"firmware header is missing\0A\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"firmware file version is wrong\0A\00", align 1
@.str.18 = private unnamed_addr constant [77 x i8] c"%s: extracted patch_version=0x%02x, block_count=0x%02x, crc_expected=0x%04x\0A\00", align 1
@__func__.si2165_upload_firmware = private unnamed_addr constant [23 x i8] c"si2165_upload_firmware\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"firmware could not be uploaded\0A\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"firmware crc mismatch %04x != %04x\0A\00", align 1
@.str.21 = private unnamed_addr constant [36 x i8] c"firmware len mismatch %04x != %04x\0A\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"fw load finished\0A\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"bad fw data[0..3] = %*ph\0A\00", align 1
@.str.24 = private unnamed_addr constant [49 x i8] c"len is too small for block len=%d, wordcount=%d\0A\00", align 1
@.str.25 = private unnamed_addr constant [49 x i8] c"%s: error (addr %02x reg %04x error (ret == %i)\0A\00", align 1
@__func__.si2165_read = private unnamed_addr constant [12 x i8] c"si2165_read\00", align 1
@adc_rewrite = internal constant [5 x %struct.si2165_reg_value_pair] [%struct.si2165_reg_value_pair { i16 298, i8 70 }, %struct.si2165_reg_value_pair { i16 300, i8 0 }, %struct.si2165_reg_value_pair { i16 302, i8 10 }, %struct.si2165_reg_value_pair { i16 303, i8 -1 }, %struct.si2165_reg_value_pair { i16 291, i8 112 }], align 2
@.str.26 = private unnamed_addr constant [72 x i8] c"Error: get_if_frequency() not defined at tuner. Can't work without it!\0A\00", align 1
@dvbt_regs = internal unnamed_addr constant [13 x %struct.si2165_reg_value_pair] [%struct.si2165_reg_value_pair { i16 236, i8 1 }, %struct.si2165_reg_value_pair { i16 796, i8 1 }, %struct.si2165_reg_value_pair { i16 203, i8 0 }, %struct.si2165_reg_value_pair { i16 366, i8 65 }, %struct.si2165_reg_value_pair { i16 364, i8 14 }, %struct.si2165_reg_value_pair { i16 365, i8 16 }, %struct.si2165_reg_value_pair { i16 347, i8 3 }, %struct.si2165_reg_value_pair { i16 336, i8 120 }, %struct.si2165_reg_value_pair { i16 416, i8 120 }, %struct.si2165_reg_value_pair { i16 456, i8 104 }, %struct.si2165_reg_value_pair { i16 780, i8 100 }, %struct.si2165_reg_value_pair { i16 781, i8 0 }, %struct.si2165_reg_value_pair { i16 903, i8 0 }], align 2
@dvbc_regs = internal unnamed_addr constant [20 x %struct.si2165_reg_value_pair] [%struct.si2165_reg_value_pair { i16 236, i8 5 }, %struct.si2165_reg_value_pair { i16 366, i8 80 }, %struct.si2165_reg_value_pair { i16 364, i8 14 }, %struct.si2165_reg_value_pair { i16 365, i8 16 }, %struct.si2165_reg_value_pair { i16 347, i8 3 }, %struct.si2165_reg_value_pair { i16 336, i8 104 }, %struct.si2165_reg_value_pair { i16 416, i8 104 }, %struct.si2165_reg_value_pair { i16 456, i8 80 }, %struct.si2165_reg_value_pair { i16 632, i8 13 }, %struct.si2165_reg_value_pair { i16 570, i8 5 }, %struct.si2165_reg_value_pair { i16 609, i8 9 }, %struct.si2165_reg_value_pair { i16 848, i8 -128 }, %struct.si2165_reg_value_pair { i16 849, i8 62 }, %struct.si2165_reg_value_pair { i16 203, i8 1 }, %struct.si2165_reg_value_pair { i16 588, i8 0 }, %struct.si2165_reg_value_pair { i16 589, i8 0 }, %struct.si2165_reg_value_pair { i16 636, i8 0 }, %struct.si2165_reg_value_pair { i16 637, i8 0 }, %struct.si2165_reg_value_pair { i16 562, i8 3 }, %struct.si2165_reg_value_pair { i16 395, i8 0 }], align 2
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_firmware252, ptr @__UNIQUE_ID_license251], section "llvm.metadata"
@switch.table.si2165_set_frontend = private unnamed_addr constant [5 x i32] [i32 3, i32 7, i32 8, i32 9, i32 10], align 4

@__mod_i2c__si2165_id_table_device_table = dso_local alias [2 x %struct.i2c_device_id], ptr @si2165_id_table

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @si2165_driver) #12
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @si2165_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @si2165_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 1096) #13
  %10 = icmp eq ptr %9, null
  br i1 %10, label %111, label %11

11:                                               ; preds = %2
  %12 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %0, ptr noundef nonnull @si2165_probe.regmap_config, ptr noundef null, ptr noundef null) #12
  %13 = getelementptr inbounds %struct.si2165_state, ptr %9, i32 0, i32 1
  store ptr %12, ptr %13, align 4
  %14 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = ptrtoint ptr %12 to i32
  br label %111

17:                                               ; preds = %11
  store ptr %0, ptr %9, align 8
  %18 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %19 = load i16, ptr %18, align 2
  %20 = trunc i16 %19 to i8
  %21 = getelementptr inbounds %struct.si2165_state, ptr %9, i32 0, i32 3
  store i8 %20, ptr %21, align 8
  %22 = getelementptr inbounds %struct.si2165_platform_data, ptr %7, i32 0, i32 1
  %23 = load i8, ptr %22, align 4
  %24 = getelementptr inbounds %struct.si2165_state, ptr %9, i32 0, i32 3, i32 1
  store i8 %23, ptr %24, align 1
  %25 = getelementptr inbounds %struct.si2165_platform_data, ptr %7, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.si2165_state, ptr %9, i32 0, i32 3, i32 2
  store i32 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.si2165_platform_data, ptr %7, i32 0, i32 3
  %29 = load i8, ptr %28, align 4, !range !8
  %30 = getelementptr inbounds %struct.si2165_state, ptr %9, i32 0, i32 3, i32 3
  store i8 %29, ptr %30, align 8
  %31 = add i32 %26, -27000001
  %32 = icmp ult i32 %31, -23000001
  br i1 %32, label %33, label %35

33:                                               ; preds = %17
  %34 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.1, i32 noundef %26) #14
  br label %111

35:                                               ; preds = %17
  %36 = getelementptr inbounds %struct.si2165_state, ptr %9, i32 0, i32 2
  %37 = getelementptr inbounds %struct.si2165_state, ptr %9, i32 0, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %37, ptr noundef nonnull align 4 dereferenceable(544) @si2165_ops, i32 544, i1 false)
  %38 = getelementptr inbounds %struct.si2165_state, ptr %9, i32 0, i32 2, i32 1, i32 3
  store ptr null, ptr %38, align 8
  %39 = getelementptr inbounds %struct.si2165_state, ptr %9, i32 0, i32 2, i32 3
  store ptr %9, ptr %39, align 8
  %40 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %9, ptr %40, align 8
  %41 = zext i8 %23 to i32
  %42 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 0, i32 noundef %41) #12
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %111, label %44

44:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 0, ptr %5, align 4, !annotation !9
  %45 = load ptr, ptr %13, align 4
  %46 = call i32 @regmap_read(ptr noundef %45, i32 noundef 0, ptr noundef nonnull %5) #12
  %47 = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  %48 = icmp slt i32 %46, 0
  br i1 %48, label %111, label %49

49:                                               ; preds = %44
  %50 = trunc i32 %47 to i8
  %51 = load i8, ptr %24, align 1
  %52 = icmp eq i8 %51, %50
  br i1 %52, label %53, label %111

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.si2165_state, ptr %9, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !9
  %55 = load ptr, ptr %13, align 4
  %56 = call i32 @regmap_read(ptr noundef %55, i32 noundef 35, ptr noundef nonnull %4) #12
  %57 = load i32, ptr %4, align 4
  %58 = trunc i32 %57 to i8
  store i8 %58, ptr %54, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  %59 = icmp slt i32 %56, 0
  br i1 %59, label %111, label %60

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.si2165_state, ptr %9, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !9
  %62 = load ptr, ptr %13, align 4
  %63 = call i32 @regmap_read(ptr noundef %62, i32 noundef 280, ptr noundef nonnull %3) #12
  %64 = load i32, ptr %3, align 4
  %65 = trunc i32 %64 to i8
  store i8 %65, ptr %61, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  %66 = icmp slt i32 %63, 0
  br i1 %66, label %111, label %67

67:                                               ; preds = %60
  %68 = load ptr, ptr %13, align 4
  %69 = call i32 @regmap_write(ptr noundef %68, i32 noundef 0, i32 noundef 0) #12
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %111, label %71

71:                                               ; preds = %67
  %72 = load i8, ptr %54, align 4
  %73 = icmp ult i8 %72, 26
  %74 = add i8 %72, 65
  %75 = select i1 %73, i8 %74, i8 63
  %76 = zext i8 %75 to i32
  %77 = load i8, ptr %61, align 1
  switch i8 %77, label %83 [
    i8 6, label %78
    i8 7, label %80
  ]

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.si2165_state, ptr %9, i32 0, i32 11
  store i8 1, ptr %79, align 1
  br label %88

80:                                               ; preds = %71
  %81 = getelementptr inbounds %struct.si2165_state, ptr %9, i32 0, i32 11
  store i8 1, ptr %81, align 1
  %82 = getelementptr inbounds %struct.si2165_state, ptr %9, i32 0, i32 10
  store i8 1, ptr %82, align 8
  br label %88

83:                                               ; preds = %71
  %84 = zext i8 %77 to i32
  %85 = load ptr, ptr %9, align 8
  %86 = getelementptr inbounds %struct.i2c_client, ptr %85, i32 0, i32 4
  %87 = zext i8 %72 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.4, i32 noundef %84, i32 noundef %87) #14
  br label %111

88:                                               ; preds = %80, %78
  %89 = phi ptr [ @.str.3, %80 ], [ @.str.2, %78 ]
  %90 = load ptr, ptr %9, align 8
  %91 = getelementptr inbounds %struct.i2c_client, ptr %90, i32 0, i32 4
  %92 = zext i8 %77 to i32
  %93 = zext i8 %72 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %91, ptr noundef nonnull @.str.5, ptr noundef nonnull %89, i32 noundef %76, i32 noundef %92, i32 noundef %93) #14
  %94 = call i32 @strlcat(ptr noundef %37, ptr noundef nonnull %89, i32 noundef 128) #12
  %95 = getelementptr inbounds %struct.si2165_state, ptr %9, i32 0, i32 11
  %96 = load i8, ptr %95, align 1, !range !8
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %88
  %99 = getelementptr inbounds %struct.si2165_state, ptr %9, i32 0, i32 2, i32 1, i32 1
  store i8 3, ptr %99, align 4
  %100 = call i32 @strlcat(ptr noundef %37, ptr noundef nonnull @.str.6, i32 noundef 128) #12
  br label %101

101:                                              ; preds = %98, %88
  %102 = phi i32 [ 1, %98 ], [ 0, %88 ]
  %103 = getelementptr inbounds %struct.si2165_state, ptr %9, i32 0, i32 10
  %104 = load i8, ptr %103, align 8, !range !8
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %101
  %107 = getelementptr %struct.si2165_state, ptr %9, i32 0, i32 2, i32 1, i32 1, i32 %102
  store i8 1, ptr %107, align 1
  %108 = call i32 @strlcat(ptr noundef %37, ptr noundef nonnull @.str.7, i32 noundef 128) #12
  br label %109

109:                                              ; preds = %106, %101
  %110 = load ptr, ptr %7, align 4
  store ptr %36, ptr %110, align 4
  br label %113

111:                                              ; preds = %83, %67, %60, %53, %49, %44, %35, %33, %15, %2
  %112 = phi i32 [ %16, %15 ], [ -22, %33 ], [ -12, %2 ], [ -19, %67 ], [ -19, %60 ], [ -19, %53 ], [ -19, %49 ], [ -19, %44 ], [ -19, %35 ], [ -19, %83 ]
  call void @kfree(ptr noundef %9) #12
  br label %113

113:                                              ; preds = %111, %109
  %114 = phi i32 [ %112, %111 ], [ 0, %109 ]
  ret i32 %114
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @si2165_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @kfree(ptr noundef %3) #12
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @si2165_init(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.si2165_state, ptr %6, i32 0, i32 3, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = getelementptr inbounds %struct.si2165_state, ptr %6, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = zext i8 %8 to i32
  %12 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 0, i32 noundef %11) #12
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %122, label %14

14:                                               ; preds = %1
  %15 = load ptr, ptr %9, align 4
  %16 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 260, i32 noundef 1) #12
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %122, label %18

18:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !9
  %19 = load ptr, ptr %9, align 4
  %20 = call i32 @regmap_read(ptr noundef %19, i32 noundef 0, ptr noundef nonnull %4) #12
  %21 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  %22 = icmp slt i32 %20, 0
  br i1 %22, label %122, label %23

23:                                               ; preds = %18
  %24 = trunc i32 %21 to i8
  %25 = load i8, ptr %7, align 1
  %26 = icmp eq i8 %25, %24
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %6, align 8
  %29 = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.8) #14
  br label %122

30:                                               ; preds = %23
  %31 = load ptr, ptr %9, align 4
  %32 = call i32 @regmap_write(ptr noundef %31, i32 noundef 395, i32 noundef 0) #12
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %122, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %9, align 4
  %36 = call i32 @regmap_write(ptr noundef %35, i32 noundef 400, i32 noundef 1) #12
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %122, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr %9, align 4
  %40 = call i32 @regmap_write(ptr noundef %39, i32 noundef 368, i32 noundef 0) #12
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %122, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr %9, align 4
  %44 = call i32 @regmap_write(ptr noundef %43, i32 noundef 369, i32 noundef 7) #12
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %122, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr %9, align 4
  %48 = call i32 @regmap_write(ptr noundef %47, i32 noundef 1606, i32 noundef 0) #12
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %122, label %50

50:                                               ; preds = %46
  %51 = load ptr, ptr %9, align 4
  %52 = call i32 @regmap_write(ptr noundef %51, i32 noundef 1601, i32 noundef 0) #12
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %122, label %54

54:                                               ; preds = %50
  %55 = call fastcc i32 @si2165_init_pll(ptr noundef %6)
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %122, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr %9, align 4
  %59 = call i32 @regmap_write(ptr noundef %58, i32 noundef 80, i32 noundef 1) #12
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %122, label %61

61:                                               ; preds = %57
  %62 = load ptr, ptr %9, align 4
  %63 = call i32 @regmap_write(ptr noundef %62, i32 noundef 150, i32 noundef 1) #12
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %122, label %65

65:                                               ; preds = %61
  %66 = call fastcc i32 @si2165_wait_init_done(ptr noundef %6)
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %122, label %68

68:                                               ; preds = %65
  %69 = load ptr, ptr %9, align 4
  %70 = call i32 @regmap_write(ptr noundef %69, i32 noundef 80, i32 noundef 0) #12
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %122, label %72

72:                                               ; preds = %68
  %73 = call fastcc i32 @si2165_writereg16(ptr noundef %6, i16 noundef zeroext 1136, i16 noundef zeroext 30000)
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %122, label %75

75:                                               ; preds = %72
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !9
  %76 = load ptr, ptr %9, align 4
  %77 = call i32 @regmap_read(ptr noundef %76, i32 noundef 836, ptr noundef nonnull %3) #12
  %78 = load i32, ptr %3, align 4
  %79 = trunc i32 %78 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  %80 = icmp slt i32 %77, 0
  br i1 %80, label %122, label %81

81:                                               ; preds = %75
  %82 = load ptr, ptr %9, align 4
  %83 = call i32 @regmap_write(ptr noundef %82, i32 noundef 203, i32 noundef 0) #12
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %122, label %85

85:                                               ; preds = %81
  %86 = call fastcc i32 @si2165_writereg32(ptr noundef %6, i16 noundef zeroext 840, i32 noundef -201326592)
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %122, label %88

88:                                               ; preds = %85
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store i32 0, ptr %2, align 4, !annotation !9
  %89 = load ptr, ptr %9, align 4
  %90 = call i32 @regmap_read(ptr noundef %89, i32 noundef 833, ptr noundef nonnull %2) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %122, label %92

92:                                               ; preds = %88
  %93 = icmp eq i8 %79, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %92
  %95 = call fastcc i32 @si2165_upload_firmware(ptr noundef %6)
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %122, label %97

97:                                               ; preds = %94, %92
  %98 = load ptr, ptr %9, align 4
  %99 = call i32 @regmap_write(ptr noundef %98, i32 noundef 1252, i32 noundef 32) #12
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %122, label %101

101:                                              ; preds = %97
  %102 = call fastcc i32 @si2165_writereg16(ptr noundef %6, i16 noundef zeroext 1263, i16 noundef zeroext 254)
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %122, label %104

104:                                              ; preds = %101
  %105 = call fastcc i32 @si2165_writereg24(ptr noundef %6)
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %122, label %107

107:                                              ; preds = %104
  %108 = load ptr, ptr %9, align 4
  %109 = call i32 @regmap_write(ptr noundef %108, i32 noundef 1253, i32 noundef 1) #12
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %122, label %111

111:                                              ; preds = %107
  %112 = load ptr, ptr %9, align 4
  %113 = call i32 @regmap_write(ptr noundef %112, i32 noundef 2296, i32 noundef 0) #12
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %122, label %115

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.si2165_state, ptr %6, i32 0, i32 2, i32 8, i32 43
  store i8 1, ptr %116, align 1
  %117 = getelementptr inbounds %struct.si2165_state, ptr %6, i32 0, i32 2, i32 8, i32 43, i32 1
  store i8 0, ptr %117, align 1
  %118 = getelementptr inbounds %struct.si2165_state, ptr %6, i32 0, i32 2, i32 8, i32 46
  store i8 1, ptr %118, align 4
  %119 = getelementptr inbounds %struct.si2165_state, ptr %6, i32 0, i32 2, i32 8, i32 46, i32 1
  store i8 0, ptr %119, align 1
  %120 = getelementptr inbounds %struct.si2165_state, ptr %6, i32 0, i32 2, i32 8, i32 47
  store i8 1, ptr %120, align 1
  %121 = getelementptr inbounds %struct.si2165_state, ptr %6, i32 0, i32 2, i32 8, i32 47, i32 1
  store i8 0, ptr %121, align 1
  br label %122

122:                                              ; preds = %115, %111, %107, %104, %101, %97, %94, %88, %85, %81, %75, %72, %68, %65, %61, %57, %54, %50, %46, %42, %38, %34, %30, %27, %18, %14, %1
  %123 = phi i32 [ -22, %27 ], [ 0, %115 ], [ %99, %97 ], [ %102, %101 ], [ %105, %104 ], [ %109, %107 ], [ %113, %111 ], [ %12, %1 ], [ %16, %14 ], [ %20, %18 ], [ %32, %30 ], [ %36, %34 ], [ %40, %38 ], [ %44, %42 ], [ %48, %46 ], [ %52, %50 ], [ %55, %54 ], [ %59, %57 ], [ %63, %61 ], [ %66, %65 ], [ %70, %68 ], [ %73, %72 ], [ %77, %75 ], [ %83, %81 ], [ %86, %85 ], [ %90, %88 ], [ %95, %94 ]
  ret i32 %123
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @si2165_sleep(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.si2165_state, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 260, i32 noundef 0) #12
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr %4, align 4
  %10 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 0, i32 noundef 0) #12
  %11 = tail call i32 @llvm.smin.i32(i32 %10, i32 0)
  br label %12

12:                                               ; preds = %8, %1
  %13 = phi i32 [ %6, %1 ], [ %11, %8 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @si2165_set_frontend(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca [4 x i8], align 4
  %4 = alloca i32, align 4
  %5 = alloca [4 x i8], align 4
  %6 = alloca [4 x i8], align 4
  %7 = alloca [4 x i8], align 4
  %8 = alloca [4 x i8], align 4
  %9 = alloca [2 x i8], align 2
  %10 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %13 = load i32, ptr %12, align 4
  %14 = tail call fastcc i32 @si2165_set_if_freq_shift(ptr noundef %11)
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %247, label %16

16:                                               ; preds = %1
  switch i32 %13, label %247 [
    i32 3, label %17
    i32 1, label %102
  ]

17:                                               ; preds = %16
  %18 = load ptr, ptr %10, align 4
  %19 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.si2165_state, ptr %18, i32 0, i32 11
  %22 = load i8, ptr %21, align 1, !range !8
  %23 = icmp eq i8 %22, 0
  %24 = icmp eq i32 %20, 0
  %25 = select i1 %23, i1 true, i1 %24
  br i1 %25, label %247, label %26

26:                                               ; preds = %17
  %27 = shl i32 %20, 3
  %28 = udiv i32 %27, 7
  %29 = getelementptr inbounds %struct.si2165_state, ptr %18, i32 0, i32 6
  %30 = load i32, ptr %29, align 8
  %31 = udiv i32 %30, 24
  %32 = getelementptr inbounds %struct.si2165_state, ptr %18, i32 0, i32 7
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.si2165_state, ptr %18, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 @regmap_write(ptr noundef %34, i32 noundef 160, i32 noundef 12) #12
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %247, label %37

37:                                               ; preds = %26
  %38 = udiv i32 %20, 10000
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #12
  %39 = trunc i32 %38 to i8
  store i8 %39, ptr %9, align 2
  %40 = getelementptr inbounds i8, ptr %9, i32 1
  %41 = lshr i32 %38, 8
  %42 = trunc i32 %41 to i8
  store i8 %42, ptr %40, align 1
  %43 = load ptr, ptr %33, align 4
  %44 = call i32 @regmap_bulk_write(ptr noundef %43, i32 noundef 776, ptr noundef nonnull %9, i32 noundef 2) #12
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #12
  br label %51

47:                                               ; preds = %37
  %48 = load ptr, ptr %18, align 8
  %49 = getelementptr inbounds %struct.i2c_client, ptr %48, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.si2165_write, i32 noundef %44) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #12
  %50 = icmp slt i32 %44, 0
  br i1 %50, label %247, label %51

51:                                               ; preds = %47, %46
  %52 = icmp eq i32 %27, 0
  br i1 %52, label %247, label %53

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.si2165_state, ptr %18, i32 0, i32 8
  %55 = load i32, ptr %54, align 8
  %56 = zext i32 %55 to i64
  %57 = shl nuw nsw i64 %56, 23
  %58 = icmp ult i32 %55, 512
  br i1 %58, label %59, label %62, !prof !10

59:                                               ; preds = %53
  %60 = trunc i64 %57 to i32
  %61 = udiv i32 %60, %28
  br label %66

62:                                               ; preds = %53
  %63 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %28, i64 %57) #15, !srcloc !11
  %64 = extractvalue { i64, i64 } %63, 1
  %65 = trunc i64 %64 to i32
  br label %66

66:                                               ; preds = %62, %59
  %67 = phi i32 [ %61, %59 ], [ %65, %62 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  %68 = trunc i32 %67 to i8
  store i8 %68, ptr %8, align 4
  %69 = getelementptr inbounds i8, ptr %8, i32 1
  %70 = lshr i32 %67, 8
  %71 = trunc i32 %70 to i8
  store i8 %71, ptr %69, align 1
  %72 = getelementptr inbounds i8, ptr %8, i32 2
  %73 = lshr i32 %67, 16
  %74 = trunc i32 %73 to i8
  store i8 %74, ptr %72, align 2
  %75 = getelementptr inbounds i8, ptr %8, i32 3
  %76 = lshr i32 %67, 24
  %77 = trunc i32 %76 to i8
  %78 = and i8 %77, 63
  store i8 %78, ptr %75, align 1
  %79 = load ptr, ptr %33, align 4
  %80 = call i32 @regmap_bulk_write(ptr noundef %79, i32 noundef 228, ptr noundef nonnull %8, i32 noundef 4) #12
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %66
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  br label %87

83:                                               ; preds = %66
  %84 = load ptr, ptr %18, align 8
  %85 = getelementptr inbounds %struct.i2c_client, ptr %84, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.si2165_write, i32 noundef %80) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  %86 = icmp slt i32 %80, 0
  br i1 %86, label %247, label %87

87:                                               ; preds = %83, %82
  br label %91

88:                                               ; preds = %91
  %89 = add nuw nsw i32 %92, 1
  %90 = icmp eq i32 %89, 13
  br i1 %90, label %193, label %91

91:                                               ; preds = %88, %87
  %92 = phi i32 [ %89, %88 ], [ 0, %87 ]
  %93 = getelementptr %struct.si2165_reg_value_pair, ptr @dvbt_regs, i32 %92
  %94 = load i16, ptr %93, align 2
  %95 = getelementptr %struct.si2165_reg_value_pair, ptr @dvbt_regs, i32 %92, i32 1
  %96 = load i8, ptr %95, align 2
  %97 = load ptr, ptr %33, align 4
  %98 = zext i16 %94 to i32
  %99 = zext i8 %96 to i32
  %100 = call i32 @regmap_write(ptr noundef %97, i32 noundef %98, i32 noundef %99) #12
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %247, label %88

102:                                              ; preds = %16
  %103 = load ptr, ptr %10, align 4
  %104 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 10
  %105 = load i32, ptr %104, align 4
  %106 = getelementptr inbounds %struct.si2165_state, ptr %103, i32 0, i32 10
  %107 = load i8, ptr %106, align 8, !range !8
  %108 = icmp eq i8 %107, 0
  %109 = icmp eq i32 %105, 0
  %110 = select i1 %108, i1 true, i1 %109
  br i1 %110, label %247, label %111

111:                                              ; preds = %102
  %112 = getelementptr inbounds %struct.si2165_state, ptr %103, i32 0, i32 6
  %113 = load i32, ptr %112, align 8
  %114 = udiv i32 %113, 28
  %115 = getelementptr inbounds %struct.si2165_state, ptr %103, i32 0, i32 7
  store i32 %114, ptr %115, align 4
  %116 = getelementptr inbounds %struct.si2165_state, ptr %103, i32 0, i32 1
  %117 = load ptr, ptr %116, align 4
  %118 = tail call i32 @regmap_write(ptr noundef %117, i32 noundef 160, i32 noundef 14) #12
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %247, label %120

120:                                              ; preds = %111
  %121 = getelementptr inbounds %struct.si2165_state, ptr %103, i32 0, i32 8
  %122 = load i32, ptr %121, align 8
  %123 = zext i32 %122 to i64
  %124 = shl nuw nsw i64 %123, 23
  %125 = icmp ult i32 %122, 512
  br i1 %125, label %126, label %129, !prof !10

126:                                              ; preds = %120
  %127 = trunc i64 %124 to i32
  %128 = udiv i32 %127, %105
  br label %133

129:                                              ; preds = %120
  %130 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %105, i64 %124) #15, !srcloc !11
  %131 = extractvalue { i64, i64 } %130, 1
  %132 = trunc i64 %131 to i32
  br label %133

133:                                              ; preds = %129, %126
  %134 = phi i32 [ %128, %126 ], [ %132, %129 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  %135 = trunc i32 %134 to i8
  store i8 %135, ptr %7, align 4
  %136 = getelementptr inbounds i8, ptr %7, i32 1
  %137 = lshr i32 %134, 8
  %138 = trunc i32 %137 to i8
  store i8 %138, ptr %136, align 1
  %139 = getelementptr inbounds i8, ptr %7, i32 2
  %140 = lshr i32 %134, 16
  %141 = trunc i32 %140 to i8
  store i8 %141, ptr %139, align 2
  %142 = getelementptr inbounds i8, ptr %7, i32 3
  %143 = lshr i32 %134, 24
  %144 = trunc i32 %143 to i8
  %145 = and i8 %144, 63
  store i8 %145, ptr %142, align 1
  %146 = load ptr, ptr %116, align 4
  %147 = call i32 @regmap_bulk_write(ptr noundef %146, i32 noundef 228, ptr noundef nonnull %7, i32 noundef 4) #12
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %133
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  br label %154

150:                                              ; preds = %133
  %151 = load ptr, ptr %103, align 8
  %152 = getelementptr inbounds %struct.i2c_client, ptr %151, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %152, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.si2165_write, i32 noundef %147) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  %153 = icmp slt i32 %147, 0
  br i1 %153, label %247, label %154

154:                                              ; preds = %150, %149
  %155 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 1
  %156 = load i32, ptr %155, align 4
  %157 = icmp ult i32 %156, 5
  br i1 %157, label %158, label %161

158:                                              ; preds = %154
  %159 = getelementptr inbounds [5 x i32], ptr @switch.table.si2165_set_frontend, i32 0, i32 %156
  %160 = load i32, ptr %159, align 4
  br label %161

161:                                              ; preds = %158, %154
  %162 = phi i32 [ %160, %158 ], [ 11, %154 ]
  %163 = load ptr, ptr %116, align 4
  %164 = call i32 @regmap_write(ptr noundef %163, i32 noundef 756, i32 noundef %162) #12
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %247, label %166

166:                                              ; preds = %161
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store i8 0, ptr %6, align 4
  %167 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 18, ptr %167, align 1
  %168 = getelementptr inbounds i8, ptr %6, i32 2
  store i8 122, ptr %168, align 2
  %169 = getelementptr inbounds i8, ptr %6, i32 3
  store i8 0, ptr %169, align 1
  %170 = load ptr, ptr %116, align 4
  %171 = call i32 @regmap_bulk_write(ptr noundef %170, i32 noundef 196, ptr noundef nonnull %6, i32 noundef 4) #12
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %166
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  br label %178

174:                                              ; preds = %166
  %175 = load ptr, ptr %103, align 8
  %176 = getelementptr inbounds %struct.i2c_client, ptr %175, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %176, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.si2165_write, i32 noundef %171) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  %177 = icmp slt i32 %171, 0
  br i1 %177, label %247, label %178

178:                                              ; preds = %174, %173
  br label %182

179:                                              ; preds = %182
  %180 = add nuw nsw i32 %183, 1
  %181 = icmp eq i32 %180, 20
  br i1 %181, label %193, label %182

182:                                              ; preds = %179, %178
  %183 = phi i32 [ %180, %179 ], [ 0, %178 ]
  %184 = getelementptr %struct.si2165_reg_value_pair, ptr @dvbc_regs, i32 %183
  %185 = load i16, ptr %184, align 2
  %186 = getelementptr %struct.si2165_reg_value_pair, ptr @dvbc_regs, i32 %183, i32 1
  %187 = load i8, ptr %186, align 2
  %188 = load ptr, ptr %116, align 4
  %189 = zext i16 %185 to i32
  %190 = zext i8 %187 to i32
  %191 = call i32 @regmap_write(ptr noundef %188, i32 noundef %189, i32 noundef %190) #12
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %247, label %179

193:                                              ; preds = %179, %88
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i8 0, ptr %5, align 4
  %194 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 0, ptr %194, align 1
  %195 = getelementptr inbounds i8, ptr %5, i32 2
  store i8 0, ptr %195, align 2
  %196 = getelementptr inbounds i8, ptr %5, i32 3
  store i8 -12, ptr %196, align 1
  %197 = getelementptr inbounds %struct.si2165_state, ptr %11, i32 0, i32 1
  %198 = load ptr, ptr %197, align 4
  %199 = call i32 @regmap_bulk_write(ptr noundef %198, i32 noundef 840, ptr noundef nonnull %5, i32 noundef 4) #12
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %193
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  br label %206

202:                                              ; preds = %193
  %203 = load ptr, ptr %11, align 8
  %204 = getelementptr inbounds %struct.i2c_client, ptr %203, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %204, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.si2165_write, i32 noundef %199) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  %205 = icmp slt i32 %199, 0
  br i1 %205, label %247, label %206

206:                                              ; preds = %202, %201
  %207 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %208 = load ptr, ptr %207, align 4
  %209 = icmp eq ptr %208, null
  br i1 %209, label %212, label %210

210:                                              ; preds = %206
  %211 = call i32 %208(ptr noundef %0) #12
  br label %212

212:                                              ; preds = %210, %206
  %213 = call fastcc i32 @si2165_set_if_freq_shift(ptr noundef %11)
  %214 = icmp slt i32 %213, 0
  br i1 %214, label %247, label %215

215:                                              ; preds = %212
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !9
  %216 = load ptr, ptr %197, align 4
  %217 = call i32 @regmap_read(ptr noundef %216, i32 noundef 833, ptr noundef nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %247, label %219

219:                                              ; preds = %215
  %220 = load ptr, ptr %197, align 4
  %221 = call i32 @regmap_write(ptr noundef %220, i32 noundef 833, i32 noundef 0) #12
  %222 = icmp slt i32 %221, 0
  br i1 %222, label %247, label %223

223:                                              ; preds = %219
  %224 = load ptr, ptr %197, align 4
  %225 = call i32 @regmap_write(ptr noundef %224, i32 noundef 192, i32 noundef 0) #12
  %226 = icmp slt i32 %225, 0
  br i1 %226, label %247, label %227

227:                                              ; preds = %223
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4
  %228 = load ptr, ptr %197, align 4
  %229 = call i32 @regmap_bulk_write(ptr noundef %228, i32 noundef 900, ptr noundef nonnull %3, i32 noundef 4) #12
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %227
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  br label %236

232:                                              ; preds = %227
  %233 = load ptr, ptr %11, align 8
  %234 = getelementptr inbounds %struct.i2c_client, ptr %233, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %234, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.si2165_write, i32 noundef %229) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  %235 = icmp slt i32 %229, 0
  br i1 %235, label %247, label %236

236:                                              ; preds = %232, %231
  %237 = call fastcc i32 @si2165_write_reg_list(ptr noundef %11, ptr noundef nonnull @adc_rewrite, i32 noundef 5)
  %238 = icmp slt i32 %237, 0
  br i1 %238, label %247, label %239

239:                                              ; preds = %236
  %240 = load ptr, ptr %197, align 4
  %241 = call i32 @regmap_write(ptr noundef %240, i32 noundef 736, i32 noundef 1) #12
  %242 = icmp slt i32 %241, 0
  br i1 %242, label %247, label %243

243:                                              ; preds = %239
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store i32 0, ptr %2, align 4, !annotation !9
  %244 = load ptr, ptr %197, align 4
  %245 = call i32 @regmap_read(ptr noundef %244, i32 noundef 833, ptr noundef nonnull %2) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  %246 = call i32 @llvm.smin.i32(i32 %245, i32 0)
  br label %247

247:                                              ; preds = %243, %239, %236, %232, %223, %219, %215, %212, %202, %182, %174, %161, %150, %111, %102, %91, %83, %51, %47, %26, %17, %16, %1
  %248 = phi i32 [ %14, %1 ], [ -22, %16 ], [ %199, %202 ], [ %213, %212 ], [ %217, %215 ], [ %221, %219 ], [ %225, %223 ], [ %229, %232 ], [ %237, %236 ], [ %241, %239 ], [ %246, %243 ], [ -22, %51 ], [ %80, %83 ], [ %44, %47 ], [ %35, %26 ], [ -22, %17 ], [ %171, %174 ], [ %164, %161 ], [ %147, %150 ], [ %118, %111 ], [ -22, %102 ], [ %100, %91 ], [ %191, %182 ]
  ret i32 %248
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @si2165_get_tune_settings(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #8 {
  store i32 1000, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @si2165_read_status(ptr nocapture noundef %0, ptr nocapture noundef %1) #2 {
  %3 = alloca [3 x i8], align 1
  %4 = alloca i32, align 4
  %5 = alloca [3 x i8], align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %12 = load i32, ptr %11, align 4
  store i32 0, ptr %1, align 4
  switch i32 %12, label %35 [
    i32 3, label %13
    i32 1, label %22
  ]

13:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  store i32 0, ptr %8, align 4, !annotation !9
  %14 = getelementptr inbounds %struct.si2165_state, ptr %10, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = call i32 @regmap_read(ptr noundef %15, i32 noundef 936, ptr noundef nonnull %8) #12
  %17 = load i32, ptr %8, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  %18 = icmp slt i32 %16, 0
  br i1 %18, label %177, label %19

19:                                               ; preds = %13
  %20 = and i32 %17, 3
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %31, label %35

22:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store i32 0, ptr %7, align 4, !annotation !9
  %23 = getelementptr inbounds %struct.si2165_state, ptr %10, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = call i32 @regmap_read(ptr noundef %24, i32 noundef 1088, ptr noundef nonnull %7) #12
  %26 = load i32, ptr %7, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  %27 = icmp slt i32 %25, 0
  br i1 %27, label %177, label %28

28:                                               ; preds = %22
  %29 = and i32 %26, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %28, %19
  %32 = phi i32 [ 3, %19 ], [ 15, %28 ]
  %33 = load i32, ptr %1, align 4
  %34 = or i32 %33, %32
  store i32 %34, ptr %1, align 4
  br label %35

35:                                               ; preds = %31, %28, %19, %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store i32 0, ptr %6, align 4, !annotation !9
  %36 = getelementptr inbounds %struct.si2165_state, ptr %10, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = call i32 @regmap_read(ptr noundef %37, i32 noundef 1248, ptr noundef nonnull %6) #12
  %39 = load i32, ptr %6, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  %40 = icmp slt i32 %38, 0
  br i1 %40, label %177, label %41

41:                                               ; preds = %35
  %42 = and i32 %39, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32, ptr %1, align 4
  %46 = or i32 %45, 31
  store i32 %46, ptr %1, align 4
  br label %47

47:                                               ; preds = %44, %41
  %48 = icmp eq i32 %12, 1
  br i1 %48, label %49, label %99

49:                                               ; preds = %47
  %50 = load i32, ptr %1, align 4
  %51 = and i32 %50, 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %99, label %53

53:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %5, i8 0, i32 3, i1 false) #12, !annotation !9
  %54 = load ptr, ptr %36, align 4
  %55 = call i32 @regmap_bulk_read(ptr noundef %54, i32 noundef 620, ptr noundef nonnull %5, i32 noundef 3) #12
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %53
  %58 = load i8, ptr %5, align 1
  %59 = zext i8 %58 to i32
  %60 = getelementptr inbounds [3 x i8], ptr %5, i32 0, i32 1
  %61 = load i8, ptr %60, align 1
  %62 = zext i8 %61 to i32
  %63 = shl nuw nsw i32 %62, 8
  %64 = or i32 %63, %59
  %65 = getelementptr inbounds [3 x i8], ptr %5, i32 0, i32 2
  %66 = load i8, ptr %65, align 1
  %67 = zext i8 %66 to i32
  %68 = shl nuw nsw i32 %67, 16
  %69 = or i32 %64, %68
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #12
  br label %89

70:                                               ; preds = %53
  %71 = load ptr, ptr %10, align 8
  %72 = getelementptr inbounds %struct.i2c_client, ptr %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.si2165_state, ptr %10, i32 0, i32 3
  %74 = load i8, ptr %73, align 8
  %75 = zext i8 %74 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.si2165_read, i32 noundef %75, i32 noundef 620, i32 noundef %55) #14
  %76 = load i8, ptr %5, align 1
  %77 = zext i8 %76 to i32
  %78 = getelementptr inbounds [3 x i8], ptr %5, i32 0, i32 1
  %79 = load i8, ptr %78, align 1
  %80 = zext i8 %79 to i32
  %81 = shl nuw nsw i32 %80, 8
  %82 = or i32 %81, %77
  %83 = getelementptr inbounds [3 x i8], ptr %5, i32 0, i32 2
  %84 = load i8, ptr %83, align 1
  %85 = zext i8 %84 to i32
  %86 = shl nuw nsw i32 %85, 16
  %87 = or i32 %82, %86
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #12
  %88 = icmp slt i32 %55, 0
  br i1 %88, label %177, label %89

89:                                               ; preds = %70, %57
  %90 = phi i32 [ %69, %57 ], [ %87, %70 ]
  %91 = call i32 @intlog10(i32 noundef %90) #12
  %92 = zext i32 %91 to i64
  %93 = sub nsw i64 121210686, %92
  %94 = mul nsw i64 %93, 10000
  %95 = lshr i64 %94, 24
  %96 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  store i8 1, ptr %96, align 1
  %97 = and i64 %95, 4294967295
  %98 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  store i64 %97, ptr %98, align 1
  br label %101

99:                                               ; preds = %49, %47
  %100 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  store i8 0, ptr %100, align 1
  br label %101

101:                                              ; preds = %99, %89
  %102 = load i32, ptr %1, align 4
  %103 = and i32 %102, 4
  %104 = icmp eq i32 %103, 0
  %105 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1
  br i1 %104, label %174, label %106

106:                                              ; preds = %101
  %107 = load i8, ptr %105, align 1
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %106
  %110 = load ptr, ptr %36, align 4
  %111 = call i32 @regmap_write(ptr noundef %110, i32 noundef 1132, i32 noundef 1) #12
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %177, label %113

113:                                              ; preds = %109
  store i8 3, ptr %105, align 1
  %114 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1
  store i8 3, ptr %114, align 1
  %115 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1, i32 0, i32 1
  store i64 0, ptr %115, align 1
  %116 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1, i32 0, i32 1
  store i64 0, ptr %116, align 1
  %117 = getelementptr inbounds %struct.si2165_state, ptr %10, i32 0, i32 9
  store i64 0, ptr %117, align 8
  br label %176

118:                                              ; preds = %106
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !9
  %119 = load ptr, ptr %36, align 4
  %120 = call i32 @regmap_read(ptr noundef %119, i32 noundef 1148, ptr noundef nonnull %4) #12
  %121 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  %122 = icmp slt i32 %120, 0
  br i1 %122, label %177, label %123

123:                                              ; preds = %118
  %124 = and i32 %121, 1
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %176, label %126

126:                                              ; preds = %123
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %3, i8 0, i32 3, i1 false) #12, !annotation !9
  %127 = load ptr, ptr %36, align 4
  %128 = call i32 @regmap_bulk_read(ptr noundef %127, i32 noundef 1144, ptr noundef nonnull %3, i32 noundef 3) #12
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %143

130:                                              ; preds = %126
  %131 = load i8, ptr %3, align 1
  %132 = zext i8 %131 to i32
  %133 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 1
  %134 = load i8, ptr %133, align 1
  %135 = zext i8 %134 to i32
  %136 = shl nuw nsw i32 %135, 8
  %137 = or i32 %136, %132
  %138 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 2
  %139 = load i8, ptr %138, align 1
  %140 = zext i8 %139 to i32
  %141 = shl nuw nsw i32 %140, 16
  %142 = or i32 %137, %141
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #12
  br label %162

143:                                              ; preds = %126
  %144 = load ptr, ptr %10, align 8
  %145 = getelementptr inbounds %struct.i2c_client, ptr %144, i32 0, i32 4
  %146 = getelementptr inbounds %struct.si2165_state, ptr %10, i32 0, i32 3
  %147 = load i8, ptr %146, align 8
  %148 = zext i8 %147 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %145, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.si2165_read, i32 noundef %148, i32 noundef 1144, i32 noundef %128) #14
  %149 = load i8, ptr %3, align 1
  %150 = zext i8 %149 to i32
  %151 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 1
  %152 = load i8, ptr %151, align 1
  %153 = zext i8 %152 to i32
  %154 = shl nuw nsw i32 %153, 8
  %155 = or i32 %154, %150
  %156 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 2
  %157 = load i8, ptr %156, align 1
  %158 = zext i8 %157 to i32
  %159 = shl nuw nsw i32 %158, 16
  %160 = or i32 %155, %159
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #12
  %161 = icmp slt i32 %128, 0
  br i1 %161, label %177, label %162

162:                                              ; preds = %143, %130
  %163 = phi i32 [ %142, %130 ], [ %160, %143 ]
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1, i32 0, i32 1
  %166 = load i64, ptr %165, align 1
  %167 = add i64 %166, %164
  store i64 %167, ptr %165, align 1
  %168 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1, i32 0, i32 1
  %169 = load i64, ptr %168, align 1
  %170 = add i64 %169, 48960000
  store i64 %170, ptr %168, align 1
  %171 = load ptr, ptr %36, align 4
  %172 = call i32 @regmap_write(ptr noundef %171, i32 noundef 1132, i32 noundef 1) #12
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %177, label %176

174:                                              ; preds = %101
  store i8 0, ptr %105, align 1
  %175 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1
  store i8 0, ptr %175, align 1
  br label %176

176:                                              ; preds = %174, %162, %123, %113
  br label %177

177:                                              ; preds = %176, %162, %143, %118, %109, %70, %35, %22, %13
  %178 = phi i32 [ 0, %176 ], [ %172, %162 ], [ %16, %13 ], [ %25, %22 ], [ %38, %35 ], [ %55, %70 ], [ %111, %109 ], [ %120, %118 ], [ %128, %143 ]
  ret i32 %178
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @si2165_read_ber(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #9 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1
  %4 = load i8, ptr %3, align 1
  %5 = icmp eq i8 %4, 3
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  store i32 0, ptr %1, align 4
  br label %17

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1, i32 0, i32 1
  %11 = load i64, ptr %10, align 1
  %12 = getelementptr inbounds %struct.si2165_state, ptr %9, i32 0, i32 9
  %13 = load i64, ptr %12, align 8
  %14 = sub i64 %11, %13
  %15 = trunc i64 %14 to i32
  store i32 %15, ptr %1, align 4
  %16 = load i64, ptr %10, align 1
  store i64 %16, ptr %12, align 8
  br label %17

17:                                               ; preds = %7, %6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @si2165_read_snr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, 1
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  %9 = load i64, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !9
  %10 = call i64 @div_s64_rem(i64 noundef %9, i32 noundef 100, ptr noundef nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  %11 = trunc i64 %10 to i16
  br label %12

12:                                               ; preds = %7, %2
  %13 = phi i16 [ %11, %7 ], [ 0, %2 ]
  store i16 %13, ptr %1, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @si2165_init_pll(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = alloca [4 x i8], align 4
  %3 = getelementptr inbounds %struct.si2165_state, ptr %0, i32 0, i32 3, i32 2
  %4 = load i32, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store i32 2060, ptr %2, align 4, !annotation !9
  switch i32 %4, label %6 [
    i32 16000000, label %19
    i32 24000000, label %5
  ]

5:                                                ; preds = %1
  br label %19

6:                                                ; preds = %1
  %7 = icmp ugt i32 %4, 16000000
  %8 = select i1 %7, i8 2, i8 1
  %9 = zext i8 %8 to i32
  %10 = mul nuw i32 %9, 1624000000
  %11 = shl i32 %4, 1
  %12 = mul i32 %4, 126
  %13 = icmp ugt i32 %10, %12
  %14 = select i1 %13, i8 4, i8 1
  %15 = zext i8 %14 to i32
  %16 = mul i32 %11, %15
  %17 = udiv i32 %10, %16
  %18 = and i32 %17, 255
  br label %19

19:                                               ; preds = %6, %5, %1
  %20 = phi i8 [ %8, %6 ], [ 2, %5 ], [ 1, %1 ]
  %21 = phi i8 [ %14, %6 ], [ 4, %5 ], [ 1, %1 ]
  %22 = phi i32 [ %18, %6 ], [ 19, %5 ], [ 56, %1 ]
  %23 = zext i8 %20 to i32
  %24 = udiv i32 %4, %23
  %25 = zext i8 %21 to i32
  %26 = shl nuw nsw i32 %22, 1
  %27 = mul nuw nsw i32 %26, %25
  %28 = mul i32 %27, %24
  %29 = getelementptr inbounds %struct.si2165_state, ptr %0, i32 0, i32 6
  store i32 %28, ptr %29, align 8
  %30 = lshr i32 %28, 5
  %31 = getelementptr inbounds %struct.si2165_state, ptr %0, i32 0, i32 8
  store i32 %30, ptr %31, align 8
  %32 = udiv i32 %28, 24
  %33 = getelementptr inbounds %struct.si2165_state, ptr %0, i32 0, i32 7
  store i32 %32, ptr %33, align 4
  %34 = and i32 %22, 63
  %35 = icmp eq i8 %21, 1
  %36 = select i1 %35, i32 64, i32 0
  %37 = or i32 %34, %36
  %38 = trunc i32 %37 to i8
  %39 = or i8 %38, -128
  %40 = getelementptr inbounds [4 x i8], ptr %2, i32 0, i32 2
  store i8 %39, ptr %40, align 2
  %41 = getelementptr inbounds [4 x i8], ptr %2, i32 0, i32 3
  store i8 %20, ptr %41, align 1
  %42 = getelementptr inbounds %struct.si2165_state, ptr %0, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = call i32 @regmap_bulk_write(ptr noundef %43, i32 noundef 160, ptr noundef nonnull %2, i32 noundef 4) #12
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %19
  %47 = load ptr, ptr %0, align 8
  %48 = getelementptr inbounds %struct.i2c_client, ptr %47, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.si2165_write, i32 noundef %44) #14
  br label %49

49:                                               ; preds = %46, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @si2165_wait_init_done(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.si2165_state, ptr %0, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store i32 0, ptr %2, align 4, !annotation !9
  %4 = load ptr, ptr %3, align 4
  %5 = call i32 @regmap_read(ptr noundef %4, i32 noundef 84, ptr noundef nonnull %2) #12
  %6 = load i32, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  %7 = icmp slt i32 %5, 0
  br i1 %7, label %30, label %8

8:                                                ; preds = %1
  %9 = trunc i32 %6 to i8
  %10 = icmp eq i8 %9, 1
  br i1 %10, label %30, label %11

11:                                               ; preds = %8
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 50000, i32 noundef 2) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store i32 0, ptr %2, align 4, !annotation !9
  %12 = load ptr, ptr %3, align 4
  %13 = call i32 @regmap_read(ptr noundef %12, i32 noundef 84, ptr noundef nonnull %2) #12
  %14 = load i32, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  %15 = icmp slt i32 %13, 0
  br i1 %15, label %30, label %16

16:                                               ; preds = %11
  %17 = trunc i32 %14 to i8
  %18 = icmp eq i8 %17, 1
  br i1 %18, label %30, label %19

19:                                               ; preds = %16
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 50000, i32 noundef 2) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store i32 0, ptr %2, align 4, !annotation !9
  %20 = load ptr, ptr %3, align 4
  %21 = call i32 @regmap_read(ptr noundef %20, i32 noundef 84, ptr noundef nonnull %2) #12
  %22 = load i32, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  %23 = icmp slt i32 %21, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %19
  %25 = trunc i32 %22 to i8
  %26 = icmp eq i8 %25, 1
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 50000, i32 noundef 2) #12
  %28 = load ptr, ptr %0, align 8
  %29 = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.10) #14
  br label %30

30:                                               ; preds = %27, %24, %19, %16, %11, %8, %1
  %31 = phi i32 [ -22, %27 ], [ %5, %1 ], [ 0, %8 ], [ %13, %11 ], [ 0, %16 ], [ %21, %19 ], [ 0, %24 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @si2165_writereg16(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i16 noundef zeroext %2) unnamed_addr #2 {
  %4 = alloca [2 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #12
  %5 = trunc i16 %2 to i8
  store i8 %5, ptr %4, align 2
  %6 = getelementptr inbounds i8, ptr %4, i32 1
  %7 = lshr i16 %2, 8
  %8 = trunc i16 %7 to i8
  store i8 %8, ptr %6, align 1
  %9 = getelementptr inbounds %struct.si2165_state, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = zext i16 %1 to i32
  %12 = call i32 @regmap_bulk_write(ptr noundef %10, i32 noundef %11, ptr noundef nonnull %4, i32 noundef 2) #12
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load ptr, ptr %0, align 8
  %16 = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.si2165_write, i32 noundef %12) #14
  br label %17

17:                                               ; preds = %14, %3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @si2165_writereg32(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i32 noundef %2) unnamed_addr #2 {
  %4 = alloca [4 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  %5 = trunc i32 %2 to i8
  store i8 %5, ptr %4, align 4
  %6 = getelementptr inbounds i8, ptr %4, i32 1
  %7 = lshr i32 %2, 8
  %8 = trunc i32 %7 to i8
  store i8 %8, ptr %6, align 1
  %9 = getelementptr inbounds i8, ptr %4, i32 2
  %10 = lshr i32 %2, 16
  %11 = trunc i32 %10 to i8
  store i8 %11, ptr %9, align 2
  %12 = getelementptr inbounds i8, ptr %4, i32 3
  %13 = lshr i32 %2, 24
  %14 = trunc i32 %13 to i8
  store i8 %14, ptr %12, align 1
  %15 = getelementptr inbounds %struct.si2165_state, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = zext i16 %1 to i32
  %18 = call i32 @regmap_bulk_write(ptr noundef %16, i32 noundef %17, ptr noundef nonnull %4, i32 noundef 4) #12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load ptr, ptr %0, align 8
  %22 = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.si2165_write, i32 noundef %18) #14
  br label %23

23:                                               ; preds = %20, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @si2165_upload_firmware(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #12
  store i16 0, ptr %5, align 2, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store ptr null, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store i32 0, ptr %7, align 4, !annotation !9
  %8 = getelementptr inbounds %struct.si2165_state, ptr %0, i32 0, i32 4
  %9 = load i8, ptr %8, align 4
  %10 = icmp eq i8 %9, 3
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  %14 = call i32 @request_firmware(ptr noundef nonnull %6, ptr noundef nonnull @.str.11, ptr noundef %13) #12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %23, label %20

16:                                               ; preds = %1
  %17 = zext i8 %9 to i32
  %18 = load ptr, ptr %0, align 8
  %19 = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.12, i32 noundef %17) #14
  br label %142

20:                                               ; preds = %11
  %21 = load ptr, ptr %0, align 8
  %22 = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %22, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.11) #14
  br label %137

23:                                               ; preds = %11
  %24 = load ptr, ptr %6, align 4
  %25 = getelementptr inbounds %struct.firmware, ptr %24, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = load i32, ptr %24, align 4
  %28 = load ptr, ptr %0, align 8
  %29 = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %29, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.11, i32 noundef %27) #14
  %30 = and i32 %27, 3
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %23
  %33 = load ptr, ptr %0, align 8
  %34 = getelementptr inbounds %struct.i2c_client, ptr %33, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %34, ptr noundef nonnull @.str.15) #14
  br label %137

35:                                               ; preds = %23
  %36 = icmp ult i32 %27, 8
  br i1 %36, label %37, label %40

37:                                               ; preds = %35
  %38 = load ptr, ptr %0, align 8
  %39 = getelementptr inbounds %struct.i2c_client, ptr %38, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %39, ptr noundef nonnull @.str.16) #14
  br label %137

40:                                               ; preds = %35
  %41 = load i8, ptr %26, align 1
  %42 = icmp eq i8 %41, 1
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = getelementptr i8, ptr %26, i32 1
  %45 = load i8, ptr %44, align 1
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %43, %40
  %48 = load ptr, ptr %0, align 8
  %49 = getelementptr inbounds %struct.i2c_client, ptr %48, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %49, ptr noundef nonnull @.str.17) #14
  br label %137

50:                                               ; preds = %43
  %51 = getelementptr i8, ptr %26, i32 2
  %52 = load i8, ptr %51, align 1
  %53 = getelementptr i8, ptr %26, i32 4
  %54 = load i8, ptr %53, align 1
  %55 = getelementptr i8, ptr %26, i32 7
  %56 = load i8, ptr %55, align 1
  %57 = zext i8 %56 to i32
  %58 = shl nuw nsw i32 %57, 8
  %59 = getelementptr i8, ptr %26, i32 6
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i32
  %62 = or i32 %58, %61
  %63 = getelementptr inbounds %struct.si2165_state, ptr %0, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = call i32 @regmap_write(ptr noundef %64, i32 noundef 833, i32 noundef 0) #12
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %137, label %67

67:                                               ; preds = %50
  %68 = load ptr, ptr %63, align 4
  %69 = call i32 @regmap_write(ptr noundef %68, i32 noundef 192, i32 noundef 0) #12
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %137, label %71

71:                                               ; preds = %67
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !9
  %72 = load ptr, ptr %63, align 4
  %73 = call i32 @regmap_read(ptr noundef %72, i32 noundef 833, ptr noundef nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %137, label %75

75:                                               ; preds = %71
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !9
  %76 = load ptr, ptr %63, align 4
  %77 = call i32 @regmap_read(ptr noundef %76, i32 noundef 860, ptr noundef nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %137, label %79

79:                                               ; preds = %75
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store i32 0, ptr %2, align 4, !annotation !9
  %80 = load ptr, ptr %63, align 4
  %81 = call i32 @regmap_read(ptr noundef %80, i32 noundef 860, ptr noundef nonnull %2) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %137, label %83

83:                                               ; preds = %79
  %84 = load ptr, ptr %63, align 4
  %85 = call i32 @regmap_write(ptr noundef %84, i32 noundef 860, i32 noundef 2) #12
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %137, label %87

87:                                               ; preds = %83
  store i32 8, ptr %7, align 4
  %88 = load ptr, ptr %0, align 8
  %89 = getelementptr inbounds %struct.i2c_client, ptr %88, i32 0, i32 4
  %90 = zext i8 %52 to i32
  %91 = zext i8 %54 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %89, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.si2165_upload_firmware, i32 noundef %90, i32 noundef %91, i32 noundef %62) #14
  %92 = call fastcc i32 @si2165_upload_firmware_block(ptr noundef %0, ptr noundef %26, i32 noundef %27, ptr noundef nonnull %7, i32 noundef 1)
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %137, label %94

94:                                               ; preds = %87
  %95 = load ptr, ptr %63, align 4
  %96 = call i32 @regmap_write(ptr noundef %95, i32 noundef 836, i32 noundef %90) #12
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %137, label %98

98:                                               ; preds = %94
  %99 = load ptr, ptr %63, align 4
  %100 = call i32 @regmap_write(ptr noundef %99, i32 noundef 889, i32 noundef 1) #12
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %137

102:                                              ; preds = %98
  %103 = call fastcc i32 @si2165_upload_firmware_block(ptr noundef %0, ptr noundef %26, i32 noundef %27, ptr noundef nonnull %7, i32 noundef %91)
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load ptr, ptr %0, align 8
  %107 = getelementptr inbounds %struct.i2c_client, ptr %106, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %107, ptr noundef nonnull @.str.19) #14
  br label %137

108:                                              ; preds = %102
  %109 = call fastcc i32 @si2165_readreg16(ptr noundef %0, ptr noundef nonnull %5)
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %137

111:                                              ; preds = %108
  %112 = load i16, ptr %5, align 2
  %113 = zext i16 %112 to i32
  %114 = icmp eq i32 %62, %113
  br i1 %114, label %118, label %115

115:                                              ; preds = %111
  %116 = load ptr, ptr %0, align 8
  %117 = getelementptr inbounds %struct.i2c_client, ptr %116, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %117, ptr noundef nonnull @.str.20, i32 noundef %113, i32 noundef %62) #14
  br label %137

118:                                              ; preds = %111
  %119 = call fastcc i32 @si2165_upload_firmware_block(ptr noundef %0, ptr noundef %26, i32 noundef %27, ptr noundef nonnull %7, i32 noundef 5)
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %137

121:                                              ; preds = %118
  %122 = load i32, ptr %7, align 4
  %123 = icmp eq i32 %27, %122
  br i1 %123, label %127, label %124

124:                                              ; preds = %121
  %125 = load ptr, ptr %0, align 8
  %126 = getelementptr inbounds %struct.i2c_client, ptr %125, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %126, ptr noundef nonnull @.str.21, i32 noundef %27, i32 noundef %122) #14
  br label %137

127:                                              ; preds = %121
  %128 = call fastcc i32 @si2165_writereg_mask8(ptr noundef %0, i16 noundef zeroext 833, i8 noundef zeroext 2, i8 noundef zeroext 2)
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %137, label %130

130:                                              ; preds = %127
  %131 = call fastcc i32 @si2165_writereg_mask8(ptr noundef %0, i16 noundef zeroext 860, i8 noundef zeroext 1, i8 noundef zeroext 1)
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %137, label %133

133:                                              ; preds = %130
  %134 = load ptr, ptr %0, align 8
  %135 = getelementptr inbounds %struct.i2c_client, ptr %134, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %135, ptr noundef nonnull @.str.22) #14
  %136 = getelementptr inbounds %struct.si2165_state, ptr %0, i32 0, i32 12
  store i8 1, ptr %136, align 2
  br label %137

137:                                              ; preds = %133, %130, %127, %124, %118, %115, %108, %105, %98, %94, %87, %83, %79, %75, %71, %67, %50, %47, %37, %32, %20
  %138 = phi i32 [ %14, %20 ], [ -22, %32 ], [ -22, %37 ], [ -22, %47 ], [ %65, %50 ], [ %69, %67 ], [ %73, %71 ], [ %77, %75 ], [ %81, %79 ], [ %85, %83 ], [ %92, %87 ], [ %96, %94 ], [ %100, %98 ], [ %103, %105 ], [ %109, %108 ], [ -22, %115 ], [ %119, %118 ], [ -22, %124 ], [ %128, %127 ], [ %131, %130 ], [ 0, %133 ]
  %139 = load ptr, ptr %6, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %142, label %141

141:                                              ; preds = %137
  call void @release_firmware(ptr noundef nonnull %139) #12
  br label %142

142:                                              ; preds = %141, %137, %16
  %143 = phi i32 [ 0, %16 ], [ %138, %141 ], [ %138, %137 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  ret i32 %143
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @si2165_writereg24(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = alloca [3 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %2) #12
  store i8 85, ptr %2, align 1
  %3 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 85, ptr %3, align 1
  %4 = getelementptr inbounds i8, ptr %2, i32 2
  store i8 85, ptr %4, align 1
  %5 = getelementptr inbounds %struct.si2165_state, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = call i32 @regmap_bulk_write(ptr noundef %6, i32 noundef 1268, ptr noundef nonnull %2, i32 noundef 3) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr %0, align 8
  %11 = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.si2165_write, i32 noundef %7) #14
  br label %12

12:                                               ; preds = %9, %1
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #12
  ret i32 %7
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @si2165_upload_firmware_block(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #2 {
  %6 = alloca [4 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store i32 -1073741824, ptr %6, align 4
  %7 = icmp eq ptr %3, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = load i32, ptr %3, align 4
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi i32 [ %9, %8 ], [ 0, %5 ]
  %12 = and i32 %2, 3
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %98

14:                                               ; preds = %10
  %15 = add i32 %11, 12
  %16 = icmp ule i32 %15, %2
  %17 = icmp ne i32 %4, 0
  %18 = and i1 %16, %17
  br i1 %18, label %19, label %95

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.si2165_state, ptr %0, i32 0, i32 1
  br label %21

21:                                               ; preds = %89, %19
  %22 = phi i32 [ %11, %19 ], [ %87, %89 ]
  %23 = phi i32 [ 0, %19 ], [ %90, %89 ]
  %24 = getelementptr i8, ptr %1, i32 %22
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp eq i8 %25, 0
  br i1 %27, label %43, label %28

28:                                               ; preds = %21
  %29 = add i32 %22, 1
  %30 = getelementptr i8, ptr %1, i32 %29
  %31 = load i8, ptr %30, align 1
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = add i32 %22, 2
  %35 = getelementptr i8, ptr %1, i32 %34
  %36 = load i8, ptr %35, align 1
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = add i32 %22, 3
  %40 = getelementptr i8, ptr %1, i32 %39
  %41 = load i8, ptr %40, align 1
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %38, %33, %28, %21
  %44 = load ptr, ptr %0, align 8
  %45 = getelementptr inbounds %struct.i2c_client, ptr %44, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %45, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %1) #14
  br label %98

46:                                               ; preds = %38
  %47 = add i32 %22, 8
  %48 = shl nuw nsw i32 %26, 2
  %49 = add i32 %48, %47
  %50 = icmp ugt i32 %49, %2
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = zext i8 %25 to i32
  %53 = load ptr, ptr %0, align 8
  %54 = getelementptr inbounds %struct.i2c_client, ptr %53, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %54, ptr noundef nonnull @.str.24, i32 noundef %2, i32 noundef %52) #14
  br label %98

55:                                               ; preds = %46
  %56 = add i8 %25, -1
  store i8 %56, ptr %6, align 4
  %57 = load ptr, ptr %20, align 4
  %58 = call i32 @regmap_bulk_write(ptr noundef %57, i32 noundef 868, ptr noundef nonnull %6, i32 noundef 4) #12
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %55
  %61 = load ptr, ptr %0, align 8
  %62 = getelementptr inbounds %struct.i2c_client, ptr %61, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.si2165_write, i32 noundef %58) #14
  %63 = icmp slt i32 %58, 0
  br i1 %63, label %98, label %64

64:                                               ; preds = %60, %55
  %65 = getelementptr i8, ptr %24, i32 4
  %66 = load ptr, ptr %20, align 4
  %67 = call i32 @regmap_bulk_write(ptr noundef %66, i32 noundef 872, ptr noundef %65, i32 noundef 4) #12
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %64
  %70 = load ptr, ptr %0, align 8
  %71 = getelementptr inbounds %struct.i2c_client, ptr %70, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.si2165_write, i32 noundef %67) #14
  %72 = icmp slt i32 %67, 0
  br i1 %72, label %98, label %73

73:                                               ; preds = %69, %64
  br label %74

74:                                               ; preds = %85, %73
  %75 = phi i32 [ %87, %85 ], [ %47, %73 ]
  %76 = phi i8 [ %86, %85 ], [ %25, %73 ]
  %77 = getelementptr i8, ptr %1, i32 %75
  %78 = load ptr, ptr %20, align 4
  %79 = call i32 @regmap_bulk_write(ptr noundef %78, i32 noundef 876, ptr noundef %77, i32 noundef 4) #12
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %74
  %82 = load ptr, ptr %0, align 8
  %83 = getelementptr inbounds %struct.i2c_client, ptr %82, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.si2165_write, i32 noundef %79) #14
  %84 = icmp slt i32 %79, 0
  br i1 %84, label %98, label %85

85:                                               ; preds = %81, %74
  %86 = add i8 %76, -1
  %87 = add i32 %75, 4
  %88 = icmp eq i8 %86, 0
  br i1 %88, label %89, label %74

89:                                               ; preds = %85
  %90 = add nuw i32 %23, 1
  %91 = add i32 %75, 16
  %92 = icmp ule i32 %91, %2
  %93 = icmp ult i32 %90, %4
  %94 = select i1 %92, i1 %93, i1 false
  br i1 %94, label %21, label %95

95:                                               ; preds = %89, %14
  %96 = phi i32 [ %11, %14 ], [ %87, %89 ]
  br i1 %7, label %98, label %97

97:                                               ; preds = %95
  store i32 %96, ptr %3, align 4
  br label %98

98:                                               ; preds = %97, %95, %81, %69, %60, %51, %43, %10
  %99 = phi i32 [ -22, %43 ], [ -22, %51 ], [ -22, %10 ], [ 0, %97 ], [ 0, %95 ], [ %79, %81 ], [ %67, %69 ], [ %58, %60 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  ret i32 %99
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @si2165_readreg16(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #2 {
  %3 = alloca [2 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #12
  store i16 0, ptr %3, align 2, !annotation !9
  %4 = getelementptr inbounds %struct.si2165_state, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = call i32 @regmap_bulk_read(ptr noundef %5, i32 noundef 890, ptr noundef nonnull %3, i32 noundef 2) #12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.si2165_state, ptr %0, i32 0, i32 3
  %12 = load i8, ptr %11, align 8
  %13 = zext i8 %12 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.si2165_read, i32 noundef %13, i32 noundef 890, i32 noundef %6) #14
  br label %14

14:                                               ; preds = %8, %2
  %15 = load i8, ptr %3, align 2
  %16 = zext i8 %15 to i16
  %17 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i16
  %20 = shl nuw i16 %19, 8
  %21 = or i16 %20, %16
  store i16 %21, ptr %1, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #12
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @si2165_writereg_mask8(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #2 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.si2165_state, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = zext i16 %1 to i32
  %9 = call i32 @regmap_read(ptr noundef %7, i32 noundef %8, ptr noundef nonnull %5) #12
  %10 = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  %11 = icmp slt i32 %9, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %4
  %13 = trunc i32 %10 to i8
  %14 = and i8 %3, %2
  %15 = xor i8 %3, -1
  %16 = and i8 %13, %15
  %17 = or i8 %16, %14
  %18 = load ptr, ptr %6, align 4
  %19 = zext i8 %17 to i32
  %20 = call i32 @regmap_write(ptr noundef %18, i32 noundef %8, i32 noundef %19) #12
  br label %21

21:                                               ; preds = %12, %4
  %22 = phi i32 [ %20, %12 ], [ %9, %4 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @si2165_set_if_freq_shift(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca [4 x i8], align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.si2165_state, ptr %0, i32 0, i32 2
  %5 = getelementptr inbounds %struct.si2165_state, ptr %0, i32 0, i32 8
  %6 = load i32, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4
  %7 = getelementptr inbounds %struct.si2165_state, ptr %0, i32 0, i32 2, i32 1, i32 32, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load ptr, ptr %0, align 8
  %12 = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.26) #14
  br label %54

13:                                               ; preds = %1
  %14 = icmp eq i32 %6, 0
  br i1 %14, label %54, label %15

15:                                               ; preds = %13
  %16 = call i32 %8(ptr noundef %4, ptr noundef nonnull %3) #12
  %17 = load i32, ptr %3, align 4
  %18 = zext i32 %17 to i64
  %19 = shl nuw nsw i64 %18, 29
  %20 = icmp ult i32 %17, 8
  br i1 %20, label %21, label %24, !prof !10

21:                                               ; preds = %15
  %22 = trunc i64 %19 to i32
  %23 = udiv i32 %22, %6
  br label %28

24:                                               ; preds = %15
  %25 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %6, i64 %19) #15, !srcloc !11
  %26 = extractvalue { i64, i64 } %25, 1
  %27 = trunc i64 %26 to i32
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi i32 [ %23, %21 ], [ %27, %24 ]
  %30 = getelementptr inbounds %struct.si2165_state, ptr %0, i32 0, i32 3, i32 3
  %31 = load i8, ptr %30, align 8, !range !8
  %32 = icmp eq i8 %31, 0
  %33 = sub i32 0, %29
  %34 = select i1 %32, i32 %29, i32 %33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  %35 = trunc i32 %34 to i8
  store i8 %35, ptr %2, align 4
  %36 = getelementptr inbounds i8, ptr %2, i32 1
  %37 = lshr i32 %34, 8
  %38 = trunc i32 %37 to i8
  store i8 %38, ptr %36, align 1
  %39 = getelementptr inbounds i8, ptr %2, i32 2
  %40 = lshr i32 %34, 16
  %41 = trunc i32 %40 to i8
  store i8 %41, ptr %39, align 2
  %42 = getelementptr inbounds i8, ptr %2, i32 3
  %43 = lshr i32 %34, 24
  %44 = trunc i32 %43 to i8
  %45 = and i8 %44, 31
  store i8 %45, ptr %42, align 1
  %46 = getelementptr inbounds %struct.si2165_state, ptr %0, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = call i32 @regmap_bulk_write(ptr noundef %47, i32 noundef 232, ptr noundef nonnull %2, i32 noundef 4) #12
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %28
  %51 = load ptr, ptr %0, align 8
  %52 = getelementptr inbounds %struct.i2c_client, ptr %51, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.si2165_write, i32 noundef %48) #14
  br label %53

53:                                               ; preds = %50, %28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  br label %54

54:                                               ; preds = %53, %13, %10
  %55 = phi i32 [ %48, %53 ], [ -22, %10 ], [ -22, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @si2165_write_reg_list(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #2 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %21

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.si2165_state, ptr %0, i32 0, i32 1
  br label %10

7:                                                ; preds = %10
  %8 = add nuw nsw i32 %11, 1
  %9 = icmp eq i32 %8, %2
  br i1 %9, label %21, label %10

10:                                               ; preds = %7, %5
  %11 = phi i32 [ 0, %5 ], [ %8, %7 ]
  %12 = getelementptr %struct.si2165_reg_value_pair, ptr %1, i32 %11
  %13 = load i16, ptr %12, align 2
  %14 = getelementptr %struct.si2165_reg_value_pair, ptr %1, i32 %11, i32 1
  %15 = load i8, ptr %14, align 2
  %16 = load ptr, ptr %6, align 4
  %17 = zext i16 %13 to i32
  %18 = zext i8 %15 to i32
  %19 = tail call i32 @regmap_write(ptr noundef %16, i32 noundef %17, i32 noundef %18) #12
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %7

21:                                               ; preds = %10, %7, %3
  %22 = phi i32 [ 0, %3 ], [ 0, %7 ], [ %19, %10 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @intlog10(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree nounwind willreturn writeonly }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readnone }

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
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2147712819, i64 2147713099, i64 2147713433, i64 2147713767}
