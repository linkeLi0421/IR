; ModuleID = '/llk/IR/drivers/input/mouse/logips2pp.c_pt.bc'
source_filename = "../drivers/input/mouse/logips2pp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ps2pp_info = type { i8, i8, i16 }
%struct.psmouse_attribute = type { %struct.device_attribute, ptr, ptr, ptr, i8 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.psmouse = type { ptr, ptr, %struct.ps2dev, %struct.delayed_work, ptr, ptr, ptr, [8 x i8], i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, [64 x i8], [32 x i8], i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ps2dev = type { ptr, %struct.mutex, %struct.wait_queue_head, i32, [8 x i8], i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.serio = type { ptr, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, ptr, %struct.mutex, %struct.device, %struct.list_head, ptr }
%struct.serio_device_id = type { i8, i8, i8, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@.str = private unnamed_addr constant [53 x i8] c"logips2pp: Detected unknown Logitech mouse model %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Logitech\00", align 1
@get_model_info.ps2pp_list = internal constant [34 x %struct.ps2pp_info] [%struct.ps2pp_info { i8 1, i8 0, i16 0 }, %struct.ps2pp_info { i8 12, i8 0, i16 4 }, %struct.ps2pp_info { i8 13, i8 0, i16 0 }, %struct.ps2pp_info { i8 15, i8 2, i16 63 }, %struct.ps2pp_info { i8 40, i8 0, i16 4 }, %struct.ps2pp_info { i8 41, i8 0, i16 4 }, %struct.ps2pp_info { i8 42, i8 0, i16 4 }, %struct.ps2pp_info { i8 43, i8 0, i16 4 }, %struct.ps2pp_info { i8 50, i8 0, i16 0 }, %struct.ps2pp_info { i8 51, i8 0, i16 0 }, %struct.ps2pp_info { i8 52, i8 1, i16 5 }, %struct.ps2pp_info { i8 53, i8 1, i16 1 }, %struct.ps2pp_info { i8 56, i8 1, i16 5 }, %struct.ps2pp_info { i8 61, i8 2, i16 61 }, %struct.ps2pp_info { i8 66, i8 2, i16 63 }, %struct.ps2pp_info { i8 72, i8 4, i16 0 }, %struct.ps2pp_info { i8 73, i8 4, i16 4 }, %struct.ps2pp_info { i8 75, i8 1, i16 1 }, %struct.ps2pp_info { i8 76, i8 1, i16 1 }, %struct.ps2pp_info { i8 79, i8 4, i16 1 }, %struct.ps2pp_info { i8 80, i8 1, i16 5 }, %struct.ps2pp_info { i8 81, i8 1, i16 1 }, %struct.ps2pp_info { i8 83, i8 1, i16 1 }, %struct.ps2pp_info { i8 85, i8 1, i16 1 }, %struct.ps2pp_info { i8 86, i8 1, i16 1 }, %struct.ps2pp_info { i8 87, i8 1, i16 1 }, %struct.ps2pp_info { i8 88, i8 1, i16 1 }, %struct.ps2pp_info { i8 96, i8 0, i16 0 }, %struct.ps2pp_info { i8 97, i8 3, i16 3 }, %struct.ps2pp_info { i8 99, i8 1, i16 1 }, %struct.ps2pp_info { i8 100, i8 2, i16 61 }, %struct.ps2pp_info { i8 111, i8 2, i16 5 }, %struct.ps2pp_info { i8 112, i8 2, i16 61 }, %struct.ps2pp_info { i8 114, i8 2, i16 29 }], align 2
@psmouse_attr_smartscroll = internal global %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.3, i16 420 }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr null, ptr @ps2pp_attr_show_smartscroll, ptr @ps2pp_attr_set_smartscroll, i8 1 }, align 4
@.str.2 = private unnamed_addr constant [68 x i8] c"logips2pp: failed to create smartscroll sysfs attribute, error: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"smartscroll\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Wheel Mouse\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"MX Mouse\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"TouchPad 3\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"TrackMan\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"Mouse\00", align 1
@switch.table.ps2pp_detect = private unnamed_addr constant [4 x ptr] [ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ps2pp_detect(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca [4 x i8], align 4
  %4 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  %5 = call i32 @ps2_command(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 4328) #6
  %6 = call i32 @ps2_command(ptr noundef %4, ptr noundef null, i32 noundef 230) #6
  %7 = call i32 @ps2_command(ptr noundef %4, ptr noundef null, i32 noundef 230) #6
  %8 = call i32 @ps2_command(ptr noundef %4, ptr noundef null, i32 noundef 230) #6
  %9 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 1
  store i8 0, ptr %9, align 1
  %10 = call i32 @ps2_command(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 1001) #6
  %11 = load i8, ptr %3, align 4
  %12 = lshr i8 %11, 4
  %13 = and i8 %12, 7
  %14 = shl i8 %11, 3
  %15 = and i8 %14, 120
  %16 = or i8 %13, %15
  %17 = load i8, ptr %9, align 1
  %18 = icmp ne i8 %16, 0
  %19 = icmp ne i8 %17, 0
  %20 = select i1 %18, i1 %19, i1 false
  br i1 %20, label %24, label %175

21:                                               ; preds = %24
  %22 = add nuw nsw i32 %25, 1
  %23 = icmp eq i32 %22, 34
  br i1 %23, label %77, label %24

24:                                               ; preds = %21, %2
  %25 = phi i32 [ %22, %21 ], [ 0, %2 ]
  %26 = getelementptr [34 x %struct.ps2pp_info], ptr @get_model_info.ps2pp_list, i32 0, i32 %25
  %27 = load i8, ptr %26, align 2
  %28 = icmp eq i8 %27, %16
  br i1 %28, label %29, label %21

29:                                               ; preds = %24
  %30 = icmp eq ptr %26, null
  br i1 %30, label %77, label %31

31:                                               ; preds = %29
  %32 = and i32 %25, 1073741823
  %33 = icmp eq i32 %32, 28
  br i1 %33, label %34, label %50

34:                                               ; preds = %31
  store i8 17, ptr %3, align 4
  store i8 4, ptr %9, align 1
  %35 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 2
  store i8 104, ptr %35, align 2
  %36 = call i32 @ps2_command(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 12497) #6
  store i8 17, ptr %3, align 4
  store i8 5, ptr %9, align 1
  store i8 11, ptr %35, align 2
  %37 = call i32 @ps2_command(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 12497) #6
  store i8 17, ptr %3, align 4
  store i8 9, ptr %9, align 1
  store i8 -61, ptr %35, align 2
  %38 = call i32 @ps2_command(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 12497) #6
  store i8 0, ptr %3, align 4
  %39 = call i32 @ps2_command(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 5073) #6
  %40 = icmp eq i32 %39, 0
  %41 = load i8, ptr %3, align 4
  %42 = icmp eq i8 %41, 6
  %43 = select i1 %40, i1 %42, i1 false
  %44 = load i8, ptr %9, align 1
  %45 = icmp eq i8 %44, 0
  %46 = select i1 %43, i1 %45, i1 false
  %47 = load i8, ptr %35, align 2
  %48 = icmp eq i8 %47, 20
  %49 = select i1 %46, i1 %48, i1 false
  br label %81

50:                                               ; preds = %31
  %51 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 2
  store i8 0, ptr %51, align 2
  store i8 0, ptr %9, align 1
  store i8 0, ptr %3, align 4
  %52 = call i32 @ps2_sliced_command(ptr noundef %4, i8 noundef zeroext 57) #6
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = call i32 @ps2_command(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 1003) #6
  br label %56

56:                                               ; preds = %54, %50
  %57 = call i32 @ps2_sliced_command(ptr noundef %4, i8 noundef zeroext -37) #6
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = call i32 @ps2_command(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 1003) #6
  br label %61

61:                                               ; preds = %59, %56
  %62 = load i8, ptr %3, align 4
  %63 = and i8 %62, 120
  %64 = icmp eq i8 %63, 72
  br i1 %64, label %65, label %81

65:                                               ; preds = %61
  %66 = load i8, ptr %9, align 1
  %67 = zext i8 %66 to i32
  %68 = and i32 %67, 243
  %69 = icmp eq i32 %68, 194
  br i1 %69, label %70, label %81

70:                                               ; preds = %65
  %71 = load i8, ptr %51, align 2
  %72 = and i8 %71, 3
  %73 = zext i8 %72 to i32
  %74 = lshr i32 %67, 2
  %75 = and i32 %74, 3
  %76 = icmp eq i32 %75, %73
  br i1 %76, label %85, label %81

77:                                               ; preds = %29, %21
  %78 = load ptr, ptr %4, align 4
  %79 = getelementptr inbounds %struct.serio, ptr %78, i32 0, i32 18
  %80 = zext i8 %16 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %79, ptr noundef nonnull @.str, i32 noundef %80) #7
  br label %81

81:                                               ; preds = %77, %70, %65, %61, %34
  %82 = phi i1 [ false, %70 ], [ false, %65 ], [ false, %61 ], [ true, %77 ], [ false, %34 ]
  %83 = phi ptr [ %26, %70 ], [ %26, %65 ], [ %26, %61 ], [ null, %77 ], [ %26, %34 ]
  %84 = phi i1 [ false, %70 ], [ false, %65 ], [ false, %61 ], [ false, %77 ], [ %49, %34 ]
  br i1 %1, label %90, label %172

85:                                               ; preds = %70
  call fastcc void @ps2pp_set_smartscroll(ptr noundef %0, i1 noundef zeroext false)
  br i1 %1, label %86, label %174

86:                                               ; preds = %85
  %87 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 4
  store ptr @.str.1, ptr %87, align 4
  %88 = zext i8 %16 to i32
  %89 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 14
  store i32 %88, ptr %89, align 4
  br label %94

90:                                               ; preds = %81
  %91 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 4
  store ptr @.str.1, ptr %91, align 4
  %92 = zext i8 %16 to i32
  %93 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 14
  store i32 %92, ptr %93, align 4
  br i1 %84, label %94, label %112

94:                                               ; preds = %90, %86
  %95 = phi i1 [ false, %86 ], [ %82, %90 ]
  %96 = phi ptr [ %26, %86 ], [ %83, %90 ]
  %97 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 26
  store ptr @ps2pp_process_byte, ptr %97, align 4
  %98 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 10
  store i8 3, ptr %98, align 2
  %99 = getelementptr inbounds %struct.ps2pp_info, ptr %96, i32 0, i32 1
  %100 = load i8, ptr %99, align 1
  %101 = icmp eq i8 %100, 3
  br i1 %101, label %112, label %102

102:                                              ; preds = %94
  %103 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 28
  store ptr @ps2pp_set_resolution, ptr %103, align 4
  %104 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 32
  store ptr @ps2pp_disconnect, ptr %104, align 4
  %105 = load ptr, ptr %4, align 4
  %106 = getelementptr inbounds %struct.serio, ptr %105, i32 0, i32 18
  %107 = call i32 @device_create_file(ptr noundef %106, ptr noundef nonnull @psmouse_attr_smartscroll) #6
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %102
  %110 = load ptr, ptr %4, align 4
  %111 = getelementptr inbounds %struct.serio, ptr %110, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %111, ptr noundef nonnull @.str.2, i32 noundef %107) #7
  br label %175

112:                                              ; preds = %102, %94, %90
  %113 = phi i1 [ %82, %90 ], [ %95, %102 ], [ %95, %94 ]
  %114 = phi i1 [ false, %90 ], [ true, %102 ], [ true, %94 ]
  %115 = phi ptr [ %83, %90 ], [ %96, %102 ], [ %96, %94 ]
  %116 = icmp ugt i8 %17, 2
  br i1 %116, label %117, label %120

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 1
  %119 = load ptr, ptr %118, align 4
  call void @input_set_capability(ptr noundef %119, i32 noundef 1, i32 noundef 274) #6
  br label %120

120:                                              ; preds = %117, %112
  br i1 %113, label %172, label %121

121:                                              ; preds = %120
  %122 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 1
  %123 = load ptr, ptr %122, align 4
  %124 = getelementptr inbounds %struct.ps2pp_info, ptr %115, i32 0, i32 2
  %125 = load i16, ptr %124, align 2
  %126 = and i16 %125, 4
  %127 = icmp eq i16 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %121
  call void @input_set_capability(ptr noundef %123, i32 noundef 1, i32 noundef 275) #6
  %129 = load i16, ptr %124, align 2
  br label %130

130:                                              ; preds = %128, %121
  %131 = phi i16 [ %129, %128 ], [ %125, %121 ]
  %132 = and i16 %131, 8
  %133 = icmp eq i16 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %130
  call void @input_set_capability(ptr noundef %123, i32 noundef 1, i32 noundef 276) #6
  %135 = load i16, ptr %124, align 2
  br label %136

136:                                              ; preds = %134, %130
  %137 = phi i16 [ %135, %134 ], [ %131, %130 ]
  %138 = and i16 %137, 16
  %139 = icmp eq i16 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %136
  call void @input_set_capability(ptr noundef %123, i32 noundef 1, i32 noundef 279) #6
  %141 = load i16, ptr %124, align 2
  br label %142

142:                                              ; preds = %140, %136
  %143 = phi i16 [ %141, %140 ], [ %137, %136 ]
  %144 = and i16 %143, 32
  %145 = icmp eq i16 %144, 0
  br i1 %145, label %148, label %146

146:                                              ; preds = %142
  call void @input_set_capability(ptr noundef %123, i32 noundef 1, i32 noundef 277) #6
  call void @input_set_capability(ptr noundef %123, i32 noundef 1, i32 noundef 278) #6
  %147 = load i16, ptr %124, align 2
  br label %148

148:                                              ; preds = %146, %142
  %149 = phi i16 [ %147, %146 ], [ %143, %142 ]
  %150 = and i16 %149, 1
  %151 = icmp eq i16 %150, 0
  br i1 %151, label %154, label %152

152:                                              ; preds = %148
  call void @input_set_capability(ptr noundef %123, i32 noundef 2, i32 noundef 8) #6
  %153 = load i16, ptr %124, align 2
  br label %154

154:                                              ; preds = %152, %148
  %155 = phi i16 [ %153, %152 ], [ %149, %148 ]
  %156 = and i16 %155, 2
  %157 = icmp eq i16 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %154
  call void @input_set_capability(ptr noundef %123, i32 noundef 2, i32 noundef 6) #6
  br label %159

159:                                              ; preds = %158, %154
  %160 = getelementptr inbounds %struct.ps2pp_info, ptr %115, i32 0, i32 1
  %161 = load i8, ptr %160, align 1
  %162 = add i8 %161, -1
  %163 = icmp ult i8 %162, 4
  br i1 %163, label %167, label %164

164:                                              ; preds = %159
  br i1 %114, label %165, label %175

165:                                              ; preds = %164
  %166 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 5
  store ptr @.str.9, ptr %166, align 4
  br label %174

167:                                              ; preds = %159
  %168 = sext i8 %162 to i32
  %169 = getelementptr inbounds [4 x ptr], ptr @switch.table.ps2pp_detect, i32 0, i32 %168
  %170 = load ptr, ptr %169, align 4
  %171 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 5
  store ptr %170, ptr %171, align 4
  br i1 %114, label %174, label %175

172:                                              ; preds = %120, %81
  %173 = phi i1 [ %114, %120 ], [ %84, %81 ]
  br i1 %173, label %174, label %175

174:                                              ; preds = %172, %167, %165, %85
  br label %175

175:                                              ; preds = %174, %172, %167, %164, %109, %2
  %176 = phi i32 [ -6, %2 ], [ %107, %109 ], [ 0, %174 ], [ -6, %172 ], [ -6, %167 ], [ -6, %164 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret i32 %176
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ps2_command(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ps2pp_set_smartscroll(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca [4 x i8], align 4
  %4 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  %5 = tail call i32 @ps2_sliced_command(ptr noundef %4, i8 noundef zeroext 50) #6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = call i32 @ps2_command(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 1003) #6
  br label %9

9:                                                ; preds = %7, %2
  %10 = zext i1 %1 to i8
  store i8 0, ptr %3, align 4
  %11 = call i32 @ps2_command(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 4328) #6
  %12 = call i32 @ps2_command(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 4328) #6
  %13 = call i32 @ps2_command(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 4328) #6
  store i8 %10, ptr %3, align 4
  %14 = call i32 @ps2_command(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 4328) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ps2_sliced_command(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ps2pp_process_byte(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 7
  %5 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 9
  %6 = load i8, ptr %5, align 1
  %7 = icmp ult i8 %6, 3
  br i1 %7, label %78, label %8

8:                                                ; preds = %1
  %9 = load i8, ptr %4, align 1
  %10 = zext i8 %9 to i32
  %11 = and i32 %10, 72
  %12 = icmp eq i32 %11, 72
  br i1 %12, label %13, label %76

13:                                               ; preds = %8
  %14 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 1
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = and i32 %16, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %76, label %19

19:                                               ; preds = %13
  %20 = lshr i32 %16, 4
  %21 = and i32 %10, 48
  %22 = or i32 %20, %21
  switch i32 %22, label %74 [
    i32 13, label %23
    i32 14, label %41
    i32 15, label %62
  ]

23:                                               ; preds = %19
  %24 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 2
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = and i32 %26, 128
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, i32 8, i32 6
  %30 = shl i32 %26, 28
  %31 = ashr exact i32 %30, 28
  %32 = sub nsw i32 0, %31
  tail call void @input_event(ptr noundef %3, i32 noundef 2, i32 noundef %29, i32 noundef %32) #6
  %33 = load i8, ptr %24, align 1
  %34 = lshr i8 %33, 4
  %35 = and i8 %34, 1
  %36 = zext i8 %35 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 275, i32 noundef %36) #6
  %37 = load i8, ptr %24, align 1
  %38 = lshr i8 %37, 5
  %39 = and i8 %38, 1
  %40 = zext i8 %39 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 276, i32 noundef %40) #6
  br label %74

41:                                               ; preds = %19
  %42 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 2
  %43 = load i8, ptr %42, align 1
  %44 = and i8 %43, 1
  %45 = zext i8 %44 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 275, i32 noundef %45) #6
  %46 = load i8, ptr %42, align 1
  %47 = lshr i8 %46, 1
  %48 = and i8 %47, 1
  %49 = zext i8 %48 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 276, i32 noundef %49) #6
  %50 = load i8, ptr %42, align 1
  %51 = lshr i8 %50, 2
  %52 = and i8 %51, 1
  %53 = zext i8 %52 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 279, i32 noundef %53) #6
  %54 = load i8, ptr %42, align 1
  %55 = lshr i8 %54, 3
  %56 = and i8 %55, 1
  %57 = zext i8 %56 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 278, i32 noundef %57) #6
  %58 = load i8, ptr %42, align 1
  %59 = lshr i8 %58, 4
  %60 = and i8 %59, 1
  %61 = zext i8 %60 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 277, i32 noundef %61) #6
  br label %74

