; ModuleID = '/llk/IR/drivers/media/dvb-frontends/mn88443x.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/mn88443x.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.mn88443x_spec = type { i8 }
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
%struct.mn88443x_priv = type { ptr, %struct.dvb_frontend, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.73], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.73 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.74 }>
%union.anon.74 = type { i64 }
%struct.mn88443x_config = type { ptr, i32, ptr, ptr }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }

@mn88443x_of_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,mn884433\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mn88443x_spec_pri }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,mn884434-0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mn88443x_spec_pri }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,mn884434-1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mn88443x_spec_sec }, %struct.of_device_id zeroinitializer], align 4
@mn88443x_i2c_id = internal constant [4 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"mn884433\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @mn88443x_spec_pri to i32) }, %struct.i2c_device_id { [20 x i8] c"mn884434-0\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @mn88443x_spec_pri to i32) }, %struct.i2c_device_id { [20 x i8] c"mn884434-1\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @mn88443x_spec_sec to i32) }, %struct.i2c_device_id zeroinitializer], align 4
@__UNIQUE_ID_author249 = internal constant [57 x i8] c"author=Katsuhiro Suzuki <suzuki.katsuhiro@socionext.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description250 = internal constant [58 x i8] c"description=Socionext MN88443x series demodulator driver.\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@mn88443x_spec_pri = internal constant %struct.mn88443x_spec { i8 1 }, align 1
@mn88443x_spec_sec = internal constant %struct.mn88443x_spec zeroinitializer, align 1
@__this_module = external dso_local global %struct.module, align 64
@mn88443x_driver = internal global %struct.i2c_driver { i32 0, ptr @mn88443x_probe, ptr @mn88443x_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mn88443x_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @mn88443x_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [9 x i8] c"mn88443x\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"mclk\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to request mclk: %ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"if-frequency\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Failed to load IF frequency: %d.\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Failed to request reset_gpio: %ld\0A\00", align 1
@regmap_config = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@mn88443x_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Socionext MN88443x\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 470000000, i32 2071000000, i32 0, i32 0, i32 28860000, i32 28860000, i32 0, i32 1769985 }, [8 x i8] c"\09\08\00\00\00\00\00\00", ptr null, ptr null, ptr null, ptr null, ptr @mn88443x_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mn88443x_set_frontend, ptr @mn88443x_get_tune_settings, ptr null, ptr @mn88443x_read_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@.str.7 = private unnamed_addr constant [42 x i8] c"Invalid clock, CLK:%d, ADCKT:%lld, IF:%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"Failed to prepare and enable mclk: %d\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_description250, ptr @__UNIQUE_ID_license251], section "llvm.metadata"

@__mod_of__mn88443x_of_match_device_table = dso_local alias [4 x %struct.of_device_id], ptr @mn88443x_of_match
@__mod_i2c__mn88443x_i2c_id_device_table = dso_local alias [4 x %struct.i2c_device_id], ptr @mn88443x_i2c_id

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @mn88443x_driver) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @mn88443x_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mn88443x_probe(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 1080, i32 noundef 3520) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %117, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 25
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @of_device_get_match_data(ptr noundef %3) #8
  br label %18

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.i2c_device_id, ptr %1, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = inttoptr i32 %16 to ptr
  br label %18

18:                                               ; preds = %14, %12
  %19 = phi ptr [ %17, %14 ], [ %13, %12 ]
  store ptr %19, ptr %6, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %117, label %21

21:                                               ; preds = %18
  %22 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.1) #8
  %23 = getelementptr inbounds %struct.mn88443x_priv, ptr %6, i32 0, i32 2
  store ptr %22, ptr %23, align 4
  %24 = icmp ule ptr %22, inttoptr (i32 -4096 to ptr)
  %25 = icmp ne ptr %5, null
  %26 = select i1 %24, i1 true, i1 %25
  br i1 %26, label %29, label %27

27:                                               ; preds = %21
  %28 = ptrtoint ptr %22 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2, i32 noundef %28) #9
  br label %117

29:                                               ; preds = %21
  %30 = load ptr, ptr %9, align 8
  %31 = getelementptr inbounds %struct.mn88443x_priv, ptr %6, i32 0, i32 5
  %32 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %30, ptr noundef nonnull @.str.3, ptr noundef %31, i32 noundef 1, i32 noundef 0) #8
  %33 = icmp sgt i32 %32, -1
  %34 = select i1 %33, i1 true, i1 %25
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4, i32 noundef %32) #9
  br label %117

