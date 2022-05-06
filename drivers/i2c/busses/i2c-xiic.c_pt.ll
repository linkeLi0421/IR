; ModuleID = '/llk/IR/drivers/i2c/busses/i2c-xiic.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-xiic.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_adapter_quirks = type { i64, i32, i16, i16, i16, i16 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.xiic_i2c = type { ptr, ptr, %struct.completion, %struct.i2c_adapter, ptr, %struct.mutex, i32, i32, ptr, i32, i32, ptr, i32, i8 }
%struct.xiic_i2c_platform_data = type { i8, ptr }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_i2c_xiic__248_911_xiic_i2c_driver_init6 = internal global ptr @xiic_i2c_driver_init, section ".initcall6.init", align 4
@xiic_i2c_driver = internal global %struct.platform_driver { ptr @xiic_i2c_probe, ptr @xiic_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @xiic_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xiic_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_xiic_i2c_driver_exit = internal global ptr @xiic_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author249 = internal constant [37 x i8] c"i2c_xiic.author=info@mocean-labs.com\00", section ".modinfo", align 1
@__UNIQUE_ID_description250 = internal constant [43 x i8] c"i2c_xiic.description=Xilinx I2C bus driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file251 = internal constant [42 x i8] c"i2c_xiic.file=drivers/i2c/busses/i2c-xiic\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [24 x i8] c"i2c_xiic.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias253 = internal constant [33 x i8] c"i2c_xiic.alias=platform:xiic-i2c\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [9 x i8] c"xiic-i2c\00", align 1
@xiic_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,xps-iic-2.00.a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@xiic_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xiic_i2c_runtime_suspend, ptr @xiic_i2c_runtime_resume, ptr null }, align 4
@xiic_adapter = internal unnamed_addr constant %struct.i2c_adapter { ptr null, i32 256, ptr @xiic_algorithm, ptr null, ptr null, %struct.rt_mutex zeroinitializer, %struct.rt_mutex zeroinitializer, i32 0, i32 0, %struct.device zeroinitializer, i32 0, i32 0, [48 x i8] c"xiic-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.completion zeroinitializer, %struct.mutex zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr @xiic_quirks, ptr null, ptr null }, align 8
@xiic_i2c_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"&i2c->lock\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"input clock not found.\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Unable to enable clock.\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Cannot claim IRQ\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"single-master\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Cannot xiic_reinit\0A\00", align 1
@xiic_algorithm = internal constant %struct.i2c_algorithm { ptr @xiic_xfer, ptr null, ptr null, ptr null, ptr @xiic_func, ptr null, ptr null }, align 4
@xiic_quirks = internal constant %struct.i2c_adapter_quirks { i64 0, i32 0, i16 0, i16 255, i16 0, i16 0 }, align 8
@.str.7 = private unnamed_addr constant [23 x i8] c"Error xiic_start_xfer\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"drivers/i2c/busses/i2c-xiic.c\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.10 = private unnamed_addr constant [25 x i8] c"Failed to clear rx fifo\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"Cannot enable clock.\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias253, ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_description250, ptr @__UNIQUE_ID_file251, ptr @__UNIQUE_ID_license252, ptr @__exitcall_xiic_i2c_driver_exit, ptr @__initcall__kmod_i2c_xiic__248_911_xiic_i2c_driver_init6, ptr @xiic_i2c_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @xiic_i2c_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @xiic_i2c_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @xiic_i2c_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @xiic_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xiic_i2c_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 736, i32 noundef 3520) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %100, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #7
  %7 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %6) #7
  %8 = getelementptr inbounds %struct.xiic_i2c, ptr %3, i32 0, i32 1
  store ptr %7, ptr %8, align 4
  %9 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = ptrtoint ptr %7 to i32
  br label %100

12:                                               ; preds = %5
  %13 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #7
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %100, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %18, align 8
  %19 = getelementptr inbounds %struct.xiic_i2c, ptr %3, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(656) %19, ptr noundef nonnull align 8 dereferenceable(656) @xiic_adapter, i32 656, i1 false)
  %20 = getelementptr inbounds %struct.xiic_i2c, ptr %3, i32 0, i32 3, i32 9, i32 8
  store ptr %3, ptr %20, align 8
  %21 = getelementptr inbounds %struct.xiic_i2c, ptr %3, i32 0, i32 3, i32 9, i32 1
  store ptr %2, ptr %21, align 4
  %22 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.xiic_i2c, ptr %3, i32 0, i32 3, i32 9, i32 25
  store ptr %23, ptr %24, align 8
  %25 = getelementptr inbounds %struct.xiic_i2c, ptr %3, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %25, ptr noundef nonnull @.str.1, ptr noundef nonnull @xiic_i2c_probe.__key) #7
  %26 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #7
  %27 = getelementptr inbounds %struct.xiic_i2c, ptr %3, i32 0, i32 11
  store ptr %26, ptr %27, align 4
  %28 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %29, label %32

29:                                               ; preds = %15
  %30 = ptrtoint ptr %26 to i32
  %31 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %2, i32 noundef %30, ptr noundef nonnull @.str.2) #7
  br label %100

32:                                               ; preds = %15
  %33 = tail call i32 @clk_prepare(ptr noundef %26) #7
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = tail call i32 @clk_enable(ptr noundef %26) #7
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  tail call void @clk_unprepare(ptr noundef %26) #7
  br label %39

39:                                               ; preds = %38, %32
  %40 = phi i32 [ %36, %38 ], [ %33, %32 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3) #8
  br label %100

41:                                               ; preds = %35
  store ptr %2, ptr %3, align 8
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %2, i32 noundef 1000) #7
  %42 = load ptr, ptr %3, align 8
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %42, i1 noundef zeroext true) #7
  %43 = load ptr, ptr %3, align 8
  %44 = tail call i32 @__pm_runtime_set_status(ptr noundef %43, i32 noundef 0) #7
  %45 = load ptr, ptr %3, align 8
  tail call void @pm_runtime_enable(ptr noundef %45) #7
  %46 = load ptr, ptr %0, align 8
  %47 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %13, ptr noundef null, ptr noundef nonnull @xiic_process, i32 noundef 8192, ptr noundef %46, ptr noundef nonnull %3) #7
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4) #8
  br label %96

50:                                               ; preds = %41
  %51 = load ptr, ptr %22, align 8
  %52 = tail call ptr @of_find_property(ptr noundef %51, ptr noundef nonnull @.str.5, ptr noundef null) #7
  %53 = icmp ne ptr %52, null
  %54 = getelementptr inbounds %struct.xiic_i2c, ptr %3, i32 0, i32 13
  %55 = zext i1 %53 to i8
  store i8 %55, ptr %54, align 4
  %56 = getelementptr inbounds %struct.xiic_i2c, ptr %3, i32 0, i32 10
  store i32 0, ptr %56, align 8
  %57 = load ptr, ptr %8, align 4
  %58 = getelementptr i8, ptr %57, i32 256
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 2) #7, !srcloc !9
  %59 = load i32, ptr %56, align 8
  %60 = icmp eq i32 %59, 0
  %61 = load ptr, ptr %8, align 4
  %62 = getelementptr i8, ptr %61, i32 260
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #7
  br i1 %60, label %64, label %65

64:                                               ; preds = %50
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  br label %67

65:                                               ; preds = %50
  %66 = tail call i32 @llvm.bswap.i32(i32 %63) #7
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  br label %67

67:                                               ; preds = %65, %64
  %68 = phi i32 [ %63, %64 ], [ %66, %65 ]
  %69 = and i32 %68, 128
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store i32 1, ptr %56, align 8
  br label %72

72:                                               ; preds = %71, %67
  %73 = tail call fastcc i32 @xiic_reinit(ptr noundef nonnull %3)
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6) #8
  br label %96

76:                                               ; preds = %72
  %77 = tail call i32 @i2c_add_adapter(ptr noundef %19) #7
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %76
  tail call fastcc void @xiic_deinit(ptr noundef nonnull %3)
  br label %96

80:                                               ; preds = %76
  %81 = icmp eq ptr %17, null
  br i1 %81, label %100, label %82

82:                                               ; preds = %80
  %83 = load i8, ptr %17, align 4
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %100, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.xiic_i2c_platform_data, ptr %17, i32 0, i32 1
  br label %87

87:                                               ; preds = %87, %85
  %88 = phi i32 [ 0, %85 ], [ %92, %87 ]
  %89 = load ptr, ptr %86, align 4
  %90 = getelementptr %struct.i2c_board_info, ptr %89, i32 %88
  %91 = tail call ptr @i2c_new_client_device(ptr noundef %19, ptr noundef %90) #7
  %92 = add nuw nsw i32 %88, 1
  %93 = load i8, ptr %17, align 4
  %94 = zext i8 %93 to i32
  %95 = icmp ult i32 %92, %94
  br i1 %95, label %87, label %100

