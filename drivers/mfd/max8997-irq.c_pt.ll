; ModuleID = '/llk/IR/drivers/mfd/max8997-irq.c_pt.bc'
source_filename = "../drivers/mfd/max8997-irq.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.max8997_irq_data = type { i32, i32 }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.max8997_dev = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, ptr, %struct.mutex, [11 x i32], [11 x i32], [187 x i8], [12 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [25 x i8] c"No interrupt specified.\0A\00", align 1
@max8997_irq_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"&max8997->irqlock\00", align 1
@max8997_mask_reg = internal unnamed_addr constant [11 x i8] c"\08\09\0A\0B\FF\07\08\09\FF\FF\FF", align 1
@max8997_irq_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr @max8997_irq_domain_map, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"could not create irq domain\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"max8997-irq\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Failed to request IRQ %d: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"max8997-ono\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Failed to request ono-IRQ %d: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Failed to read interrupt source: %d\0A\00", align 1
@max8997_irqs = internal unnamed_addr constant [35 x %struct.max8997_irq_data] [%struct.max8997_irq_data { i32 1, i32 0 }, %struct.max8997_irq_data { i32 2, i32 0 }, %struct.max8997_irq_data { i32 8, i32 0 }, %struct.max8997_irq_data { i32 16, i32 0 }, %struct.max8997_irq_data { i32 32, i32 0 }, %struct.max8997_irq_data { i32 64, i32 0 }, %struct.max8997_irq_data { i32 128, i32 0 }, %struct.max8997_irq_data { i32 1, i32 1 }, %struct.max8997_irq_data { i32 2, i32 1 }, %struct.max8997_irq_data { i32 4, i32 1 }, %struct.max8997_irq_data { i32 8, i32 1 }, %struct.max8997_irq_data { i32 16, i32 1 }, %struct.max8997_irq_data { i32 32, i32 1 }, %struct.max8997_irq_data { i32 64, i32 1 }, %struct.max8997_irq_data { i32 1, i32 2 }, %struct.max8997_irq_data { i32 2, i32 2 }, %struct.max8997_irq_data { i32 4, i32 2 }, %struct.max8997_irq_data { i32 8, i32 2 }, %struct.max8997_irq_data { i32 32, i32 2 }, %struct.max8997_irq_data { i32 128, i32 2 }, %struct.max8997_irq_data { i32 1, i32 3 }, %struct.max8997_irq_data { i32 2, i32 3 }, %struct.max8997_irq_data { i32 4, i32 3 }, %struct.max8997_irq_data { i32 8, i32 3 }, %struct.max8997_irq_data { i32 16, i32 3 }, %struct.max8997_irq_data { i32 32, i32 3 }, %struct.max8997_irq_data { i32 4, i32 5 }, %struct.max8997_irq_data { i32 2, i32 5 }, %struct.max8997_irq_data { i32 1, i32 5 }, %struct.max8997_irq_data { i32 16, i32 6 }, %struct.max8997_irq_data { i32 8, i32 6 }, %struct.max8997_irq_data { i32 4, i32 6 }, %struct.max8997_irq_data { i32 2, i32 6 }, %struct.max8997_irq_data { i32 1, i32 6 }, %struct.max8997_irq_data { i32 4, i32 7 }], align 4
@max8997_irq_chip = internal global %struct.irq_chip { ptr null, ptr @.str.8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max8997_irq_mask, ptr null, ptr @max8997_irq_unmask, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max8997_irq_lock, ptr @max8997_irq_sync_unlock, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"max8997\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @max8997_irq_resume(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.max8997_dev, ptr %0, i32 0, i32 9
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.max8997_dev, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @max8997_irq_thread(i32 noundef 0, ptr noundef %0)
  br label %11

11:                                               ; preds = %9, %5, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8997_irq_thread(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca [11 x i8], align 1
  %5 = alloca i8, align 1
  %6 = alloca [12 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %4, i8 0, i32 11, i1 false)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #6
  store i8 0, ptr %5, align 1, !annotation !8
  %7 = getelementptr inbounds %struct.max8997_dev, ptr %1, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = call i32 @max8997_read_reg(ptr noundef %8, i8 noundef zeroext 2, ptr noundef nonnull %5) #6
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.7, i32 noundef %9) #7
  br label %199

13:                                               ; preds = %2
  %14 = load i8, ptr %5, align 1
  %15 = and i8 %14, 2
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %7, align 4
  %19 = call i32 @max8997_bulk_read(ptr noundef %18, i8 noundef zeroext 3, i32 noundef 4, ptr noundef nonnull %4) #6
  %20 = load i8, ptr %5, align 1
  br label %21

21:                                               ; preds = %17, %13
  %22 = phi i8 [ %20, %17 ], [ %14, %13 ]
  %23 = and i8 %22, 4
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds [11 x i8], ptr %4, i32 0, i32 4
  store i8 0, ptr %26, align 1
  br label %27

27:                                               ; preds = %25, %21
  %28 = and i8 %22, 8
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.max8997_dev, ptr %1, i32 0, i32 5
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds [11 x i8], ptr %4, i32 0, i32 5
  %34 = call i32 @max8997_bulk_read(ptr noundef %32, i8 noundef zeroext 1, i32 noundef 3, ptr noundef %33) #6
  %35 = load i8, ptr %5, align 1
  br label %36

36:                                               ; preds = %30, %27
  %37 = phi i8 [ %35, %30 ], [ %22, %27 ]
  %38 = and i8 %37, 16
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %91, label %40

40:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(12) %6, i8 0, i32 12, i1 false), !annotation !8
  %41 = getelementptr inbounds [11 x i8], ptr %4, i32 0, i32 8
  store i8 0, ptr %41, align 1
  %42 = getelementptr inbounds [11 x i8], ptr %4, i32 0, i32 9
  store i8 0, ptr %42, align 1
  %43 = load ptr, ptr %7, align 4
  %44 = call i32 @max8997_bulk_read(ptr noundef %43, i8 noundef zeroext 112, i32 noundef 12, ptr noundef nonnull %6) #6
  %45 = load i8, ptr %42, align 1
  %46 = load i8, ptr %41, align 1
  br label %47

