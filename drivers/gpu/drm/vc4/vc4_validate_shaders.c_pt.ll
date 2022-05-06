; ModuleID = '/llk/IR/drivers/gpu/drm/vc4/vc4_validate_shaders.c_pt.bc'
source_filename = "../drivers/gpu/drm/vc4/vc4_validate_shaders.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vc4_shader_validation_state = type { i32, i32, ptr, [2 x %struct.vc4_texture_sample_info], [2 x i32], [68 x i32], [68 x i8], [68 x i32], ptr, i8, i8, i8 }
%struct.vc4_texture_sample_info = type { i8, [4 x i32] }
%struct.drm_gem_cma_object = type { %struct.drm_gem_object, i32, ptr, ptr, i8 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.vc4_validated_shader_info = type { i32, i32, i32, ptr, i32, ptr, i8 }

@.str = private unnamed_addr constant [20 x i8] c"Bad write at ip %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Thread switch too soon after last switch at ip %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Bad LOAD_IMM write at ip %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Branch in thread switch at ip %d\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Unsupported QPU signal %d at instruction %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"shader failed to terminate before shader BO end at %zd\0A\00", align 1
@.str.6 = private unnamed_addr constant [70 x i8] c"Shader uses threading, but uses the upper half of the registers, too\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"Branch at %d during delay slots\0A\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"branching from register relative not supported\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"relative branching required\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"branch target not aligned\0A\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"Branch at %d outside of shader (ip %d/%d)\0A\00", align 1
@.str.12 = private unnamed_addr constant [48 x i8] c"Branch at %d continues past shader end (%d/%d)\0A\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"Branch landed after QPU_SIG_PROG_END\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"Branch target landed during TMU setup\0A\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"ADD and MUL both set up textures\0A\00", align 1
@.str.16 = private unnamed_addr constant [46 x i8] c"relative uniforms address change unsupported\0A\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"Unsupported waddr %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"General VPM DMA unsupported\0A\00", align 1
@.str.19 = private unnamed_addr constant [45 x i8] c"uniforms address change must be normal math\0A\00", align 1
@.str.20 = private unnamed_addr constant [39 x i8] c"Uniform address reset must be an ADD.\0A\00", align 1
@.str.21 = private unnamed_addr constant [46 x i8] c"Uniform address reset must be unconditional.\0A\00", align 1
@.str.22 = private unnamed_addr constant [38 x i8] c"No packing allowed on uniforms reset\0A\00", align 1
@.str.23 = private unnamed_addr constant [69 x i8] c"First argument of uniform address write must be an immediate value.\0A\00", align 1
@.str.24 = private unnamed_addr constant [51 x i8] c"Resetting uniforms with offset %db instead of %db\0A\00", align 1
@.str.25 = private unnamed_addr constant [61 x i8] c"Second argument of uniform address write must be a uniform.\0A\00", align 1
@.str.26 = private unnamed_addr constant [38 x i8] c"direct TMU read used small immediate\0A\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"direct TMU load wasn't an add\0A\00", align 1
@.str.28 = private unnamed_addr constant [32 x i8] c"direct TMU load wasn't clamped\0A\00", align 1
@.str.29 = private unnamed_addr constant [41 x i8] c"direct TMU load didn't add to a uniform\0A\00", align 1
@.str.30 = private unnamed_addr constant [56 x i8] c"uniform read in the same instruction as texture setup.\0A\00", align 1
@.str.31 = private unnamed_addr constant [47 x i8] c"TMU%d got too many parameters before dispatch\0A\00", align 1
@.str.32 = private unnamed_addr constant [42 x i8] c"Texturing with undefined uniform address\0A\00", align 1
@.str.33 = private unnamed_addr constant [45 x i8] c"Uniform read with undefined uniform address\0A\00", align 1
@.str.34 = private unnamed_addr constant [44 x i8] c"branch instruction at %d wrote a register.\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @vc4_validate_shader(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.vc4_shader_validation_state, align 4
  call void @llvm.lifetime.start.p0(i64 680, ptr nonnull %2) #9
  %3 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %0, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(680) %2, i8 0, i64 680, i1 false)
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.vc4_shader_validation_state, ptr %2, i32 0, i32 2
  store ptr %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 5
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 3
  %9 = getelementptr inbounds %struct.vc4_shader_validation_state, ptr %2, i32 0, i32 1
  store i32 %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.vc4_shader_validation_state, ptr %2, i32 0, i32 3, i32 0, i32 1, i32 0
  %11 = getelementptr inbounds %struct.vc4_shader_validation_state, ptr %2, i32 0, i32 3, i32 1, i32 1, i32 0
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %10, i8 -1, i64 16, i1 false) #9
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %11, i8 -1, i64 16, i1 false) #9
  br label %12

12:                                               ; preds = %12, %1
  %13 = phi i32 [ %17, %12 ], [ 0, %1 ]
  %14 = getelementptr %struct.vc4_shader_validation_state, ptr %2, i32 0, i32 5, i32 %13
  store i32 -1, ptr %14, align 4
  %15 = getelementptr %struct.vc4_shader_validation_state, ptr %2, i32 0, i32 6, i32 %13
  store i8 0, ptr %15, align 1
  %16 = getelementptr %struct.vc4_shader_validation_state, ptr %2, i32 0, i32 7, i32 %13
  store i32 -1, ptr %16, align 4
  %17 = add nuw nsw i32 %13, 1
  %18 = icmp eq i32 %17, 68
  br i1 %18, label %19, label %12

19:                                               ; preds = %12
  %20 = load i32, ptr %9, align 4
  %21 = add i32 %20, 31
  %22 = lshr i32 %21, 3
  %23 = and i32 %22, 536870908
  %24 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %23, i32 noundef 3520) #10
  %25 = getelementptr inbounds %struct.vc4_shader_validation_state, ptr %2, i32 0, i32 8
  store ptr %24, ptr %25, align 4
  %26 = icmp eq ptr %24, null
  br i1 %26, label %256, label %27

