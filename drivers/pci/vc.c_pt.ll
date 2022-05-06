; ModuleID = '/llk/IR/drivers/pci/vc.c_pt.bc'
source_filename = "../drivers/pci/vc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon.65 = type { i16, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%struct.pci_cap_saved_state = type { %struct.hlist_node, %struct.pci_cap_saved_data }
%struct.hlist_node = type { ptr, ptr }
%struct.pci_cap_saved_data = type { i16, i8, i32, [0 x i32] }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }

@vc_caps = internal unnamed_addr constant [3 x %struct.anon.65] [%struct.anon.65 { i16 8, ptr @.str.3 }, %struct.anon.65 { i16 2, ptr @.str.4 }, %struct.anon.65 { i16 9, ptr @.str.5 }], align 4
@.str = private unnamed_addr constant [27 x i8] c"%s buffer not found in %s\0A\00", align 1
@__func__.pci_save_vc_state = private unnamed_addr constant [18 x i8] c"pci_save_vc_state\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"%s save unsuccessful %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"unable to preallocate %s save buffer\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"MFVC\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"VC\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"VC9\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"VC save buffer size does not match @0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"VC arbitration table failed to load\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"VC%d port arbitration table failed to load\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"VC%d negotiation stuck pending\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_save_vc_state(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call zeroext i16 @pci_find_ext_capability(ptr noundef %0, i32 noundef 8) #4
  %3 = zext i16 %2 to i32
  %4 = icmp eq i16 %2, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @pci_find_saved_ext_cap(ptr noundef %0, i16 noundef zeroext 8) #4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %31, label %8

8:                                                ; preds = %5
  %9 = tail call fastcc i32 @pci_vc_do_save_buffer(ptr noundef %0, i32 noundef %3, ptr noundef nonnull %6, i1 noundef zeroext true)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %8, %1
  %12 = tail call zeroext i16 @pci_find_ext_capability(ptr noundef %0, i32 noundef 2) #4
  %13 = zext i16 %12 to i32
  %14 = icmp eq i16 %12, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = tail call ptr @pci_find_saved_ext_cap(ptr noundef %0, i16 noundef zeroext 2) #4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %15
  %19 = tail call fastcc i32 @pci_vc_do_save_buffer(ptr noundef %0, i32 noundef %13, ptr noundef nonnull %16, i1 noundef zeroext true)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %18, %11
  %22 = tail call zeroext i16 @pci_find_ext_capability(ptr noundef %0, i32 noundef 9) #4
  %23 = zext i16 %22 to i32
  %24 = icmp eq i16 %22, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %21
  %26 = tail call ptr @pci_find_saved_ext_cap(ptr noundef %0, i16 noundef zeroext 9) #4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = tail call fastcc i32 @pci_vc_do_save_buffer(ptr noundef %0, i32 noundef %23, ptr noundef nonnull %26, i1 noundef zeroext true)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %28, %25, %18, %15, %8, %5
  %32 = phi i32 [ 0, %5 ], [ 1, %15 ], [ 2, %25 ], [ 0, %8 ], [ 1, %18 ], [ 2, %28 ]
  %33 = phi ptr [ @.str, %5 ], [ @.str, %15 ], [ @.str, %25 ], [ @.str.1, %8 ], [ @.str.1, %18 ], [ @.str.1, %28 ]
  %34 = phi i32 [ -12, %5 ], [ -12, %15 ], [ -12, %25 ], [ %9, %8 ], [ %19, %18 ], [ %29, %28 ]
  %35 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %36 = getelementptr [3 x %struct.anon.65], ptr @vc_caps, i32 0, i32 %32, i32 1
  %37 = load ptr, ptr %36, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull %33, ptr noundef %37, ptr noundef nonnull @__func__.pci_save_vc_state) #5
  br label %38