96:                                               ; preds = %79, %75, %49
  %97 = phi i32 [ %47, %49 ], [ %73, %75 ], [ %77, %79 ]
  %98 = tail call i32 @__pm_runtime_set_status(ptr noundef %2, i32 noundef 2) #7
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #7
  %99 = load ptr, ptr %27, align 4
  tail call void @clk_disable(ptr noundef %99) #7
  tail call void @clk_unprepare(ptr noundef %99) #7
  br label %100

100:                                              ; preds = %96, %87, %82, %80, %39, %29, %12, %10, %1
  %101 = phi i32 [ %11, %10 ], [ %31, %29 ], [ %40, %39 ], [ %97, %96 ], [ -12, %1 ], [ %13, %12 ], [ 0, %80 ], [ 0, %82 ], [ 0, %87 ]
  ret i32 %101
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xiic_i2c_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.xiic_i2c, ptr %3, i32 0, i32 3
  tail call void @i2c_del_adapter(ptr noundef %4) #7
  %5 = load ptr, ptr %3, align 8
  %6 = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #7
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #7, !srcloc !13
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 0, i32 -1, ptr elementtype(i32) %9) #7, !srcloc !14
  %11 = extractvalue { i32, i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !15
  br label %21

14:                                               ; preds = %1
  tail call fastcc void @xiic_deinit(ptr noundef %3)
  %15 = load ptr, ptr %3, align 8
  %16 = tail call i32 @__pm_runtime_idle(ptr noundef %15, i32 noundef 4) #7
  %17 = getelementptr inbounds %struct.xiic_i2c, ptr %3, i32 0, i32 11
  %18 = load ptr, ptr %17, align 4
  tail call void @clk_disable(ptr noundef %18) #7
  tail call void @clk_unprepare(ptr noundef %18) #7
  %19 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %19, i1 noundef zeroext true) #7
  %20 = tail call i32 @__pm_runtime_set_status(ptr noundef %19, i32 noundef 2) #7
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %19, i1 noundef zeroext false) #7
  br label %21

21:                                               ; preds = %14, %13, %8
  %22 = phi i32 [ 0, %14 ], [ %6, %8 ], [ %6, %13 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xiic_process(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.xiic_i2c, ptr %1, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %3) #7
  %4 = getelementptr inbounds %struct.xiic_i2c, ptr %1, i32 0, i32 10
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 0
  %7 = getelementptr inbounds %struct.xiic_i2c, ptr %1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 32
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #7
  br i1 %6, label %11, label %12

11:                                               ; preds = %2
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  br label %14

12:                                               ; preds = %2
  %13 = tail call i32 @llvm.bswap.i32(i32 %10) #7
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  br label %14

14:                                               ; preds = %12, %11
  %15 = phi i32 [ %10, %11 ], [ %13, %12 ]
  %16 = load i32, ptr %4, align 8
  %17 = icmp eq i32 %16, 0
  %18 = load ptr, ptr %7, align 4
  %19 = getelementptr i8, ptr %18, i32 40
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #7
  br i1 %17, label %21, label %22

21:                                               ; preds = %14
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  br label %24

22:                                               ; preds = %14
  %23 = tail call i32 @llvm.bswap.i32(i32 %20) #7
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  br label %24

24:                                               ; preds = %22, %21
  %25 = phi i32 [ %20, %21 ], [ %23, %22 ]
  %26 = and i32 %25, %15
  %27 = and i32 %26, 1
  %28 = icmp ne i32 %27, 0
  %29 = and i32 %26, 10
  %30 = icmp eq i32 %29, 2
  %31 = or i1 %28, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %24
  %33 = tail call fastcc i32 @xiic_reinit(ptr noundef %1)
  %34 = getelementptr inbounds %struct.xiic_i2c, ptr %1, i32 0, i32 8
  %35 = load ptr, ptr %34, align 8
  %36 = icmp ne ptr %35, null
  %37 = getelementptr inbounds %struct.xiic_i2c, ptr %1, i32 0, i32 4
  %38 = load ptr, ptr %37, align 8
  %39 = icmp ne ptr %38, null
  %40 = select i1 %39, i1 true, i1 %36
  %41 = zext i1 %40 to i32
  br label %42

42:                                               ; preds = %32, %24
  %43 = phi i32 [ %41, %32 ], [ 0, %24 ]
  %44 = and i32 %26, 8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %182, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.xiic_i2c, ptr %1, i32 0, i32 8
  %48 = load ptr, ptr %47, align 8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %96

50:                                               ; preds = %46
  %51 = load volatile i32, ptr @jiffies, align 64
  %52 = add i32 %51, 100
  %53 = load i32, ptr %4, align 8
  %54 = icmp eq i32 %53, 0
  %55 = load ptr, ptr %7, align 4
  br i1 %54, label %56, label %59

56:                                               ; preds = %50
  %57 = getelementptr i8, ptr %55, i32 260
  %58 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %57) #7, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !17
  br label %62

59:                                               ; preds = %50
  %60 = getelementptr i8, ptr %55, i32 263
  %61 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %60) #7, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !17
  br label %62

62:                                               ; preds = %59, %56
  %63 = phi i8 [ %58, %56 ], [ %61, %59 ]
  %64 = and i8 %63, 64
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %325

66:                                               ; preds = %92, %62
  %67 = load i32, ptr %4, align 8
  %68 = icmp eq i32 %67, 0
  %69 = load ptr, ptr %7, align 4
  br i1 %68, label %70, label %73

70:                                               ; preds = %66
  %71 = getelementptr i8, ptr %69, i32 268
  %72 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %71) #7, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !17
  br label %76

73:                                               ; preds = %66
  %74 = getelementptr i8, ptr %69, i32 271
  %75 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %74) #7, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !17
  br label %76

76:                                               ; preds = %73, %70
  %77 = load volatile i32, ptr @jiffies, align 64
  %78 = sub i32 %52, %77
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.10) #8
  br label %325

82:                                               ; preds = %76
  %83 = load i32, ptr %4, align 8
  %84 = icmp eq i32 %83, 0
  %85 = load ptr, ptr %7, align 4
  br i1 %84, label %86, label %89

86:                                               ; preds = %82
  %87 = getelementptr i8, ptr %85, i32 260
  %88 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %87) #7, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !17
  br label %92

89:                                               ; preds = %82
  %90 = getelementptr i8, ptr %85, i32 263
  %91 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %90) #7, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !17
  br label %92

92:                                               ; preds = %89, %86
  %93 = phi i8 [ %88, %86 ], [ %91, %89 ]
  %94 = and i8 %93, 64
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %66, label %325

96:                                               ; preds = %46
  %97 = load i32, ptr %4, align 8
  %98 = icmp eq i32 %97, 0
  %99 = load ptr, ptr %7, align 4
  br i1 %98, label %100, label %103

100:                                              ; preds = %96
  %101 = getelementptr i8, ptr %99, i32 280
  %102 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %101) #7, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !17
  br label %106

103:                                              ; preds = %96
  %104 = getelementptr i8, ptr %99, i32 283
  %105 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %104) #7, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !17
  br label %106

106:                                              ; preds = %103, %100
  %107 = phi i8 [ %102, %100 ], [ %105, %103 ]
  %108 = add i8 %107, 1
  %109 = zext i8 %108 to i32
  %110 = load ptr, ptr %47, align 8
  %111 = getelementptr inbounds %struct.i2c_msg, ptr %110, i32 0, i32 2
  %112 = load i16, ptr %111, align 4
  %113 = zext i16 %112 to i32
  %114 = getelementptr inbounds %struct.xiic_i2c, ptr %1, i32 0, i32 9
  %115 = load i32, ptr %114, align 4
  %116 = sub i32 %113, %115
  %117 = icmp slt i32 %116, %109
  %118 = trunc i32 %116 to i8
  %119 = select i1 %117, i8 %118, i8 %108
  %120 = zext i8 %119 to i32
  %121 = icmp eq i8 %119, 0
  br i1 %121, label %151, label %122

122:                                              ; preds = %133, %106
  %123 = phi i32 [ %141, %133 ], [ 0, %106 ]
  %124 = load i32, ptr %4, align 8
  %125 = icmp eq i32 %124, 0
  %126 = load ptr, ptr %7, align 4
  br i1 %125, label %127, label %130

127:                                              ; preds = %122
  %128 = getelementptr i8, ptr %126, i32 268
  %129 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %128) #7, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !17
  br label %133

