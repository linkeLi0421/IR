; ModuleID = '/llk/IR/drivers/leds/leds-pwm.c_pt.bc'
source_filename = "../drivers/leds/leds-pwm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.led_init_data = type { ptr, ptr, ptr, i8 }
%struct.led_pwm = type { ptr, i8, i8, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.led_pwm_priv = type { i32, [0 x %struct.led_pwm_data] }
%struct.led_pwm_data = type { %struct.led_classdev, ptr, %struct.pwm_state, i32 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }

@__initcall__kmod_leds_pwm__166_212_led_pwm_driver_init6 = internal global ptr @led_pwm_driver_init, section ".initcall6.init", align 4
@led_pwm_driver = internal global %struct.platform_driver { ptr @led_pwm_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_pwm_leds_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_led_pwm_driver_exit = internal global ptr @led_pwm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author167 = internal constant [48 x i8] c"leds_pwm.author=Luotao Fu <l.fu@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description168 = internal constant [44 x i8] c"leds_pwm.description=generic PWM LED driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file169 = internal constant [36 x i8] c"leds_pwm.file=drivers/leds/leds-pwm\00", section ".modinfo", align 1
@__UNIQUE_ID_license170 = internal constant [24 x i8] c"leds_pwm.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias171 = internal constant [33 x i8] c"leds_pwm.alias=platform:leds-pwm\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [9 x i8] c"leds_pwm\00", align 1
@of_pwm_leds_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"pwm-leds\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"active-low\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"max-brightness\00", align 1
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"unable to request PWM for %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"failed to read period for %s, default to off\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"failed to register PWM led for %s: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"failed to set led PWM value for %s: %d\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias171, ptr @__UNIQUE_ID_author167, ptr @__UNIQUE_ID_description168, ptr @__UNIQUE_ID_file169, ptr @__UNIQUE_ID_license170, ptr @__exitcall_led_pwm_driver_exit, ptr @__initcall__kmod_leds_pwm__166_212_led_pwm_driver_init6, ptr @led_pwm_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @led_pwm_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @led_pwm_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @led_pwm_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @led_pwm_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @led_pwm_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.led_init_data, align 4
  %3 = alloca %struct.led_pwm, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call i32 @device_get_child_node_count(ptr noundef %4) #8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %165, label %7

7:                                                ; preds = %1
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %5, i32 232) #8
  %9 = extractvalue { i32, i1 } %8, 1
  %10 = extractvalue { i32, i1 } %8, 0
  %11 = add nuw i32 %10, 8
  %12 = select i1 %9, i32 -1, i32 %11
  %13 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef %12, i32 noundef 3520) #8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %165, label %15

15:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i64 12, i1 false) #8
  %16 = tail call ptr @device_get_next_child_node(ptr noundef %4, ptr noundef null) #8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %163, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.led_pwm, ptr %3, i32 0, i32 1
  %20 = getelementptr inbounds %struct.led_pwm, ptr %3, i32 0, i32 3
  %21 = getelementptr inbounds %struct.led_pwm, ptr %3, i32 0, i32 2
  %22 = getelementptr inbounds i8, ptr %2, i32 12
  %23 = getelementptr inbounds %struct.led_init_data, ptr %2, i32 0, i32 1
  %24 = getelementptr inbounds %struct.led_init_data, ptr %2, i32 0, i32 2
  br label %25

25:                                               ; preds = %158, %18
  %26 = phi ptr [ %16, %18 ], [ %159, %158 ]
  %27 = call i32 @fwnode_property_read_string(ptr noundef nonnull %26, ptr noundef nonnull @.str.1, ptr noundef nonnull %3) #8
  %28 = icmp eq i32 %27, 0
  %29 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  %30 = or i1 %29, %28
  br i1 %30, label %38, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.fwnode_handle, ptr %26, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, @of_fwnode_ops
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = getelementptr i8, ptr %26, i32 -12
  %37 = load ptr, ptr %36, align 4
  store ptr %37, ptr %3, align 4
  br label %40