27:                                               ; preds = %19
  %28 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %29 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3520, i32 noundef 28) #11
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load ptr, ptr %25, align 4
  br label %256

33:                                               ; preds = %27
  %34 = icmp eq i32 %20, 0
  br i1 %34, label %226, label %35

35:                                               ; preds = %33
  %36 = load ptr, ptr %5, align 4
  %37 = load ptr, ptr %25, align 4
  %38 = load ptr, ptr %25, align 4
  br label %39

39:                                               ; preds = %79, %35
  %40 = phi i32 [ %80, %79 ], [ %20, %35 ]
  %41 = phi i32 [ %81, %79 ], [ %20, %35 ]
  %42 = phi i32 [ %83, %79 ], [ 0, %35 ]
  %43 = phi i32 [ %84, %79 ], [ 0, %35 ]
  %44 = phi i32 [ %82, %79 ], [ -2, %35 ]
  %45 = getelementptr i64, ptr %36, i32 %43
  %46 = load i64, ptr %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = lshr i64 %46, 60
  %49 = trunc i64 %48 to i32
  %50 = add i32 %43, 4
  switch i32 %49, label %79 [
    i32 3, label %51
    i32 15, label %53
  ]

51:                                               ; preds = %39
  %52 = add i32 %43, 3
  store i32 %52, ptr %9, align 4
  br label %79

53:                                               ; preds = %39
  %54 = sub i32 %43, %44
  %55 = icmp slt i32 %54, 4
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.7, i32 noundef %43) #9
  br label %258

57:                                               ; preds = %53
  %58 = and i64 %46, 1125899906842624
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.8) #9
  br label %258

61:                                               ; preds = %57
  %62 = and i64 %46, 2251799813685248
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.9) #9
  br label %258

65:                                               ; preds = %61
  %66 = and i32 %47, 7
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.10) #9
  br label %258

69:                                               ; preds = %65
  %70 = ashr i32 %47, 3
  %71 = add i32 %70, %50
  %72 = icmp ult i32 %71, %41
  br i1 %72, label %74, label %73

73:                                               ; preds = %69
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.11, i32 noundef %43, i32 noundef %71, i32 noundef %41) #9
  br label %258

74:                                               ; preds = %69
  tail call void @_set_bit(i32 noundef %71, ptr noundef %37) #9
  %75 = icmp ult i32 %50, %41
  br i1 %75, label %77, label %76

76:                                               ; preds = %74
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.12, i32 noundef %43, i32 noundef %50, i32 noundef %41) #9
  br label %258

77:                                               ; preds = %74
  tail call void @_set_bit(i32 noundef %50, ptr noundef %38) #9
  %78 = tail call i32 @llvm.umax.i32(i32 %42, i32 %50) #9
  br label %79

79:                                               ; preds = %77, %51, %39
  %80 = phi i32 [ %52, %51 ], [ %40, %77 ], [ %40, %39 ]
  %81 = phi i32 [ %52, %51 ], [ %40, %77 ], [ %41, %39 ]
  %82 = phi i32 [ %44, %51 ], [ %43, %77 ], [ %44, %39 ]
  %83 = phi i32 [ %42, %51 ], [ %78, %77 ], [ %42, %39 ]
  %84 = add nuw i32 %43, 1
  %85 = icmp ult i32 %84, %81
  br i1 %85, label %39, label %86

86:                                               ; preds = %79
  %87 = add i32 %81, -3
  %88 = icmp ugt i32 %83, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.13) #9
  br label %258

90:                                               ; preds = %86
  %91 = icmp eq i32 %80, 0
  br i1 %91, label %226, label %92

92:                                               ; preds = %90
  %93 = getelementptr inbounds %struct.vc4_shader_validation_state, ptr %2, i32 0, i32 4
  %94 = getelementptr inbounds %struct.vc4_shader_validation_state, ptr %2, i32 0, i32 4, i32 1
  %95 = getelementptr inbounds %struct.vc4_shader_validation_state, ptr %2, i32 0, i32 9
  %96 = getelementptr inbounds %struct.vc4_shader_validation_state, ptr %2, i32 0, i32 10
  %97 = getelementptr inbounds %struct.vc4_shader_validation_state, ptr %2, i32 0, i32 11
  %98 = getelementptr inbounds %struct.vc4_validated_shader_info, ptr %29, i32 0, i32 6
  %99 = getelementptr inbounds %struct.vc4_shader_validation_state, ptr %2, i32 0, i32 5, i32 64
  %100 = getelementptr inbounds %struct.vc4_shader_validation_state, ptr %2, i32 0, i32 6, i32 64
  %101 = getelementptr inbounds %struct.vc4_shader_validation_state, ptr %2, i32 0, i32 7, i32 64
  %102 = getelementptr inbounds %struct.vc4_shader_validation_state, ptr %2, i32 0, i32 5, i32 65
  %103 = getelementptr inbounds %struct.vc4_shader_validation_state, ptr %2, i32 0, i32 6, i32 65
  %104 = getelementptr inbounds %struct.vc4_shader_validation_state, ptr %2, i32 0, i32 7, i32 65
  %105 = getelementptr inbounds %struct.vc4_shader_validation_state, ptr %2, i32 0, i32 5, i32 66
  %106 = getelementptr inbounds %struct.vc4_shader_validation_state, ptr %2, i32 0, i32 6, i32 66
  %107 = getelementptr inbounds %struct.vc4_shader_validation_state, ptr %2, i32 0, i32 7, i32 66
  %108 = getelementptr inbounds %struct.vc4_shader_validation_state, ptr %2, i32 0, i32 5, i32 67
  %109 = getelementptr inbounds %struct.vc4_shader_validation_state, ptr %2, i32 0, i32 6, i32 67
  %110 = getelementptr inbounds %struct.vc4_shader_validation_state, ptr %2, i32 0, i32 7, i32 67
  br label %111