47:                                               ; preds = %84, %40
  %48 = phi i32 [ 0, %40 ], [ %87, %84 ]
  %49 = phi i8 [ %45, %40 ], [ %86, %84 ]
  %50 = phi i8 [ %46, %40 ], [ %85, %84 ]
  %51 = getelementptr [12 x i8], ptr %6, i32 0, i32 %48
  %52 = load i8, ptr %51, align 1
  %53 = zext i8 %52 to i32
  %54 = and i32 %53, 48
  switch i32 %54, label %84 [
    i32 48, label %55
    i32 32, label %59
    i32 16, label %66
  ]

55:                                               ; preds = %47
  %56 = getelementptr %struct.max8997_dev, ptr %1, i32 0, i32 16, i32 %48
  %57 = load i8, ptr %56, align 1, !range !9
  %58 = icmp eq i8 %57, %52
  br i1 %58, label %84, label %73

59:                                               ; preds = %47
  %60 = getelementptr %struct.max8997_dev, ptr %1, i32 0, i32 16, i32 %48
  %61 = load i8, ptr %60, align 1, !range !9
  %62 = icmp eq i8 %61, %52
  %63 = and i32 %53, 4
  %64 = icmp eq i32 %63, 0
  %65 = select i1 %62, i1 true, i1 %64
  br i1 %65, label %84, label %73

66:                                               ; preds = %47
  %67 = getelementptr %struct.max8997_dev, ptr %1, i32 0, i32 16, i32 %48
  %68 = load i8, ptr %67, align 1, !range !9
  %69 = icmp ne i8 %68, %52
  %70 = and i32 %53, 4
  %71 = icmp eq i32 %70, 0
  %72 = select i1 %69, i1 %71, i1 false
  br i1 %72, label %73, label %84