38:                                               ; preds = %31, %25
  %39 = load ptr, ptr %3, align 4
  br label %40

40:                                               ; preds = %38, %35
  %41 = phi ptr [ %39, %38 ], [ %37, %35 ]
  %42 = icmp eq ptr %41, null
  br i1 %42, label %161, label %43

43:                                               ; preds = %40
  %44 = call zeroext i1 @fwnode_property_present(ptr noundef nonnull %26, ptr noundef nonnull @.str.2) #8
  %45 = zext i1 %44 to i8
  store i8 %45, ptr %19, align 4
  %46 = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %26, ptr noundef nonnull @.str.3, ptr noundef %20, i32 noundef 1) #8
  %47 = call i32 @led_init_default_state_get(ptr noundef nonnull %26) #8
  %48 = trunc i32 %47 to i8
  store i8 %48, ptr %21, align 1
  %49 = load i32, ptr %13, align 8
  %50 = getelementptr %struct.led_pwm_priv, ptr %13, i32 0, i32 1, i32 %49
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8
  store i32 0, ptr %22, align 4, !annotation !8
  store ptr %26, ptr %2, align 4
  store ptr null, ptr %23, align 4
  store ptr null, ptr %24, align 4
  %51 = load i8, ptr %19, align 4
  %52 = zext i8 %51 to i32
  %53 = getelementptr %struct.led_pwm_priv, ptr %13, i32 0, i32 1, i32 %49, i32 3
  store i32 %52, ptr %53, align 8
  %54 = load ptr, ptr %3, align 4
  store ptr %54, ptr %50, align 8
  %55 = getelementptr inbounds %struct.led_classdev, ptr %50, i32 0, i32 1
  store i32 0, ptr %55, align 4
  %56 = load i32, ptr %20, align 4
  %57 = getelementptr inbounds %struct.led_classdev, ptr %50, i32 0, i32 2
  store i32 %56, ptr %57, align 8
  %58 = getelementptr inbounds %struct.led_classdev, ptr %50, i32 0, i32 3
  store i32 65536, ptr %58, align 4
  %59 = call ptr @devm_fwnode_pwm_get(ptr noundef %4, ptr noundef nonnull %26, ptr noundef null) #8
  %60 = getelementptr %struct.led_pwm_priv, ptr %13, i32 0, i32 1, i32 %49, i32 1
  store ptr %59, ptr %60, align 8
  %61 = icmp ugt ptr %59, inttoptr (i32 -4096 to ptr)
  br i1 %61, label %153, label %62

62:                                               ; preds = %43
  %63 = getelementptr inbounds %struct.led_classdev, ptr %50, i32 0, i32 6
  store ptr @led_pwm_set, ptr %63, align 8
  %64 = load i8, ptr %21, align 1
  %65 = icmp eq i8 %64, 2
  br i1 %65, label %66, label %79

66:                                               ; preds = %62
  %67 = getelementptr %struct.led_pwm_priv, ptr %13, i32 0, i32 1, i32 %49, i32 2
  %68 = getelementptr inbounds %struct.pwm_device, ptr %59, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(24) %67, ptr noundef align 8 dereferenceable(24) %68, i32 24, i1 false) #8
  %69 = load i64, ptr %67, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %66
  %72 = getelementptr %struct.led_pwm_priv, ptr %13, i32 0, i32 1, i32 %49, i32 2, i32 1
  %73 = load i64, ptr %72, align 8
  %74 = trunc i64 %69 to i32
  br label %94

75:                                               ; preds = %66
  store i8 0, ptr %21, align 1
  %76 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.5, ptr noundef %76) #9
  %77 = load ptr, ptr %60, align 8
  %78 = load i8, ptr %21, align 1
  br label %79