111:                                              ; preds = %218, %92
  %112 = phi i32 [ 0, %92 ], [ %219, %218 ]
  %113 = phi i32 [ -3, %92 ], [ %212, %218 ]
  %114 = phi i32 [ 0, %92 ], [ %211, %218 ]
  %115 = phi i1 [ false, %92 ], [ %210, %218 ]
  %116 = load ptr, ptr %5, align 4
  %117 = getelementptr i64, ptr %116, i32 %112
  %118 = load i64, ptr %117, align 8
  %119 = lshr i64 %118, 60
  %120 = trunc i64 %119 to i32
  store i32 %112, ptr %2, align 4
  %121 = load ptr, ptr %25, align 4
  %122 = lshr i32 %112, 5
  %123 = getelementptr i32, ptr %121, i32 %122
  %124 = load volatile i32, ptr %123, align 4
  %125 = and i32 %112, 31
  %126 = shl nuw i32 1, %125
  %127 = and i32 %124, %126
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %145, label %129

129:                                              ; preds = %111
  %130 = load i32, ptr %93, align 4
  %131 = icmp eq i32 %130, 0
  %132 = load i32, ptr %94, align 4
  %133 = icmp eq i32 %132, 0
  %134 = select i1 %131, i1 %133, i1 false
  br i1 %134, label %135, label %144

135:                                              ; preds = %129
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %10, i8 -1, i64 16, i1 false) #9
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %11, i8 -1, i64 16, i1 false) #9
  br label %136

136:                                              ; preds = %136, %135
  %137 = phi i32 [ %141, %136 ], [ 0, %135 ]
  %138 = getelementptr %struct.vc4_shader_validation_state, ptr %2, i32 0, i32 5, i32 %137
  store i32 -1, ptr %138, align 4
  %139 = getelementptr %struct.vc4_shader_validation_state, ptr %2, i32 0, i32 6, i32 %137
  store i8 0, ptr %139, align 1
  %140 = getelementptr %struct.vc4_shader_validation_state, ptr %2, i32 0, i32 7, i32 %137
  store i32 -1, ptr %140, align 4
  %141 = add nuw nsw i32 %137, 1
  %142 = icmp eq i32 %141, 68
  br i1 %142, label %143, label %136

143:                                              ; preds = %136
  store i8 1, ptr %95, align 4
  br label %145

144:                                              ; preds = %129
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.14) #9
  br label %258

145:                                              ; preds = %143, %111
  %146 = add i32 %113, 3
  %147 = icmp eq i32 %112, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %145
  store i32 -1, ptr %99, align 4
  store i8 0, ptr %100, align 4
  store i32 -1, ptr %101, align 4
  store i32 -1, ptr %102, align 4
  store i8 0, ptr %103, align 1
  store i32 -1, ptr %104, align 4
  store i32 -1, ptr %105, align 4
  store i8 0, ptr %106, align 2
  store i32 -1, ptr %107, align 4
  store i32 -1, ptr %108, align 4
  store i8 0, ptr %109, align 1
  store i32 -1, ptr %110, align 4
  br label %149

149:                                              ; preds = %148, %145
  switch i32 %120, label %207 [
    i32 1, label %150
    i32 4, label %150
    i32 5, label %150
    i32 8, label %150
    i32 10, label %150
    i32 11, label %150
    i32 3, label %150
    i32 13, label %150
    i32 2, label %150
    i32 6, label %150
    i32 14, label %192
    i32 15, label %195
  ]

150:                                              ; preds = %149, %149, %149, %149, %149, %149, %149, %149, %149, %149
  %151 = call fastcc zeroext i1 @check_instruction_writes(ptr noundef nonnull %29, ptr noundef nonnull %2)
  br i1 %151, label %153, label %152

152:                                              ; preds = %150
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %112) #9
  br label %258

153:                                              ; preds = %150
  %154 = load ptr, ptr %5, align 4
  %155 = load i32, ptr %2, align 4
  %156 = getelementptr i64, ptr %154, i32 %155
  %157 = load i64, ptr %156, align 8
  %158 = trunc i64 %157 to i32
  %159 = lshr i64 %157, 60
  %160 = trunc i64 %159 to i32
  %161 = and i32 %158, 16515072
  %162 = icmp eq i32 %161, 8388608
  br i1 %162, label %168, label %163

163:                                              ; preds = %153
  %164 = and i32 %158, 258048
  %165 = icmp eq i32 %164, 131072
  %166 = icmp ne i32 %160, 13
  %167 = select i1 %165, i1 %166, i1 false
  br i1 %167, label %168, label %173

168:                                              ; preds = %163, %153
  %169 = load i32, ptr %29, align 8
  %170 = add i32 %169, 4
  store i32 %170, ptr %29, align 8
  %171 = load i8, ptr %95, align 4, !range !8
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %173, label %182

173:                                              ; preds = %168, %163
  %174 = and i32 %158, 12582912
  %175 = icmp eq i32 %174, 4194304
  br i1 %175, label %181, label %176

176:                                              ; preds = %173
  %177 = and i32 %158, 196608
  %178 = icmp eq i32 %177, 65536
  %179 = icmp ne i32 %160, 13
  %180 = select i1 %178, i1 %179, i1 false
  br i1 %180, label %181, label %183

181:                                              ; preds = %176, %173
  store i8 1, ptr %97, align 2
  br label %183

182:                                              ; preds = %168
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.33) #9
  br label %258

183:                                              ; preds = %181, %176
  %184 = icmp eq i32 %120, 3
  %185 = select i1 %184, i1 true, i1 %115
  %186 = select i1 %184, i32 %112, i32 %114
  %187 = and i32 %120, 11
  %188 = icmp eq i32 %187, 2
  br i1 %188, label %189, label %209

189:                                              ; preds = %183
  store i8 1, ptr %98, align 8
  %190 = icmp ult i32 %112, %146
  br i1 %190, label %191, label %209