130:                                              ; preds = %122
  %131 = getelementptr i8, ptr %126, i32 271
  %132 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %131) #7, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !17
  br label %133

133:                                              ; preds = %130, %127
  %134 = phi i8 [ %129, %127 ], [ %132, %130 ]
  %135 = load ptr, ptr %47, align 8
  %136 = getelementptr inbounds %struct.i2c_msg, ptr %135, i32 0, i32 3
  %137 = load ptr, ptr %136, align 4
  %138 = load i32, ptr %114, align 4
  %139 = add i32 %138, 1
  store i32 %139, ptr %114, align 4
  %140 = getelementptr i8, ptr %137, i32 %138
  store i8 %134, ptr %140, align 1
  %141 = add nuw nsw i32 %123, 1
  %142 = icmp eq i32 %141, %120
  br i1 %142, label %143, label %122

143:                                              ; preds = %133
  %144 = load ptr, ptr %47, align 8
  %145 = getelementptr inbounds %struct.i2c_msg, ptr %144, i32 0, i32 2
  %146 = load i16, ptr %145, align 4
  %147 = load i32, ptr %114, align 4
  %148 = zext i16 %146 to i32
  %149 = sub i32 %148, %147
  %150 = trunc i32 %149 to i8
  br label %151

151:                                              ; preds = %143, %106
  %152 = phi i8 [ %150, %143 ], [ %118, %106 ]
  %153 = phi i32 [ %149, %143 ], [ %116, %106 ]
  %154 = icmp sgt i32 %153, 16
  %155 = add i8 %152, -1
  %156 = select i1 %154, i8 15, i8 %155
  %157 = load i32, ptr %4, align 8
  %158 = icmp eq i32 %157, 0
  %159 = load ptr, ptr %7, align 4
  br i1 %158, label %160, label %162

160:                                              ; preds = %151
  %161 = getelementptr i8, ptr %159, i32 288
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !18
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %161, i8 %156) #7, !srcloc !19
  br label %164

162:                                              ; preds = %151
  %163 = getelementptr i8, ptr %159, i32 291
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !18
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %163, i8 %156) #7, !srcloc !19
  br label %164

164:                                              ; preds = %162, %160
  %165 = load ptr, ptr %47, align 8
  %166 = getelementptr inbounds %struct.i2c_msg, ptr %165, i32 0, i32 2
  %167 = load i16, ptr %166, align 4
  %168 = zext i16 %167 to i32
  %169 = load i32, ptr %114, align 4
  %170 = icmp eq i32 %169, %168
  br i1 %170, label %171, label %182

171:                                              ; preds = %164
  store ptr null, ptr %47, align 8
  %172 = and i32 %15, 2
  %173 = or i32 %172, 8
  %174 = getelementptr inbounds %struct.xiic_i2c, ptr %1, i32 0, i32 7
  %175 = load i32, ptr %174, align 4
  %176 = icmp ugt i32 %175, 1
  br i1 %176, label %177, label %182

177:                                              ; preds = %171
  %178 = add i32 %175, -1
  store i32 %178, ptr %174, align 4
  %179 = getelementptr inbounds %struct.xiic_i2c, ptr %1, i32 0, i32 4
  %180 = load ptr, ptr %179, align 8
  %181 = getelementptr %struct.i2c_msg, ptr %180, i32 1
  store ptr %181, ptr %179, align 8
  br label %182

182:                                              ; preds = %177, %171, %164, %42
  %183 = phi i32 [ %173, %177 ], [ %173, %171 ], [ 8, %164 ], [ 0, %42 ]
  %184 = phi i32 [ 1, %177 ], [ 0, %171 ], [ 0, %164 ], [ 0, %42 ]
  %185 = and i32 %26, 16
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %229, label %187

187:                                              ; preds = %182
  %188 = or i32 %183, 16
  %189 = load i32, ptr %4, align 8
  %190 = icmp eq i32 %189, 0
  %191 = load ptr, ptr %7, align 4
  %192 = getelementptr i8, ptr %191, i32 40
  %193 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %192) #7
  br i1 %190, label %194, label %195

194:                                              ; preds = %187
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  br label %197

195:                                              ; preds = %187
  %196 = tail call i32 @llvm.bswap.i32(i32 %193) #7
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  br label %197

197:                                              ; preds = %195, %194
  %198 = phi i32 [ %193, %194 ], [ %196, %195 ]
  %199 = and i32 %198, -17
  %200 = load i32, ptr %4, align 8
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %197
  %203 = load ptr, ptr %7, align 4
  %204 = getelementptr i8, ptr %203, i32 40
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %204, i32 %199) #7, !srcloc !9
  br label %209

205:                                              ; preds = %197
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !20
  tail call void @arm_heavy_mb() #7
  %206 = tail call i32 @llvm.bswap.i32(i32 %199) #7
  %207 = load ptr, ptr %7, align 4
  %208 = getelementptr i8, ptr %207, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %208, i32 %206) #7, !srcloc !9
  br label %209

209:                                              ; preds = %205, %202
  %210 = getelementptr inbounds %struct.xiic_i2c, ptr %1, i32 0, i32 4
  %211 = load ptr, ptr %210, align 8
  %212 = icmp eq ptr %211, null
  br i1 %212, label %325, label %213

213:                                              ; preds = %209
  %214 = getelementptr inbounds %struct.xiic_i2c, ptr %1, i32 0, i32 7
  %215 = load i32, ptr %214, align 4
  %216 = icmp eq i32 %215, 1
  br i1 %216, label %217, label %228

217:                                              ; preds = %213
  %218 = getelementptr inbounds %struct.xiic_i2c, ptr %1, i32 0, i32 8
  %219 = load ptr, ptr %218, align 8
  %220 = icmp eq ptr %219, null
  br i1 %220, label %221, label %228

221:                                              ; preds = %217
  %222 = getelementptr inbounds %struct.i2c_msg, ptr %211, i32 0, i32 2
  %223 = load i16, ptr %222, align 4
  %224 = zext i16 %223 to i32
  %225 = getelementptr inbounds %struct.xiic_i2c, ptr %1, i32 0, i32 6
  %226 = load i32, ptr %225, align 8
  %227 = icmp eq i32 %226, %224
  br i1 %227, label %229, label %228

228:                                              ; preds = %221, %217, %213
  br label %229

229:                                              ; preds = %228, %221, %182
  %230 = phi i32 [ %188, %228 ], [ %183, %182 ], [ %188, %221 ]
  %231 = phi i32 [ 1, %228 ], [ %43, %182 ], [ 1, %221 ]
  %232 = phi i32 [ 1, %228 ], [ %43, %182 ], [ 0, %221 ]
  %233 = and i32 %26, 132
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %325, label %235

235:                                              ; preds = %229
  %236 = or i32 %230, %233
  %237 = getelementptr inbounds %struct.xiic_i2c, ptr %1, i32 0, i32 4
  %238 = load ptr, ptr %237, align 8
  %239 = icmp eq ptr %238, null
  br i1 %239, label %325, label %240

240:                                              ; preds = %235
  tail call fastcc void @xiic_fill_tx_fifo(ptr noundef %1)
  %241 = load ptr, ptr %237, align 8
  %242 = getelementptr inbounds %struct.i2c_msg, ptr %241, i32 0, i32 2
  %243 = load i16, ptr %242, align 4
  %244 = zext i16 %243 to i32
  %245 = getelementptr inbounds %struct.xiic_i2c, ptr %1, i32 0, i32 6
  %246 = load i32, ptr %245, align 8
  %247 = icmp eq i32 %246, %244
  br i1 %247, label %248, label %296

248:                                              ; preds = %240
  %249 = load i32, ptr %4, align 8
  %250 = icmp eq i32 %249, 0
  %251 = load ptr, ptr %7, align 4
  br i1 %250, label %252, label %255

252:                                              ; preds = %248
  %253 = getelementptr i8, ptr %251, i32 276
  %254 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %253) #7, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !17
  br label %258

255:                                              ; preds = %248
  %256 = getelementptr i8, ptr %251, i32 279
  %257 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %256) #7, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !17
  br label %258

258:                                              ; preds = %255, %252
  %259 = phi i8 [ %254, %252 ], [ %257, %255 ]
  %260 = icmp ult i8 %259, 14
  br i1 %260, label %267, label %261

261:                                              ; preds = %258
  %262 = load ptr, ptr %237, align 8
  %263 = getelementptr inbounds %struct.i2c_msg, ptr %262, i32 0, i32 2
  %264 = load i16, ptr %263, align 4
  %265 = load i32, ptr %245, align 8
  %266 = zext i16 %264 to i32
  br label %296