79:                                               ; preds = %75, %62
  %80 = phi i8 [ %64, %62 ], [ %78, %75 ]
  %81 = phi ptr [ %59, %62 ], [ %77, %75 ]
  %82 = getelementptr %struct.led_pwm_priv, ptr %13, i32 0, i32 1, i32 %49, i32 2
  %83 = getelementptr inbounds %struct.pwm_device, ptr %81, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(24) %82, ptr noundef align 8 dereferenceable(24) %83, i32 24, i1 false) #8
  %84 = getelementptr inbounds %struct.pwm_device, ptr %81, i32 0, i32 6
  %85 = load i64, ptr %84, align 8
  %86 = getelementptr inbounds %struct.pwm_device, ptr %81, i32 0, i32 6, i32 1
  %87 = load i32, ptr %86, align 8
  store i64 %85, ptr %82, align 8
  %88 = getelementptr %struct.led_pwm_priv, ptr %13, i32 0, i32 1, i32 %49, i32 2, i32 2
  store i32 %87, ptr %88, align 8
  %89 = getelementptr %struct.led_pwm_priv, ptr %13, i32 0, i32 1, i32 %49, i32 2, i32 1
  store i64 0, ptr %89, align 8
  %90 = getelementptr %struct.led_pwm_priv, ptr %13, i32 0, i32 1, i32 %49, i32 2, i32 4
  store i8 0, ptr %90, align 1
  %91 = trunc i64 %85 to i32
  switch i8 %80, label %110 [
    i8 1, label %92
    i8 2, label %94
  ]

92:                                               ; preds = %79
  %93 = load i32, ptr %20, align 4
  br label %108

94:                                               ; preds = %79, %71
  %95 = phi i64 [ 0, %79 ], [ %73, %71 ]
  %96 = phi i32 [ %91, %79 ], [ %74, %71 ]
  %97 = load i32, ptr %20, align 4
  %98 = zext i32 %97 to i64
  %99 = mul i64 %95, %98
  %100 = icmp ult i64 %99, 4294967296
  br i1 %100, label %101, label %104, !prof !9

101:                                              ; preds = %94
  %102 = trunc i64 %99 to i32
  %103 = udiv i32 %102, %96
  br label %108

104:                                              ; preds = %94
  %105 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %96, i64 %99) #10, !srcloc !10
  %106 = extractvalue { i64, i64 } %105, 1
  %107 = trunc i64 %106 to i32
  br label %108

108:                                              ; preds = %104, %101, %92
  %109 = phi i32 [ %93, %92 ], [ %103, %101 ], [ %107, %104 ]
  store i32 %109, ptr %55, align 4
  br label %110

110:                                              ; preds = %108, %79
  %111 = call i32 @devm_led_classdev_register_ext(ptr noundef %4, ptr noundef %50, ptr noundef nonnull %2) #8
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %110
  %114 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.6, ptr noundef %114, i32 noundef %111) #9
  br label %151

115:                                              ; preds = %110
  %116 = load i8, ptr %21, align 1
  %117 = icmp eq i8 %116, 2
  br i1 %117, label %148, label %118

118:                                              ; preds = %115
  %119 = load i32, ptr %55, align 4
  %120 = load i32, ptr %57, align 8
  %121 = getelementptr %struct.led_pwm_priv, ptr %13, i32 0, i32 1, i32 %49, i32 2
  %122 = load i64, ptr %121, align 8
  %123 = zext i32 %119 to i64
  %124 = mul i64 %122, %123
  %125 = icmp ult i64 %124, 4294967296
  br i1 %125, label %126, label %130, !prof !9

126:                                              ; preds = %118
  %127 = trunc i64 %124 to i32
  %128 = udiv i32 %127, %120
  %129 = zext i32 %128 to i64
  br label %133

130:                                              ; preds = %118
  %131 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %120, i64 %124) #10, !srcloc !10
  %132 = extractvalue { i64, i64 } %131, 1
  br label %133