73:                                               ; preds = %66, %59, %55
  %74 = icmp ult i32 %48, 8
  br i1 %74, label %75, label %79

75:                                               ; preds = %73
  %76 = shl nuw nsw i32 1, %48
  %77 = trunc i32 %76 to i8
  %78 = or i8 %50, %77
  store i8 %78, ptr %41, align 1
  br label %84

79:                                               ; preds = %73
  %80 = add nsw i32 %48, -8
  %81 = shl nuw nsw i32 1, %80
  %82 = trunc i32 %81 to i8
  %83 = or i8 %49, %82
  store i8 %83, ptr %42, align 1
  br label %84

84:                                               ; preds = %79, %75, %66, %59, %55, %47
  %85 = phi i8 [ %50, %59 ], [ %50, %66 ], [ %50, %47 ], [ %78, %75 ], [ %50, %79 ], [ %50, %55 ]
  %86 = phi i8 [ %49, %59 ], [ %49, %66 ], [ %49, %47 ], [ %49, %75 ], [ %83, %79 ], [ %49, %55 ]
  %87 = add nuw nsw i32 %48, 1
  %88 = icmp eq i32 %87, 12
  br i1 %88, label %89, label %47

89:                                               ; preds = %84
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #6
  %90 = load i8, ptr %5, align 1
  br label %91

91:                                               ; preds = %89, %36
  %92 = phi i8 [ %90, %89 ], [ %37, %36 ]
  %93 = and i8 %92, 32
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %91
  %96 = load ptr, ptr %7, align 4
  %97 = getelementptr inbounds [11 x i8], ptr %4, i32 0, i32 10
  %98 = call i32 @max8997_read_reg(ptr noundef %96, i8 noundef zeroext 109, ptr noundef %97) #6
  br label %99