191:                                              ; preds = %189
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef %112) #9
  br label %258

192:                                              ; preds = %149
  %193 = call fastcc zeroext i1 @check_instruction_writes(ptr noundef nonnull %29, ptr noundef nonnull %2)
  br i1 %193, label %209, label %194

194:                                              ; preds = %192
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef %112) #9
  br label %258

195:                                              ; preds = %149
  %196 = and i64 %118, 2147483648
  %197 = icmp eq i64 %196, 0
  br i1 %197, label %199, label %198

198:                                              ; preds = %195
  store i8 1, ptr %96, align 1
  br label %199

199:                                              ; preds = %198, %195
  %200 = and i64 %118, 17587891077120
  %201 = icmp eq i64 %200, 10887742095360
  br i1 %201, label %204, label %202

202:                                              ; preds = %199
  %203 = load i32, ptr %2, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.34, i32 noundef %203) #9
  br label %258

204:                                              ; preds = %199
  %205 = icmp ult i32 %112, %146
  br i1 %205, label %206, label %209

206:                                              ; preds = %204
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef %112) #9
  br label %258

207:                                              ; preds = %149
  %208 = trunc i64 %119 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef %208, i32 noundef %112) #9
  br label %258

209:                                              ; preds = %204, %192, %189, %183
  %210 = phi i1 [ %115, %204 ], [ %115, %192 ], [ %185, %183 ], [ %185, %189 ]
  %211 = phi i32 [ %114, %204 ], [ %114, %192 ], [ %186, %183 ], [ %186, %189 ]
  %212 = phi i32 [ %113, %204 ], [ %113, %192 ], [ %113, %183 ], [ %112, %189 ]
  %213 = add i32 %211, 2
  %214 = icmp eq i32 %112, %213
  %215 = select i1 %210, i1 %214, i1 false
  br i1 %215, label %216, label %218

216:                                              ; preds = %209
  %217 = load i32, ptr %9, align 4
  br label %222

218:                                              ; preds = %209
  %219 = add nuw i32 %112, 1
  %220 = load i32, ptr %9, align 4
  %221 = icmp ult i32 %219, %220
  br i1 %221, label %111, label %222

222:                                              ; preds = %218, %216
  %223 = phi i32 [ %217, %216 ], [ %220, %218 ]
  %224 = phi i32 [ %112, %216 ], [ %219, %218 ]
  %225 = icmp eq i32 %224, %223
  br i1 %225, label %226, label %228

226:                                              ; preds = %222, %90, %33
  %227 = load i32, ptr %6, align 8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.5, i32 noundef %227) #9
  br label %258

228:                                              ; preds = %222
  %229 = getelementptr inbounds %struct.vc4_validated_shader_info, ptr %29, i32 0, i32 6
  %230 = load i8, ptr %229, align 8, !range !8
  %231 = icmp eq i8 %230, 0
  %232 = getelementptr inbounds %struct.vc4_shader_validation_state, ptr %2, i32 0, i32 11
  %233 = load i8, ptr %232, align 2
  %234 = icmp eq i8 %233, 0
  %235 = select i1 %231, i1 true, i1 %234
  br i1 %235, label %237, label %236

236:                                              ; preds = %228
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.6) #9
  br label %258

237:                                              ; preds = %228
  %238 = getelementptr inbounds %struct.vc4_shader_validation_state, ptr %2, i32 0, i32 10
  %239 = load i8, ptr %238, align 1, !range !8
  %240 = icmp eq i8 %239, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %237
  %242 = load i32, ptr %29, align 8
  br label %248

243:                                              ; preds = %237
  %244 = call fastcc zeroext i1 @require_uniform_address_uniform(ptr noundef nonnull %29)
  br i1 %244, label %245, label %258

245:                                              ; preds = %243
  %246 = load i32, ptr %29, align 8
  %247 = add i32 %246, 4
  store i32 %247, ptr %29, align 8
  br label %248

248:                                              ; preds = %245, %241
  %249 = phi i32 [ %242, %241 ], [ %247, %245 ]
  %250 = getelementptr inbounds %struct.vc4_validated_shader_info, ptr %29, i32 0, i32 2
  %251 = load i32, ptr %250, align 8
  %252 = shl i32 %251, 2
  %253 = add i32 %252, %249
  %254 = getelementptr inbounds %struct.vc4_validated_shader_info, ptr %29, i32 0, i32 1
  store i32 %253, ptr %254, align 4
  %255 = load ptr, ptr %25, align 4
  call void @kfree(ptr noundef %255) #9
  br label %264

256:                                              ; preds = %31, %19
  %257 = phi ptr [ null, %19 ], [ %32, %31 ]
  tail call void @kfree(ptr noundef %257) #9
  br label %264

258:                                              ; preds = %243, %236, %226, %207, %206, %202, %194, %191, %182, %152, %144, %89, %76, %73, %68, %64, %60, %56
  %259 = load ptr, ptr %25, align 4
  call void @kfree(ptr noundef %259) #9
  %260 = getelementptr inbounds %struct.vc4_validated_shader_info, ptr %29, i32 0, i32 5
  %261 = load ptr, ptr %260, align 4
  call void @kfree(ptr noundef %261) #9
  %262 = getelementptr inbounds %struct.vc4_validated_shader_info, ptr %29, i32 0, i32 3
  %263 = load ptr, ptr %262, align 4
  call void @kfree(ptr noundef %263) #9
  call void @kfree(ptr noundef nonnull %29) #9
  br label %264

264:                                              ; preds = %258, %256, %248
  %265 = phi ptr [ %29, %248 ], [ null, %258 ], [ null, %256 ]
  call void @llvm.lifetime.end.p0(i64 680, ptr nonnull %2) #9
  ret ptr %265
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @check_instruction_writes(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.vc4_shader_validation_state, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %1, align 4
  %6 = getelementptr i64, ptr %4, i32 %5
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 15633680957440
  %9 = icmp eq i64 %8, 15633680957440
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.15) #9
  br label %114

