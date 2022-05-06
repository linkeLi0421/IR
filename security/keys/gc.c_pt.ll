; ModuleID = '/llk/IR/security/keys/gc.c_pt.bc'
source_filename = "../security/keys/gc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.key_type = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.lock_class_key }
%struct.lock_class_key = type {}
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.rb_root = type { ptr }
%struct.key_user = type { %struct.rb_node, %struct.mutex, %struct.spinlock, %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.kuid_t, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.kuid_t = type { i32 }

@key_gc_delay = dso_local local_unnamed_addr global i32 300, align 4
@key_gc_work = dso_local global %struct.work_struct { %struct.atomic_t { i32 -32 }, %struct.list_head { ptr getelementptr (i8, ptr @key_gc_work, i64 4), ptr getelementptr (i8, ptr @key_gc_work, i64 4) }, ptr @key_garbage_collector }, align 4
@.str = private unnamed_addr constant [6 x i8] c".dead\00", align 1
@key_type_dead = dso_local global %struct.key_type { ptr @.str, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, %struct.lock_class_key zeroinitializer }, align 4
@key_gc_flags = internal global i32 0, align 4
@key_gc_next_run = internal unnamed_addr global i64 9223372036854775807, align 8
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@key_gc_timer = internal global %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @key_gc_timer_func, i32 0 }, align 4
@key_gc_dead_keytype = internal unnamed_addr global ptr null, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@key_garbage_collector.graveyard = internal global %struct.list_head { ptr @key_garbage_collector.graveyard, ptr @key_garbage_collector.graveyard }, align 4
@key_garbage_collector.gc_state = internal unnamed_addr global i8 0, align 1
@key_serial_lock = external dso_local global %struct.spinlock, align 4
@key_serial_tree = external dso_local global %struct.rb_root, align 4
@key_type_keyring = external dso_local global %struct.key_type, align 4
@key_jar = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @key_garbage_collector(ptr nocapture noundef readnone %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = tail call i64 @ktime_get_real_seconds() #6
  %5 = load i32, ptr @key_gc_delay, align 4
  %6 = zext i32 %5 to i64
  %7 = icmp sgt i64 %4, %6
  %8 = sub i64 %4, %6
  %9 = select i1 %7, i64 %8, i64 %6
  %10 = load i8, ptr @key_garbage_collector.gc_state, align 1
  %11 = shl i8 %10, 1
  %12 = and i8 %11, 96
  store i8 %12, ptr @key_garbage_collector.gc_state, align 1
  %13 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef nonnull @key_gc_flags) #6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i8, ptr @key_garbage_collector.gc_state, align 1
  %17 = or i8 %16, 6
  store i8 %17, ptr @key_garbage_collector.gc_state, align 1
  br label %18

18:                                               ; preds = %15, %1
  %19 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef nonnull @key_gc_flags) #6
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i8, ptr @key_garbage_collector.gc_state, align 1
  %23 = or i8 %22, 16
  store i8 %23, ptr @key_garbage_collector.gc_state, align 1
  br label %24

24:                                               ; preds = %21, %18
  tail call void @_raw_spin_lock(ptr noundef nonnull @key_serial_lock) #6
  %25 = tail call ptr @rb_first(ptr noundef nonnull @key_serial_tree) #6
  br label %26

26:                                               ; preds = %117, %24
  %27 = phi i64 [ 9223372036854775807, %24 ], [ %114, %117 ]
  %28 = phi ptr [ %25, %24 ], [ %115, %117 ]
  %29 = icmp eq ptr %28, null
  br i1 %29, label %108, label %30

30:                                               ; preds = %101, %26
  %31 = phi i64 [ %94, %101 ], [ %27, %26 ]
  %32 = phi ptr [ %34, %101 ], [ %28, %26 ]
  %33 = getelementptr i8, ptr %32, i32 -8
  %34 = tail call ptr @rb_next(ptr noundef nonnull %32) #6
  %35 = load volatile i32, ptr %33, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %187, label %37