99:                                               ; preds = %95, %91
  %100 = getelementptr %struct.max8997_dev, ptr %1, i32 0, i32 13, i32 0
  %101 = load i32, ptr %100, align 4
  %102 = load i8, ptr %4, align 1
  %103 = trunc i32 %101 to i8
  %104 = xor i8 %103, -1
  %105 = and i8 %102, %104
  store i8 %105, ptr %4, align 1
  %106 = getelementptr %struct.max8997_dev, ptr %1, i32 0, i32 13, i32 1
  %107 = load i32, ptr %106, align 4
  %108 = getelementptr inbounds [11 x i8], ptr %4, i32 0, i32 1
  %109 = load i8, ptr %108, align 1
  %110 = trunc i32 %107 to i8
  %111 = xor i8 %110, -1
  %112 = and i8 %109, %111
  store i8 %112, ptr %108, align 1
  %113 = getelementptr %struct.max8997_dev, ptr %1, i32 0, i32 13, i32 2
  %114 = load i32, ptr %113, align 4
  %115 = getelementptr inbounds [11 x i8], ptr %4, i32 0, i32 2
  %116 = load i8, ptr %115, align 1
  %117 = trunc i32 %114 to i8
  %118 = xor i8 %117, -1
  %119 = and i8 %116, %118
  store i8 %119, ptr %115, align 1
  %120 = getelementptr %struct.max8997_dev, ptr %1, i32 0, i32 13, i32 3
  %121 = load i32, ptr %120, align 4
  %122 = getelementptr inbounds [11 x i8], ptr %4, i32 0, i32 3
  %123 = load i8, ptr %122, align 1
  %124 = trunc i32 %121 to i8
  %125 = xor i8 %124, -1
  %126 = and i8 %123, %125
  store i8 %126, ptr %122, align 1
  %127 = getelementptr %struct.max8997_dev, ptr %1, i32 0, i32 13, i32 4
  %128 = load i32, ptr %127, align 4
  %129 = getelementptr inbounds [11 x i8], ptr %4, i32 0, i32 4
  %130 = load i8, ptr %129, align 1
  %131 = trunc i32 %128 to i8
  %132 = xor i8 %131, -1
  %133 = and i8 %130, %132
  store i8 %133, ptr %129, align 1
  %134 = getelementptr %struct.max8997_dev, ptr %1, i32 0, i32 13, i32 5
  %135 = load i32, ptr %134, align 4
  %136 = getelementptr inbounds [11 x i8], ptr %4, i32 0, i32 5
  %137 = load i8, ptr %136, align 1
  %138 = trunc i32 %135 to i8
  %139 = xor i8 %138, -1
  %140 = and i8 %137, %139
  store i8 %140, ptr %136, align 1
  %141 = getelementptr %struct.max8997_dev, ptr %1, i32 0, i32 13, i32 6
  %142 = load i32, ptr %141, align 4
  %143 = getelementptr inbounds [11 x i8], ptr %4, i32 0, i32 6
  %144 = load i8, ptr %143, align 1
  %145 = trunc i32 %142 to i8
  %146 = xor i8 %145, -1
  %147 = and i8 %144, %146
  store i8 %147, ptr %143, align 1
  %148 = getelementptr %struct.max8997_dev, ptr %1, i32 0, i32 13, i32 7
  %149 = load i32, ptr %148, align 4
  %150 = getelementptr inbounds [11 x i8], ptr %4, i32 0, i32 7
  %151 = load i8, ptr %150, align 1
  %152 = trunc i32 %149 to i8
  %153 = xor i8 %152, -1
  %154 = and i8 %151, %153
  store i8 %154, ptr %150, align 1
  %155 = getelementptr %struct.max8997_dev, ptr %1, i32 0, i32 13, i32 8
  %156 = load i32, ptr %155, align 4
  %157 = getelementptr inbounds [11 x i8], ptr %4, i32 0, i32 8
  %158 = load i8, ptr %157, align 1
  %159 = trunc i32 %156 to i8
  %160 = xor i8 %159, -1
  %161 = and i8 %158, %160
  store i8 %161, ptr %157, align 1
  %162 = getelementptr %struct.max8997_dev, ptr %1, i32 0, i32 13, i32 9
  %163 = load i32, ptr %162, align 4
  %164 = getelementptr inbounds [11 x i8], ptr %4, i32 0, i32 9
  %165 = load i8, ptr %164, align 1
  %166 = trunc i32 %163 to i8
  %167 = xor i8 %166, -1
  %168 = and i8 %165, %167
  store i8 %168, ptr %164, align 1
  %169 = getelementptr %struct.max8997_dev, ptr %1, i32 0, i32 13, i32 10
  %170 = load i32, ptr %169, align 4
  %171 = getelementptr inbounds [11 x i8], ptr %4, i32 0, i32 10
  %172 = load i8, ptr %171, align 1
  %173 = trunc i32 %170 to i8
  %174 = xor i8 %173, -1
  %175 = and i8 %172, %174
  store i8 %175, ptr %171, align 1
  %176 = getelementptr inbounds %struct.max8997_dev, ptr %1, i32 0, i32 11
  br label %177

177:                                              ; preds = %196, %99
  %178 = phi i32 [ 0, %99 ], [ %197, %196 ]
  %179 = getelementptr [35 x %struct.max8997_irq_data], ptr @max8997_irqs, i32 0, i32 %178
  %180 = getelementptr [35 x %struct.max8997_irq_data], ptr @max8997_irqs, i32 0, i32 %178, i32 1
  %181 = load i32, ptr %180, align 4
  %182 = getelementptr [11 x i8], ptr %4, i32 0, i32 %181
  %183 = load i8, ptr %182, align 1
  %184 = zext i8 %183 to i32
  %185 = load i32, ptr %179, align 4
  %186 = and i32 %185, %184
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %196, label %188