38:                                               ; preds = %31, %28, %21
  %39 = phi i32 [ 0, %28 ], [ 0, %21 ], [ %34, %31 ]
  ret i32 %39
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @pci_find_ext_capability(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_find_saved_ext_cap(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pci_vc_do_save_buffer(ptr noundef %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #4
  store i32 0, ptr %11, align 4, !annotation !8
  %15 = icmp eq ptr %2, null
  %16 = getelementptr inbounds %struct.pci_cap_saved_state, ptr %2, i32 1
  %17 = select i1 %15, ptr null, ptr %16
  %18 = icmp eq ptr %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.pci_cap_saved_state, ptr %2, i32 0, i32 1, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = tail call fastcc i32 @pci_vc_do_save_buffer(ptr noundef %0, i32 noundef %1, ptr noundef null, i1 noundef zeroext %3)
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.6, i32 noundef %1) #5
  br label %376

26:                                               ; preds = %19, %4
  %27 = add i32 %1, 4
  %28 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %27, ptr noundef nonnull %11) #4
  %29 = load i32, ptr %11, align 4
  %30 = and i32 %29, 7
  %31 = trunc i32 %29 to i8
  %32 = lshr i8 %31, 4
  %33 = and i8 %32, 7
  %34 = lshr i32 %29, 10
  %35 = and i32 %34, 3
  br i1 %18, label %45, label %36

36:                                               ; preds = %26
  %37 = add i32 %1, 12
  br i1 %3, label %38, label %40

38:                                               ; preds = %36
  %39 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef %37, ptr noundef nonnull %17) #4
  br label %43

40:                                               ; preds = %36
  %41 = load i16, ptr %17, align 2
  %42 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef %37, i16 noundef zeroext %41) #4
  br label %43

43:                                               ; preds = %40, %38
  %44 = getelementptr i8, ptr %17, i32 4
  br label %45

45:                                               ; preds = %43, %26
  %46 = phi ptr [ %44, %43 ], [ null, %26 ]
  %47 = icmp eq i8 %33, 0
  br i1 %47, label %113, label %48

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #4
  store i32 0, ptr %12, align 4, !annotation !8
  %49 = add i32 %1, 8
  %50 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %49, ptr noundef nonnull %12) #4
  %51 = load i32, ptr %12, align 4
  %52 = lshr i32 %51, 20
  %53 = and i32 %52, 4080
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %110, label %55

55:                                               ; preds = %48
  %56 = and i32 %51, 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = and i32 %51, 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = shl i32 %51, 4
  %63 = and i32 %62, 32
  br label %64

64:                                               ; preds = %61, %58, %55
  %65 = phi i32 [ 128, %55 ], [ 64, %58 ], [ %63, %61 ]
  %66 = add nuw nsw i8 %33, 1
  %67 = zext i8 %66 to i32
  %68 = mul nuw nsw i32 %65, %67
  %69 = lshr exact i32 %68, 1
  %70 = icmp ne i32 %68, 0
  %71 = icmp ne ptr %46, null
  %72 = select i1 %70, i1 %71, i1 false
  br i1 %72, label %73, label %107

73:                                               ; preds = %64
  %74 = add i32 %53, %1
  %75 = lshr exact i32 %68, 3
  br label %76

76:                                               ; preds = %85, %73
  %77 = phi i32 [ 0, %73 ], [ %86, %85 ]
  %78 = phi ptr [ %46, %73 ], [ %87, %85 ]
  %79 = shl i32 %77, 2
  %80 = add i32 %74, %79
  br i1 %3, label %81, label %88

81:                                               ; preds = %76
  %82 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %80, ptr noundef %78) #4
  %83 = add nuw nsw i32 %77, 1
  %84 = icmp eq i32 %83, %75
  br i1 %84, label %105, label %85

85:                                               ; preds = %88, %81
  %86 = phi i32 [ %83, %81 ], [ %91, %88 ]
  %87 = getelementptr i32, ptr %78, i32 1
  br label %76

88:                                               ; preds = %76
  %89 = load i32, ptr %78, align 4
  %90 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef %80, i32 noundef %89) #4
  %91 = add nuw nsw i32 %77, 1
  %92 = icmp eq i32 %91, %75
  br i1 %92, label %93, label %85

93:                                               ; preds = %88
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #4
  store i16 0, ptr %10, align 2, !annotation !8
  %94 = add i32 %1, 12
  %95 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef %94, ptr noundef nonnull %10) #4
  %96 = load i16, ptr %10, align 2
  %97 = or i16 %96, 1
  %98 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef %94, i16 noundef zeroext %97) #4
  %99 = add i32 %1, 14
  %100 = call i32 @pci_wait_for_pending(ptr noundef %0, i32 noundef %99, i16 noundef zeroext 1) #4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %93
  %103 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.7) #5
  br label %104