37:                                               ; preds = %30
  %38 = load i8, ptr @key_garbage_collector.gc_state, align 1
  %39 = and i8 %38, 16
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %56, label %41, !prof !8

41:                                               ; preds = %37
  %42 = getelementptr i8, ptr %32, i32 96
  %43 = load ptr, ptr %42, align 8
  %44 = load ptr, ptr @key_gc_dead_keytype, align 4
  %45 = icmp eq ptr %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = or i8 %38, -128
  store i8 %47, ptr @key_garbage_collector.gc_state, align 1
  %48 = getelementptr i8, ptr %32, i32 84
  tail call void @_set_bit(i32 noundef 0, ptr noundef %48) #6
  %49 = getelementptr i8, ptr %32, i32 72
  store i32 0, ptr %49, align 8
  br label %93

50:                                               ; preds = %41
  %51 = icmp eq ptr %43, @key_type_keyring
  br i1 %51, label %52, label %56

52:                                               ; preds = %50
  %53 = getelementptr i8, ptr %32, i32 124
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %194

56:                                               ; preds = %52, %50, %37
  %57 = and i8 %38, 4
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %56
  %60 = getelementptr i8, ptr %32, i32 48
  %61 = load i64, ptr %60, align 8
  %62 = icmp sgt i64 %61, %9
  %63 = icmp slt i64 %61, %31
  %64 = select i1 %62, i1 %63, i1 false
  %65 = select i1 %64, i64 %61, i64 %31
  br label %66

66:                                               ; preds = %59, %56
  %67 = phi i64 [ %31, %56 ], [ %65, %59 ]
  %68 = and i8 %38, 32
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %77, label %70, !prof !8

70:                                               ; preds = %66
  %71 = getelementptr i8, ptr %32, i32 96
  %72 = load ptr, ptr %71, align 8
  %73 = load ptr, ptr @key_gc_dead_keytype, align 4
  %74 = icmp eq ptr %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = or i8 %38, -128
  store i8 %76, ptr @key_garbage_collector.gc_state, align 1
  br label %77

77:                                               ; preds = %75, %70, %66
  %78 = phi i8 [ %38, %70 ], [ %76, %75 ], [ %38, %66 ]
  %79 = and i8 %78, 34
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %85, label %81, !prof !9

81:                                               ; preds = %77
  %82 = getelementptr i8, ptr %32, i32 96
  %83 = load ptr, ptr %82, align 8
  %84 = icmp eq ptr %83, @key_type_keyring
  br i1 %84, label %199, label %85

85:                                               ; preds = %81, %77
  %86 = and i8 %78, 64
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %93, label %88, !prof !8

88:                                               ; preds = %85
  %89 = getelementptr i8, ptr %32, i32 96
  %90 = load ptr, ptr %89, align 8
  %91 = load ptr, ptr @key_gc_dead_keytype, align 4
  %92 = icmp eq ptr %90, %91
  br i1 %92, label %203, label %93

93:                                               ; preds = %88, %85, %46
  %94 = phi i64 [ %31, %46 ], [ %67, %88 ], [ %67, %85 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3)
  %95 = load volatile i16, ptr @key_serial_lock, align 4
  store volatile i16 %95, ptr %2, align 2
  %96 = load volatile i16, ptr getelementptr (i8, ptr @key_serial_lock, i32 2), align 2
  store volatile i16 %96, ptr %3, align 2
  %97 = zext i16 %96 to i32
  %98 = zext i16 %95 to i32
  %99 = sub nsw i32 %97, %98
  %100 = icmp slt i32 %99, 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3)
  br i1 %100, label %101, label %108

101:                                              ; preds = %93
  %102 = tail call ptr @llvm.thread.pointer() #6
  %103 = load volatile i32, ptr %102, align 4
  %104 = and i32 %103, 2
  %105 = icmp eq i32 %104, 0
  %106 = icmp ne ptr %34, null
  %107 = select i1 %105, i1 %106, i1 false
  br i1 %107, label %30, label %108