36:                                               ; preds = %29
  %37 = tail call ptr @devm_gpiod_get_optional(ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef 7) #8
  %38 = getelementptr inbounds %struct.mn88443x_priv, ptr %6, i32 0, i32 3
  store ptr %37, ptr %38, align 4
  %39 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = ptrtoint ptr %37 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6, i32 noundef %41) #9
  %42 = load ptr, ptr %38, align 4
  %43 = ptrtoint ptr %42 to i32
  br label %117

44:                                               ; preds = %36
  br i1 %25, label %45, label %54

45:                                               ; preds = %44
  %46 = load ptr, ptr %5, align 4
  store ptr %46, ptr %23, align 4
  %47 = getelementptr inbounds %struct.mn88443x_config, ptr %5, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  store i32 %48, ptr %31, align 4
  %49 = getelementptr inbounds %struct.mn88443x_config, ptr %5, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  store ptr %50, ptr %38, align 4
  %51 = getelementptr inbounds %struct.mn88443x_priv, ptr %6, i32 0, i32 1
  %52 = getelementptr inbounds %struct.mn88443x_config, ptr %5, i32 0, i32 3
  %53 = load ptr, ptr %52, align 4
  store ptr %51, ptr %53, align 4
  br label %54

54:                                               ; preds = %45, %44
  %55 = getelementptr inbounds %struct.mn88443x_priv, ptr %6, i32 0, i32 7
  store ptr %0, ptr %55, align 4
  %56 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %0, ptr noundef nonnull @regmap_config, ptr noundef null, ptr noundef null) #8
  %57 = getelementptr inbounds %struct.mn88443x_priv, ptr %6, i32 0, i32 8
  store ptr %56, ptr %57, align 4
  %58 = icmp ugt ptr %56, inttoptr (i32 -4096 to ptr)
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = ptrtoint ptr %56 to i32
  br label %117

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %63 = load ptr, ptr %62, align 8
  %64 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %65 = load i16, ptr %64, align 2
  %66 = add i16 %65, 4
  %67 = tail call ptr @i2c_new_dummy_device(ptr noundef %63, i16 noundef zeroext %66) #8
  %68 = getelementptr inbounds %struct.mn88443x_priv, ptr %6, i32 0, i32 9
  store ptr %67, ptr %68, align 4
  %69 = icmp ugt ptr %67, inttoptr (i32 -4096 to ptr)
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  %71 = ptrtoint ptr %67 to i32
  br label %117

72:                                               ; preds = %61
  %73 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %67, ptr noundef nonnull @regmap_config, ptr noundef null, ptr noundef null) #8
  %74 = getelementptr inbounds %struct.mn88443x_priv, ptr %6, i32 0, i32 10
  store ptr %73, ptr %74, align 4
  %75 = icmp ugt ptr %73, inttoptr (i32 -4096 to ptr)
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = ptrtoint ptr %73 to i32
  br label %114

78:                                               ; preds = %72
  %79 = load ptr, ptr %23, align 4
  %80 = tail call i32 @clk_get_rate(ptr noundef %79) #8
  %81 = getelementptr inbounds %struct.mn88443x_priv, ptr %6, i32 0, i32 4
  store i32 %80, ptr %81, align 4
  %82 = getelementptr inbounds %struct.mn88443x_priv, ptr %6, i32 0, i32 1, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %82, ptr noundef nonnull align 4 dereferenceable(544) @mn88443x_ops, i32 544, i1 false)
  %83 = getelementptr inbounds %struct.mn88443x_priv, ptr %6, i32 0, i32 1, i32 3
  store ptr %6, ptr %83, align 4
  %84 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %6, ptr %84, align 8
  %85 = load ptr, ptr %55, align 4
  %86 = load ptr, ptr %74, align 4
  %87 = load ptr, ptr %23, align 4
  %88 = tail call i32 @clk_prepare(ptr noundef %87) #8
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %104

90:                                               ; preds = %78
  %91 = tail call i32 @clk_enable(ptr noundef %87) #8
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %90
  tail call void @clk_unprepare(ptr noundef %87) #8
  br label %104