104:                                              ; preds = %102, %93
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #4
  br label %105

105:                                              ; preds = %104, %81
  %106 = getelementptr i8, ptr %46, i32 %69
  br label %107

107:                                              ; preds = %105, %64
  %108 = phi ptr [ %106, %105 ], [ %46, %64 ]
  %109 = or i32 %69, 4
  br label %110

110:                                              ; preds = %107, %48
  %111 = phi i32 [ %109, %107 ], [ 4, %48 ]
  %112 = phi ptr [ %108, %107 ], [ %46, %48 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #4
  br label %113

113:                                              ; preds = %110, %45
  %114 = phi i32 [ %111, %110 ], [ 4, %45 ]
  %115 = phi ptr [ %112, %110 ], [ %46, %45 ]
  %116 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %117 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 18
  %118 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 24
  %119 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  br label %120

120:                                              ; preds = %368, %113
  %121 = phi ptr [ %115, %113 ], [ %369, %368 ]
  %122 = phi i32 [ %114, %113 ], [ %370, %368 ]
  %123 = phi i32 [ 0, %113 ], [ %371, %368 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #4
  store i32 0, ptr %13, align 4, !annotation !8
  %124 = mul nuw nsw i32 %123, 12
  %125 = add i32 %124, %1
  %126 = add i32 %125, 16
  %127 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %126, ptr noundef nonnull %13) #4
  %128 = load i32, ptr %13, align 4
  %129 = lshr i32 %128, 20
  %130 = and i32 %129, 4080
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %173, label %132

132:                                              ; preds = %120
  %133 = and i32 %128, 32
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %132
  %136 = and i32 %128, 24
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %135
  %139 = and i32 %128, 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = shl i32 %128, 4
  %143 = and i32 %142, 32
  br label %144

144:                                              ; preds = %141, %138, %135, %132
  %145 = phi i32 [ 256, %132 ], [ 128, %135 ], [ 64, %138 ], [ %143, %141 ]
  %146 = shl i32 %145, %35
  %147 = lshr exact i32 %146, 3
  %148 = icmp ne i32 %146, 0
  %149 = icmp ne ptr %121, null
  %150 = select i1 %148, i1 %149, i1 false
  br i1 %150, label %151, label %170

151:                                              ; preds = %144
  %152 = add i32 %130, %1
  %153 = lshr exact i32 %146, 5
  br label %154

154:                                              ; preds = %164, %151
  %155 = phi i32 [ %165, %164 ], [ 0, %151 ]
  %156 = phi ptr [ %166, %164 ], [ %121, %151 ]
  %157 = shl i32 %155, 2
  %158 = add i32 %152, %157
  br i1 %3, label %159, label %161

159:                                              ; preds = %154
  %160 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %158, ptr noundef %156) #4
  br label %164

161:                                              ; preds = %154
  %162 = load i32, ptr %156, align 4
  %163 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef %158, i32 noundef %162) #4
  br label %164

164:                                              ; preds = %161, %159
  %165 = add nuw nsw i32 %155, 1
  %166 = getelementptr i32, ptr %156, i32 1
  %167 = icmp eq i32 %165, %153
  br i1 %167, label %168, label %154

168:                                              ; preds = %164
  %169 = getelementptr i8, ptr %121, i32 %147
  br label %170

170:                                              ; preds = %168, %144
  %171 = phi ptr [ %169, %168 ], [ %121, %144 ]
  %172 = add i32 %147, %122
  br label %173

173:                                              ; preds = %170, %120
  %174 = phi i32 [ %172, %170 ], [ %122, %120 ]
  %175 = phi ptr [ %171, %170 ], [ %121, %120 ]
  %176 = icmp eq ptr %175, null
  br i1 %176, label %368, label %177

177:                                              ; preds = %173
  %178 = add i32 %125, 20
  br i1 %3, label %179, label %181

179:                                              ; preds = %177
  %180 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %178, ptr noundef nonnull %175) #4
  br label %366

181:                                              ; preds = %177
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #4
  store i32 0, ptr %14, align 4, !annotation !8
  %182 = load i32, ptr %175, align 4
  %183 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %178, ptr noundef nonnull %14) #4
  %184 = load i32, ptr %14, align 4
  %185 = and i32 %184, -2147483648
  %186 = and i32 %182, 2147483647
  %187 = or i32 %185, %186
  store i32 %187, ptr %14, align 4
  %188 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef %178, i32 noundef %187) #4
  %189 = and i32 %182, 917504
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %201, label %191