133:                                              ; preds = %130, %126
  %134 = phi i64 [ %129, %126 ], [ %132, %130 ]
  %135 = load i32, ptr %53, align 8
  %136 = icmp eq i32 %135, 0
  %137 = sub i64 %122, %134
  %138 = select i1 %136, i64 %134, i64 %137
  %139 = getelementptr %struct.led_pwm_priv, ptr %13, i32 0, i32 1, i32 %49, i32 2, i32 1
  store i64 %138, ptr %139, align 8
  %140 = icmp ne i64 %138, 0
  %141 = getelementptr %struct.led_pwm_priv, ptr %13, i32 0, i32 1, i32 %49, i32 2, i32 3
  %142 = zext i1 %140 to i8
  store i8 %142, ptr %141, align 4
  %143 = load ptr, ptr %60, align 8
  %144 = call i32 @pwm_apply_state(ptr noundef %143, ptr noundef %121) #8
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %148, label %146

146:                                              ; preds = %133
  %147 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.7, ptr noundef %147, i32 noundef %144) #9
  br label %151

148:                                              ; preds = %133, %115
  %149 = load i32, ptr %13, align 8
  %150 = add i32 %149, 1
  store i32 %150, ptr %13, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8
  br label %158

151:                                              ; preds = %146, %113
  %152 = phi i32 [ %144, %146 ], [ %111, %113 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8
  br label %161

153:                                              ; preds = %43
  %154 = ptrtoint ptr %59 to i32
  %155 = load ptr, ptr %3, align 4
  %156 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %4, i32 noundef %154, ptr noundef nonnull @.str.4, ptr noundef %155) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %153, %148
  %159 = call ptr @device_get_next_child_node(ptr noundef %4, ptr noundef nonnull %26) #8
  %160 = icmp eq ptr %159, null
  br i1 %160, label %163, label %25

161:                                              ; preds = %153, %151, %40
  %162 = phi i32 [ %152, %151 ], [ %156, %153 ], [ 22, %40 ]
  call void @fwnode_handle_put(ptr noundef nonnull %26) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  br label %165

163:                                              ; preds = %158, %15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  %164 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %13, ptr %164, align 8
  br label %165

165:                                              ; preds = %163, %161, %7, %1
  %166 = phi i32 [ 0, %163 ], [ -22, %1 ], [ -12, %7 ], [ %162, %161 ]
  ret i32 %166
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_get_child_node_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_next_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_init_default_state_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fwnode_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_fwnode_pwm_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @led_pwm_set(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.led_pwm_data, ptr %0, i32 0, i32 2
  %6 = load i64, ptr %5, align 8
  %7 = zext i32 %1 to i64
  %8 = mul i64 %6, %7
  %9 = icmp ult i64 %8, 4294967296
  br i1 %9, label %10, label %14, !prof !9

10:                                               ; preds = %2
  %11 = trunc i64 %8 to i32
  %12 = udiv i32 %11, %4
  %13 = zext i32 %12 to i64
  br label %17

14:                                               ; preds = %2
  %15 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %4, i64 %8) #10, !srcloc !10
  %16 = extractvalue { i64, i64 } %15, 1
  br label %17

17:                                               ; preds = %14, %10
  %18 = phi i64 [ %13, %10 ], [ %16, %14 ]
  %19 = getelementptr inbounds %struct.led_pwm_data, ptr %0, i32 0, i32 3
  %20 = load i32, ptr %19, align 8
  %21 = icmp eq i32 %20, 0
  %22 = sub i64 %6, %18
  %23 = select i1 %21, i64 %18, i64 %22
  %24 = getelementptr inbounds %struct.led_pwm_data, ptr %0, i32 0, i32 2, i32 1
  store i64 %23, ptr %24, align 8
  %25 = icmp ne i64 %23, 0
  %26 = getelementptr inbounds %struct.led_pwm_data, ptr %0, i32 0, i32 2, i32 3
  %27 = zext i1 %25 to i8
  store i8 %27, ptr %26, align 4
  %28 = getelementptr inbounds %struct.led_pwm_data, ptr %0, i32 0, i32 1
  %29 = load ptr, ptr %28, align 8
  %30 = tail call i32 @pwm_apply_state(ptr noundef %29, ptr noundef %5) #8
  ret i32 %30
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwm_apply_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
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
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2147893203, i64 2147893483, i64 2147893817, i64 2147894151}