188:                                              ; preds = %177
  %189 = load ptr, ptr %176, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  %190 = call ptr @__irq_resolve_mapping(ptr noundef %189, i32 noundef %178, ptr noundef nonnull %3) #6
  %191 = icmp eq ptr %190, null
  %192 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %193 = icmp eq i32 %192, 0
  %194 = select i1 %191, i1 true, i1 %193
  br i1 %194, label %196, label %195

195:                                              ; preds = %188
  call void @handle_nested_irq(i32 noundef %192) #6
  br label %196

196:                                              ; preds = %195, %188, %177
  %197 = add nuw nsw i32 %178, 1
  %198 = icmp eq i32 %197, 35
  br i1 %198, label %199, label %177

199:                                              ; preds = %196, %11
  %200 = phi i32 [ 0, %11 ], [ 1, %196 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %4) #6
  ret i32 %200
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @max8997_irq_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #6
  store i8 0, ptr %2, align 1, !annotation !8
  %3 = getelementptr inbounds %struct.max8997_dev, ptr %0, i32 0, i32 9
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str) #7
  br label %129

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.max8997_dev, ptr %0, i32 0, i32 12
  tail call void @__mutex_init(ptr noundef %9, ptr noundef nonnull @.str.1, ptr noundef nonnull @max8997_irq_init.__key) #6
  %10 = getelementptr inbounds %struct.max8997_dev, ptr %0, i32 0, i32 2
  %11 = getelementptr inbounds %struct.max8997_dev, ptr %0, i32 0, i32 5
  br label %87