191:                                              ; preds = %181
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #4
  store i32 0, ptr %9, align 4, !annotation !8
  %192 = add i32 %125, 26
  %193 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %178, ptr noundef nonnull %9) #4
  %194 = load i32, ptr %9, align 4
  %195 = or i32 %194, 65536
  %196 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef %178, i32 noundef %195) #4
  %197 = call i32 @pci_wait_for_pending(ptr noundef %0, i32 noundef %192, i16 noundef zeroext 1) #4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %191
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %116, ptr noundef nonnull @.str.8, i32 noundef %123) #5
  br label %200

200:                                              ; preds = %199, %191
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #4
  br label %201

201:                                              ; preds = %200, %181
  %202 = load i32, ptr %14, align 4
  %203 = xor i32 %202, %182
  %204 = icmp sgt i32 %203, -1
  br i1 %204, label %365, label %205

205:                                              ; preds = %201
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #4
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #4
  store i32 0, ptr %6, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #4
  store i32 0, ptr %7, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #4
  store i32 0, ptr %8, align 4, !annotation !8
  %206 = load i8, ptr %117, align 4
  %207 = icmp eq i8 %206, 0
  br i1 %207, label %364, label %208

208:                                              ; preds = %205
  %209 = load i16, ptr %118, align 2
  %210 = and i16 %209, 208
  %211 = icmp eq i16 %210, 64
  %212 = and i16 %209, 240
  %213 = icmp eq i16 %212, 128
  %214 = or i1 %211, %213
  br i1 %214, label %215, label %364

215:                                              ; preds = %208
  %216 = add i32 %125, 26
  %217 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %178, ptr noundef nonnull %5) #4
  %218 = load i32, ptr %5, align 4
  %219 = and i32 %218, 117440512
  %220 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %6) #4
  %221 = load i32, ptr %6, align 4
  %222 = and i32 %221, 65535
  %223 = icmp eq i32 %222, 9
  br i1 %223, label %348, label %224

224:                                              ; preds = %215
  %225 = load ptr, ptr %119, align 8
  %226 = getelementptr inbounds %struct.pci_bus, ptr %225, i32 0, i32 1
  %227 = load ptr, ptr %226, align 8
  %228 = icmp eq ptr %227, null
  br i1 %228, label %348, label %229

229:                                              ; preds = %224
  %230 = getelementptr inbounds %struct.pci_bus, ptr %225, i32 0, i32 4
  %231 = load ptr, ptr %230, align 4
  %232 = call zeroext i16 @pci_find_ext_capability(ptr noundef %231, i32 noundef 2) #4
  %233 = zext i16 %232 to i32
  %234 = icmp eq i16 %232, 0
  br i1 %234, label %348, label %235

235:                                              ; preds = %229
  %236 = load ptr, ptr %119, align 8
  %237 = getelementptr inbounds %struct.pci_bus, ptr %236, i32 0, i32 4
  %238 = load ptr, ptr %237, align 4
  %239 = add nuw nsw i32 %233, 4
  %240 = call i32 @pci_read_config_dword(ptr noundef %238, i32 noundef %239, ptr noundef nonnull %7) #4
  %241 = load i32, ptr %7, align 4
  %242 = and i32 %241, 7
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %348, label %244

244:                                              ; preds = %235
  %245 = mul nuw nsw i32 %242, 12
  %246 = add nuw nsw i32 %233, 26
  %247 = add nuw nsw i32 %246, %245
  %248 = add nuw nsw i32 %233, 12
  %249 = add nuw nsw i32 %233, 32
  %250 = load ptr, ptr %119, align 8
  %251 = getelementptr inbounds %struct.pci_bus, ptr %250, i32 0, i32 4
  %252 = load ptr, ptr %251, align 4
  %253 = call i32 @pci_read_config_dword(ptr noundef %252, i32 noundef %249, ptr noundef nonnull %8) #4
  %254 = load i32, ptr %8, align 4
  %255 = and i32 %254, 117440512
  %256 = icmp eq i32 %255, %219
  br i1 %256, label %329, label %257