108:                                              ; preds = %101, %93, %26
  %109 = phi i64 [ %27, %26 ], [ %94, %101 ], [ %94, %93 ]
  %110 = phi ptr [ null, %26 ], [ %34, %101 ], [ %34, %93 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !10
  %111 = load i16, ptr @key_serial_lock, align 4
  %112 = add i16 %111, 1
  store i16 %112, ptr @key_serial_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !13
  br label %113

113:                                              ; preds = %214, %199, %194, %187, %108
  %114 = phi i64 [ %31, %187 ], [ %109, %108 ], [ %31, %194 ], [ %67, %199 ], [ %67, %214 ]
  %115 = phi ptr [ %34, %187 ], [ %110, %108 ], [ %34, %194 ], [ %34, %199 ], [ %34, %214 ]
  %116 = icmp eq ptr %115, null
  br i1 %116, label %119, label %117

117:                                              ; preds = %113
  %118 = tail call i32 @__cond_resched() #6
  tail call void @_raw_spin_lock(ptr noundef nonnull @key_serial_lock) #6
  br label %26

119:                                              ; preds = %113
  %120 = load i8, ptr @key_garbage_collector.gc_state, align 1
  %121 = and i8 %120, 4
  %122 = icmp ne i8 %121, 0
  %123 = icmp ne i64 %114, 9223372036854775807
  %124 = select i1 %122, i1 %123, i1 false
  br i1 %124, label %125, label %148

125:                                              ; preds = %119
  %126 = load i32, ptr @key_gc_delay, align 4
  %127 = zext i32 %126 to i64
  %128 = add i64 %114, %127
  %129 = tail call i64 @ktime_get_real_seconds() #6
  %130 = icmp sgt i64 %128, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %125
  %132 = load volatile i32, ptr @key_gc_flags, align 4
  %133 = and i32 %132, 2
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %131, %125
  %136 = load ptr, ptr @system_wq, align 4
  %137 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %136, ptr noundef nonnull @key_gc_work) #6
  br label %148

138:                                              ; preds = %131
  %139 = load i64, ptr @key_gc_next_run, align 8
  %140 = icmp sgt i64 %139, %128
  br i1 %140, label %141, label %148

141:                                              ; preds = %138
  store i64 %128, ptr @key_gc_next_run, align 8
  %142 = load volatile i32, ptr @jiffies, align 64
  %143 = sub i64 %128, %129
  %144 = trunc i64 %143 to i32
  %145 = mul i32 %144, 100
  %146 = add i32 %142, %145
  %147 = tail call i32 @mod_timer(ptr noundef nonnull @key_gc_timer, i32 noundef %146) #6
  br label %148

148:                                              ; preds = %141, %138, %135, %119
  %149 = load i8, ptr @key_garbage_collector.gc_state, align 1
  %150 = and i8 %149, 32
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %152, label %155, !prof !8

152:                                              ; preds = %148
  %153 = load volatile ptr, ptr @key_garbage_collector.graveyard, align 4
  %154 = icmp eq ptr %153, @key_garbage_collector.graveyard
  br i1 %154, label %156, label %155

155:                                              ; preds = %152, %148
  tail call void @synchronize_rcu() #6
  br label %156

156:                                              ; preds = %155, %152
  %157 = load volatile ptr, ptr @key_garbage_collector.graveyard, align 4
  %158 = icmp eq ptr %157, @key_garbage_collector.graveyard
  br i1 %158, label %160, label %159

159:                                              ; preds = %156
  tail call fastcc void @key_gc_unused_keys()
  br label %160

160:                                              ; preds = %159, %156
  %161 = load i8, ptr @key_garbage_collector.gc_state, align 1
  %162 = zext i8 %161 to i32
  %163 = and i32 %162, 48
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %173, label %165, !prof !8