12:                                               ; preds = %106
  %13 = load ptr, ptr %10, align 4
  %14 = call i32 @max8997_read_reg(ptr noundef %13, i8 noundef zeroext 112, ptr noundef nonnull %2) #6
  %15 = getelementptr %struct.max8997_dev, ptr %0, i32 0, i32 16, i32 0
  %16 = trunc i32 %14 to i8
  %17 = lshr i8 %16, 2
  %18 = and i8 %17, 1
  store i8 %18, ptr %15, align 1
  %19 = load ptr, ptr %10, align 4
  %20 = call i32 @max8997_read_reg(ptr noundef %19, i8 noundef zeroext 113, ptr noundef nonnull %2) #6
  %21 = getelementptr %struct.max8997_dev, ptr %0, i32 0, i32 16, i32 1
  %22 = trunc i32 %20 to i8
  %23 = lshr i8 %22, 2
  %24 = and i8 %23, 1
  store i8 %24, ptr %21, align 1
  %25 = load ptr, ptr %10, align 4
  %26 = call i32 @max8997_read_reg(ptr noundef %25, i8 noundef zeroext 114, ptr noundef nonnull %2) #6
  %27 = getelementptr %struct.max8997_dev, ptr %0, i32 0, i32 16, i32 2
  %28 = trunc i32 %26 to i8
  %29 = lshr i8 %28, 2
  %30 = and i8 %29, 1
  store i8 %30, ptr %27, align 1
  %31 = load ptr, ptr %10, align 4
  %32 = call i32 @max8997_read_reg(ptr noundef %31, i8 noundef zeroext 115, ptr noundef nonnull %2) #6
  %33 = getelementptr %struct.max8997_dev, ptr %0, i32 0, i32 16, i32 3
  %34 = trunc i32 %32 to i8
  %35 = lshr i8 %34, 2
  %36 = and i8 %35, 1
  store i8 %36, ptr %33, align 1
  %37 = load ptr, ptr %10, align 4
  %38 = call i32 @max8997_read_reg(ptr noundef %37, i8 noundef zeroext 116, ptr noundef nonnull %2) #6
  %39 = getelementptr %struct.max8997_dev, ptr %0, i32 0, i32 16, i32 4
  %40 = trunc i32 %38 to i8
  %41 = lshr i8 %40, 2
  %42 = and i8 %41, 1
  store i8 %42, ptr %39, align 1
  %43 = load ptr, ptr %10, align 4
  %44 = call i32 @max8997_read_reg(ptr noundef %43, i8 noundef zeroext 117, ptr noundef nonnull %2) #6
  %45 = getelementptr %struct.max8997_dev, ptr %0, i32 0, i32 16, i32 5
  %46 = trunc i32 %44 to i8
  %47 = lshr i8 %46, 2
  %48 = and i8 %47, 1
  store i8 %48, ptr %45, align 1
  %49 = load ptr, ptr %10, align 4
  %50 = call i32 @max8997_read_reg(ptr noundef %49, i8 noundef zeroext 118, ptr noundef nonnull %2) #6
  %51 = getelementptr %struct.max8997_dev, ptr %0, i32 0, i32 16, i32 6
  %52 = trunc i32 %50 to i8
  %53 = lshr i8 %52, 2
  %54 = and i8 %53, 1
  store i8 %54, ptr %51, align 1
  %55 = load ptr, ptr %10, align 4
  %56 = call i32 @max8997_read_reg(ptr noundef %55, i8 noundef zeroext 119, ptr noundef nonnull %2) #6
  %57 = getelementptr %struct.max8997_dev, ptr %0, i32 0, i32 16, i32 7
  %58 = trunc i32 %56 to i8
  %59 = lshr i8 %58, 2
  %60 = and i8 %59, 1
  store i8 %60, ptr %57, align 1
  %61 = load ptr, ptr %10, align 4
  %62 = call i32 @max8997_read_reg(ptr noundef %61, i8 noundef zeroext 120, ptr noundef nonnull %2) #6
  %63 = getelementptr %struct.max8997_dev, ptr %0, i32 0, i32 16, i32 8
  %64 = trunc i32 %62 to i8
  %65 = lshr i8 %64, 2
  %66 = and i8 %65, 1
  store i8 %66, ptr %63, align 1
  %67 = load ptr, ptr %10, align 4
  %68 = call i32 @max8997_read_reg(ptr noundef %67, i8 noundef zeroext 121, ptr noundef nonnull %2) #6
  %69 = getelementptr %struct.max8997_dev, ptr %0, i32 0, i32 16, i32 9
  %70 = trunc i32 %68 to i8
  %71 = lshr i8 %70, 2
  %72 = and i8 %71, 1
  store i8 %72, ptr %69, align 1
  %73 = load ptr, ptr %10, align 4
  %74 = call i32 @max8997_read_reg(ptr noundef %73, i8 noundef zeroext 122, ptr noundef nonnull %2) #6
  %75 = getelementptr %struct.max8997_dev, ptr %0, i32 0, i32 16, i32 10
  %76 = trunc i32 %74 to i8
  %77 = lshr i8 %76, 2
  %78 = and i8 %77, 1
  store i8 %78, ptr %75, align 1
  %79 = load ptr, ptr %10, align 4
  %80 = call i32 @max8997_read_reg(ptr noundef %79, i8 noundef zeroext 123, ptr noundef nonnull %2) #6
  %81 = getelementptr %struct.max8997_dev, ptr %0, i32 0, i32 16, i32 11
  %82 = trunc i32 %80 to i8
  %83 = lshr i8 %82, 2
  %84 = and i8 %83, 1
  store i8 %84, ptr %81, align 1
  %85 = call ptr @__irq_domain_add(ptr noundef null, i32 noundef 35, i32 noundef 35, i32 noundef 0, ptr noundef nonnull @max8997_irq_domain_ops, ptr noundef %0) #6
  %86 = icmp eq ptr %85, null
  br i1 %86, label %109, label %111