257:                                              ; preds = %244
  %258 = icmp eq i32 %242, 1
  br i1 %258, label %348, label %259

259:                                              ; preds = %257
  %260 = add nuw nsw i32 %233, 24
  %261 = add nuw nsw i32 %233, 44
  %262 = load ptr, ptr %119, align 8
  %263 = getelementptr inbounds %struct.pci_bus, ptr %262, i32 0, i32 4
  %264 = load ptr, ptr %263, align 4
  %265 = call i32 @pci_read_config_dword(ptr noundef %264, i32 noundef %261, ptr noundef nonnull %8) #4
  %266 = load i32, ptr %8, align 4
  %267 = and i32 %266, 117440512
  %268 = icmp eq i32 %267, %219
  br i1 %268, label %329, label %269

269:                                              ; preds = %259
  %270 = icmp eq i32 %242, 2
  br i1 %270, label %348, label %271

271:                                              ; preds = %269
  %272 = add nuw nsw i32 %233, 36
  %273 = add nuw nsw i32 %233, 56
  %274 = load ptr, ptr %119, align 8
  %275 = getelementptr inbounds %struct.pci_bus, ptr %274, i32 0, i32 4
  %276 = load ptr, ptr %275, align 4
  %277 = call i32 @pci_read_config_dword(ptr noundef %276, i32 noundef %273, ptr noundef nonnull %8) #4
  %278 = load i32, ptr %8, align 4
  %279 = and i32 %278, 117440512
  %280 = icmp eq i32 %279, %219
  br i1 %280, label %329, label %281

281:                                              ; preds = %271
  %282 = icmp eq i32 %242, 3
  br i1 %282, label %348, label %283

283:                                              ; preds = %281
  %284 = add nuw nsw i32 %233, 48
  %285 = add nuw nsw i32 %233, 68
  %286 = load ptr, ptr %119, align 8
  %287 = getelementptr inbounds %struct.pci_bus, ptr %286, i32 0, i32 4
  %288 = load ptr, ptr %287, align 4
  %289 = call i32 @pci_read_config_dword(ptr noundef %288, i32 noundef %285, ptr noundef nonnull %8) #4
  %290 = load i32, ptr %8, align 4
  %291 = and i32 %290, 117440512
  %292 = icmp eq i32 %291, %219
  br i1 %292, label %329, label %293

293:                                              ; preds = %283
  %294 = icmp eq i32 %242, 4
  br i1 %294, label %348, label %295

295:                                              ; preds = %293
  %296 = add nuw nsw i32 %233, 60
  %297 = add nuw nsw i32 %233, 80
  %298 = load ptr, ptr %119, align 8
  %299 = getelementptr inbounds %struct.pci_bus, ptr %298, i32 0, i32 4
  %300 = load ptr, ptr %299, align 4
  %301 = call i32 @pci_read_config_dword(ptr noundef %300, i32 noundef %297, ptr noundef nonnull %8) #4
  %302 = load i32, ptr %8, align 4
  %303 = and i32 %302, 117440512
  %304 = icmp eq i32 %303, %219
  br i1 %304, label %329, label %305

305:                                              ; preds = %295
  %306 = icmp eq i32 %242, 5
  br i1 %306, label %348, label %307

307:                                              ; preds = %305
  %308 = add nuw nsw i32 %233, 72
  %309 = add nuw nsw i32 %233, 92
  %310 = load ptr, ptr %119, align 8
  %311 = getelementptr inbounds %struct.pci_bus, ptr %310, i32 0, i32 4
  %312 = load ptr, ptr %311, align 4
  %313 = call i32 @pci_read_config_dword(ptr noundef %312, i32 noundef %309, ptr noundef nonnull %8) #4
  %314 = load i32, ptr %8, align 4
  %315 = and i32 %314, 117440512
  %316 = icmp eq i32 %315, %219
  br i1 %316, label %329, label %317

317:                                              ; preds = %307
  %318 = icmp eq i32 %242, 6
  br i1 %318, label %348, label %319

319:                                              ; preds = %317
  %320 = add nuw nsw i32 %233, 84
  %321 = add nuw nsw i32 %233, 104
  %322 = load ptr, ptr %119, align 8
  %323 = getelementptr inbounds %struct.pci_bus, ptr %322, i32 0, i32 4
  %324 = load ptr, ptr %323, align 4
  %325 = call i32 @pci_read_config_dword(ptr noundef %324, i32 noundef %321, ptr noundef nonnull %8) #4
  %326 = load i32, ptr %8, align 4
  %327 = and i32 %326, 117440512
  %328 = icmp eq i32 %327, %219
  br i1 %328, label %329, label %348