165:                                              ; preds = %160
  %166 = and i32 %162, 128
  %167 = icmp eq i32 %166, 0
  %168 = and i8 %161, -113
  %169 = or i8 %168, 64
  %170 = or i8 %161, 1
  %171 = select i1 %167, i8 %169, i8 %170
  %172 = select i1 %167, i8 %169, i8 %170
  store i8 %171, ptr @key_garbage_collector.gc_state, align 1
  br label %173

173:                                              ; preds = %165, %160
  %174 = phi i8 [ %161, %160 ], [ %172, %165 ]
  %175 = and i8 %174, 64
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %179, label %177, !prof !8

177:                                              ; preds = %173
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !14
  tail call void @_clear_bit(i32 noundef 2, ptr noundef nonnull @key_gc_flags) #6
  tail call void @wake_up_bit(ptr noundef nonnull @key_gc_flags, i32 noundef 2) #6
  %178 = load i8, ptr @key_garbage_collector.gc_state, align 1
  br label %179

179:                                              ; preds = %177, %173
  %180 = phi i8 [ %178, %177 ], [ %174, %173 ]
  %181 = and i8 %180, 1
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %186, label %183

183:                                              ; preds = %179
  %184 = load ptr, ptr @system_wq, align 4
  %185 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %184, ptr noundef nonnull @key_gc_work) #6
  br label %186

186:                                              ; preds = %183, %179
  ret void

187:                                              ; preds = %30
  tail call void @rb_erase(ptr noundef nonnull %32, ptr noundef nonnull @key_serial_tree) #6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !10
  %188 = load i16, ptr @key_serial_lock, align 4
  %189 = add i16 %188, 1
  store i16 %189, ptr @key_serial_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !13
  %190 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @key_garbage_collector.graveyard, i32 0, i32 1), align 4
  store ptr %32, ptr getelementptr inbounds (%struct.list_head, ptr @key_garbage_collector.graveyard, i32 0, i32 1), align 4
  store ptr @key_garbage_collector.graveyard, ptr %32, align 4
  %191 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  store ptr %190, ptr %191, align 4
  store volatile ptr %32, ptr %190, align 4
  %192 = load i8, ptr @key_garbage_collector.gc_state, align 1
  %193 = or i8 %192, 1
  store i8 %193, ptr @key_garbage_collector.gc_state, align 1
  br label %113

194:                                              ; preds = %52
  %195 = getelementptr i8, ptr %32, i32 -8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !10
  %196 = load i16, ptr @key_serial_lock, align 4
  %197 = add i16 %196, 1
  store i16 %197, ptr @key_serial_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !13
  %198 = load ptr, ptr @key_gc_dead_keytype, align 4
  tail call void @keyring_restriction_gc(ptr noundef %195, ptr noundef %198) #6
  br label %113

199:                                              ; preds = %81
  %200 = getelementptr i8, ptr %32, i32 -8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !10
  %201 = load i16, ptr @key_serial_lock, align 4
  %202 = add i16 %201, 1
  store i16 %202, ptr @key_serial_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !13
  tail call void @keyring_gc(ptr noundef %200, i64 noundef %9) #6
  br label %113

203:                                              ; preds = %88
  %204 = getelementptr i8, ptr %32, i32 96
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !10
  %205 = load i16, ptr @key_serial_lock, align 4
  %206 = add i16 %205, 1
  store i16 %206, ptr @key_serial_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !13
  %207 = getelementptr i8, ptr %32, i32 12
  tail call void @down_write(ptr noundef %207) #6
  store ptr @key_type_dead, ptr %204, align 8
  %208 = load ptr, ptr @key_gc_dead_keytype, align 4
  %209 = getelementptr inbounds %struct.key_type, ptr %208, i32 0, i32 11
  %210 = load ptr, ptr %209, align 4
  %211 = icmp eq ptr %210, null
  br i1 %211, label %214, label %212