11:                                               ; preds = %2
  %12 = tail call fastcc zeroext i1 @check_reg_write(ptr noundef %0, ptr noundef %1, i1 noundef zeroext false)
  br i1 %12, label %13, label %15

13:                                               ; preds = %11
  %14 = tail call fastcc zeroext i1 @check_reg_write(ptr noundef %0, ptr noundef %1, i1 noundef zeroext true)
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i1 [ false, %11 ], [ %14, %13 ]
  %17 = load ptr, ptr %3, align 4
  %18 = load i32, ptr %1, align 4
  %19 = getelementptr i64, ptr %17, i32 %18
  %20 = load i64, ptr %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = lshr i32 %21, 24
  %23 = and i32 %22, 31
  %24 = lshr i64 %20, 38
  %25 = trunc i64 %24 to i32
  %26 = and i32 %25, 63
  %27 = lshr i64 %20, 32
  %28 = trunc i64 %27 to i32
  %29 = and i32 %28, 63
  %30 = lshr i32 %21, 6
  %31 = and i32 %30, 7
  %32 = lshr i32 %21, 12
  %33 = and i32 %32, 63
  %34 = lshr i64 %20, 60
  %35 = trunc i64 %34 to i32
  %36 = and i64 %20, 17592186044416
  %37 = icmp eq i64 %36, 0
  %38 = lshr i32 %21, 9
  %39 = and i32 %38, 7
  %40 = icmp eq i32 %39, 6
  br i1 %40, label %41, label %44

41:                                               ; preds = %15
  %42 = lshr i32 %21, 18
  %43 = and i32 %42, 63
  br label %54

44:                                               ; preds = %15
  %45 = icmp eq i32 %39, 7
  %46 = and i64 %20, -1152921504606846976
  %47 = icmp ne i64 %46, -3458764513820540928
  %48 = and i1 %47, %45
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = add nuw nsw i32 %33, 32
  br label %54

51:                                               ; preds = %44
  %52 = icmp ult i32 %39, 4
  %53 = or i32 %39, 64
  br i1 %52, label %54, label %59

54:                                               ; preds = %51, %49, %41
  %55 = phi i32 [ %50, %49 ], [ %43, %41 ], [ %53, %51 ]
  %56 = getelementptr %struct.vc4_shader_validation_state, ptr %1, i32 0, i32 6, i32 %55
  %57 = load i8, ptr %56, align 1, !range !8
  %58 = icmp ne i8 %57, 0
  br label %59

59:                                               ; preds = %54, %51
  %60 = phi i1 [ %58, %54 ], [ false, %51 ]
  %61 = icmp ult i32 %26, 32
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = add nuw nsw i32 %26, 32
  %64 = select i1 %37, i32 %26, i32 %63
  br label %69

65:                                               ; preds = %59
  %66 = icmp ult i32 %26, 36
  %67 = add nuw nsw i32 %26, 32
  %68 = select i1 %66, i32 %67, i32 -1
  br label %69

69:                                               ; preds = %65, %62
  %70 = phi i32 [ %64, %62 ], [ %68, %65 ]
  %71 = icmp ult i32 %29, 32
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = add nuw nsw i32 %29, 32
  %74 = select i1 %37, i32 %73, i32 %29
  br label %78

75:                                               ; preds = %69
  %76 = icmp ult i32 %29, 36
  %77 = add nuw nsw i32 %29, 32
  br i1 %76, label %78, label %82

78:                                               ; preds = %75, %72
  %79 = phi i32 [ %74, %72 ], [ %77, %75 ]
  %80 = getelementptr %struct.vc4_shader_validation_state, ptr %1, i32 0, i32 6, i32 %79
  store i8 0, ptr %80, align 1
  %81 = getelementptr %struct.vc4_shader_validation_state, ptr %1, i32 0, i32 5, i32 %79
  store i32 -1, ptr %81, align 4
  br label %82

82:                                               ; preds = %78, %75
  %83 = icmp eq i32 %70, -1
  br i1 %83, label %114, label %84

84:                                               ; preds = %82
  %85 = getelementptr %struct.vc4_shader_validation_state, ptr %1, i32 0, i32 6, i32 %70
  store i8 0, ptr %85, align 1
  %86 = getelementptr %struct.vc4_shader_validation_state, ptr %1, i32 0, i32 5, i32 %70
  store i32 -1, ptr %86, align 4
  %87 = and i64 %20, 3940649673949184
  %88 = icmp eq i64 %87, 562949953421312
  br i1 %88, label %89, label %114

89:                                               ; preds = %84
  switch i32 %23, label %114 [
    i32 19, label %90
    i32 18, label %100
  ]

90:                                               ; preds = %89
  %91 = icmp ne i32 %35, 13
  %92 = icmp ne i32 %33, 0
  %93 = or i1 %91, %92
  br i1 %93, label %114, label %94

94:                                               ; preds = %90
  %95 = and i64 %20, 3584
  %96 = icmp ne i64 %95, 3584
  %97 = icmp ne i32 %31, 7
  %98 = and i1 %96, %97
  br i1 %98, label %114, label %99

99:                                               ; preds = %94
  store i8 1, ptr %85, align 1
  br label %114

100:                                              ; preds = %89
  br i1 %60, label %101, label %114

101:                                              ; preds = %100
  %102 = icmp eq i32 %31, 6
  %103 = and i64 %20, 16515072
  %104 = icmp eq i64 %103, 8388608
  %105 = and i1 %104, %102
  br i1 %105, label %112, label %106

106:                                              ; preds = %101
  %107 = icmp eq i32 %31, 7
  %108 = icmp eq i32 %33, 32
  %109 = and i1 %107, %108
  %110 = icmp ne i32 %35, 13
  %111 = and i1 %110, %109
  br i1 %111, label %112, label %114