329:                                              ; preds = %319, %307, %295, %283, %271, %259, %244
  %330 = phi i32 [ %248, %244 ], [ %260, %259 ], [ %272, %271 ], [ %284, %283 ], [ %296, %295 ], [ %308, %307 ], [ %320, %319 ]
  %331 = phi i32 [ %249, %244 ], [ %261, %259 ], [ %273, %271 ], [ %285, %283 ], [ %297, %295 ], [ %309, %307 ], [ %321, %319 ]
  %332 = phi i32 [ %254, %244 ], [ %266, %259 ], [ %278, %271 ], [ %290, %283 ], [ %302, %295 ], [ %314, %307 ], [ %326, %319 ]
  %333 = add nuw nsw i32 %330, 26
  %334 = load ptr, ptr %119, align 8
  %335 = getelementptr inbounds %struct.pci_bus, ptr %334, i32 0, i32 4
  %336 = load ptr, ptr %335, align 4
  %337 = icmp eq ptr %336, null
  br i1 %337, label %348, label %338

338:                                              ; preds = %329
  %339 = icmp sgt i32 %332, -1
  br i1 %339, label %344, label %340

340:                                              ; preds = %338
  %341 = and i32 %332, 2147483647
  store i32 %341, ptr %8, align 4
  %342 = call i32 @pci_write_config_dword(ptr noundef nonnull %336, i32 noundef %331, i32 noundef %341) #4
  %343 = load i32, ptr %8, align 4
  br label %344

344:                                              ; preds = %340, %338
  %345 = phi i32 [ %343, %340 ], [ %332, %338 ]
  %346 = or i32 %345, -2147483648
  store i32 %346, ptr %8, align 4
  %347 = call i32 @pci_write_config_dword(ptr noundef nonnull %336, i32 noundef %331, i32 noundef %346) #4
  br label %348

348:                                              ; preds = %344, %329, %319, %317, %305, %293, %281, %269, %257, %235, %229, %224, %215
  %349 = phi i32 [ 0, %215 ], [ 0, %224 ], [ %333, %344 ], [ %333, %329 ], [ 0, %229 ], [ 0, %235 ], [ %247, %319 ], [ %247, %317 ], [ %247, %305 ], [ %247, %293 ], [ %247, %281 ], [ %247, %269 ], [ %247, %257 ]
  %350 = phi ptr [ null, %215 ], [ null, %224 ], [ %336, %344 ], [ null, %329 ], [ null, %229 ], [ null, %235 ], [ null, %319 ], [ null, %317 ], [ null, %305 ], [ null, %293 ], [ null, %281 ], [ null, %269 ], [ null, %257 ]
  %351 = load i32, ptr %5, align 4
  %352 = or i32 %351, -2147483648
  store i32 %352, ptr %5, align 4
  %353 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef %178, i32 noundef %352) #4
  %354 = call i32 @pci_wait_for_pending(ptr noundef %0, i32 noundef %216, i16 noundef zeroext 2) #4
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %356, label %357

356:                                              ; preds = %348
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %116, ptr noundef nonnull @.str.9, i32 noundef %219) #5
  br label %357

357:                                              ; preds = %356, %348
  %358 = icmp eq ptr %350, null
  br i1 %358, label %364, label %359

359:                                              ; preds = %357
  %360 = call i32 @pci_wait_for_pending(ptr noundef nonnull %350, i32 noundef %349, i16 noundef zeroext 2) #4
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %362, label %364

362:                                              ; preds = %359
  %363 = getelementptr inbounds %struct.pci_dev, ptr %350, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %363, ptr noundef nonnull @.str.9, i32 noundef %219) #5
  br label %364

364:                                              ; preds = %362, %359, %357, %208, %205
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #4
  br label %365

365:                                              ; preds = %364, %201
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #4
  br label %366

366:                                              ; preds = %365, %179
  %367 = getelementptr i8, ptr %175, i32 4
  br label %368