267:                                              ; preds = %258
  %268 = getelementptr inbounds %struct.xiic_i2c, ptr %1, i32 0, i32 7
  %269 = load i32, ptr %268, align 4
  %270 = icmp ugt i32 %269, 1
  br i1 %270, label %271, label %275

271:                                              ; preds = %267
  %272 = add i32 %269, -1
  store i32 %272, ptr %268, align 4
  %273 = load ptr, ptr %237, align 8
  %274 = getelementptr %struct.i2c_msg, ptr %273, i32 1
  store ptr %274, ptr %237, align 8
  br label %325

275:                                              ; preds = %267
  %276 = load i32, ptr %4, align 8
  %277 = icmp eq i32 %276, 0
  %278 = load ptr, ptr %7, align 4
  %279 = getelementptr i8, ptr %278, i32 40
  %280 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %279) #7
  br i1 %277, label %281, label %282

281:                                              ; preds = %275
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  br label %284

282:                                              ; preds = %275
  %283 = tail call i32 @llvm.bswap.i32(i32 %280) #7
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  br label %284

284:                                              ; preds = %282, %281
  %285 = phi i32 [ %280, %281 ], [ %283, %282 ]
  %286 = and i32 %285, -129
  %287 = load i32, ptr %4, align 8
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %292

289:                                              ; preds = %284
  %290 = load ptr, ptr %7, align 4
  %291 = getelementptr i8, ptr %290, i32 40
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %291, i32 %286) #7, !srcloc !9
  br label %325

292:                                              ; preds = %284
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !20
  tail call void @arm_heavy_mb() #7
  %293 = tail call i32 @llvm.bswap.i32(i32 %286) #7
  %294 = load ptr, ptr %7, align 4
  %295 = getelementptr i8, ptr %294, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %295, i32 %293) #7, !srcloc !9
  br label %325

296:                                              ; preds = %261, %240
  %297 = phi i32 [ %266, %261 ], [ %244, %240 ]
  %298 = phi i32 [ %265, %261 ], [ %246, %240 ]
  %299 = icmp eq i32 %298, %297
  br i1 %299, label %300, label %325

300:                                              ; preds = %296
  %301 = getelementptr inbounds %struct.xiic_i2c, ptr %1, i32 0, i32 7
  %302 = load i32, ptr %301, align 4
  %303 = icmp eq i32 %302, 1
  br i1 %303, label %304, label %325

304:                                              ; preds = %300
  %305 = load i32, ptr %4, align 8
  %306 = icmp eq i32 %305, 0
  %307 = load ptr, ptr %7, align 4
  %308 = getelementptr i8, ptr %307, i32 40
  %309 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %308) #7
  br i1 %306, label %310, label %311

310:                                              ; preds = %304
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  br label %313

311:                                              ; preds = %304
  %312 = tail call i32 @llvm.bswap.i32(i32 %309) #7
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  br label %313

313:                                              ; preds = %311, %310
  %314 = phi i32 [ %309, %310 ], [ %312, %311 ]
  %315 = and i32 %314, -129
  %316 = load i32, ptr %4, align 8
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %318, label %321

318:                                              ; preds = %313
  %319 = load ptr, ptr %7, align 4
  %320 = getelementptr i8, ptr %319, i32 40
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %320, i32 %315) #7, !srcloc !9
  br label %325

321:                                              ; preds = %313
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !20
  tail call void @arm_heavy_mb() #7
  %322 = tail call i32 @llvm.bswap.i32(i32 %315) #7
  %323 = load ptr, ptr %7, align 4
  %324 = getelementptr i8, ptr %323, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %324, i32 %322) #7, !srcloc !9
  br label %325

325:                                              ; preds = %321, %318, %300, %296, %292, %289, %271, %235, %229, %209, %92, %80, %62
  %326 = phi i32 [ %236, %296 ], [ %236, %300 ], [ %236, %271 ], [ %236, %235 ], [ %230, %229 ], [ %188, %209 ], [ 8, %62 ], [ 8, %80 ], [ %236, %289 ], [ %236, %292 ], [ %236, %318 ], [ %236, %321 ], [ 8, %92 ]
  %327 = phi i32 [ %184, %296 ], [ %184, %300 ], [ 1, %271 ], [ %184, %235 ], [ %184, %229 ], [ %184, %209 ], [ 0, %62 ], [ 0, %80 ], [ %184, %289 ], [ %184, %292 ], [ %184, %318 ], [ %184, %321 ], [ 0, %92 ]
  %328 = phi i32 [ %231, %296 ], [ %231, %300 ], [ %231, %271 ], [ %231, %235 ], [ %231, %229 ], [ %43, %209 ], [ %43, %62 ], [ %43, %80 ], [ %231, %289 ], [ %231, %292 ], [ %231, %318 ], [ %231, %321 ], [ %43, %92 ]
  %329 = phi i32 [ %232, %296 ], [ %232, %300 ], [ %232, %271 ], [ %232, %235 ], [ %232, %229 ], [ %43, %209 ], [ %43, %62 ], [ %43, %80 ], [ %232, %289 ], [ %232, %292 ], [ %232, %318 ], [ %232, %321 ], [ %43, %92 ]
  %330 = load i32, ptr %4, align 8
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %332, label %335

332:                                              ; preds = %325
  %333 = load ptr, ptr %7, align 4
  %334 = getelementptr i8, ptr %333, i32 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %334, i32 %326) #7, !srcloc !9
  br label %339

335:                                              ; preds = %325
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !20
  tail call void @arm_heavy_mb() #7
  %336 = tail call i32 @llvm.bswap.i32(i32 %326) #7
  %337 = load ptr, ptr %7, align 4
  %338 = getelementptr i8, ptr %337, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %338, i32 %336) #7, !srcloc !9
  br label %339

339:                                              ; preds = %335, %332
  %340 = icmp eq i32 %327, 0
  br i1 %340, label %342, label %341

341:                                              ; preds = %339
  tail call fastcc void @__xiic_start_xfer(ptr noundef %1)
  br label %342

342:                                              ; preds = %341, %339
  %343 = icmp eq i32 %328, 0
  br i1 %343, label %351, label %344

344:                                              ; preds = %342
  %345 = getelementptr inbounds %struct.xiic_i2c, ptr %1, i32 0, i32 4
  store ptr null, ptr %345, align 8
  %346 = getelementptr inbounds %struct.xiic_i2c, ptr %1, i32 0, i32 8
  store ptr null, ptr %346, align 8
  %347 = getelementptr inbounds %struct.xiic_i2c, ptr %1, i32 0, i32 7
  store i32 0, ptr %347, align 4
  %348 = getelementptr inbounds %struct.xiic_i2c, ptr %1, i32 0, i32 12
  store i32 %329, ptr %348, align 8
  %349 = getelementptr inbounds %struct.xiic_i2c, ptr %1, i32 0, i32 2
  tail call void @complete(ptr noundef %349) #7
  br i1 %340, label %351, label %350, !prof !21

350:                                              ; preds = %344
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 528, i32 noundef 9, ptr noundef null) #7
  br label %351

351:                                              ; preds = %350, %344, %342
  tail call void @mutex_unlock(ptr noundef %3) #7
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @xiic_reinit(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.xiic_i2c, ptr %0, i32 0, i32 10
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.xiic_i2c, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 64
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 10) #7, !srcloc !9
  br label %13

9:                                                ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !20
  tail call void @arm_heavy_mb() #7
  %10 = getelementptr inbounds %struct.xiic_i2c, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 167772160) #7, !srcloc !9
  br label %13

13:                                               ; preds = %9, %5
  %14 = load i32, ptr %2, align 8
  %15 = icmp eq i32 %14, 0
  %16 = getelementptr inbounds %struct.xiic_i2c, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  br i1 %15, label %18, label %20

18:                                               ; preds = %13
  %19 = getelementptr i8, ptr %17, i32 288
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !18
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %19, i8 15) #7, !srcloc !19
  br label %22

20:                                               ; preds = %13
  %21 = getelementptr i8, ptr %17, i32 291
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !18
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %21, i8 15) #7, !srcloc !19
  br label %22

22:                                               ; preds = %20, %18
  %23 = load i32, ptr %2, align 8
  %24 = icmp eq i32 %23, 0
  %25 = load ptr, ptr %16, align 4
  br i1 %24, label %26, label %28

26:                                               ; preds = %22
  %27 = getelementptr i8, ptr %25, i32 256
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !18
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %27, i8 2) #7, !srcloc !19
  br label %30

28:                                               ; preds = %22
  %29 = getelementptr i8, ptr %25, i32 259
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !18
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %29, i8 2) #7, !srcloc !19
  br label %30

30:                                               ; preds = %28, %26
  %31 = load i32, ptr %2, align 8
  %32 = icmp eq i32 %31, 0
  %33 = load ptr, ptr %16, align 4
  br i1 %32, label %34, label %36