112:                                              ; preds = %106, %101
  %113 = load i32, ptr %0, align 4
  store i32 %113, ptr %86, align 4
  br label %114

114:                                              ; preds = %112, %106, %100, %99, %94, %90, %89, %84, %82, %10
  %115 = phi i1 [ false, %10 ], [ %16, %82 ], [ %16, %84 ], [ %16, %89 ], [ %16, %90 ], [ %16, %94 ], [ %16, %99 ], [ %16, %100 ], [ %16, %106 ], [ %16, %112 ]
  ret i1 %115
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @require_uniform_address_uniform(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vc4_validated_shader_info, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = load i32, ptr %0, align 4
  %5 = getelementptr inbounds %struct.vc4_validated_shader_info, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = shl i32 %3, 2
  %8 = add i32 %7, 4
  %9 = tail call noalias ptr @krealloc(ptr noundef %6, i32 noundef %8, i32 noundef 3264) #12
  store ptr %9, ptr %5, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = lshr i32 %4, 2
  %13 = getelementptr i32, ptr %9, i32 %3
  store i32 %12, ptr %13, align 4
  %14 = load i32, ptr %2, align 4
  %15 = add i32 %14, 1
  store i32 %15, ptr %2, align 4
  br label %16

16:                                               ; preds = %11, %1
  %17 = xor i1 %10, true
  ret i1 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @check_reg_write(ptr nocapture noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.vc4_shader_validation_state, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %1, align 4
  %7 = getelementptr i64, ptr %5, i32 %6
  %8 = load i64, ptr %7, align 8
  %9 = select i1 %2, i64 32, i64 38
  %10 = lshr i64 %8, %9
  %11 = trunc i64 %10 to i32
  %12 = and i32 %11, 63
  %13 = and i64 %8, 17592186044416
  %14 = icmp ne i64 %13, 0
  %15 = xor i1 %14, %2
  %16 = icmp ult i32 %12, 32
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = add nuw nsw i32 %12, 32
  %19 = select i1 %15, i32 %18, i32 %12
  br label %23

20:                                               ; preds = %3
  %21 = icmp ult i32 %12, 36
  %22 = add nuw nsw i32 %12, 32
  br i1 %21, label %23, label %45

23:                                               ; preds = %20, %17
  %24 = phi i32 [ %19, %17 ], [ %22, %20 ]
  %25 = and i64 %8, -1085367510196289536
  %26 = icmp eq i64 %25, -2305843009213693952
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = and i64 %8, 492581209243648
  %29 = icmp eq i64 %28, 70368744177664
  %30 = select i1 %2, i1 %29, i1 false
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = xor i1 %2, true
  %33 = and i64 %8, 3940649673949184
  %34 = icmp eq i64 %33, 562949953421312
  %35 = select i1 %32, i1 %34, i1 false
  br i1 %35, label %36, label %38

36:                                               ; preds = %31, %27
  %37 = trunc i64 %8 to i32
  br label %38

38:                                               ; preds = %36, %31, %23
  %39 = phi i32 [ %37, %36 ], [ -1, %31 ], [ -1, %23 ]
  %40 = getelementptr %struct.vc4_shader_validation_state, ptr %1, i32 0, i32 7, i32 %24
  store i32 %39, ptr %40, align 4
  %41 = and i32 %24, -48
  %42 = icmp eq i32 %41, 16
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.vc4_shader_validation_state, ptr %1, i32 0, i32 11
  store i8 1, ptr %44, align 2
  br label %45

45:                                               ; preds = %43, %38, %20
  switch i32 %12, label %250 [
    i32 40, label %46
    i32 50, label %249
    i32 51, label %248
    i32 47, label %248
    i32 56, label %136
    i32 57, label %136
    i32 58, label %136
    i32 59, label %136
    i32 60, label %136
    i32 61, label %136
    i32 62, label %136
    i32 63, label %136
    i32 38, label %248
    i32 36, label %248
  ]

46:                                               ; preds = %45
  br i1 %15, label %47, label %48

47:                                               ; preds = %46
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.16) #9
  br label %250

48:                                               ; preds = %46
  %49 = load ptr, ptr %4, align 4
  %50 = load i32, ptr %1, align 4
  %51 = getelementptr i64, ptr %49, i32 %50
  %52 = load i64, ptr %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = lshr i32 %53, 6
  %55 = and i32 %54, 7
  %56 = lshr i32 %53, 9
  %57 = and i32 %56, 7
  %58 = lshr i32 %53, 12
  %59 = and i32 %58, 63
  %60 = icmp eq i32 %57, 6
  br i1 %60, label %61, label %64

61:                                               ; preds = %48
  %62 = lshr i32 %53, 18
  %63 = and i32 %62, 63
  br label %75

64:                                               ; preds = %48
  %65 = icmp eq i32 %57, 7
  %66 = and i64 %52, -1152921504606846976
  %67 = icmp ne i64 %66, -3458764513820540928
  %68 = and i1 %67, %65
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = add nuw nsw i32 %59, 32
  br label %75

71:                                               ; preds = %64
  %72 = icmp ult i32 %57, 4
  %73 = or i32 %57, 64
  %74 = select i1 %72, i32 %73, i32 -1
  br label %75

75:                                               ; preds = %71, %69, %61
  %76 = phi i32 [ %63, %61 ], [ %70, %69 ], [ %74, %71 ]
  %77 = load i32, ptr %0, align 4
  %78 = add i32 %77, 4
  %79 = lshr i64 %52, 60
  %80 = trunc i64 %79 to i32
  switch i32 %80, label %81 [
    i32 1, label %82
    i32 5, label %82
    i32 8, label %82
    i32 10, label %82
    i32 11, label %82
  ]

81:                                               ; preds = %75
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.19) #9
  br label %250

82:                                               ; preds = %75, %75, %75, %75, %75
  %83 = and i64 %52, 520093696
  %84 = icmp ne i64 %83, 201326592
  %85 = or i1 %84, %2
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.20) #9
  br label %250