212:                                              ; preds = %203
  %213 = getelementptr i8, ptr %32, i32 -8
  tail call void %210(ptr noundef %213) #6
  br label %214

214:                                              ; preds = %212, %203
  %215 = getelementptr i8, ptr %32, i32 108
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %215, i8 -67, i32 16, i1 false)
  tail call void @up_write(ptr noundef %207) #6
  br label %113
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @key_schedule_gc(i64 noundef %0) local_unnamed_addr #0 {
  %2 = tail call i64 @ktime_get_real_seconds() #6
  %3 = icmp slt i64 %2, %0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = load volatile i32, ptr @key_gc_flags, align 4
  %6 = and i32 %5, 2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4, %1
  %9 = load ptr, ptr @system_wq, align 4
  %10 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %9, ptr noundef nonnull @key_gc_work) #6
  br label %21

11:                                               ; preds = %4
  %12 = load i64, ptr @key_gc_next_run, align 8
  %13 = icmp sgt i64 %12, %0
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  store i64 %0, ptr @key_gc_next_run, align 8
  %15 = load volatile i32, ptr @jiffies, align 64
  %16 = sub i64 %0, %2
  %17 = trunc i64 %16 to i32
  %18 = mul i32 %17, 100
  %19 = add i32 %15, %18
  %20 = tail call i32 @mod_timer(ptr noundef nonnull @key_gc_timer, i32 noundef %19) #6
  br label %21

21:                                               ; preds = %14, %11, %8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @key_schedule_gc_links() local_unnamed_addr #0 {
  tail call void @_set_bit(i32 noundef 0, ptr noundef nonnull @key_gc_flags) #6
  %1 = load ptr, ptr @system_wq, align 4
  %2 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %1, ptr noundef nonnull @key_gc_work) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @key_gc_keytype(ptr noundef %0) local_unnamed_addr #0 {
  store ptr %0, ptr @key_gc_dead_keytype, align 4
  tail call void @_set_bit(i32 noundef 2, ptr noundef nonnull @key_gc_flags) #6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !15
  tail call void @_set_bit(i32 noundef 1, ptr noundef nonnull @key_gc_flags) #6
  %2 = load ptr, ptr @system_wq, align 4
  %3 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %2, ptr noundef nonnull @key_gc_work) #6
  %4 = load volatile i32, ptr @key_gc_flags, align 4
  %5 = and i32 %4, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @out_of_line_wait_on_bit(ptr noundef nonnull @key_gc_flags, i32 noundef 2, ptr noundef nonnull @bit_wait, i32 noundef 2) #6
  br label %9