34:                                               ; preds = %30
  %35 = getelementptr i8, ptr %33, i32 256
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !18
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %35, i8 1) #7, !srcloc !19
  br label %38

36:                                               ; preds = %30
  %37 = getelementptr i8, ptr %33, i32 259
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !18
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %37, i8 1) #7, !srcloc !19
  br label %38

38:                                               ; preds = %36, %34
  %39 = load volatile i32, ptr @jiffies, align 64
  %40 = add i32 %39, 100
  %41 = load i32, ptr %2, align 8
  %42 = icmp eq i32 %41, 0
  %43 = load ptr, ptr %16, align 4
  br i1 %42, label %44, label %47

44:                                               ; preds = %38
  %45 = getelementptr i8, ptr %43, i32 260
  %46 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %45) #7, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !17
  br label %50

47:                                               ; preds = %38
  %48 = getelementptr i8, ptr %43, i32 263
  %49 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %48) #7, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !17
  br label %50

50:                                               ; preds = %47, %44
  %51 = phi i8 [ %46, %44 ], [ %49, %47 ]
  %52 = and i8 %51, 64
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %84

54:                                               ; preds = %78, %50
  %55 = load i32, ptr %2, align 8
  %56 = icmp eq i32 %55, 0
  %57 = load ptr, ptr %16, align 4
  br i1 %56, label %58, label %61

58:                                               ; preds = %54
  %59 = getelementptr i8, ptr %57, i32 268
  %60 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %59) #7, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !17
  br label %64

61:                                               ; preds = %54
  %62 = getelementptr i8, ptr %57, i32 271
  %63 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %62) #7, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !17
  br label %64

64:                                               ; preds = %61, %58
  %65 = load volatile i32, ptr @jiffies, align 64
  %66 = sub i32 %40, %65
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %82, label %68

68:                                               ; preds = %64
  %69 = load i32, ptr %2, align 8
  %70 = icmp eq i32 %69, 0
  %71 = load ptr, ptr %16, align 4
  br i1 %70, label %72, label %75

72:                                               ; preds = %68
  %73 = getelementptr i8, ptr %71, i32 260
  %74 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %73) #7, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !17
  br label %78

75:                                               ; preds = %68
  %76 = getelementptr i8, ptr %71, i32 263
  %77 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %76) #7, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !17
  br label %78

78:                                               ; preds = %75, %72
  %79 = phi i8 [ %74, %72 ], [ %77, %75 ]
  %80 = and i8 %79, 64
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %54, label %84

82:                                               ; preds = %64
  %83 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.10) #8
  br label %135

84:                                               ; preds = %78, %50
  %85 = load i32, ptr %2, align 8
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load ptr, ptr %16, align 4
  %89 = getelementptr i8, ptr %88, i32 28
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 -2147483648) #7, !srcloc !9
  br label %93

90:                                               ; preds = %84
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !20
  tail call void @arm_heavy_mb() #7
  %91 = load ptr, ptr %16, align 4
  %92 = getelementptr i8, ptr %91, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 128) #7, !srcloc !9
  br label %93

93:                                               ; preds = %90, %87
  %94 = load i32, ptr %2, align 8
  %95 = icmp eq i32 %94, 0
  %96 = load ptr, ptr %16, align 4
  %97 = getelementptr i8, ptr %96, i32 32
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %97) #7
  br i1 %95, label %99, label %100

99:                                               ; preds = %93
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  br label %102

100:                                              ; preds = %93
  %101 = tail call i32 @llvm.bswap.i32(i32 %98) #7
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  br label %102

102:                                              ; preds = %100, %99
  %103 = phi i32 [ %98, %99 ], [ %101, %100 ]
  %104 = and i32 %103, 1
  %105 = load i32, ptr %2, align 8
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load ptr, ptr %16, align 4
  %109 = getelementptr i8, ptr %108, i32 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %109, i32 %104) #7, !srcloc !9
  br label %114

110:                                              ; preds = %102
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !20
  tail call void @arm_heavy_mb() #7
  %111 = shl nuw nsw i32 %104, 24
  %112 = load ptr, ptr %16, align 4
  %113 = getelementptr i8, ptr %112, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %113, i32 %111) #7, !srcloc !9
  br label %114

114:                                              ; preds = %110, %107
  %115 = load i32, ptr %2, align 8
  %116 = icmp eq i32 %115, 0
  %117 = load ptr, ptr %16, align 4
  %118 = getelementptr i8, ptr %117, i32 40
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %118) #7
  br i1 %116, label %120, label %121

120:                                              ; preds = %114
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  br label %123

121:                                              ; preds = %114
  %122 = tail call i32 @llvm.bswap.i32(i32 %119) #7
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  br label %123

123:                                              ; preds = %121, %120
  %124 = phi i32 [ %119, %120 ], [ %122, %121 ]
  %125 = or i32 %124, 1
  %126 = load i32, ptr %2, align 8
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load ptr, ptr %16, align 4
  %130 = getelementptr i8, ptr %129, i32 40
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 %125) #7, !srcloc !9
  br label %135

131:                                              ; preds = %123
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !20
  tail call void @arm_heavy_mb() #7
  %132 = tail call i32 @llvm.bswap.i32(i32 %125) #7
  %133 = load ptr, ptr %16, align 4
  %134 = getelementptr i8, ptr %133, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %134, i32 %132) #7, !srcloc !9
  br label %135

135:                                              ; preds = %131, %128, %82
  %136 = phi i32 [ -110, %82 ], [ 0, %128 ], [ 0, %131 ]
  ret i32 %136
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @xiic_deinit(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.xiic_i2c, ptr %0, i32 0, i32 10
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.xiic_i2c, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 64
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 10) #7, !srcloc !9
  br label %13

9:                                                ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !20
  tail call void @arm_heavy_mb() #7
  %10 = getelementptr inbounds %struct.xiic_i2c, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 167772160) #7, !srcloc !9
  br label %13

13:                                               ; preds = %9, %5
  %14 = load i32, ptr %2, align 8
  %15 = icmp eq i32 %14, 0
  %16 = getelementptr inbounds %struct.xiic_i2c, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  br i1 %15, label %18, label %21

18:                                               ; preds = %13
  %19 = getelementptr i8, ptr %17, i32 256
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %19) #7, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !17
  br label %24

21:                                               ; preds = %13
  %22 = getelementptr i8, ptr %17, i32 259
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %22) #7, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !17
  br label %24

24:                                               ; preds = %21, %18
  %25 = phi i8 [ %20, %18 ], [ %23, %21 ]
  %26 = and i8 %25, -2
  %27 = load i32, ptr %2, align 8
  %28 = icmp eq i32 %27, 0
  %29 = load ptr, ptr %16, align 4
  br i1 %28, label %30, label %32

30:                                               ; preds = %24
  %31 = getelementptr i8, ptr %29, i32 256
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !18
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %31, i8 %26) #7, !srcloc !19
  br label %34

32:                                               ; preds = %24
  %33 = getelementptr i8, ptr %29, i32 259
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !18
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %33, i8 %26) #7, !srcloc !19
  br label %34

34:                                               ; preds = %32, %30
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_client_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xiic_xfer(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #7
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #7, !srcloc !13
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 0, i32 -1, ptr elementtype(i32) %10) #7, !srcloc !14
  %12 = extractvalue { i32, i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %121, label %14

14:                                               ; preds = %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !15
  br label %121

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.xiic_i2c, ptr %5, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %16) #7
  %17 = getelementptr inbounds %struct.xiic_i2c, ptr %5, i32 0, i32 4
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %95

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.xiic_i2c, ptr %5, i32 0, i32 8
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %95

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.xiic_i2c, ptr %5, i32 0, i32 13
  %26 = load i8, ptr %25, align 4, !range !22
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %88

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.xiic_i2c, ptr %5, i32 0, i32 10
  %30 = load i32, ptr %29, align 8
  %31 = icmp eq i32 %30, 0
  %32 = getelementptr inbounds %struct.xiic_i2c, ptr %5, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  br i1 %31, label %34, label %37

34:                                               ; preds = %28
  %35 = getelementptr i8, ptr %33, i32 260
  %36 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %35) #7, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !17
  br label %40

37:                                               ; preds = %28
  %38 = getelementptr i8, ptr %33, i32 263
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %38) #7, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !17
  br label %40

40:                                               ; preds = %37, %34
  %41 = phi i8 [ %36, %34 ], [ %39, %37 ]
  %42 = and i8 %41, 4
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %88, label %44