87:                                               ; preds = %82
  %88 = and i64 %52, 3940649673949184
  %89 = icmp eq i64 %88, 562949953421312
  br i1 %89, label %91, label %90

90:                                               ; preds = %87
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.21) #9
  br label %250

91:                                               ; preds = %87
  %92 = and i64 %52, 67553994410557440
  %93 = icmp ne i64 %92, 0
  %94 = and i64 %52, 72057594037927936
  %95 = icmp eq i64 %94, 0
  %96 = and i1 %93, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.22) #9
  br label %250

98:                                               ; preds = %91
  %99 = icmp eq i32 %76, -1
  br i1 %99, label %100, label %101

100:                                              ; preds = %98
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.23) #9
  br label %250

101:                                              ; preds = %98
  %102 = getelementptr %struct.vc4_shader_validation_state, ptr %1, i32 0, i32 7, i32 %76
  %103 = load i32, ptr %102, align 4
  %104 = icmp eq i32 %103, %78
  br i1 %104, label %106, label %105

105:                                              ; preds = %101
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.24, i32 noundef %103, i32 noundef %78) #9
  br label %250

106:                                              ; preds = %101
  %107 = icmp eq i32 %55, 6
  %108 = and i64 %52, 16515072
  %109 = icmp eq i64 %108, 8388608
  %110 = and i1 %109, %107
  br i1 %110, label %117, label %111

111:                                              ; preds = %106
  %112 = icmp eq i32 %55, 7
  %113 = and i64 %52, 258048
  %114 = icmp eq i64 %113, 131072
  %115 = and i1 %114, %112
  br i1 %115, label %117, label %116

116:                                              ; preds = %111
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.25) #9
  br label %250

117:                                              ; preds = %111, %106
  %118 = getelementptr inbounds %struct.vc4_shader_validation_state, ptr %1, i32 0, i32 9
  store i8 0, ptr %118, align 4
  %119 = getelementptr inbounds %struct.vc4_shader_validation_state, ptr %1, i32 0, i32 10
  store i8 0, ptr %119, align 1
  %120 = getelementptr inbounds %struct.vc4_validated_shader_info, ptr %0, i32 0, i32 4
  %121 = load i32, ptr %120, align 4
  %122 = load i32, ptr %0, align 4
  %123 = getelementptr inbounds %struct.vc4_validated_shader_info, ptr %0, i32 0, i32 5
  %124 = load ptr, ptr %123, align 4
  %125 = shl i32 %121, 2
  %126 = add i32 %125, 4
  %127 = tail call noalias ptr @krealloc(ptr noundef %124, i32 noundef %126, i32 noundef 3264) #12
  store ptr %127, ptr %123, align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %134, label %129

129:                                              ; preds = %117
  %130 = lshr i32 %122, 2
  %131 = getelementptr i32, ptr %127, i32 %121
  store i32 %130, ptr %131, align 4
  %132 = load i32, ptr %120, align 4
  %133 = add i32 %132, 1
  store i32 %133, ptr %120, align 4
  br label %134

134:                                              ; preds = %129, %117
  %135 = xor i1 %128, true
  br label %250

136:                                              ; preds = %45, %45, %45, %45, %45, %45, %45, %45
  %137 = load ptr, ptr %4, align 4
  %138 = load i32, ptr %1, align 4
  %139 = getelementptr i64, ptr %137, i32 %138
  %140 = load i64, ptr %139, align 8
  %141 = lshr i64 %140, %9
  %142 = trunc i64 %141 to i32
  %143 = and i32 %142, 60
  %144 = trunc i64 %140 to i32
  %145 = lshr i32 %144, 18
  %146 = and i32 %145, 63
  %147 = lshr i32 %144, 12
  %148 = and i32 %147, 63
  %149 = icmp eq i32 %143, 60
  %150 = zext i1 %149 to i32
  %151 = and i32 %142, 59
  %152 = icmp eq i32 %151, 56
  br i1 %152, label %156, label %153

153:                                              ; preds = %136
  %154 = lshr i64 %140, 60
  %155 = trunc i64 %154 to i32
  br label %208

156:                                              ; preds = %136
  %157 = getelementptr %struct.vc4_shader_validation_state, ptr %1, i32 0, i32 4, i32 %150
  %158 = load i32, ptr %157, align 4
  %159 = icmp eq i32 %158, 0
  %160 = lshr i64 %140, 60
  %161 = trunc i64 %160 to i32
  br i1 %159, label %162, label %208

162:                                              ; preds = %156
  %163 = lshr i32 %144, 6
  %164 = and i32 %163, 7
  %165 = icmp eq i32 %161, 13
  br i1 %165, label %166, label %167

166:                                              ; preds = %162
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.26) #9
  br label %250

167:                                              ; preds = %162
  %168 = xor i1 %2, true
  %169 = and i64 %140, 520093696
  %170 = icmp eq i64 %169, 201326592
  %171 = select i1 %168, i1 %170, i1 false
  br i1 %171, label %173, label %172

172:                                              ; preds = %167
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.27) #9
  br label %250

173:                                              ; preds = %167
  %174 = lshr i32 %144, 9
  %175 = and i32 %174, 7
  %176 = icmp eq i32 %175, 6
  br i1 %176, label %188, label %177

177:                                              ; preds = %173
  %178 = icmp eq i32 %175, 7
  %179 = and i64 %140, -1152921504606846976
  %180 = icmp ne i64 %179, -3458764513820540928
  %181 = and i1 %180, %178
  br i1 %181, label %182, label %184

182:                                              ; preds = %177
  %183 = add nuw nsw i32 %148, 32
  br label %188

184:                                              ; preds = %177
  %185 = icmp ult i32 %175, 4
  %186 = or i32 %175, 64
  br i1 %185, label %188, label %187