87:                                               ; preds = %106, %8
  %88 = phi i32 [ 0, %8 ], [ %107, %106 ]
  %89 = getelementptr %struct.max8997_dev, ptr %0, i32 0, i32 13, i32 %88
  store i32 255, ptr %89, align 4
  %90 = getelementptr %struct.max8997_dev, ptr %0, i32 0, i32 14, i32 %88
  store i32 255, ptr %90, align 4
  switch i32 %88, label %106 [
    i32 0, label %92
    i32 1, label %92
    i32 2, label %92
    i32 3, label %92
    i32 10, label %92
    i32 5, label %91
    i32 6, label %91
    i32 7, label %91
    i32 8, label %92
    i32 9, label %92
  ]

91:                                               ; preds = %87, %87, %87
  br label %92

92:                                               ; preds = %91, %87, %87, %87, %87, %87, %87, %87
  %93 = phi ptr [ %11, %91 ], [ %10, %87 ], [ %10, %87 ], [ %10, %87 ], [ %10, %87 ], [ %10, %87 ], [ %10, %87 ], [ %10, %87 ]
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  %96 = icmp ugt ptr %94, inttoptr (i32 -4096 to ptr)
  %97 = or i1 %95, %96
  br i1 %97, label %106, label %98

98:                                               ; preds = %92
  %99 = lshr i32 1808, %88
  %100 = and i32 %99, 1
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %98
  %103 = getelementptr [11 x i8], ptr @max8997_mask_reg, i32 0, i32 %88
  %104 = load i8, ptr %103, align 1
  %105 = tail call i32 @max8997_write_reg(ptr noundef nonnull %94, i8 noundef zeroext %104, i8 noundef zeroext -1) #6
  br label %106

106:                                              ; preds = %102, %98, %92, %87
  %107 = add nuw nsw i32 %88, 1
  %108 = icmp eq i32 %107, 11
  br i1 %108, label %12, label %87

109:                                              ; preds = %12
  %110 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %110, ptr noundef nonnull @.str.2) #7
  br label %129

111:                                              ; preds = %12
  %112 = getelementptr inbounds %struct.max8997_dev, ptr %0, i32 0, i32 11
  store ptr %85, ptr %112, align 4
  %113 = load i32, ptr %3, align 4
  %114 = call i32 @request_threaded_irq(i32 noundef %113, ptr noundef null, ptr noundef nonnull @max8997_irq_thread, i32 noundef 8194, ptr noundef nonnull @.str.3, ptr noundef %0) #6
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %111
  %117 = load ptr, ptr %0, align 4
  %118 = load i32, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %117, ptr noundef nonnull @.str.4, i32 noundef %118, i32 noundef %114) #7
  br label %129

119:                                              ; preds = %111
  %120 = getelementptr inbounds %struct.max8997_dev, ptr %0, i32 0, i32 10
  %121 = load i32, ptr %120, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %129, label %123

123:                                              ; preds = %119
  %124 = call i32 @request_threaded_irq(i32 noundef %121, ptr noundef null, ptr noundef nonnull @max8997_irq_thread, i32 noundef 8195, ptr noundef nonnull @.str.5, ptr noundef %0) #6
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %123
  %127 = load ptr, ptr %0, align 4
  %128 = load i32, ptr %120, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %127, ptr noundef nonnull @.str.6, i32 noundef %128, i32 noundef %124) #7
  br label %129