44:                                               ; preds = %40
  tail call void @msleep(i32 noundef 1) #7
  %45 = load i32, ptr %29, align 8
  %46 = icmp eq i32 %45, 0
  %47 = load ptr, ptr %32, align 4
  br i1 %46, label %48, label %51

48:                                               ; preds = %44
  %49 = getelementptr i8, ptr %47, i32 260
  %50 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %49) #7, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !17
  br label %54

51:                                               ; preds = %44
  %52 = getelementptr i8, ptr %47, i32 263
  %53 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %52) #7, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !17
  br label %54

54:                                               ; preds = %51, %48
  %55 = phi i8 [ %50, %48 ], [ %53, %51 ]
  %56 = and i8 %55, 4
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %86, label %58

58:                                               ; preds = %54
  tail call void @msleep(i32 noundef 1) #7
  %59 = load i32, ptr %29, align 8
  %60 = icmp eq i32 %59, 0
  %61 = load ptr, ptr %32, align 4
  br i1 %60, label %65, label %62

62:                                               ; preds = %58
  %63 = getelementptr i8, ptr %61, i32 263
  %64 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %63) #7, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !17
  br label %68

65:                                               ; preds = %58
  %66 = getelementptr i8, ptr %61, i32 260
  %67 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %66) #7, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !17
  br label %68

68:                                               ; preds = %65, %62
  %69 = phi i8 [ %67, %65 ], [ %64, %62 ]
  %70 = and i8 %69, 4
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %86, label %72

72:                                               ; preds = %68
  tail call void @msleep(i32 noundef 1) #7
  %73 = load i32, ptr %29, align 8
  %74 = icmp eq i32 %73, 0
  %75 = load ptr, ptr %32, align 4
  br i1 %74, label %79, label %76

76:                                               ; preds = %72
  %77 = getelementptr i8, ptr %75, i32 263
  %78 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %77) #7, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !17
  br label %82

79:                                               ; preds = %72
  %80 = getelementptr i8, ptr %75, i32 260
  %81 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %80) #7, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !17
  br label %82

82:                                               ; preds = %79, %76
  %83 = phi i8 [ %81, %79 ], [ %78, %76 ]
  %84 = and i8 %83, 4
  %85 = icmp eq i8 %84, 0
  br label %86

86:                                               ; preds = %82, %68, %54
  %87 = phi i1 [ %57, %54 ], [ %71, %68 ], [ %85, %82 ]
  br i1 %87, label %88, label %95

88:                                               ; preds = %86, %40, %24
  store ptr %1, ptr %17, align 8
  store ptr null, ptr %21, align 8
  %89 = getelementptr inbounds %struct.xiic_i2c, ptr %5, i32 0, i32 7
  store i32 %2, ptr %89, align 4
  %90 = getelementptr inbounds %struct.xiic_i2c, ptr %5, i32 0, i32 2
  store i32 0, ptr %90, align 4
  %91 = getelementptr inbounds %struct.xiic_i2c, ptr %5, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %91, ptr noundef nonnull @.str.8, ptr noundef nonnull @init_completion.__key) #7
  %92 = tail call fastcc i32 @xiic_reinit(ptr noundef %5) #7
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  tail call fastcc void @__xiic_start_xfer(ptr noundef %5) #7
  tail call void @mutex_unlock(ptr noundef %16) #7
  br label %102

95:                                               ; preds = %86, %20, %15
  tail call void @mutex_unlock(ptr noundef %16) #7
  br label %98

96:                                               ; preds = %88
  tail call void @mutex_unlock(ptr noundef %16) #7
  %97 = icmp slt i32 %92, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %96, %95
  %99 = phi i32 [ -16, %95 ], [ %92, %96 ]
  %100 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 1
  %101 = load ptr, ptr %100, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %101, ptr noundef nonnull @.str.7) #8
  br label %121

102:                                              ; preds = %96, %94
  %103 = tail call i32 @wait_for_completion_timeout(ptr noundef %90, i32 noundef 1000) #7
  tail call void @mutex_lock(ptr noundef %16) #7
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  store ptr null, ptr %17, align 8
  store ptr null, ptr %21, align 8
  store i32 0, ptr %89, align 4
  br label %114

106:                                              ; preds = %102
  %107 = icmp slt i32 %103, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %106
  store ptr null, ptr %17, align 8
  store ptr null, ptr %21, align 8
  store i32 0, ptr %89, align 4
  br label %114

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.xiic_i2c, ptr %5, i32 0, i32 12
  %111 = load i32, ptr %110, align 8
  %112 = icmp eq i32 %111, 0
  %113 = select i1 %112, i32 %2, i32 -5
  br label %114

114:                                              ; preds = %109, %108, %105
  %115 = phi i32 [ -110, %105 ], [ %103, %108 ], [ %113, %109 ]
  tail call void @mutex_unlock(ptr noundef %16) #7
  %116 = load ptr, ptr %5, align 8
  %117 = tail call i64 @ktime_get_mono_fast_ns() #7
  %118 = getelementptr inbounds %struct.device, ptr %116, i32 0, i32 11, i32 22
  store volatile i64 %117, ptr %118, align 8
  %119 = load ptr, ptr %5, align 8
  %120 = tail call i32 @__pm_runtime_suspend(ptr noundef %119, i32 noundef 13) #7
  br label %121

121:                                              ; preds = %114, %98, %14, %9
  %122 = phi i32 [ %99, %98 ], [ %115, %114 ], [ %7, %9 ], [ %7, %14 ]
  ret i32 %122
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @xiic_func(ptr nocapture noundef readnone %0) #5 {
  ret i32 251592713
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__xiic_start_xfer(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.xiic_i2c, ptr %0, i32 0, i32 10
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  %5 = getelementptr inbounds %struct.xiic_i2c, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  br i1 %4, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %6, i32 276
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %8) #7, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !17
  br label %13

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %6, i32 279
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %11) #7, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !17
  br label %13

13:                                               ; preds = %10, %7
  %14 = getelementptr inbounds %struct.xiic_i2c, ptr %0, i32 0, i32 4
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %299, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.xiic_i2c, ptr %0, i32 0, i32 9
  store i32 0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.xiic_i2c, ptr %0, i32 0, i32 6
  store i32 0, ptr %19, align 8
  %20 = getelementptr inbounds %struct.xiic_i2c, ptr %0, i32 0, i32 12
  store i32 2, ptr %20, align 8
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  %22 = load i16, ptr %21, align 2
  %23 = and i16 %22, 1
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %211, label %25

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.xiic_i2c, ptr %0, i32 0, i32 8
  store ptr %15, ptr %26, align 8
  %27 = load i32, ptr %2, align 8
  %28 = icmp eq i32 %27, 0
  %29 = load ptr, ptr %5, align 4
  %30 = getelementptr i8, ptr %29, i32 32
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #7
  br i1 %28, label %32, label %33

32:                                               ; preds = %25
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  br label %35

33:                                               ; preds = %25
  %34 = tail call i32 @llvm.bswap.i32(i32 %31) #7
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  br label %35

35:                                               ; preds = %33, %32
  %36 = phi i32 [ %31, %32 ], [ %34, %33 ]
  %37 = and i32 %36, 10
  %38 = load i32, ptr %2, align 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load ptr, ptr %5, align 4
  %42 = getelementptr i8, ptr %41, i32 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %37) #7, !srcloc !9
  br label %47

43:                                               ; preds = %35
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !20
  tail call void @arm_heavy_mb() #7
  %44 = shl nuw nsw i32 %37, 24
  %45 = load ptr, ptr %5, align 4
  %46 = getelementptr i8, ptr %45, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %44) #7, !srcloc !9
  br label %47

47:                                               ; preds = %43, %40
  %48 = load i32, ptr %2, align 8
  %49 = icmp eq i32 %48, 0
  %50 = load ptr, ptr %5, align 4
  %51 = getelementptr i8, ptr %50, i32 40
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #7
  br i1 %49, label %53, label %54

53:                                               ; preds = %47
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  br label %56

54:                                               ; preds = %47
  %55 = tail call i32 @llvm.bswap.i32(i32 %52) #7
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  br label %56

56:                                               ; preds = %54, %53
  %57 = phi i32 [ %52, %53 ], [ %55, %54 ]
  %58 = or i32 %57, 10
  %59 = load i32, ptr %2, align 8
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load ptr, ptr %5, align 4
  %63 = getelementptr i8, ptr %62, i32 40
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %58) #7, !srcloc !9
  br label %68

64:                                               ; preds = %56
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !20
  tail call void @arm_heavy_mb() #7
  %65 = tail call i32 @llvm.bswap.i32(i32 %58) #7
  %66 = load ptr, ptr %5, align 4
  %67 = getelementptr i8, ptr %66, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %65) #7, !srcloc !9
  br label %68