62:                                               ; preds = %19
  %63 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 2
  %64 = load i8, ptr %63, align 1
  %65 = zext i8 %64 to i32
  %66 = and i32 %65, 8
  %67 = icmp eq i32 %66, 0
  %68 = select i1 %67, i32 8, i32 6
  %69 = shl nuw i32 %65, 24
  %70 = ashr i32 %69, 28
  %71 = sub nsw i32 0, %70
  tail call void @input_event(ptr noundef %3, i32 noundef 2, i32 noundef %68, i32 noundef %71) #6
  %72 = load i8, ptr %63, align 1
  %73 = or i8 %72, 8
  store i8 %73, ptr %4, align 1
  br label %74

74:                                               ; preds = %62, %41, %23, %19
  %75 = load i8, ptr %4, align 1
  tail call void @psmouse_report_standard_buttons(ptr noundef %3, i8 noundef zeroext %75) #6
  br label %77

76:                                               ; preds = %13, %8
  tail call void @psmouse_report_standard_packet(ptr noundef %3, ptr noundef %4) #6
  br label %77

77:                                               ; preds = %76, %74
  tail call void @input_event(ptr noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %78

78:                                               ; preds = %77, %1
  %79 = phi i32 [ 2, %77 ], [ 1, %1 ]
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ps2pp_set_resolution(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = icmp ugt i32 %1, 400
  br i1 %4, label %5, label %12

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #6
  store i8 3, ptr %3, align 1
  %7 = tail call i32 @ps2_command(ptr noundef %6, ptr noundef null, i32 noundef 230) #6
  %8 = tail call i32 @ps2_command(ptr noundef %6, ptr noundef null, i32 noundef 230) #6
  %9 = tail call i32 @ps2_command(ptr noundef %6, ptr noundef null, i32 noundef 230) #6
  %10 = call i32 @ps2_command(ptr noundef %6, ptr noundef nonnull %3, i32 noundef 4328) #6
  %11 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 22
  store i32 800, ptr %11, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #6
  br label %13

12:                                               ; preds = %2
  tail call void @psmouse_set_resolution(ptr noundef %0, i32 noundef %1) #6
  br label %13

13:                                               ; preds = %12, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ps2pp_disconnect(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.serio, ptr %3, i32 0, i32 18
  tail call void @device_remove_file(ptr noundef %4, ptr noundef nonnull @psmouse_attr_smartscroll) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @psmouse_report_standard_buttons(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @psmouse_report_standard_packet(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @psmouse_set_resolution(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psmouse_attr_show_helper(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psmouse_attr_set_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ps2pp_attr_show_smartscroll(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 25
  %5 = load i8, ptr %4, align 4, !range !9
  %6 = zext i8 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ps2pp_attr_set_smartscroll(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = call i32 @kstrtouint(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %4
  %9 = load i32, ptr %5, align 4
  %10 = icmp ugt i32 %9, 1
  br i1 %10, label %17, label %11

11:                                               ; preds = %8
  %12 = icmp ne i32 %9, 0
  call fastcc void @ps2pp_set_smartscroll(ptr noundef %0, i1 noundef zeroext %12)
  %13 = load i32, ptr %5, align 4
  %14 = icmp ne i32 %13, 0
  %15 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 25
  %16 = zext i1 %14 to i8
  store i8 %16, ptr %15, align 4
  br label %17

17:                                               ; preds = %11, %8, %4
  %18 = phi i32 [ %3, %11 ], [ %6, %4 ], [ -22, %8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  ret i32 %18
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