94:                                               ; preds = %90
  %95 = load ptr, ptr %38, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %95, i32 noundef 1) #8
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 1000, i32 noundef 2) #8
  %96 = load ptr, ptr %38, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %96, i32 noundef 0) #8
  %97 = load ptr, ptr %6, align 4
  %98 = load i8, ptr %97, align 1, !range !8
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %94
  %101 = tail call i32 @regmap_write(ptr noundef %86, i32 noundef 8, i32 noundef 255) #8
  %102 = tail call i32 @regmap_write(ptr noundef %86, i32 noundef 9, i32 noundef 0) #8
  %103 = tail call i32 @regmap_write(ptr noundef %86, i32 noundef 10, i32 noundef 128) #8
  br label %107

104:                                              ; preds = %93, %78
  %105 = phi i32 [ %91, %93 ], [ %88, %78 ]
  %106 = getelementptr inbounds %struct.i2c_client, ptr %85, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %106, ptr noundef nonnull @.str.8, i32 noundef %105) #9
  br label %114

107:                                              ; preds = %100, %94
  %108 = phi i32 [ 224, %100 ], [ 143, %94 ]
  %109 = tail call i32 @regmap_write(ptr noundef %86, i32 noundef 11, i32 noundef %108) #8
  %110 = load ptr, ptr %74, align 4
  %111 = tail call i32 @regmap_update_bits_base(ptr noundef %110, i32 noundef 15, i32 noundef 3, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %112 = load ptr, ptr %74, align 4
  %113 = tail call i32 @regmap_update_bits_base(ptr noundef %112, i32 noundef 15, i32 noundef 12, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %117

114:                                              ; preds = %104, %76
  %115 = phi i32 [ %77, %76 ], [ %105, %104 ]
  %116 = load ptr, ptr %68, align 4
  tail call void @i2c_unregister_device(ptr noundef %116) #8
  br label %117

117:                                              ; preds = %114, %107, %70, %59, %40, %35, %27, %18, %2
  %118 = phi i32 [ %43, %40 ], [ %60, %59 ], [ %71, %70 ], [ %115, %114 ], [ 0, %107 ], [ %32, %35 ], [ %28, %27 ], [ -12, %2 ], [ -22, %18 ]
  ret i32 %118
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mn88443x_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mn88443x_priv, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %5, i32 noundef 1) #8
  %6 = getelementptr inbounds %struct.mn88443x_priv, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %7) #8
  tail call void @clk_unprepare(ptr noundef %7) #8
  %8 = getelementptr inbounds %struct.mn88443x_priv, ptr %3, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  tail call void @i2c_unregister_device(ptr noundef %9) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_dummy_device(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mn88443x_sleep(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mn88443x_priv, ptr %3, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 15, i32 noundef 3, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %7 = load ptr, ptr %4, align 4
  %8 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 15, i32 noundef 12, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mn88443x_set_frontend(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mn88443x_priv, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mn88443x_priv, ptr %5, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %11 = load i32, ptr %10, align 4
  switch i32 %11, label %87 [
    i32 9, label %12
    i32 8, label %16
  ]

12:                                               ; preds = %1
  %13 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 15, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %14 = load ptr, ptr %8, align 4
  %15 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 15, i32 noundef 12, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %87

16:                                               ; preds = %1
  %17 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 15, i32 noundef 3, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %18 = load ptr, ptr %8, align 4
  %19 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 15, i32 noundef 12, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %20 = getelementptr inbounds %struct.mn88443x_priv, ptr %5, i32 0, i32 7
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 4
  %23 = load ptr, ptr %8, align 4
  %24 = getelementptr inbounds %struct.mn88443x_priv, ptr %5, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, -4000000
  %27 = icmp ult i32 %26, 16200000
  %28 = getelementptr inbounds %struct.mn88443x_priv, ptr %5, i32 0, i32 6
  br i1 %27, label %29, label %31

29:                                               ; preds = %16
  store i8 1, ptr %28, align 4
  %30 = tail call i32 @regmap_write(ptr noundef %23, i32 noundef 17, i32 noundef 7) #8
  br label %35

31:                                               ; preds = %16
  store i8 0, ptr %28, align 4
  %32 = tail call i32 @regmap_write(ptr noundef %23, i32 noundef 17, i32 noundef 0) #8
  %33 = load i32, ptr %24, align 4
  %34 = zext i32 %33 to i64
  br label %35

35:                                               ; preds = %31, %29
  %36 = phi i64 [ 0, %29 ], [ %34, %31 ]
  %37 = trunc i64 %36 to i32
  %38 = getelementptr inbounds %struct.mn88443x_priv, ptr %5, i32 0, i32 5
  %39 = load i32, ptr %38, align 4
  switch i32 %39, label %49 [
    i32 57000000, label %40
    i32 44000000, label %46
  ]

40:                                               ; preds = %35
  %41 = add i32 %37, -20200000
  %42 = icmp ult i32 %41, 800001
  %43 = add i32 %37, -25300000
  %44 = icmp ult i32 %43, 110001
  %45 = or i1 %42, %44
  br i1 %45, label %57, label %55

46:                                               ; preds = %35
  %47 = add i32 %37, -25000000
  %48 = icmp ult i32 %47, 410001
  br i1 %48, label %57, label %55

49:                                               ; preds = %35
  %50 = add i32 %39, -4000000
  %51 = icmp ult i32 %50, 40000000
  %52 = add i32 %37, -20200000
  %53 = icmp ult i32 %52, 5210001
  %54 = and i1 %53, %51
  br i1 %54, label %59, label %55

55:                                               ; preds = %49, %46, %40
  %56 = load i32, ptr %24, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.7, i32 noundef %56, i64 noundef %36, i32 noundef %39) #9
  br label %87

57:                                               ; preds = %46, %40
  %58 = shl nuw nsw i64 %36, 1
  br label %59

59:                                               ; preds = %57, %49
  %60 = phi i64 [ %58, %57 ], [ 0, %49 ]
  %61 = zext i32 %39 to i64
  %62 = sub nsw i64 %60, %61
  %63 = shl nsw i64 %62, 24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !9
  %64 = call i64 @div_s64_rem(i64 noundef %63, i32 noundef %37, ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  %65 = shl nuw nsw i64 %36, 22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !9
  %66 = call i64 @div_s64_rem(i64 noundef %65, i32 noundef 8126984, ptr noundef nonnull %2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  %67 = lshr i64 %64, 16
  %68 = trunc i64 %67 to i32
  %69 = call i32 @regmap_write(ptr noundef %23, i32 noundef 36, i32 noundef %68) #8
  %70 = lshr i64 %64, 8
  %71 = trunc i64 %70 to i32
  %72 = call i32 @regmap_write(ptr noundef %23, i32 noundef 37, i32 noundef %71) #8
  %73 = trunc i64 %64 to i32
  %74 = call i32 @regmap_write(ptr noundef %23, i32 noundef 38, i32 noundef %73) #8
  %75 = lshr i64 %66, 16
  %76 = trunc i64 %75 to i32
  %77 = call i32 @regmap_write(ptr noundef %23, i32 noundef 39, i32 noundef %76) #8
  %78 = lshr i64 %66, 8
  %79 = trunc i64 %78 to i32
  %80 = call i32 @regmap_write(ptr noundef %23, i32 noundef 40, i32 noundef %79) #8
  %81 = trunc i64 %66 to i32
  %82 = call i32 @regmap_write(ptr noundef %23, i32 noundef 41, i32 noundef %81) #8
  %83 = call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 32, i32 noundef 3, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %84 = call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 44, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %85 = call i32 @regmap_write(ptr noundef %23, i32 noundef 62, i32 noundef 0) #8
  %86 = call i32 @regmap_write(ptr noundef %23, i32 noundef 19, i32 noundef 250) #8
  br label %87

87:                                               ; preds = %59, %55, %12, %1
  %88 = phi i32 [ 12, %12 ], [ 4, %1 ], [ 4, %55 ], [ 4, %59 ]
  %89 = phi i32 [ 96, %12 ], [ 32, %1 ], [ 32, %55 ], [ 32, %59 ]
  %90 = call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 5, i32 noundef 30, i32 noundef %88, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %91 = call i32 @regmap_write(ptr noundef %9, i32 noundef 6, i32 noundef 0) #8
  %92 = call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 7, i32 noundef 240, i32 noundef %89, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %93 = call i32 @regmap_write(ptr noundef %9, i32 noundef 207, i32 noundef 149) #8
  %94 = call i32 @regmap_write(ptr noundef %7, i32 noundef 115, i32 noundef 128) #8
  %95 = load i32, ptr %10, align 4
  switch i32 %95, label %109 [
    i32 9, label %96
    i32 8, label %105
  ]

96:                                               ; preds = %87
  %97 = load ptr, ptr %6, align 4
  %98 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 24
  %99 = load i32, ptr %98, align 4
  %100 = lshr i32 %99, 8
  %101 = call i32 @regmap_write(ptr noundef %97, i32 noundef 47, i32 noundef %100) #8
  %102 = load i32, ptr %98, align 4
  %103 = call i32 @regmap_write(ptr noundef %97, i32 noundef 48, i32 noundef %102) #8
  %104 = call i32 @regmap_write(ptr noundef %97, i32 noundef 49, i32 noundef 0) #8
  br label %109

105:                                              ; preds = %87
  %106 = load ptr, ptr %8, align 4
  %107 = call i32 @regmap_update_bits_base(ptr noundef %106, i32 noundef 19, i32 noundef 255, i32 noundef 250, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %108 = call i32 @regmap_write(ptr noundef %106, i32 noundef 20, i32 noundef 0) #8
  br label %109

109:                                              ; preds = %105, %96, %87
  %110 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %127, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %120, label %117

117:                                              ; preds = %113
  %118 = call i32 %115(ptr noundef %0, i32 noundef 1) #8
  %119 = load ptr, ptr %110, align 4
  br label %120

120:                                              ; preds = %117, %113
  %121 = phi ptr [ %119, %117 ], [ %111, %113 ]
  %122 = call i32 %121(ptr noundef %0) #8
  %123 = load ptr, ptr %114, align 4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %127, label %125

125:                                              ; preds = %120
  %126 = call i32 %123(ptr noundef %0, i32 noundef 0) #8
  br label %127

127:                                              ; preds = %125, %120, %109
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @mn88443x_get_tune_settings(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  store i32 850, ptr %1, align 4
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %11 [
    i32 9, label %6
    i32 8, label %5
  ]

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %5, %2
  %7 = phi i32 [ 285715, %5 ], [ 60001, %2 ]
  %8 = phi i32 [ 285714, %5 ], [ 30000, %2 ]
  %9 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 2
  store i32 %7, ptr %9, align 4
  %10 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 1
  store i32 %8, ptr %10, align 4
  br label %11

11:                                               ; preds = %6, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mn88443x_read_status(ptr noundef %0, ptr nocapture noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %15 = load i32, ptr %14, align 4
  switch i32 %15, label %206 [
    i32 9, label %16
    i32 8, label %116
  ]

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.mn88443x_priv, ptr %13, i32 0, i32 8
  %18 = load ptr, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  store i32 0, ptr %8, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #8
  store i32 0, ptr %9, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #8
  store i32 0, ptr %10, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #8
  store i32 0, ptr %11, align 4, !annotation !9
  %19 = call i32 @regmap_read(ptr noundef %18, i32 noundef 94, ptr noundef nonnull %8) #8
  %20 = load i32, ptr %8, align 4
  %21 = and i32 %20, 32
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, i32 0, i32 28
  %24 = and i32 %20, 4
  %25 = icmp eq i32 %24, 0
  %26 = or i32 %23, 3
  %27 = select i1 %25, i32 %23, i32 %26
  store i32 %27, ptr %1, align 4
  %28 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1
  store i8 0, ptr %28, align 1
  %29 = load i32, ptr %1, align 4
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %16
  %33 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42
  %34 = call i32 @regmap_read(ptr noundef %18, i32 noundef 90, ptr noundef nonnull %9) #8
  %35 = load i32, ptr %9, align 4
  %36 = shl i32 %35, 8
  store i8 1, ptr %33, align 4
  store i8 2, ptr %28, align 1
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  store i64 %37, ptr %38, align 1
  br label %39

39:                                               ; preds = %32, %16
  %40 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43
  %41 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  store i8 0, ptr %41, align 1
  %42 = load i32, ptr %1, align 4
  %43 = and i32 %42, 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %92, label %45

45:                                               ; preds = %39
  %46 = call i32 @regmap_read(ptr noundef %18, i32 noundef 105, ptr noundef nonnull %9) #8
  %47 = call i32 @regmap_read(ptr noundef %18, i32 noundef 106, ptr noundef nonnull %10) #8
  %48 = load i32, ptr %9, align 4
  %49 = shl i32 %48, 8
  %50 = load i32, ptr %10, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @regmap_read(ptr noundef %18, i32 noundef 107, ptr noundef nonnull %9) #8
  %53 = call i32 @regmap_read(ptr noundef %18, i32 noundef 108, ptr noundef nonnull %10) #8
  %54 = load i32, ptr %9, align 4
  %55 = load i32, ptr %10, align 4
  %56 = shl i32 %54, 23
  %57 = shl i32 %55, 15
  %58 = or i32 %57, %56
  %59 = mul i32 %51, %51
  %60 = sub i32 %58, %59
  %61 = icmp eq i32 %58, %59
  br i1 %61, label %92, label %62

62:                                               ; preds = %45
  %63 = shl i32 %51, 4
  %64 = mul i32 %63, %51
  %65 = udiv i32 %64, %60
  %66 = zext i32 %65 to i64
  %67 = mul nuw i64 %66, %66
  %68 = mul i64 %67, %66
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %92, label %70

70:                                               ; preds = %62
  %71 = trunc i64 %68 to i32
  %72 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %71, i64 211243671486) #10, !srcloc !10
  %73 = extractvalue { i64, i64 } %72, 1
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %92, label %75

75:                                               ; preds = %70
  %76 = call i32 @intlog10(i32 noundef %51) #8
  %77 = zext i32 %76 to i64
  %78 = shl nuw nsw i64 %77, 1
  %79 = call i32 @llvm.abs.i32(i32 %60, i1 false) #8
  %80 = call i32 @intlog10(i32 noundef %79) #8
  %81 = zext i32 %80 to i64
  %82 = add i64 %73, %81
  %83 = sub i64 %78, %82
  %84 = mul i64 %83, 10000
  %85 = add i64 %84, 72057543706287936
  %86 = lshr i64 %85, 24
  %87 = trunc i64 %86 to i32
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %75
  store i8 1, ptr %40, align 1
  store i8 1, ptr %41, align 1
  %90 = and i64 %86, 4294967295
  %91 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  store i64 %90, ptr %91, align 1
  br label %92

92:                                               ; preds = %89, %75, %70, %62, %45, %39
  %93 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46
  %94 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1
  store i8 0, ptr %94, align 1
  %95 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47
  %96 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1
  store i8 0, ptr %96, align 1
  %97 = call i32 @regmap_read(ptr noundef %18, i32 noundef 104, ptr noundef nonnull %11) #8
  %98 = load i32, ptr %1, align 4
  %99 = and i32 %98, 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %115, label %101

101:                                              ; preds = %92
  %102 = load i32, ptr %11, align 4
  %103 = and i32 %102, 32
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %115, label %105

105:                                              ; preds = %101
  %106 = call i32 @regmap_read(ptr noundef %18, i32 noundef 113, ptr noundef nonnull %9) #8
  %107 = call i32 @regmap_read(ptr noundef %18, i32 noundef 114, ptr noundef nonnull %10) #8
  %108 = load i32, ptr %9, align 4
  %109 = shl i32 %108, 8
  %110 = load i32, ptr %10, align 4
  %111 = or i32 %109, %110
  store i8 1, ptr %93, align 4
  store i8 3, ptr %94, align 1
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1, i32 0, i32 1
  store i64 %112, ptr %113, align 1
  store i8 1, ptr %95, align 1
  store i8 3, ptr %96, align 1
  %114 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1, i32 0, i32 1
  store i64 1671168, ptr %114, align 1
  br label %115

115:                                              ; preds = %105, %101, %92
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  br label %206

116:                                              ; preds = %2
  %117 = getelementptr inbounds %struct.mn88443x_priv, ptr %13, i32 0, i32 10
  %118 = load ptr, ptr %117, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  store i32 0, ptr %7, align 4, !annotation !9
  %119 = call i32 @regmap_read(ptr noundef %118, i32 noundef 163, ptr noundef nonnull %3) #8
  %120 = load i32, ptr %3, align 4
  %121 = and i32 %120, 15
  %122 = icmp ugt i32 %121, 9
  %123 = select i1 %122, i32 28, i32 0
  %124 = icmp ugt i32 %121, 8
  %125 = or i32 %123, 3
  %126 = select i1 %124, i32 %125, i32 %123
  store i32 %126, ptr %1, align 4
  %127 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1
  store i8 0, ptr %127, align 1
  %128 = load i32, ptr %1, align 4
  %129 = and i32 %128, 1
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %141, label %131

131:                                              ; preds = %116
  %132 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42
  %133 = call i32 @regmap_read(ptr noundef %118, i32 noundef 168, ptr noundef nonnull %5) #8
  %134 = call i32 @regmap_read(ptr noundef %118, i32 noundef 169, ptr noundef nonnull %7) #8
  %135 = load i32, ptr %5, align 4
  %136 = shl i32 %135, 8
  %137 = load i32, ptr %7, align 4
  %138 = or i32 %136, %137
  store i8 1, ptr %132, align 4
  store i8 2, ptr %127, align 1
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  store i64 %139, ptr %140, align 1
  br label %141

141:                                              ; preds = %131, %116
  %142 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43
  %143 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  store i8 0, ptr %143, align 1
  %144 = load i32, ptr %1, align 4
  %145 = and i32 %144, 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %168, label %147

147:                                              ; preds = %141
  %148 = call i32 @regmap_read(ptr noundef %118, i32 noundef 190, ptr noundef nonnull %5) #8
  %149 = call i32 @regmap_read(ptr noundef %118, i32 noundef 191, ptr noundef nonnull %7) #8
  %150 = load i32, ptr %5, align 4
  %151 = icmp ne i32 %150, 0
  %152 = load i32, ptr %7, align 4
  %153 = icmp ne i32 %152, 0
  %154 = select i1 %151, i1 true, i1 %153
  br i1 %154, label %155, label %164

155:                                              ; preds = %147
  %156 = shl i32 %150, 8
  %157 = or i32 %156, %152
  %158 = call i32 @intlog10(i32 noundef %157) #8
  %159 = zext i32 %158 to i64
  %160 = sub nsw i64 84162567, %159
  %161 = mul nsw i64 %160, 10000
  %162 = lshr i64 %161, 24
  %163 = trunc i64 %162 to i32
  br label %164

164:                                              ; preds = %155, %147
  %165 = phi i32 [ %163, %155 ], [ 0, %147 ]
  store i8 1, ptr %142, align 1
  store i8 1, ptr %143, align 1
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  store i64 %166, ptr %167, align 1
  br label %168

168:                                              ; preds = %164, %141
  %169 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46
  %170 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1
  store i8 0, ptr %170, align 1
  %171 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47
  %172 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1
  store i8 0, ptr %172, align 1
  %173 = call i32 @regmap_read(ptr noundef %118, i32 noundef 192, ptr noundef nonnull %4) #8
  %174 = load i32, ptr %1, align 4
  %175 = and i32 %174, 4
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %205, label %177

177:                                              ; preds = %168
  %178 = load i32, ptr %4, align 4
  %179 = and i32 %178, 32
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %205, label %181

181:                                              ; preds = %177
  %182 = call i32 @regmap_read(ptr noundef %118, i32 noundef 193, ptr noundef nonnull %5) #8
  %183 = call i32 @regmap_read(ptr noundef %118, i32 noundef 194, ptr noundef nonnull %6) #8
  %184 = call i32 @regmap_read(ptr noundef %118, i32 noundef 195, ptr noundef nonnull %7) #8
  %185 = load i32, ptr %5, align 4
  %186 = load i32, ptr %6, align 4
  %187 = load i32, ptr %7, align 4
  %188 = call i32 @regmap_read(ptr noundef %118, i32 noundef 196, ptr noundef nonnull %5) #8
  %189 = call i32 @regmap_read(ptr noundef %118, i32 noundef 197, ptr noundef nonnull %7) #8
  %190 = load i32, ptr %5, align 4
  %191 = shl i32 %190, 8
  %192 = load i32, ptr %7, align 4
  %193 = or i32 %191, %192
  %194 = mul i32 %193, 1624
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %205, label %196

196:                                              ; preds = %181
  %197 = shl i32 %185, 16
  %198 = shl i32 %186, 8
  %199 = or i32 %198, %197
  %200 = or i32 %199, %187
  store i8 1, ptr %169, align 4
  store i8 3, ptr %170, align 1
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1, i32 0, i32 1
  store i64 %201, ptr %202, align 1
  store i8 1, ptr %171, align 1
  store i8 3, ptr %172, align 1
  %203 = zext i32 %194 to i64
  %204 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1, i32 0, i32 1
  store i64 %203, ptr %204, align 1
  br label %205

205:                                              ; preds = %196, %181, %177, %168
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  br label %206

206:                                              ; preds = %205, %115, %2
  %207 = phi i32 [ 0, %115 ], [ 0, %205 ], [ -22, %2 ]
  ret i32 %207
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @intlog10(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

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
!10 = !{i64 2148410997, i64 2148411277, i64 2148411611, i64 2148411945}