68:                                               ; preds = %64, %61
  %69 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 2
  %70 = load i16, ptr %69, align 4
  %71 = and i16 %70, 255
  %72 = icmp ugt i16 %71, 16
  %73 = trunc i16 %70 to i8
  %74 = add i8 %73, -1
  %75 = select i1 %72, i8 15, i8 %74
  %76 = load i32, ptr %2, align 8
  %77 = icmp eq i32 %76, 0
  %78 = load ptr, ptr %5, align 4
  br i1 %77, label %79, label %81

79:                                               ; preds = %68
  %80 = getelementptr i8, ptr %78, i32 288
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !18
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %80, i8 %75) #7, !srcloc !19
  br label %83

81:                                               ; preds = %68
  %82 = getelementptr i8, ptr %78, i32 291
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !18
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %82, i8 %75) #7, !srcloc !19
  br label %83

83:                                               ; preds = %81, %79
  %84 = load i16, ptr %21, align 2
  %85 = and i16 %84, 16384
  %86 = icmp eq i16 %85, 0
  br i1 %86, label %87, label %105

87:                                               ; preds = %83
  %88 = load i16, ptr %15, align 4
  %89 = trunc i16 %88 to i8
  %90 = shl i8 %89, 1
  %91 = trunc i16 %84 to i8
  %92 = and i8 %91, 1
  %93 = or i8 %90, %92
  %94 = zext i8 %93 to i16
  %95 = or i16 %94, 256
  %96 = load i32, ptr %2, align 8
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %87
  %99 = load ptr, ptr %5, align 4
  %100 = getelementptr i8, ptr %99, i32 264
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !23
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %100, i16 %95) #7, !srcloc !24
  br label %105

101:                                              ; preds = %87
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !25
  tail call void @arm_heavy_mb() #7
  %102 = tail call i16 @llvm.bswap.i16(i16 %95) #7
  %103 = load ptr, ptr %5, align 4
  %104 = getelementptr i8, ptr %103, i32 266
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %104, i16 %102) #7, !srcloc !24
  br label %105

105:                                              ; preds = %101, %98, %83
  %106 = load i32, ptr %2, align 8
  %107 = icmp eq i32 %106, 0
  %108 = load ptr, ptr %5, align 4
  %109 = getelementptr i8, ptr %108, i32 32
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %109) #7
  br i1 %107, label %111, label %112

111:                                              ; preds = %105
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  br label %114

112:                                              ; preds = %105
  %113 = tail call i32 @llvm.bswap.i32(i32 %110) #7
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  br label %114

114:                                              ; preds = %112, %111
  %115 = phi i32 [ %110, %111 ], [ %113, %112 ]
  %116 = and i32 %115, 16
  %117 = load i32, ptr %2, align 8
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load ptr, ptr %5, align 4
  %121 = getelementptr i8, ptr %120, i32 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 %116) #7, !srcloc !9
  br label %126

122:                                              ; preds = %114
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !20
  tail call void @arm_heavy_mb() #7
  %123 = shl nuw nsw i32 %116, 24
  %124 = load ptr, ptr %5, align 4
  %125 = getelementptr i8, ptr %124, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %125, i32 %123) #7, !srcloc !9
  br label %126

126:                                              ; preds = %122, %119
  %127 = load i32, ptr %2, align 8
  %128 = icmp eq i32 %127, 0
  %129 = load ptr, ptr %5, align 4
  %130 = getelementptr i8, ptr %129, i32 40
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %130) #7
  br i1 %128, label %132, label %133

132:                                              ; preds = %126
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  br label %135

133:                                              ; preds = %126
  %134 = tail call i32 @llvm.bswap.i32(i32 %131) #7
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  br label %135

135:                                              ; preds = %133, %132
  %136 = phi i32 [ %131, %132 ], [ %134, %133 ]
  %137 = or i32 %136, 16
  %138 = load i32, ptr %2, align 8
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %135
  %141 = load ptr, ptr %5, align 4
  %142 = getelementptr i8, ptr %141, i32 40
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %142, i32 %137) #7, !srcloc !9
  br label %147

143:                                              ; preds = %135
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !20
  tail call void @arm_heavy_mb() #7
  %144 = tail call i32 @llvm.bswap.i32(i32 %137) #7
  %145 = load ptr, ptr %5, align 4
  %146 = getelementptr i8, ptr %145, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %146, i32 %144) #7, !srcloc !9
  br label %147

147:                                              ; preds = %143, %140
  %148 = load i16, ptr %69, align 4
  %149 = getelementptr inbounds %struct.xiic_i2c, ptr %0, i32 0, i32 7
  %150 = load i32, ptr %149, align 4
  %151 = icmp eq i32 %150, 1
  %152 = select i1 %151, i16 512, i16 0
  %153 = or i16 %152, %148
  %154 = load i32, ptr %2, align 8
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %147
  %157 = load ptr, ptr %5, align 4
  %158 = getelementptr i8, ptr %157, i32 264
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !23
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %158, i16 %153) #7, !srcloc !24
  br label %163

159:                                              ; preds = %147
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !25
  tail call void @arm_heavy_mb() #7
  %160 = tail call i16 @llvm.bswap.i16(i16 %153) #7
  %161 = load ptr, ptr %5, align 4
  %162 = getelementptr i8, ptr %161, i32 266
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %162, i16 %160) #7, !srcloc !24
  br label %163

163:                                              ; preds = %159, %156
  %164 = load i32, ptr %149, align 4
  %165 = icmp eq i32 %164, 1
  br i1 %165, label %166, label %208

166:                                              ; preds = %163
  %167 = load i32, ptr %2, align 8
  %168 = icmp eq i32 %167, 0
  %169 = load ptr, ptr %5, align 4
  %170 = getelementptr i8, ptr %169, i32 32
  %171 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %170) #7
  br i1 %168, label %172, label %173

172:                                              ; preds = %166
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  br label %175

173:                                              ; preds = %166
  %174 = tail call i32 @llvm.bswap.i32(i32 %171) #7
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  br label %175

175:                                              ; preds = %173, %172
  %176 = phi i32 [ %171, %172 ], [ %174, %173 ]
  %177 = and i32 %176, 16
  %178 = load i32, ptr %2, align 8
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %175
  %181 = load ptr, ptr %5, align 4
  %182 = getelementptr i8, ptr %181, i32 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %182, i32 %177) #7, !srcloc !9
  br label %187

183:                                              ; preds = %175
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !20
  tail call void @arm_heavy_mb() #7
  %184 = shl nuw nsw i32 %177, 24
  %185 = load ptr, ptr %5, align 4
  %186 = getelementptr i8, ptr %185, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %186, i32 %184) #7, !srcloc !9
  br label %187

187:                                              ; preds = %183, %180
  %188 = load i32, ptr %2, align 8
  %189 = icmp eq i32 %188, 0
  %190 = load ptr, ptr %5, align 4
  %191 = getelementptr i8, ptr %190, i32 40
  %192 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %191) #7
  br i1 %189, label %193, label %194

193:                                              ; preds = %187
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  br label %196

194:                                              ; preds = %187
  %195 = tail call i32 @llvm.bswap.i32(i32 %192) #7
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  br label %196

196:                                              ; preds = %194, %193
  %197 = phi i32 [ %192, %193 ], [ %195, %194 ]
  %198 = or i32 %197, 16
  %199 = load i32, ptr %2, align 8
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %196
  %202 = load ptr, ptr %5, align 4
  %203 = getelementptr i8, ptr %202, i32 40
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %203, i32 %198) #7, !srcloc !9
  br label %208

204:                                              ; preds = %196
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !20
  tail call void @arm_heavy_mb() #7
  %205 = tail call i32 @llvm.bswap.i32(i32 %198) #7
  %206 = load ptr, ptr %5, align 4
  %207 = getelementptr i8, ptr %206, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %207, i32 %205) #7, !srcloc !9
  br label %208

208:                                              ; preds = %204, %201, %163
  %209 = load i16, ptr %69, align 4
  %210 = zext i16 %209 to i32
  store i32 %210, ptr %19, align 8
  br label %299

211:                                              ; preds = %17
  %212 = and i16 %22, 16384
  %213 = icmp eq i16 %212, 0
  br i1 %213, label %214, label %243

214:                                              ; preds = %211
  %215 = load i16, ptr %15, align 4
  %216 = trunc i16 %215 to i8
  %217 = shl i8 %216, 1
  %218 = trunc i16 %22 to i8
  %219 = and i8 %218, 1
  %220 = or i8 %217, %219
  %221 = zext i8 %220 to i16
  %222 = or i16 %221, 256
  %223 = getelementptr inbounds %struct.xiic_i2c, ptr %0, i32 0, i32 7
  %224 = load i32, ptr %223, align 4
  %225 = icmp eq i32 %224, 1
  br i1 %225, label %226, label %232