187:                                              ; preds = %184
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.28) #9
  br label %250

188:                                              ; preds = %184, %182, %173
  %189 = phi i32 [ %146, %173 ], [ %183, %182 ], [ %186, %184 ]
  %190 = getelementptr %struct.vc4_shader_validation_state, ptr %1, i32 0, i32 5, i32 %189
  %191 = load i32, ptr %190, align 4
  %192 = icmp eq i32 %191, -1
  br i1 %192, label %193, label %194

193:                                              ; preds = %188
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.28) #9
  br label %250

194:                                              ; preds = %188
  %195 = getelementptr %struct.vc4_shader_validation_state, ptr %1, i32 0, i32 3, i32 %150
  %196 = getelementptr %struct.vc4_shader_validation_state, ptr %1, i32 0, i32 3, i32 %150, i32 1, i32 1
  store i32 %191, ptr %196, align 4
  %197 = icmp eq i32 %164, 6
  %198 = icmp eq i32 %146, 32
  %199 = select i1 %197, i1 %198, i1 false
  br i1 %199, label %205, label %200

200:                                              ; preds = %194
  %201 = icmp eq i32 %164, 7
  %202 = icmp eq i32 %148, 32
  %203 = select i1 %201, i1 %202, i1 false
  br i1 %203, label %205, label %204

204:                                              ; preds = %200
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.29) #9
  br label %250

205:                                              ; preds = %200, %194
  store i8 1, ptr %195, align 4
  %206 = load i32, ptr %0, align 4
  %207 = getelementptr %struct.vc4_shader_validation_state, ptr %1, i32 0, i32 3, i32 %150, i32 1, i32 0
  store i32 %206, ptr %207, align 4
  store i32 1, ptr %157, align 4
  br label %233

208:                                              ; preds = %156, %153
  %209 = phi i32 [ %155, %153 ], [ %161, %156 ]
  %210 = icmp eq i32 %146, 32
  br i1 %210, label %215, label %211

211:                                              ; preds = %208
  %212 = icmp ne i32 %209, 13
  %213 = icmp eq i32 %148, 32
  %214 = select i1 %212, i1 %213, i1 false
  br i1 %214, label %215, label %216

215:                                              ; preds = %211, %208
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.30) #9
  br label %250

216:                                              ; preds = %211
  %217 = getelementptr %struct.vc4_shader_validation_state, ptr %1, i32 0, i32 4, i32 %150
  %218 = load i32, ptr %217, align 4
  %219 = icmp sgt i32 %218, 3
  br i1 %219, label %220, label %221

220:                                              ; preds = %216
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.31, i32 noundef %150) #9
  br label %250

221:                                              ; preds = %216
  %222 = load i32, ptr %0, align 4
  %223 = getelementptr %struct.vc4_shader_validation_state, ptr %1, i32 0, i32 3, i32 %150, i32 1, i32 %218
  store i32 %222, ptr %223, align 4
  %224 = load i32, ptr %217, align 4
  %225 = add i32 %224, 1
  store i32 %225, ptr %217, align 4
  %226 = getelementptr inbounds %struct.vc4_shader_validation_state, ptr %1, i32 0, i32 9
  %227 = load i8, ptr %226, align 4, !range !8
  %228 = icmp eq i8 %227, 0
  br i1 %228, label %230, label %229

229:                                              ; preds = %221
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.32) #9
  br label %250

230:                                              ; preds = %221
  %231 = load i32, ptr %0, align 4
  %232 = add i32 %231, 4
  store i32 %232, ptr %0, align 4
  br i1 %152, label %233, label %250

233:                                              ; preds = %230, %205
  %234 = phi ptr [ %157, %205 ], [ %217, %230 ]
  %235 = getelementptr inbounds %struct.vc4_validated_shader_info, ptr %0, i32 0, i32 2
  %236 = load i32, ptr %235, align 4
  %237 = getelementptr inbounds %struct.vc4_validated_shader_info, ptr %0, i32 0, i32 3
  %238 = load ptr, ptr %237, align 4
  %239 = add i32 %236, 1
  %240 = mul i32 %239, 20
  %241 = tail call noalias ptr @krealloc(ptr noundef %238, i32 noundef %240, i32 noundef 3264) #12
  %242 = icmp eq ptr %241, null
  br i1 %242, label %250, label %243

243:                                              ; preds = %233
  %244 = getelementptr %struct.vc4_texture_sample_info, ptr %241, i32 %236
  %245 = getelementptr %struct.vc4_shader_validation_state, ptr %1, i32 0, i32 3, i32 %150
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(20) %244, ptr noundef align 4 dereferenceable(20) %245, i32 20, i1 false) #9
  store i32 %239, ptr %235, align 4
  store ptr %241, ptr %237, align 4
  %246 = select i1 %149, i32 36, i32 16
  %247 = getelementptr i8, ptr %1, i32 %246
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %247, i8 -1, i32 16, i1 false) #9
  store i32 0, ptr %234, align 4
  br label %250

248:                                              ; preds = %45, %45, %45, %45
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.17, i32 noundef %12) #9
  br label %250

249:                                              ; preds = %45
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.18) #9
  br label %250

250:                                              ; preds = %249, %248, %243, %233, %230, %229, %220, %215, %204, %193, %187, %172, %166, %134, %116, %105, %100, %97, %90, %86, %81, %47, %45
  %251 = phi i1 [ false, %249 ], [ false, %248 ], [ false, %47 ], [ true, %45 ], [ false, %81 ], [ false, %86 ], [ false, %90 ], [ false, %100 ], [ false, %105 ], [ %135, %134 ], [ false, %116 ], [ false, %97 ], [ false, %220 ], [ false, %229 ], [ false, %215 ], [ false, %204 ], [ false, %193 ], [ false, %187 ], [ false, %172 ], [ false, %166 ], [ true, %243 ], [ true, %230 ], [ false, %233 ]
  ret i1 %251
}

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(1) }

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