129:                                              ; preds = %126, %123, %119, %116, %109, %6
  %130 = phi i32 [ %114, %116 ], [ -19, %109 ], [ 0, %6 ], [ 0, %119 ], [ 0, %126 ], [ 0, %123 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #6
  ret i32 %130
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8997_write_reg(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8997_read_reg(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @max8997_irq_exit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.max8997_dev, ptr %0, i32 0, i32 10
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %0) #6
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.max8997_dev, ptr %0, i32 0, i32 9
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @free_irq(i32 noundef %9, ptr noundef %0) #6
  br label %13

13:                                               ; preds = %11, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8997_bulk_read(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_nested_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8997_irq_domain_map(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @irq_set_chip_data(i32 noundef %1, ptr noundef %5) #6
  tail call void @irq_set_chip_and_handler_name(i32 noundef %1, ptr noundef nonnull @max8997_irq_chip, ptr noundef nonnull @handle_edge_irq, ptr noundef null) #6
  tail call void @irq_modify_status(i32 noundef %1, i32 noundef 0, i32 noundef 32768) #6
  tail call void @irq_modify_status(i32 noundef %1, i32 noundef 0, i32 noundef 1024) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @max8997_irq_mask(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr [35 x %struct.max8997_irq_data], ptr @max8997_irqs, i32 0, i32 %5
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr [35 x %struct.max8997_irq_data], ptr @max8997_irqs, i32 0, i32 %5, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr %struct.max8997_dev, ptr %3, i32 0, i32 13, i32 %9
  %11 = load i32, ptr %10, align 4
  %12 = or i32 %11, %7
  store i32 %12, ptr %10, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @max8997_irq_unmask(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr [35 x %struct.max8997_irq_data], ptr @max8997_irqs, i32 0, i32 %5
  %7 = load i32, ptr %6, align 4
  %8 = xor i32 %7, -1
  %9 = getelementptr [35 x %struct.max8997_irq_data], ptr @max8997_irqs, i32 0, i32 %5, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr %struct.max8997_dev, ptr %3, i32 0, i32 13, i32 %10
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, %8
  store i32 %13, ptr %11, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @max8997_irq_lock(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.max8997_dev, ptr %3, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %4) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @max8997_irq_sync_unlock(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.max8997_dev, ptr %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.max8997_dev, ptr %3, i32 0, i32 5
  br label %6

6:                                                ; preds = %34, %1
  %7 = phi i32 [ 0, %1 ], [ %35, %34 ]
  %8 = getelementptr [11 x i8], ptr @max8997_mask_reg, i32 0, i32 %7
  switch i32 %7, label %17 [
    i32 0, label %9
    i32 1, label %9
    i32 2, label %9
    i32 3, label %9
    i32 4, label %18
    i32 5, label %11
    i32 6, label %11
    i32 7, label %11
    i32 8, label %13
    i32 9, label %13
    i32 10, label %15
  ]

9:                                                ; preds = %6, %6, %6, %6
  %10 = load ptr, ptr %4, align 4
  br label %18

11:                                               ; preds = %6, %6, %6
  %12 = load ptr, ptr %5, align 4
  br label %18

13:                                               ; preds = %6, %6
  %14 = load ptr, ptr %4, align 4
  br label %18

15:                                               ; preds = %6
  %16 = load ptr, ptr %4, align 4
  br label %18

17:                                               ; preds = %6
  br label %18

18:                                               ; preds = %17, %15, %13, %11, %9, %6
  %19 = phi ptr [ inttoptr (i32 -22 to ptr), %17 ], [ %16, %15 ], [ %14, %13 ], [ %12, %11 ], [ %10, %9 ], [ null, %6 ]
  %20 = lshr i32 1808, %7
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = icmp eq ptr %19, null
  %25 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  %26 = or i1 %24, %25
  br i1 %26, label %34, label %27

27:                                               ; preds = %23
  %28 = getelementptr %struct.max8997_dev, ptr %3, i32 0, i32 13, i32 %7
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr %struct.max8997_dev, ptr %3, i32 0, i32 14, i32 %7
  store i32 %29, ptr %30, align 4
  %31 = load i8, ptr %8, align 1
  %32 = trunc i32 %29 to i8
  %33 = tail call i32 @max8997_write_reg(ptr noundef nonnull %19, i8 noundef zeroext %31, i8 noundef zeroext %32) #6
  br label %34

34:                                               ; preds = %27, %23, %18
  %35 = add nuw nsw i32 %7, 1
  %36 = icmp eq i32 %35, 11
  br i1 %36, label %37, label %6

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.max8997_dev, ptr %3, i32 0, i32 12
  tail call void @mutex_unlock(ptr noundef %38) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