226:                                              ; preds = %214
  %227 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 2
  %228 = load i16, ptr %227, align 4
  %229 = icmp eq i16 %228, 0
  %230 = or i16 %221, 768
  %231 = select i1 %229, i16 %230, i16 %222
  br label %232

232:                                              ; preds = %226, %214
  %233 = phi i16 [ %222, %214 ], [ %231, %226 ]
  %234 = load i32, ptr %2, align 8
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %232
  %237 = load ptr, ptr %5, align 4
  %238 = getelementptr i8, ptr %237, i32 264
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !23
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %238, i16 %233) #7, !srcloc !24
  br label %243

239:                                              ; preds = %232
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !25
  tail call void @arm_heavy_mb() #7
  %240 = tail call i16 @llvm.bswap.i16(i16 %233) #7
  %241 = load ptr, ptr %5, align 4
  %242 = getelementptr i8, ptr %241, i32 266
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %242, i16 %240) #7, !srcloc !24
  br label %243

243:                                              ; preds = %239, %236, %211
  %244 = getelementptr inbounds %struct.xiic_i2c, ptr %0, i32 0, i32 7
  %245 = load i32, ptr %244, align 4
  %246 = icmp ugt i32 %245, 1
  br i1 %246, label %255, label %247

247:                                              ; preds = %243
  %248 = load ptr, ptr %14, align 8
  %249 = getelementptr inbounds %struct.i2c_msg, ptr %248, i32 0, i32 2
  %250 = load i16, ptr %249, align 4
  %251 = zext i16 %250 to i32
  %252 = load i32, ptr %19, align 8
  %253 = icmp eq i32 %252, %251
  %254 = select i1 %253, i32 22, i32 150
  br label %255

255:                                              ; preds = %247, %243
  %256 = phi i32 [ 150, %243 ], [ %254, %247 ]
  %257 = load i32, ptr %2, align 8
  %258 = icmp eq i32 %257, 0
  %259 = load ptr, ptr %5, align 4
  %260 = getelementptr i8, ptr %259, i32 32
  %261 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %260) #7
  br i1 %258, label %262, label %263

262:                                              ; preds = %255
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  br label %265

263:                                              ; preds = %255
  %264 = tail call i32 @llvm.bswap.i32(i32 %261) #7
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  br label %265

265:                                              ; preds = %263, %262
  %266 = phi i32 [ %261, %262 ], [ %264, %263 ]
  %267 = and i32 %266, %256
  %268 = load i32, ptr %2, align 8
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %270, label %273

270:                                              ; preds = %265
  %271 = load ptr, ptr %5, align 4
  %272 = getelementptr i8, ptr %271, i32 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %272, i32 %267) #7, !srcloc !9
  br label %277

273:                                              ; preds = %265
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !20
  tail call void @arm_heavy_mb() #7
  %274 = shl nuw i32 %267, 24
  %275 = load ptr, ptr %5, align 4
  %276 = getelementptr i8, ptr %275, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %276, i32 %274) #7, !srcloc !9
  br label %277

277:                                              ; preds = %273, %270
  %278 = load i32, ptr %2, align 8
  %279 = icmp eq i32 %278, 0
  %280 = load ptr, ptr %5, align 4
  %281 = getelementptr i8, ptr %280, i32 40
  %282 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %281) #7
  br i1 %279, label %283, label %284

283:                                              ; preds = %277
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  br label %286

284:                                              ; preds = %277
  %285 = tail call i32 @llvm.bswap.i32(i32 %282) #7
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  br label %286

286:                                              ; preds = %284, %283
  %287 = phi i32 [ %282, %283 ], [ %285, %284 ]
  %288 = or i32 %287, %256
  %289 = load i32, ptr %2, align 8
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %294

291:                                              ; preds = %286
  %292 = load ptr, ptr %5, align 4
  %293 = getelementptr i8, ptr %292, i32 40
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %293, i32 %288) #7, !srcloc !9
  br label %298

294:                                              ; preds = %286
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !20
  tail call void @arm_heavy_mb() #7
  %295 = tail call i32 @llvm.bswap.i32(i32 %288) #7
  %296 = load ptr, ptr %5, align 4
  %297 = getelementptr i8, ptr %296, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %297, i32 %295) #7, !srcloc !9
  br label %298

298:                                              ; preds = %294, %291
  tail call fastcc void @xiic_fill_tx_fifo(ptr noundef %0) #7
  br label %299

299:                                              ; preds = %298, %208, %13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @xiic_fill_tx_fifo(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.xiic_i2c, ptr %0, i32 0, i32 10
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  %5 = getelementptr inbounds %struct.xiic_i2c, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  br i1 %4, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %6, i32 276
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %8) #7, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !17
  br label %13

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %6, i32 279
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %11) #7, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !17
  br label %13

13:                                               ; preds = %10, %7
  %14 = phi i8 [ %9, %7 ], [ %12, %10 ]
  %15 = getelementptr inbounds %struct.xiic_i2c, ptr %0, i32 0, i32 4
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 2
  %18 = load i16, ptr %17, align 4
  %19 = zext i16 %18 to i32
  %20 = getelementptr inbounds %struct.xiic_i2c, ptr %0, i32 0, i32 6
  %21 = load i32, ptr %20, align 8
  %22 = sub i32 %19, %21
  %23 = sub i8 15, %14
  %24 = zext i8 %23 to i32
  %25 = tail call i32 @llvm.smin.i32(i32 %22, i32 %24)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %65, label %27

27:                                               ; preds = %13
  %28 = getelementptr inbounds %struct.xiic_i2c, ptr %0, i32 0, i32 7
  br label %29

29:                                               ; preds = %62, %27
  %30 = phi i32 [ %21, %27 ], [ %64, %62 ]
  %31 = phi ptr [ %16, %27 ], [ %63, %62 ]
  %32 = phi i32 [ %25, %27 ], [ %33, %62 ]
  %33 = add i32 %32, -1
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = add i32 %30, 1
  store i32 %36, ptr %20, align 8
  %37 = getelementptr i8, ptr %35, i32 %30
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i16
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 0, i32 2
  %41 = load i16, ptr %40, align 4
  %42 = zext i16 %41 to i32
  %43 = icmp eq i32 %36, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %29
  %45 = load i32, ptr %28, align 4
  %46 = icmp eq i32 %45, 1
  %47 = or i16 %39, 512
  %48 = select i1 %46, i16 %47, i16 %39
  br label %49

49:                                               ; preds = %44, %29
  %50 = phi i16 [ %39, %29 ], [ %48, %44 ]
  %51 = load i32, ptr %2, align 8
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load ptr, ptr %5, align 4
  %55 = getelementptr i8, ptr %54, i32 264
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !23
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %55, i16 %50) #7, !srcloc !24
  br label %60

56:                                               ; preds = %49
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !25
  tail call void @arm_heavy_mb() #7
  %57 = tail call i16 @llvm.bswap.i16(i16 %50) #7
  %58 = load ptr, ptr %5, align 4
  %59 = getelementptr i8, ptr %58, i32 266
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %59, i16 %57) #7, !srcloc !24
  br label %60

60:                                               ; preds = %56, %53
  %61 = icmp eq i32 %33, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %60
  %63 = load ptr, ptr %15, align 8
  %64 = load i32, ptr %20, align 8
  br label %29

65:                                               ; preds = %60, %13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xiic_i2c_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.xiic_i2c, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xiic_i2c_runtime_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.xiic_i2c, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_enable(ptr noundef %5) #7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.11) #8
  br label %9

9:                                                ; preds = %8, %1
  ret i32 %6
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{i64 2152924861}
!9 = !{i64 5391258}
!10 = !{i64 2152923639}
!11 = !{i64 2154136374}
!12 = !{i64 2147935400}
!13 = !{i64 433710, i64 2147923681, i64 2147923707, i64 2147923754, i64 2147923776, i64 2147923804, i64 2147923824}
!14 = !{i64 420279, i64 420304, i64 420326, i64 420342, i64 420354, i64 420374, i64 420398, i64 420414, i64 420426}
!15 = !{i64 2147935526}
!16 = !{i64 5391456}
!17 = !{i64 2152922693}
!18 = !{i64 2152923991}
!19 = !{i64 5391061}
!20 = !{i64 2154135694}
!21 = !{!"branch_weights", i32 2000, i32 1}
!22 = !{i8 0, i8 2}
!23 = !{i64 2152924388}
!24 = !{i64 5390638}
!25 = !{i64 2154135189}