9:                                                ; preds = %7, %1
  store ptr null, ptr @key_gc_dead_keytype, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @key_gc_timer_func(ptr nocapture noundef readnone %0) #0 {
  store i64 9223372036854775807, ptr @key_gc_next_run, align 8
  tail call void @_set_bit(i32 noundef 0, ptr noundef nonnull @key_gc_flags) #6
  %2 = load ptr, ptr @system_wq, align 4
  %3 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %2, ptr noundef nonnull @key_gc_work) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @out_of_line_wait_on_bit(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_wait(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @key_gc_unused_keys() unnamed_addr #3 {
  %1 = load volatile ptr, ptr @key_garbage_collector.graveyard, align 4
  %2 = icmp eq ptr %1, @key_garbage_collector.graveyard
  br i1 %2, label %64, label %3

3:                                                ; preds = %54, %0
  %4 = phi ptr [ %62, %54 ], [ %1, %0 ]
  %5 = getelementptr i8, ptr %4, i32 -8
  %6 = getelementptr i8, ptr %4, i32 80
  %7 = load i16, ptr %6, align 8
  %8 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %4, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %9, ptr %11, align 4
  store volatile ptr %10, ptr %9, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %8, align 4
  %12 = icmp eq i16 %7, 1
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = getelementptr i8, ptr %4, i32 96
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.key_type, ptr %15, i32 0, i32 11
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  tail call void %17(ptr noundef %5) #6
  br label %20

20:                                               ; preds = %19, %13, %3
  %21 = getelementptr i8, ptr %4, i32 84
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %22, 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %44, label %25

25:                                               ; preds = %20
  %26 = getelementptr i8, ptr %4, i32 36
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.key_user, ptr %27, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %28) #6
  %29 = load ptr, ptr %26, align 4
  %30 = getelementptr inbounds %struct.key_user, ptr %29, i32 0, i32 7
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, -1
  store i32 %32, ptr %30, align 4
  %33 = getelementptr i8, ptr %4, i32 76
  %34 = load i16, ptr %33, align 4
  %35 = zext i16 %34 to i32
  %36 = load ptr, ptr %26, align 4
  %37 = getelementptr inbounds %struct.key_user, ptr %36, i32 0, i32 8
  %38 = load i32, ptr %37, align 4
  %39 = sub i32 %38, %35
  store i32 %39, ptr %37, align 4
  %40 = load ptr, ptr %26, align 4
  %41 = getelementptr inbounds %struct.key_user, ptr %40, i32 0, i32 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !10
  %42 = load i16, ptr %41, align 4
  %43 = add i16 %42, 1
  store i16 %43, ptr %41, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !13
  br label %44

44:                                               ; preds = %25, %20
  %45 = getelementptr i8, ptr %4, i32 36
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.key_user, ptr %46, i32 0, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %47) #6, !srcloc !16
  %48 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %47, ptr %47, i32 1, ptr elementtype(i32) %47) #6, !srcloc !17
  %49 = icmp eq i16 %7, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %44
  %51 = load ptr, ptr %45, align 4
  %52 = getelementptr inbounds %struct.key_user, ptr %51, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %52) #6, !srcloc !16
  %53 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %52, ptr %52, i32 1, ptr elementtype(i32) %52) #6, !srcloc !17
  br label %54

54:                                               ; preds = %50, %44
  %55 = load ptr, ptr %45, align 4
  tail call void @key_user_put(ptr noundef %55) #6
  %56 = getelementptr i8, ptr %4, i32 100
  %57 = load ptr, ptr %56, align 4
  %58 = tail call zeroext i1 @key_put_tag(ptr noundef %57) #6
  %59 = getelementptr i8, ptr %4, i32 104
  %60 = load ptr, ptr %59, align 8
  tail call void @kfree(ptr noundef %60) #6
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(136) %5, i8 0, i32 136, i1 false) #6
  tail call void asm sideeffect "", "r,~{memory}"(ptr %5) #6, !srcloc !18
  %61 = load ptr, ptr @key_jar, align 4
  tail call void @kmem_cache_free(ptr noundef %61, ptr noundef %5) #6
  %62 = load volatile ptr, ptr @key_garbage_collector.graveyard, align 4
  %63 = icmp eq ptr %62, @key_garbage_collector.graveyard
  br i1 %63, label %64, label %3

64:                                               ; preds = %54, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @keyring_restriction_gc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @keyring_gc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_user_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @key_put_tag(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{!"branch_weights", i32 2000, i32 2002}
!10 = !{i64 2148932491}
!11 = !{i64 2148928315}
!12 = !{i64 2148928390, i64 2148928417, i64 2148928464, i64 2148928486, i64 2148928514, i64 2148928534}
!13 = !{i64 2148955494}
!14 = !{i64 2152314782}
!15 = !{i64 2152305237}
!16 = !{i64 763887, i64 2148253858, i64 2148253884, i64 2148253931, i64 2148253953, i64 2148253981, i64 2148254001}
!17 = !{i64 2148267630, i64 2148267656, i64 2148267685, i64 2148267719, i64 2148267750, i64 2148267773}
!18 = !{i64 2148871885}