368:                                              ; preds = %366, %173
  %369 = phi ptr [ %367, %366 ], [ null, %173 ]
  %370 = add i32 %174, 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #4
  %371 = add nuw nsw i32 %123, 1
  %372 = icmp eq i32 %123, %30
  br i1 %372, label %373, label %120

373:                                              ; preds = %368
  %374 = icmp eq ptr %369, null
  %375 = select i1 %374, i32 %370, i32 0
  br label %376

376:                                              ; preds = %373, %24
  %377 = phi i32 [ -12, %24 ], [ %375, %373 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #4
  ret i32 %377
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_restore_vc_state(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call zeroext i16 @pci_find_ext_capability(ptr noundef %0, i32 noundef 8) #4
  %3 = tail call ptr @pci_find_saved_ext_cap(ptr noundef %0, i16 noundef zeroext 8) #4
  %4 = icmp ne ptr %3, null
  %5 = icmp ne i16 %2, 0
  %6 = select i1 %4, i1 %5, i1 false
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = zext i16 %2 to i32
  %9 = tail call fastcc i32 @pci_vc_do_save_buffer(ptr noundef %0, i32 noundef %8, ptr noundef nonnull %3, i1 noundef zeroext false)
  br label %10

10:                                               ; preds = %7, %1
  %11 = tail call zeroext i16 @pci_find_ext_capability(ptr noundef %0, i32 noundef 2) #4
  %12 = tail call ptr @pci_find_saved_ext_cap(ptr noundef %0, i16 noundef zeroext 2) #4
  %13 = icmp ne ptr %12, null
  %14 = icmp ne i16 %11, 0
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = zext i16 %11 to i32
  %18 = tail call fastcc i32 @pci_vc_do_save_buffer(ptr noundef %0, i32 noundef %17, ptr noundef nonnull %12, i1 noundef zeroext false)
  br label %19

19:                                               ; preds = %16, %10
  %20 = tail call zeroext i16 @pci_find_ext_capability(ptr noundef %0, i32 noundef 9) #4
  %21 = tail call ptr @pci_find_saved_ext_cap(ptr noundef %0, i16 noundef zeroext 9) #4
  %22 = icmp ne ptr %21, null
  %23 = icmp ne i16 %20, 0
  %24 = select i1 %22, i1 %23, i1 false
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = zext i16 %20 to i32
  %27 = tail call fastcc i32 @pci_vc_do_save_buffer(ptr noundef %0, i32 noundef %26, ptr noundef nonnull %21, i1 noundef zeroext false)
  br label %28

28:                                               ; preds = %25, %19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_allocate_vc_save_buffers(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %3 = tail call zeroext i16 @pci_find_ext_capability(ptr noundef %0, i32 noundef 8) #4
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = zext i16 %3 to i32
  %7 = tail call fastcc i32 @pci_vc_do_save_buffer(ptr noundef %0, i32 noundef %6, ptr noundef null, i1 noundef zeroext false)
  %8 = tail call i32 @pci_add_ext_cap_save_buffer(ptr noundef %0, i16 noundef zeroext 8, i32 noundef %7) #4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #5
  br label %11

11:                                               ; preds = %10, %5, %1
  %12 = tail call zeroext i16 @pci_find_ext_capability(ptr noundef %0, i32 noundef 2) #4
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = zext i16 %12 to i32
  %16 = tail call fastcc i32 @pci_vc_do_save_buffer(ptr noundef %0, i32 noundef %15, ptr noundef null, i1 noundef zeroext false)
  %17 = tail call i32 @pci_add_ext_cap_save_buffer(ptr noundef %0, i16 noundef zeroext 2, i32 noundef %16) #4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4) #5
  br label %20

20:                                               ; preds = %19, %14, %11
  %21 = tail call zeroext i16 @pci_find_ext_capability(ptr noundef %0, i32 noundef 9) #4
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  %24 = zext i16 %21 to i32
  %25 = tail call fastcc i32 @pci_vc_do_save_buffer(ptr noundef %0, i32 noundef %24, ptr noundef null, i1 noundef zeroext false)
  %26 = tail call i32 @pci_add_ext_cap_save_buffer(ptr noundef %0, i16 noundef zeroext 9, i32 noundef %25) #4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #5
  br label %29

29:                                               ; preds = %28, %23, %20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_add_ext_cap_save_buffer(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_wait_for_pending(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
