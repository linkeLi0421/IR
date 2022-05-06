; ModuleID = '/llk/IR/drivers/media/platform/rcar-vin/rcar-dma.c_pt.bc'
source_filename = "../drivers/media/platform/rcar-vin/rcar-dma.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vin_coeff = type { i16, [24 x i32] }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rvin_dev = type { ptr, ptr, ptr, %struct.video_device, %struct.v4l2_device, %struct.v4l2_ctrl_handler, %struct.v4l2_async_notifier, %struct.rvin_parallel_entity, ptr, i32, %struct.media_pad, %struct.mutex, %struct.vb2_queue, ptr, i32, %struct.spinlock, [3 x %struct.anon.82], %struct.list_head, i32, i32, i8, i32, i32, %struct.v4l2_pix_format, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, i64, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.68 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.65], %struct.media_entity_enum, i32 }
%struct.anon.65 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.rvin_parallel_entity = type { ptr, ptr, i32, %struct.v4l2_fwnode_bus_parallel, i32, i32 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.82 = type { ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.83, i32, i32 }
%union.anon.83 = type { i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.rvin_video_format = type { i32, i8 }
%struct.rvin_info = type { i32, i8, i8, i8, i32, i32, ptr }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.74, i16, i16, i16, [10 x i16] }
%union.anon.74 = type { i16 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.80, i32 }
%union.anon.80 = type { i32 }
%struct.rvin_group_route = type { i32, i32, i32, i32 }
%struct.rvin_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head }

@.str = private unnamed_addr constant [47 x i8] c"Failed stop HW, something is seriously broken\0A\00", align 1
@rvin_dma_register.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"&vin->lock\00", align 1
@rvin_qops = internal constant %struct.vb2_ops { ptr @rvin_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @rvin_buffer_prepare, ptr null, ptr null, ptr @rvin_start_streaming_vq, ptr @rvin_stop_streaming_vq, ptr @rvin_buffer_queue, ptr null }, align 4
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"failed to initialize VB2 queue\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"rcar_vin\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"failed to request irq\0A\00", align 1
@vin_coeff_set = internal constant [31 x %struct.vin_coeff] [%struct.vin_coeff zeroinitializer, %struct.vin_coeff { i16 4096, [24 x i32] [i32 1025024, i32 1025024, i32 157440258, i32 1016, i32 1027, i32 1038146032, i32 2097133, i32 2052, i32 1019345347, i32 1049566, i32 3073, i32 1018383743, i32 2098130, i32 3072, i32 1025812781, i32 2100170, i32 3071, i32 1039532242, i32 2102220, i32 2047, i32 1054280830, i32 1052638, i32 0, i32 1065861174] }, %struct.vin_coeff { i16 4608, [24 x i32] [i32 3145713, i32 3145713, i32 44083656, i32 2098151, i32 2097146, i32 99772, i32 2099164, i32 1023, i32 1045595548, i32 2100180, i32 2, i32 1028888939, i32 1052624, i32 1027, i32 1023716653, i32 3029, i32 1027, i32 1026927847, i32 1072694244, i32 2049, i32 1036416161, i32 1073735680, i32 2048, i32 1047983201] }, %struct.vin_coeff { i16 5120, [24 x i32] [i32 1051619, i32 1051619, i32 80819610, i32 4059, i32 2098157, i32 34733459, i32 4054, i32 2098164, i32 186747, i32 2006, i32 3145723, i32 1049868630, i32 1072694234, i32 1049599, i32 1035245862, i32 1073737705, i32 1048577, i32 1030053102, i32 1073730560, i32 3, i32 1030091958, i32 1029153, i32 1026, i32 1036407934] }, %struct.vin_coeff { i16 5632, [24 x i32] [i32 3037, i32 3037, i32 106009976, i32 1072695258, i32 3043, i32 63064435, i32 1072694233, i32 3049, i32 28511583, i32 1073739743, i32 1049585, i32 247106, i32 1040364, i32 1049591, i32 1053061405, i32 1033216, i32 3145725, i32 1039467761, i32 2074650, i32 3144704, i32 1033206978, i32 3116092, i32 1048576, i32 1035323537] }, %struct.vin_coeff { i16 6144, [24 x i32] [i32 1072694236, i32 1072694236, i32 127001944, i32 1046493, i32 1072695262, i32 87197012, i32 1042403, i32 1072696290, i32 52634950, i32 1038318, i32 2025, i32 21216560, i32 2078720, i32 2030, i32 279825, i32 3121173, i32 2036, i32 1056226542, i32 3115058, i32 1049593, i32 1044714695, i32 2062419, i32 1049597, i32 1038437535] }, %struct.vin_coeff { i16 6656, [24 x i32] [i32 1044448, i32 1044448, i32 141696316, i32 2087911, i32 1047518, i32 106078521, i32 2083824, i32 991, i32 73607470, i32 3126271, i32 1072695267, i32 43231517, i32 3120146, i32 1072696295, i32 19142917, i32 2067497, i32 2029, i32 1071935723, i32 1014854, i32 2034, i32 1057274058, i32 1072658533, i32 2038, i32 1047848104] }, %struct.vin_coeff { i16 7168, [24 x i32] [i32 2085865, i32 2085865, i32 150093094, i32 3129331, i32 2089956, i32 118664483, i32 3123200, i32 1045472, i32 90381595, i32 2070544, i32 1047521, i32 62097677, i32 1018915, i32 995, i32 36956410, i32 1072661563, i32 999, i32 16003300, i32 1069515862, i32 1072696298, i32 289992, i32 1066372210, i32 1072696303, i32 1060409516] }, %struct.vin_coeff { i16 7680, [24 x i32] [i32 2079732, i32 2079732, i32 155341074, i32 2074624, i32 3131373, i32 127054096, i32 1021966, i32 2087910, i32 101912842, i32 1073712160, i32 2090979, i32 77818109, i32 1070566451, i32 1046498, i32 54769901, i32 1067420746, i32 1048547, i32 33814746, i32 1063230561, i32 998, i32 14952645, i32 1059041403, i32 1003, i32 1071923375] }, %struct.vin_coeff { i16 8192, [24 x i32] [i32 1025024, i32 1025024, i32 157440258, i32 1073715212, i32 2078709, i32 135442687, i32 1071616028, i32 2082797, i32 112393466, i32 1068470317, i32 2085864, i32 89344241, i32 1065326655, i32 2089957, i32 67341539, i32 1061135444, i32 2093027, i32 48482513, i32 1057994858, i32 2095076, i32 29616320, i32 1053808768, i32 1048550, i32 12846252] }, %struct.vin_coeff { i16 8704, [24 x i32] [i32 1071619083, i32 1071619083, i32 158489844, i32 1069520920, i32 1073718272, i32 138586353, i32 1066375207, i32 1029111, i32 117633260, i32 1063231543, i32 1033199, i32 97726692, i32 1060088905, i32 2084842, i32 77817049, i32 1056948316, i32 2087911, i32 58954954, i32 1053809775, i32 2090982, i32 41136315, i32 1050673283, i32 2093030, i32 25411753] }, %struct.vin_coeff { i16 9216, [24 x i32] [i32 1067425812, i32 1067425812, i32 159539430, i32 1065327651, i32 1070570506, i32 140680421, i32 1062183985, i32 1072669696, i32 121821409, i32 1059042368, i32 1073722360, i32 102961369, i32 1055901776, i32 1031154, i32 84099280, i32 1053810786, i32 1035244, i32 68379842, i32 1050673267, i32 2085866, i32 50560181, i32 1049632902, i32 2088936, i32 35883173] }, %struct.vin_coeff { i16 9728, [24 x i32] [i32 1063233566, i32 1063233566, i32 157440218, i32 1061137451, i32 1066378258, i32 142774488, i32 1057995832, i32 1068475400, i32 124963029, i32 1055902791, i32 1070573568, i32 108197070, i32 1053811798, i32 1072672762, i32 89332934, i32 1051721830, i32 1073724403, i32 74659003, i32 1050680439, i32 1034222, i32 59984046, i32 1050690694, i32 1037291, i32 45306017] }, %struct.vin_coeff { i16 10240, [24 x i32] [i32 1060090918, i32 1060090918, i32 155341006, i32 1057996850, i32 1062186011, i32 140674253, i32 1055903808, i32 1065330705, i32 126004425, i32 1053812812, i32 1067427847, i32 111335620, i32 1051721819, i32 1069526016, i32 95614140, i32 1051727978, i32 1071625210, i32 79890612, i32 1051738231, i32 1072675828, i32 66264232, i32 1052797060, i32 1032178, i32 50535582] }, %struct.vin_coeff { i16 10752, [24 x i32] [i32 1057997869, i32 1057997869, i32 151142596, i32 1055904825, i32 1060091938, i32 139619522, i32 1054861381, i32 1062187032, i32 125998271, i32 1052770385, i32 1064283151, i32 112374971, i32 1052776543, i32 1066380295, i32 98749620, i32 1052784747, i32 1068477440, i32 84076716, i32 1053842551, i32 1070576635, i32 70447267, i32 1055949954, i32 1071627254, i32 57866392] }, %struct.vin_coeff { i16 11264, [24 x i32] [i32 1055906865, i32 1055906865, i32 149043384, i32 1054862397, i32 1057998888, i32 136468665, i32 1053818953, i32 1059045406, i32 124942518, i32 1053824085, i32 1061140501, i32 113415346, i32 1053832288, i32 1063236621, i32 100838572, i32 1055936620, i32 1065332742, i32 88260772, i32 1058042998, i32 1067430912, i32 74631325, i32 1060150400, i32 1069529084, i32 62049428] }, %struct.vin_coeff { i16 11776, [24 x i32] [i32 1055910967, i32 1055910967, i32 142745776, i32 1054867521, i32 1056955437, i32 133317806, i32 1054872652, i32 1058000931, i32 123886765, i32 1055927383, i32 1059047450, i32 113407145, i32 1056983137, i32 1061141523, i32 100829350, i32 1059088491, i32 1063237644, i32 89300126, i32 1061194868, i32 1064286213, i32 78818454, i32 1065397374, i32 1066383360, i32 67284110] }, %struct.vin_coeff { i16 12288, [24 x i32] [i32 1055916090, i32 1055916090, i32 138547366, i32 1055920197, i32 1056959538, i32 129116327, i32 1056974926, i32 1058004009, i32 120734884, i32 1058029656, i32 1058001952, i32 111302818, i32 1060133986, i32 1060096024, i32 101869725, i32 1062240361, i32 1061142545, i32 91391126, i32 1065394290, i32 1062191114, i32 80907408, i32 1069596795, i32 1064287236, i32 71471240] }, %struct.vin_coeff { i16 12800, [24 x i32] [i32 1056968766, i32 1056968766, i32 133299358, i32 1058022471, i32 1056964661, i32 125965469, i32 1059077199, i32 1058009132, i32 118631580, i32 1061180504, i32 1058006052, i32 110248089, i32 1063284833, i32 1059050525, i32 100813975, i32 1066438760, i32 1060097046, i32 91382928, i32 1069592688, i32 1061144591, i32 82996362, i32 53367, i32 1062192137, i32 73561220] }, %struct.vin_coeff { i16 13312, [24 x i32] [i32 1059070016, i32 1059070016, i32 128051352, i32 1060123721, i32 1058016312, i32 121765016, i32 1062227024, i32 1058013231, i32 115479701, i32 1064330329, i32 1059057704, i32 108143762, i32 1067483232, i32 1059054625, i32 99759247, i32 1070636135, i32 1059052569, i32 92425353, i32 48238, i32 1060098068, i32 82989190, i32 4250740, i32 1061145613, i32 75652223] }, %struct.vin_coeff { i16 13824, [24 x i32] [i32 1061171266, i32 1061171266, i32 123852944, i32 1062225992, i32 1060117563, i32 117567632, i32 1065376848, i32 1059064883, i32 111280271, i32 1067480152, i32 1058013227, i32 106040461, i32 1070633054, i32 1059058724, i32 98705545, i32 44133, i32 1059055645, i32 92419203, i32 3198058, i32 1060101144, i32 82984065, i32 8448113, i32 1060099090, i32 75645052] }, %struct.vin_coeff { i16 14336, [24 x i32] [i32 1063272515, i32 1063272515, i32 119654538, i32 1065374794, i32 1062218812, i32 114415754, i32 1068525649, i32 1060117557, i32 109176969, i32 1070629974, i32 1060112431, i32 101842056, i32 40029, i32 1059061799, i32 97650820, i32 3192931, i32 1060107297, i32 90314880, i32 7394408, i32 1060104219, i32 84026492, i32 12643439, i32 1060102165, i32 77736055] }, %struct.vin_coeff { i16 14848, [24 x i32] [i32 1066421316, i32 1066421316, i32 115456132, i32 1068523594, i32 1064319038, i32 110217349, i32 1071674449, i32 1062218806, i32 107074691, i32 36949, i32 1061165105, i32 100789377, i32 3188827, i32 1060113450, i32 95548544, i32 7389281, i32 1060110372, i32 90309754, i32 11589735, i32 1061155870, i32 84020343, i32 15791211, i32 1060105241, i32 77730932] }, %struct.vin_coeff { i16 15360, [24 x i32] [i32 1068522563, i32 1068522563, i32 113356926, i32 1071672395, i32 1066413119, i32 109166721, i32 33871, i32 1064319032, i32 103926909, i32 3184725, i32 1063265331, i32 97637502, i32 6337625, i32 1062212654, i32 92398715, i32 10537055, i32 1061161000, i32 87158904, i32 14737508, i32 1060110369, i32 84016243, i32 11598954, i32 1061155869, i32 77727859] }, %struct.vin_coeff { i16 15872, [24 x i32] [i32 1071670340, i32 1071670340, i32 109158522, i32 30793, i32 1069568063, i32 104968314, i32 2134093, i32 1067466810, i32 99729530, i32 6333523, i32 1065365556, i32 96585848, i32 9484376, i32 1064312879, i32 91346039, i32 13684829, i32 1062213673, i32 87154803, i32 17884258, i32 1062209573, i32 81912945, i32 22085733, i32 1061158943, i32 77721709] }, %struct.vin_coeff { i16 16384, [24 x i32] [i32 28740, i32 28740, i32 106009718, i32 2131016, i32 1071668287, i32 102868086, i32 5281869, i32 1069567034, i32 98676853, i32 8432722, i32 1067465781, i32 94484597, i32 12632150, i32 1065365552, i32 90293363, i32 16831579, i32 1064312875, i32 86103151, i32 21031008, i32 1063261223, i32 80860270, i32 25231460, i32 1062209570, i32 76668011] }, %struct.vin_coeff { i16 20480, [24 x i32] [i32 17867842, i32 17867842, i32 89216094, i32 21016645, i32 14719039, i32 87119967, i32 23117895, i32 12618812, i32 85025886, i32 26266698, i32 9470009, i32 82929759, i32 29416524, i32 7369782, i32 80834654, i32 33613904, i32 5269555, i32 78739547, i32 36762707, i32 3169328, i32 76644442, i32 40960086, i32 1070125, i32 74547289] }, %struct.vin_coeff { i16 24576, [24 x i32] [i32 29408320, i32 29408320, i32 79769682, i32 31508545, i32 27309117, i32 79771729, i32 34655300, i32 25208892, i32 77673555, i32 36755525, i32 23109690, i32 76627026, i32 39903303, i32 21010488, i32 74530898, i32 42003529, i32 18910263, i32 72436816, i32 45151307, i32 16811061, i32 71388240, i32 47251532, i32 14711859, i32 70341711] }, %struct.vin_coeff { i16 28672, [24 x i32] [i32 36751422, i32 36751422, i32 74521676, i32 38850623, i32 34653244, i32 74522699, i32 40949824, i32 33601596, i32 72426571, i32 43048002, i32 31503418, i32 71377996, i32 45147203, i32 29405240, i32 71379019, i32 47246404, i32 28353592, i32 69283914, i32 49345605, i32 26255414, i32 69284937, i32 51443783, i32 24157236, i32 69285960] }, %struct.vin_coeff { i16 -32768, [24 x i32] [i32 41996349, i32 41996349, i32 70323272, i32 44094526, i32 40945724, i32 70324295, i32 45145150, i32 38848570, i32 70325319, i32 47243328, i32 37797946, i32 69276742, i32 48293952, i32 35699769, i32 68229191, i32 50391106, i32 34649144, i32 67183685, i32 51441731, i32 33599543, i32 67182661, i32 53539908, i32 31501366, i32 66135109] }, %struct.vin_coeff { i16 -4097, [24 x i32] [i32 54582330, i32 54582330, i32 61926464, i32 54583354, i32 53534777, i32 62976062, i32 55631931, i32 53533753, i32 62975038, i32 55632954, i32 52485176, i32 62977086, i32 56681531, i32 52484153, i32 61927486, i32 56682555, i32 51435576, i32 62979131, i32 57731131, i32 51434553, i32 60880957, i32 57731132, i32 50385976, i32 61930556] }], align 4
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"drivers/media/platform/rcar-vin/rcar-dma.c\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Invalid pixelformat (0x%x)\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"buffer too small (%lu < %lu)\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rvin_crop_scale_comp(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 24
  %3 = load i32, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 20
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %3) #6, !srcloc !9
  %7 = load i32, ptr %2, align 8
  %8 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 24, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = add i32 %7, -1
  %11 = add i32 %10, %9
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr i8, ptr %12, i32 24
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #6, !srcloc !9
  %14 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 24, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr i8, ptr %16, i32 12
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #6, !srcloc !9
  %18 = load i32, ptr %14, align 4
  %19 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 24, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %18, -1
  %22 = add i32 %21, %20
  %23 = load ptr, ptr %4, align 4
  %24 = getelementptr i8, ptr %23, i32 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #6, !srcloc !9
  %25 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 2
  %26 = load ptr, ptr %25, align 8
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 3
  br i1 %28, label %212, label %29

29:                                               ; preds = %1
  %30 = load i32, ptr %19, align 4
  %31 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 23
  %32 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 23, i32 3
  %33 = load i32, ptr %32, align 4
  switch i32 %33, label %36 [
    i32 4, label %34
    i32 8, label %34
    i32 9, label %34
    i32 5, label %34
    i32 6, label %34
  ]

34:                                               ; preds = %29, %29, %29, %29, %29
  %35 = shl i32 %30, 1
  br label %36

36:                                               ; preds = %34, %29
  %37 = phi i32 [ %35, %34 ], [ %30, %29 ]
  %38 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 25, i32 3
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = shl i32 %37, 12
  %43 = udiv i32 %42, %39
  br label %44

44:                                               ; preds = %41, %36
  %45 = phi i32 [ %43, %41 ], [ 0, %36 ]
  %46 = load ptr, ptr %4, align 4
  %47 = getelementptr i8, ptr %46, i32 80
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %45) #6, !srcloc !9
  %48 = load i32, ptr %8, align 8
  %49 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 25, i32 2
  %50 = load i32, ptr %49, align 8
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %55, label %52

52:                                               ; preds = %44
  %53 = shl i32 %48, 12
  %54 = udiv i32 %53, %50
  br label %55

55:                                               ; preds = %52, %44
  %56 = phi i32 [ %54, %52 ], [ 0, %44 ]
  %57 = add i32 %56, -1
  %58 = icmp ult i32 %57, 2047
  %59 = select i1 %58, i32 2048, i32 %56
  %60 = load ptr, ptr %4, align 4
  %61 = getelementptr i8, ptr %60, i32 84
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %59) #6, !srcloc !9
  %62 = icmp ult i32 %59, 4096
  %63 = zext i1 %62 to i32
  %64 = shl i32 %59, %63
  %65 = trunc i32 %64 to i16
  %66 = icmp ult i16 %65, 4096
  br i1 %66, label %76, label %67

67:                                               ; preds = %72, %55
  %68 = phi ptr [ %73, %72 ], [ getelementptr inbounds ([31 x %struct.vin_coeff], ptr @vin_coeff_set, i32 0, i32 1), %55 ]
  %69 = phi i32 [ %70, %72 ], [ 1, %55 ]
  %70 = add nuw nsw i32 %69, 1
  %71 = icmp eq i32 %70, 31
  br i1 %71, label %80, label %72

72:                                               ; preds = %67
  %73 = getelementptr [31 x %struct.vin_coeff], ptr @vin_coeff_set, i32 0, i32 %70
  %74 = load i16, ptr %73, align 4
  %75 = icmp ugt i16 %74, %65
  br i1 %75, label %76, label %67

76:                                               ; preds = %72, %55
  %77 = phi ptr [ @vin_coeff_set, %55 ], [ %68, %72 ]
  %78 = phi ptr [ getelementptr inbounds ([31 x %struct.vin_coeff], ptr @vin_coeff_set, i32 0, i32 1), %55 ], [ %73, %72 ]
  %79 = icmp eq ptr %77, null
  br i1 %79, label %92, label %80

80:                                               ; preds = %76, %67
  %81 = phi ptr [ %78, %76 ], [ getelementptr inbounds ([31 x %struct.vin_coeff], ptr @vin_coeff_set, i32 0, i32 30, i32 0), %67 ]
  %82 = phi ptr [ %77, %76 ], [ getelementptr inbounds ([31 x %struct.vin_coeff], ptr @vin_coeff_set, i32 0, i32 29, i32 0), %67 ]
  %83 = and i32 %64, 65535
  %84 = load i16, ptr %82, align 4
  %85 = zext i16 %84 to i32
  %86 = sub nsw i32 %83, %85
  %87 = load i16, ptr %81, align 4
  %88 = zext i16 %87 to i32
  %89 = sub nsw i32 %88, %83
  %90 = icmp slt i32 %86, %89
  %91 = select i1 %90, ptr %82, ptr %81
  br label %92

92:                                               ; preds = %80, %76
  %93 = phi ptr [ %78, %76 ], [ %91, %80 ]
  %94 = getelementptr inbounds %struct.vin_coeff, ptr %93, i32 0, i32 1
  %95 = load i32, ptr %94, align 4
  %96 = load ptr, ptr %4, align 4
  %97 = getelementptr i8, ptr %96, i32 128
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 %95) #6, !srcloc !9
  %98 = getelementptr %struct.vin_coeff, ptr %93, i32 0, i32 1, i32 1
  %99 = load i32, ptr %98, align 4
  %100 = load ptr, ptr %4, align 4
  %101 = getelementptr i8, ptr %100, i32 132
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 %99) #6, !srcloc !9
  %102 = getelementptr %struct.vin_coeff, ptr %93, i32 0, i32 1, i32 2
  %103 = load i32, ptr %102, align 4
  %104 = load ptr, ptr %4, align 4
  %105 = getelementptr i8, ptr %104, i32 136
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 %103) #6, !srcloc !9
  %106 = getelementptr %struct.vin_coeff, ptr %93, i32 0, i32 1, i32 3
  %107 = load i32, ptr %106, align 4
  %108 = load ptr, ptr %4, align 4
  %109 = getelementptr i8, ptr %108, i32 144
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %109, i32 %107) #6, !srcloc !9
  %110 = getelementptr %struct.vin_coeff, ptr %93, i32 0, i32 1, i32 4
  %111 = load i32, ptr %110, align 4
  %112 = load ptr, ptr %4, align 4
  %113 = getelementptr i8, ptr %112, i32 148
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %113, i32 %111) #6, !srcloc !9
  %114 = getelementptr %struct.vin_coeff, ptr %93, i32 0, i32 1, i32 5
  %115 = load i32, ptr %114, align 4
  %116 = load ptr, ptr %4, align 4
  %117 = getelementptr i8, ptr %116, i32 152
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 %115) #6, !srcloc !9
  %118 = getelementptr %struct.vin_coeff, ptr %93, i32 0, i32 1, i32 6
  %119 = load i32, ptr %118, align 4
  %120 = load ptr, ptr %4, align 4
  %121 = getelementptr i8, ptr %120, i32 160
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 %119) #6, !srcloc !9
  %122 = getelementptr %struct.vin_coeff, ptr %93, i32 0, i32 1, i32 7
  %123 = load i32, ptr %122, align 4
  %124 = load ptr, ptr %4, align 4
  %125 = getelementptr i8, ptr %124, i32 164
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %125, i32 %123) #6, !srcloc !9
  %126 = getelementptr %struct.vin_coeff, ptr %93, i32 0, i32 1, i32 8
  %127 = load i32, ptr %126, align 4
  %128 = load ptr, ptr %4, align 4
  %129 = getelementptr i8, ptr %128, i32 168
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %129, i32 %127) #6, !srcloc !9
  %130 = getelementptr %struct.vin_coeff, ptr %93, i32 0, i32 1, i32 9
  %131 = load i32, ptr %130, align 4
  %132 = load ptr, ptr %4, align 4
  %133 = getelementptr i8, ptr %132, i32 176
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %133, i32 %131) #6, !srcloc !9
  %134 = getelementptr %struct.vin_coeff, ptr %93, i32 0, i32 1, i32 10
  %135 = load i32, ptr %134, align 4
  %136 = load ptr, ptr %4, align 4
  %137 = getelementptr i8, ptr %136, i32 180
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %137, i32 %135) #6, !srcloc !9
  %138 = getelementptr %struct.vin_coeff, ptr %93, i32 0, i32 1, i32 11
  %139 = load i32, ptr %138, align 4
  %140 = load ptr, ptr %4, align 4
  %141 = getelementptr i8, ptr %140, i32 184
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %141, i32 %139) #6, !srcloc !9
  %142 = getelementptr %struct.vin_coeff, ptr %93, i32 0, i32 1, i32 12
  %143 = load i32, ptr %142, align 4
  %144 = load ptr, ptr %4, align 4
  %145 = getelementptr i8, ptr %144, i32 192
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %145, i32 %143) #6, !srcloc !9
  %146 = getelementptr %struct.vin_coeff, ptr %93, i32 0, i32 1, i32 13
  %147 = load i32, ptr %146, align 4
  %148 = load ptr, ptr %4, align 4
  %149 = getelementptr i8, ptr %148, i32 196
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %149, i32 %147) #6, !srcloc !9
  %150 = getelementptr %struct.vin_coeff, ptr %93, i32 0, i32 1, i32 14
  %151 = load i32, ptr %150, align 4
  %152 = load ptr, ptr %4, align 4
  %153 = getelementptr i8, ptr %152, i32 200
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %153, i32 %151) #6, !srcloc !9
  %154 = getelementptr %struct.vin_coeff, ptr %93, i32 0, i32 1, i32 15
  %155 = load i32, ptr %154, align 4
  %156 = load ptr, ptr %4, align 4
  %157 = getelementptr i8, ptr %156, i32 208
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %157, i32 %155) #6, !srcloc !9
  %158 = getelementptr %struct.vin_coeff, ptr %93, i32 0, i32 1, i32 16
  %159 = load i32, ptr %158, align 4
  %160 = load ptr, ptr %4, align 4
  %161 = getelementptr i8, ptr %160, i32 212
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %161, i32 %159) #6, !srcloc !9
  %162 = getelementptr %struct.vin_coeff, ptr %93, i32 0, i32 1, i32 17
  %163 = load i32, ptr %162, align 4
  %164 = load ptr, ptr %4, align 4
  %165 = getelementptr i8, ptr %164, i32 216
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %165, i32 %163) #6, !srcloc !9
  %166 = getelementptr %struct.vin_coeff, ptr %93, i32 0, i32 1, i32 18
  %167 = load i32, ptr %166, align 4
  %168 = load ptr, ptr %4, align 4
  %169 = getelementptr i8, ptr %168, i32 224
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %169, i32 %167) #6, !srcloc !9
  %170 = getelementptr %struct.vin_coeff, ptr %93, i32 0, i32 1, i32 19
  %171 = load i32, ptr %170, align 4
  %172 = load ptr, ptr %4, align 4
  %173 = getelementptr i8, ptr %172, i32 228
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %173, i32 %171) #6, !srcloc !9
  %174 = getelementptr %struct.vin_coeff, ptr %93, i32 0, i32 1, i32 20
  %175 = load i32, ptr %174, align 4
  %176 = load ptr, ptr %4, align 4
  %177 = getelementptr i8, ptr %176, i32 232
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %177, i32 %175) #6, !srcloc !9
  %178 = getelementptr %struct.vin_coeff, ptr %93, i32 0, i32 1, i32 21
  %179 = load i32, ptr %178, align 4
  %180 = load ptr, ptr %4, align 4
  %181 = getelementptr i8, ptr %180, i32 240
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %181, i32 %179) #6, !srcloc !9
  %182 = getelementptr %struct.vin_coeff, ptr %93, i32 0, i32 1, i32 22
  %183 = load i32, ptr %182, align 4
  %184 = load ptr, ptr %4, align 4
  %185 = getelementptr i8, ptr %184, i32 244
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %185, i32 %183) #6, !srcloc !9
  %186 = getelementptr %struct.vin_coeff, ptr %93, i32 0, i32 1, i32 23
  %187 = load i32, ptr %186, align 4
  %188 = load ptr, ptr %4, align 4
  %189 = getelementptr i8, ptr %188, i32 248
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %189, i32 %187) #6, !srcloc !9
  %190 = load ptr, ptr %4, align 4
  %191 = getelementptr i8, ptr %190, i32 36
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %191, i32 0) #6, !srcloc !9
  %192 = load ptr, ptr %4, align 4
  %193 = getelementptr i8, ptr %192, i32 28
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %193, i32 0) #6, !srcloc !9
  %194 = load i32, ptr %31, align 8
  %195 = add i32 %194, -1
  %196 = load ptr, ptr %4, align 4
  %197 = getelementptr i8, ptr %196, i32 40
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %197, i32 %195) #6, !srcloc !9
  %198 = load i32, ptr %32, align 4
  switch i32 %198, label %206 [
    i32 4, label %199
    i32 8, label %199
    i32 9, label %199
    i32 5, label %199
    i32 6, label %199
  ]

199:                                              ; preds = %92, %92, %92, %92, %92
  %200 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 23, i32 1
  %201 = load i32, ptr %200, align 4
  %202 = lshr i32 %201, 1
  %203 = add nsw i32 %202, -1
  %204 = load ptr, ptr %4, align 4
  %205 = getelementptr i8, ptr %204, i32 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %205, i32 %203) #6, !srcloc !9
  br label %212

206:                                              ; preds = %92
  %207 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 23, i32 1
  %208 = load i32, ptr %207, align 4
  %209 = add i32 %208, -1
  %210 = load ptr, ptr %4, align 4
  %211 = getelementptr i8, ptr %210, i32 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %211, i32 %209) #6, !srcloc !9
  br label %212

212:                                              ; preds = %206, %199, %1
  %213 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 23, i32 2
  %214 = load i32, ptr %213, align 8
  %215 = tail call ptr @rvin_format_from_pixel(ptr noundef %0, i32 noundef %214) #6
  %216 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 23, i32 4
  %217 = load i32, ptr %216, align 8
  %218 = getelementptr inbounds %struct.rvin_video_format, ptr %215, i32 0, i32 1
  %219 = load i8, ptr %218, align 4
  %220 = zext i8 %219 to i32
  %221 = udiv i32 %217, %220
  %222 = load i32, ptr %213, align 8
  switch i32 %222, label %225 [
    i32 825770306, label %223
    i32 1196573255, label %223
    i32 1195528775, label %223
    i32 1111967570, label %223
    i32 1497715271, label %223
  ]

223:                                              ; preds = %212, %212, %212, %212, %212
  %224 = lshr i32 %221, 1
  br label %225

225:                                              ; preds = %223, %212
  %226 = phi i32 [ %221, %212 ], [ %224, %223 ]
  %227 = load ptr, ptr %4, align 4
  %228 = getelementptr i8, ptr %227, i32 44
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %228, i32 %226) #6, !srcloc !9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rvin_format_from_pixel(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rvin_start_streaming(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc i32 @rvin_set_stream(ptr noundef %0, i32 noundef 1)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %183

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 15
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #6
  %7 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 18
  store i32 0, ptr %7, align 4
  %8 = getelementptr %struct.rvin_dev, ptr %0, i32 0, i32 16, i32 0
  store ptr null, ptr %8, align 4
  %9 = getelementptr %struct.rvin_dev, ptr %0, i32 0, i32 16, i32 0, i32 1
  store i32 0, ptr %9, align 4
  %10 = getelementptr %struct.rvin_dev, ptr %0, i32 0, i32 16, i32 1
  store ptr null, ptr %10, align 4
  %11 = getelementptr %struct.rvin_dev, ptr %0, i32 0, i32 16, i32 1, i32 1
  store i32 0, ptr %11, align 4
  %12 = getelementptr %struct.rvin_dev, ptr %0, i32 0, i32 16, i32 2
  store ptr null, ptr %12, align 4
  %13 = getelementptr %struct.rvin_dev, ptr %0, i32 0, i32 16, i32 2, i32 1
  store i32 0, ptr %13, align 4
  tail call fastcc void @rvin_fill_hw_slot(ptr noundef %0, i32 noundef 0) #6
  tail call fastcc void @rvin_fill_hw_slot(ptr noundef %0, i32 noundef 1) #6
  tail call fastcc void @rvin_fill_hw_slot(ptr noundef %0, i32 noundef 2) #6
  tail call void @rvin_crop_scale_comp(ptr noundef %0) #6
  %14 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 23, i32 3
  %15 = load i32, ptr %14, align 4
  switch i32 %15, label %33 [
    i32 7, label %32
    i32 3, label %16
    i32 4, label %17
    i32 8, label %29
    i32 9, label %30
    i32 5, label %31
    i32 6, label %31
    i32 1, label %31
  ]

16:                                               ; preds = %4
  br label %33

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.rvin_info, ptr %19, i32 0, i32 1
  %21 = load i8, ptr %20, align 4, !range !10
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 27
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, 63744
  %27 = icmp eq i64 %26, 0
  %28 = select i1 %27, i32 24, i32 2097176
  br label %33

29:                                               ; preds = %4
  br label %33

30:                                               ; preds = %4
  br label %33

31:                                               ; preds = %4, %4, %4
  br label %33

32:                                               ; preds = %4
  br label %33

33:                                               ; preds = %32, %31, %30, %29, %23, %17, %16, %4
  %34 = phi i32 [ 8, %32 ], [ 8, %31 ], [ 2097176, %30 ], [ 24, %29 ], [ 24, %17 ], [ 16, %16 ], [ %28, %23 ], [ 0, %4 ]
  %35 = phi i32 [ 2, %32 ], [ 16, %31 ], [ 2, %30 ], [ 2, %29 ], [ 2, %17 ], [ 2, %16 ], [ 2, %23 ], [ 2, %4 ]
  %36 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 22
  %37 = load i32, ptr %36, align 4
  switch i32 %37, label %68 [
    i32 8209, label %38
    i32 8207, label %40
    i32 8198, label %42
    i32 4106, label %52
    i32 8216, label %54
    i32 12289, label %66
    i32 12307, label %66
    i32 12290, label %66
    i32 12308, label %66
    i32 8193, label %66
  ]

38:                                               ; preds = %33
  %39 = or i32 %34, 327680
  br label %68

40:                                               ; preds = %33
  %41 = or i32 %34, 851968
  br label %68

42:                                               ; preds = %33
  %43 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 20
  %44 = load i8, ptr %43, align 4, !range !10
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 7, i32 2
  %48 = load i32, ptr %47, align 8
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %68, label %50

50:                                               ; preds = %46, %42
  %51 = or i32 %34, 65536
  br label %68

52:                                               ; preds = %33
  %53 = or i32 %34, 393216
  br label %68

54:                                               ; preds = %33
  %55 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 20
  %56 = load i8, ptr %55, align 4, !range !10
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 7, i32 2
  %60 = load i32, ptr %59, align 8
  %61 = icmp eq i32 %60, 2
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = or i32 %34, 131072
  br label %68

64:                                               ; preds = %58, %54
  %65 = or i32 %34, 196608
  br label %68

66:                                               ; preds = %33, %33, %33, %33, %33
  %67 = or i32 %34, 262144
  br label %68

68:                                               ; preds = %66, %64, %62, %52, %50, %46, %40, %38, %33
  %69 = phi i32 [ %34, %33 ], [ %67, %66 ], [ %53, %52 ], [ %41, %40 ], [ %39, %38 ], [ %51, %50 ], [ %34, %46 ], [ %65, %64 ], [ %63, %62 ]
  %70 = phi i1 [ false, %33 ], [ false, %66 ], [ false, %52 ], [ true, %40 ], [ true, %38 ], [ true, %50 ], [ true, %46 ], [ true, %64 ], [ true, %62 ]
  %71 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 2
  %72 = load ptr, ptr %71, align 8
  %73 = load i32, ptr %72, align 4
  %74 = icmp eq i32 %73, 3
  %75 = select i1 %74, i32 131072, i32 135168
  %76 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 20
  %77 = load i8, ptr %76, align 4, !range !10
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %103

79:                                               ; preds = %68
  %80 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 7, i32 3
  %81 = load i32, ptr %80, align 4
  %82 = shl i32 %81, 26
  %83 = and i32 %82, 536870912
  %84 = or i32 %83, %75
  %85 = shl i32 %81, 25
  %86 = and i32 %85, 1073741824
  %87 = or i32 %84, %86
  %88 = shl i32 %81, 13
  %89 = and i32 %88, 268435456
  %90 = or i32 %87, %89
  %91 = xor i32 %90, 1610612736
  %92 = icmp eq i32 %37, 8198
  br i1 %92, label %93, label %103

93:                                               ; preds = %79
  %94 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 7, i32 3, i32 1
  %95 = load i8, ptr %94, align 4
  %96 = icmp eq i8 %95, 8
  br i1 %96, label %97, label %103

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 7, i32 3, i32 2
  %99 = load i8, ptr %98, align 1
  %100 = icmp eq i8 %99, 8
  %101 = or i32 %91, 4194304
  %102 = select i1 %100, i32 %101, i32 %91
  br label %103

103:                                              ; preds = %97, %93, %79, %68
  %104 = phi i32 [ %75, %68 ], [ %91, %93 ], [ %91, %79 ], [ %102, %97 ]
  %105 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 23, i32 2
  %106 = load i32, ptr %105, align 8
  switch i32 %106, label %178 [
    i32 842094158, label %107
    i32 909203022, label %107
    i32 1448695129, label %140
    i32 1498831189, label %122
    i32 892424792, label %123
    i32 1346520914, label %124
    i32 875713112, label %125
    i32 892424769, label %126
    i32 875713089, label %131
    i32 825770306, label %136
    i32 1196573255, label %136
    i32 1195528775, label %136
    i32 1111967570, label %136
    i32 1497715271, label %137
  ]

107:                                              ; preds = %103, %103
  %108 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 23, i32 4
  %109 = load i32, ptr %108, align 8
  %110 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 23, i32 1
  %111 = load i32, ptr %110, align 4
  %112 = mul i32 %111, %109
  %113 = add i32 %112, 127
  %114 = and i32 %113, -128
  %115 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 1
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr i8, ptr %116, i32 96
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 %114) #6, !srcloc !9
  %118 = load i32, ptr %105, align 8
  %119 = icmp eq i32 %118, 842094158
  %120 = select i1 %119, i32 3, i32 2
  %121 = load ptr, ptr %71, align 8
  br label %140

122:                                              ; preds = %103
  br label %140

123:                                              ; preds = %103
  br label %140

124:                                              ; preds = %103
  br label %140

125:                                              ; preds = %103
  br label %140

126:                                              ; preds = %103
  %127 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 28
  %128 = load i32, ptr %127, align 8
  %129 = icmp eq i32 %128, 0
  %130 = select i1 %129, i32 1, i32 5
  br label %140

131:                                              ; preds = %103
  %132 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 28
  %133 = load i32, ptr %132, align 8
  %134 = shl i32 %133, 24
  %135 = or i32 %134, 257
  br label %140

136:                                              ; preds = %103, %103, %103, %103
  br label %140

137:                                              ; preds = %103
  %138 = select i1 %70, i32 4098, i32 0
  %139 = zext i1 %70 to i32
  br label %140

140:                                              ; preds = %137, %136, %131, %126, %125, %124, %123, %122, %107, %103
  %141 = phi ptr [ %72, %136 ], [ %72, %131 ], [ %72, %126 ], [ %72, %125 ], [ %72, %124 ], [ %72, %123 ], [ %72, %122 ], [ %121, %107 ], [ %72, %103 ], [ %72, %137 ]
  %142 = phi i32 [ 0, %136 ], [ %135, %131 ], [ %130, %126 ], [ 256, %125 ], [ 0, %124 ], [ 1, %123 ], [ 0, %122 ], [ %120, %107 ], [ 16, %103 ], [ %138, %137 ]
  %143 = phi i32 [ 0, %136 ], [ 0, %131 ], [ 0, %126 ], [ 0, %125 ], [ 0, %124 ], [ 0, %123 ], [ 1, %122 ], [ 1, %107 ], [ 1, %103 ], [ %139, %137 ]
  %144 = or i32 %69, 1024
  %145 = getelementptr inbounds %struct.rvin_info, ptr %141, i32 0, i32 2
  %146 = load i8, ptr %145, align 1, !range !10
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %148, label %162

148:                                              ; preds = %140
  %149 = zext i1 %70 to i32
  %150 = icmp eq i32 %143, %149
  %151 = or i32 %69, 1026
  %152 = select i1 %150, i32 %151, i32 %144
  %153 = load i32, ptr %141, align 4
  %154 = icmp eq i32 %153, 3
  br i1 %154, label %155, label %162

155:                                              ; preds = %148
  %156 = load i8, ptr %76, align 4, !range !10
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %160, label %158

158:                                              ; preds = %155
  %159 = and i32 %152, -134217729
  br label %162

160:                                              ; preds = %155
  %161 = or i32 %152, 134217728
  br label %162

162:                                              ; preds = %160, %158, %148, %140
  %163 = phi i32 [ %144, %140 ], [ %159, %158 ], [ %161, %160 ], [ %152, %148 ]
  %164 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 1
  %165 = load ptr, ptr %164, align 4
  %166 = getelementptr i8, ptr %165, i32 68
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %166, i32 %35) #6, !srcloc !9
  %167 = load ptr, ptr %164, align 4
  %168 = getelementptr i8, ptr %167, i32 64
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %168, i32 %35) #6, !srcloc !9
  %169 = load ptr, ptr %164, align 4
  %170 = getelementptr i8, ptr %169, i32 88
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %170, i32 %142) #6, !srcloc !9
  %171 = load ptr, ptr %164, align 4
  %172 = getelementptr i8, ptr %171, i32 92
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %172, i32 %104) #6, !srcloc !9
  %173 = or i32 %163, 1
  %174 = load ptr, ptr %164, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %174, i32 %173) #6, !srcloc !9
  %175 = load ptr, ptr %164, align 4
  %176 = getelementptr i8, ptr %175, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %176, i32 2) #6, !srcloc !9
  %177 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 19
  store i32 1, ptr %177, align 8
  br label %181

178:                                              ; preds = %103
  %179 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %179, ptr noundef nonnull @.str.6, i32 noundef %106) #7
  %180 = tail call fastcc i32 @rvin_set_stream(ptr noundef %0, i32 noundef 0)
  br label %181

181:                                              ; preds = %178, %162
  %182 = phi i32 [ 0, %162 ], [ -22, %178 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #6
  br label %183

183:                                              ; preds = %181, %1
  %184 = phi i32 [ %182, %181 ], [ %2, %1 ]
  ret i32 %184
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rvin_set_stream(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.v4l2_subdev_format, align 4
  %4 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.rvin_info, ptr %5, i32 0, i32 1
  %7 = load i8, ptr %6, align 4, !range !10
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %36

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 7, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %174, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.v4l2_subdev, ptr %11, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %15, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %35, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %17, i32 0, i32 10
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %35, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %24, i32 0, i32 10
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %23
  br label %31

31:                                               ; preds = %30, %26
  %32 = phi ptr [ %21, %30 ], [ %28, %26 ]
  %33 = tail call i32 %32(ptr noundef nonnull %11, i32 noundef %1) #6
  %34 = icmp eq i32 %33, -515
  br i1 %34, label %35, label %174

35:                                               ; preds = %31, %19, %13
  br label %174

36:                                               ; preds = %2
  %37 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 10
  %38 = tail call ptr @media_entity_remote_pad(ptr noundef %37) #6
  %39 = icmp eq ptr %38, null
  br i1 %39, label %174, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.media_pad, ptr %38, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  %44 = icmp eq i32 %1, 0
  br i1 %44, label %45, label %68

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 3
  tail call void @media_pipeline_stop(ptr noundef %46) #6
  br i1 %43, label %174, label %47

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.v4l2_subdev, ptr %42, i32 0, i32 6
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %49, i32 0, i32 3
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %174, label %53

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %51, i32 0, i32 10
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %174, label %57

57:                                               ; preds = %53
  %58 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %66, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %58, i32 0, i32 10
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  %65 = tail call i32 %62(ptr noundef nonnull %42, i32 noundef 0) #6
  br label %174

66:                                               ; preds = %60, %57
  %67 = tail call i32 %55(ptr noundef nonnull %42, i32 noundef 0) #6
  br label %174

68:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #6
  %69 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %69, i8 0, i32 80, i1 false) #6
  store i32 1, ptr %3, align 4
  %70 = getelementptr inbounds %struct.media_pad, ptr %38, i32 0, i32 2
  %71 = load i16, ptr %70, align 4
  %72 = zext i16 %71 to i32
  %73 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %3, i32 0, i32 1
  store i32 %72, ptr %73, align 4
  br i1 %43, label %141, label %74

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.v4l2_subdev, ptr %42, i32 0, i32 6
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %76, i32 0, i32 7
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %141, label %80

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %78, i32 0, i32 4
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %141, label %84

84:                                               ; preds = %80
  %85 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %91, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %85, i32 0, i32 4
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %92

91:                                               ; preds = %87, %84
  br label %92

92:                                               ; preds = %91, %87
  %93 = phi ptr [ %82, %91 ], [ %89, %87 ]
  %94 = call i32 %93(ptr noundef nonnull %42, ptr noundef null, ptr noundef nonnull %3) #6
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %141

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %3, i32 0, i32 2, i32 2
  %98 = load i32, ptr %97, align 4
  switch i32 %98, label %141 [
    i32 8209, label %119
    i32 8207, label %119
    i32 8198, label %119
    i32 8216, label %119
    i32 4106, label %119
    i32 12289, label %99
    i32 12307, label %103
    i32 12290, label %107
    i32 12308, label %111
    i32 8193, label %115
  ]

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 23, i32 2
  %101 = load i32, ptr %100, align 8
  %102 = icmp eq i32 %101, 825770306
  br i1 %102, label %119, label %141

103:                                              ; preds = %96
  %104 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 23, i32 2
  %105 = load i32, ptr %104, align 8
  %106 = icmp eq i32 %105, 1196573255
  br i1 %106, label %119, label %141

107:                                              ; preds = %96
  %108 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 23, i32 2
  %109 = load i32, ptr %108, align 8
  %110 = icmp eq i32 %109, 1195528775
  br i1 %110, label %119, label %141

111:                                              ; preds = %96
  %112 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 23, i32 2
  %113 = load i32, ptr %112, align 8
  %114 = icmp eq i32 %113, 1111967570
  br i1 %114, label %119, label %141

115:                                              ; preds = %96
  %116 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 23, i32 2
  %117 = load i32, ptr %116, align 8
  %118 = icmp eq i32 %117, 1497715271
  br i1 %118, label %119, label %141

119:                                              ; preds = %115, %111, %107, %103, %99, %96, %96, %96, %96, %96
  %120 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 22
  store i32 %98, ptr %120, align 4
  %121 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %3, i32 0, i32 2, i32 3
  %122 = load i32, ptr %121, align 4
  switch i32 %122, label %141 [
    i32 2, label %130
    i32 3, label %130
    i32 1, label %130
    i32 8, label %130
    i32 9, label %130
    i32 4, label %130
    i32 5, label %130
    i32 6, label %130
    i32 7, label %123
  ]

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 23, i32 3
  %125 = load i32, ptr %124, align 4
  switch i32 %125, label %141 [
    i32 2, label %130
    i32 3, label %130
    i32 1, label %130
    i32 7, label %130
    i32 8, label %126
    i32 9, label %126
    i32 4, label %126
    i32 5, label %126
    i32 6, label %126
  ]

126:                                              ; preds = %123, %123, %123, %123, %123
  %127 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %3, i32 0, i32 2, i32 1
  %128 = load i32, ptr %127, align 4
  %129 = shl i32 %128, 1
  store i32 %129, ptr %127, align 4
  br label %130

130:                                              ; preds = %126, %123, %123, %123, %123, %119, %119, %119, %119, %119, %119, %119, %119
  %131 = load i32, ptr %69, align 4
  %132 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 23
  %133 = load i32, ptr %132, align 8
  %134 = icmp eq i32 %131, %133
  br i1 %134, label %135, label %141

135:                                              ; preds = %130
  %136 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %3, i32 0, i32 2, i32 1
  %137 = load i32, ptr %136, align 4
  %138 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 23, i32 1
  %139 = load i32, ptr %138, align 4
  %140 = icmp eq i32 %137, %139
  br i1 %140, label %142, label %141

141:                                              ; preds = %135, %130, %123, %119, %115, %111, %107, %103, %99, %96, %92, %80, %74, %68
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #6
  br label %174

142:                                              ; preds = %135
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #6
  %143 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 3
  %144 = load ptr, ptr %143, align 8
  %145 = getelementptr inbounds %struct.media_device, ptr %144, i32 0, i32 16
  call void @mutex_lock(ptr noundef %145) #6
  %146 = getelementptr inbounds %struct.media_entity, ptr %42, i32 0, i32 14
  %147 = load ptr, ptr %146, align 4
  %148 = icmp eq ptr %147, null
  %149 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 3, i32 2
  %150 = select i1 %148, ptr %149, ptr %147
  %151 = call i32 @__media_pipeline_start(ptr noundef %143, ptr noundef %150) #6
  call void @mutex_unlock(ptr noundef %145) #6
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %174

153:                                              ; preds = %142
  %154 = load ptr, ptr %75, align 4
  %155 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %154, i32 0, i32 3
  %156 = load ptr, ptr %155, align 4
  %157 = icmp eq ptr %156, null
  br i1 %157, label %174, label %158

158:                                              ; preds = %153
  %159 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %156, i32 0, i32 10
  %160 = load ptr, ptr %159, align 4
  %161 = icmp eq ptr %160, null
  br i1 %161, label %174, label %162

162:                                              ; preds = %158
  %163 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %164 = icmp eq ptr %163, null
  br i1 %164, label %169, label %165

165:                                              ; preds = %162
  %166 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %163, i32 0, i32 10
  %167 = load ptr, ptr %166, align 4
  %168 = icmp eq ptr %167, null
  br i1 %168, label %169, label %170

169:                                              ; preds = %165, %162
  br label %170

170:                                              ; preds = %169, %165
  %171 = phi ptr [ %160, %169 ], [ %167, %165 ]
  %172 = call i32 %171(ptr noundef nonnull %42, i32 noundef 1) #6
  switch i32 %172, label %173 [
    i32 -515, label %174
    i32 0, label %174
  ]

173:                                              ; preds = %170
  call void @media_pipeline_stop(ptr noundef %143) #6
  br label %174

174:                                              ; preds = %173, %170, %170, %158, %153, %142, %141, %66, %64, %53, %47, %45, %36, %35, %31, %9
  %175 = phi i32 [ -32, %36 ], [ %65, %64 ], [ %67, %66 ], [ -19, %45 ], [ -515, %53 ], [ -515, %47 ], [ %151, %142 ], [ %172, %173 ], [ 0, %35 ], [ %33, %31 ], [ -32, %141 ], [ -19, %9 ], [ 0, %170 ], [ 0, %158 ], [ 0, %153 ], [ 0, %170 ]
  ret i32 %175
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rvin_stop_streaming(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 15
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #6
  %4 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 19
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #6
  br label %88

8:                                                ; preds = %1
  store i32 3, ptr %4, align 8
  %9 = getelementptr %struct.rvin_dev, ptr %0, i32 0, i32 16, i32 0
  %10 = getelementptr %struct.rvin_dev, ptr %0, i32 0, i32 16, i32 1
  %11 = getelementptr %struct.rvin_dev, ptr %0, i32 0, i32 16, i32 2
  br label %12

12:                                               ; preds = %23, %8
  %13 = phi i32 [ 1, %8 ], [ %25, %23 ]
  %14 = phi i32 [ %3, %8 ], [ %24, %23 ]
  %15 = load ptr, ptr %9, align 4
  %16 = icmp eq ptr %15, null
  %17 = load ptr, ptr %10, align 4
  %18 = icmp eq ptr %17, null
  %19 = load ptr, ptr %11, align 4
  %20 = icmp eq ptr %19, null
  %21 = select i1 %20, i1 %18, i1 false
  %22 = select i1 %21, i1 %16, i1 false
  br i1 %22, label %27, label %23

23:                                               ; preds = %12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %14) #6
  tail call void @msleep(i32 noundef 100) #6
  %24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #6
  %25 = add nuw nsw i32 %13, 1
  %26 = icmp eq i32 %25, 11
  br i1 %26, label %27, label %12

27:                                               ; preds = %23, %12
  %28 = phi i32 [ %14, %12 ], [ %24, %23 ]
  %29 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 1
  br label %30

30:                                               ; preds = %45, %27
  %31 = phi i32 [ 1, %27 ], [ %47, %45 ]
  %32 = phi i32 [ %28, %27 ], [ %46, %45 ]
  %33 = load ptr, ptr %29, align 4
  %34 = getelementptr i8, ptr %33, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 0) #6, !srcloc !9
  %35 = load ptr, ptr %29, align 4
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %37 = and i32 %36, -2
  %38 = load ptr, ptr %29, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %37) #6, !srcloc !9
  %39 = load ptr, ptr %29, align 4
  %40 = getelementptr i8, ptr %39, i32 4
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %30
  store i32 0, ptr %4, align 8
  br label %49

45:                                               ; preds = %30
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %32) #6
  tail call void @msleep(i32 noundef 100) #6
  %46 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #6
  %47 = add nuw nsw i32 %31, 1
  %48 = icmp eq i32 %47, 11
  br i1 %48, label %49, label %30

49:                                               ; preds = %45, %44
  %50 = phi i32 [ %32, %44 ], [ %46, %45 ]
  br i1 %22, label %51, label %54

51:                                               ; preds = %49
  %52 = load i32, ptr %4, align 8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %81, label %82

54:                                               ; preds = %49
  %55 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str) #7
  store i32 0, ptr %4, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %50) #6
  %56 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #6
  %57 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 17
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, %57
  br i1 %59, label %69, label %60

60:                                               ; preds = %60, %54
  %61 = phi ptr [ %63, %60 ], [ %58, %54 ]
  %62 = getelementptr i8, ptr %61, i32 -640
  %63 = load ptr, ptr %61, align 8
  tail call void @vb2_buffer_done(ptr noundef %62, i32 noundef 6) #6
  %64 = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = load ptr, ptr %61, align 4
  %67 = getelementptr inbounds %struct.list_head, ptr %66, i32 0, i32 1
  store ptr %65, ptr %67, align 4
  store volatile ptr %66, ptr %65, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %61, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %64, align 4
  %68 = icmp eq ptr %63, %57
  br i1 %68, label %69, label %60

69:                                               ; preds = %60, %54
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %56) #6
  %70 = load ptr, ptr %9, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  tail call void @vb2_buffer_done(ptr noundef nonnull %70, i32 noundef 6) #6
  br label %73

73:                                               ; preds = %72, %69
  %74 = load ptr, ptr %10, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %73
  tail call void @vb2_buffer_done(ptr noundef nonnull %74, i32 noundef 6) #6
  br label %77

77:                                               ; preds = %76, %73
  %78 = load ptr, ptr %11, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %84, label %80

80:                                               ; preds = %77
  tail call void @vb2_buffer_done(ptr noundef nonnull %78, i32 noundef 6) #6
  br label %84

81:                                               ; preds = %51
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %50) #6
  br label %84

82:                                               ; preds = %51
  %83 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str) #7
  store i32 0, ptr %4, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %50) #6
  br label %84

84:                                               ; preds = %82, %81, %80, %77
  %85 = tail call fastcc i32 @rvin_set_stream(ptr noundef %0, i32 noundef 0)
  %86 = load ptr, ptr %29, align 4
  %87 = getelementptr i8, ptr %86, i32 64
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 0) #6, !srcloc !9
  br label %88

88:                                               ; preds = %84, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rvin_dma_unregister(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 4
  tail call void @v4l2_device_unregister(ptr noundef %2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rvin_dma_register(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 4
  %5 = tail call i32 @v4l2_device_register(ptr noundef %3, ptr noundef %4) #6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %38

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 12
  %9 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %9, ptr noundef nonnull @.str.1, ptr noundef nonnull @rvin_dma_register.__key) #6
  %10 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 17
  store volatile ptr %10, ptr %10, align 4
  %11 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 17, i32 1
  store ptr %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 15
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 19
  store i32 0, ptr %13, align 8
  %14 = getelementptr %struct.rvin_dev, ptr %0, i32 0, i32 16, i32 0
  store ptr null, ptr %14, align 4
  %15 = getelementptr %struct.rvin_dev, ptr %0, i32 0, i32 16, i32 1
  store ptr null, ptr %15, align 4
  %16 = getelementptr %struct.rvin_dev, ptr %0, i32 0, i32 16, i32 2
  store ptr null, ptr %16, align 4
  store i32 1, ptr %8, align 4
  %17 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 12, i32 1
  store i32 21, ptr %17, align 4
  %18 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 12, i32 5
  store ptr %9, ptr %18, align 4
  %19 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 12, i32 10
  store ptr %0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 12, i32 12
  store i32 648, ptr %20, align 4
  %21 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 12, i32 7
  store ptr @rvin_qops, ptr %21, align 4
  %22 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 12, i32 8
  store ptr @vb2_dma_contig_memops, ptr %22, align 4
  %23 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 12, i32 13
  store i32 8192, ptr %23, align 4
  %24 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 12, i32 15
  store i32 4, ptr %24, align 4
  %25 = load ptr, ptr %0, align 8
  %26 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 12, i32 2
  store ptr %25, ptr %26, align 4
  %27 = tail call i32 @vb2_queue_init(ptr noundef %8) #6
  %28 = icmp slt i32 %27, 0
  %29 = load ptr, ptr %0, align 8
  br i1 %28, label %30, label %31

30:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.2) #7
  br label %36

31:                                               ; preds = %7
  %32 = tail call i32 @devm_request_threaded_irq(ptr noundef %29, i32 noundef %1, ptr noundef nonnull @rvin_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.3, ptr noundef %0) #6
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.4) #7
  br label %36

36:                                               ; preds = %34, %30
  %37 = phi i32 [ %27, %30 ], [ %32, %34 ]
  tail call void @v4l2_device_unregister(ptr noundef %4) #6
  br label %38

38:                                               ; preds = %36, %31, %2
  %39 = phi i32 [ %37, %36 ], [ %5, %2 ], [ 0, %31 ]
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rvin_irq(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 15
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #6
  %5 = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 68
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %64, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %5, align 4
  %12 = getelementptr i8, ptr %11, i32 68
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %14 = load ptr, ptr %5, align 4
  %15 = getelementptr i8, ptr %14, i32 68
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #6, !srcloc !9
  %16 = and i32 %8, 16
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %64, label %18

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 19
  %20 = load i32, ptr %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %64, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %5, align 4
  %24 = getelementptr i8, ptr %23, i32 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %26 = lshr i32 %25, 3
  %27 = and i32 %26, 3
  %28 = load i32, ptr %19, align 8
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = icmp eq i32 %27, 0
  br i1 %31, label %32, label %64

32:                                               ; preds = %30
  store i32 2, ptr %19, align 8
  br label %33

33:                                               ; preds = %32, %22
  %34 = getelementptr %struct.rvin_dev, ptr %1, i32 0, i32 16, i32 %27
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %59, label %37

37:                                               ; preds = %33
  %38 = getelementptr %struct.rvin_dev, ptr %1, i32 0, i32 16, i32 %27, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store ptr null, ptr %34, align 4
  br label %63

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 23, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 7
  %46 = and i32 %25, 4
  %47 = icmp eq i32 %46, 0
  %48 = select i1 %47, i32 2, i32 3
  %49 = select i1 %45, i32 %48, i32 %44
  %50 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %35, i32 0, i32 2
  store i32 %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 18
  %52 = load i32, ptr %51, align 4
  %53 = load ptr, ptr %34, align 4
  %54 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %53, i32 0, i32 4
  store i32 %52, ptr %54, align 8
  %55 = tail call i64 @ktime_get() #6
  %56 = load ptr, ptr %34, align 4
  %57 = getelementptr inbounds %struct.vb2_buffer, ptr %56, i32 0, i32 5
  store i64 %55, ptr %57, align 8
  %58 = load ptr, ptr %34, align 4
  tail call void @vb2_buffer_done(ptr noundef %58, i32 noundef 5) #6
  store ptr null, ptr %34, align 4
  br label %59

59:                                               ; preds = %42, %33
  %60 = getelementptr inbounds %struct.rvin_dev, ptr %1, i32 0, i32 18
  %61 = load i32, ptr %60, align 4
  %62 = add i32 %61, 1
  store i32 %62, ptr %60, align 4
  br label %63

63:                                               ; preds = %59, %41
  tail call fastcc void @rvin_fill_hw_slot(ptr noundef %1, i32 noundef %27)
  br label %64

64:                                               ; preds = %63, %30, %18, %10, %2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #6
  %65 = xor i1 %9, true
  %66 = zext i1 %65 to i32
  ret i32 %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rvin_set_channel_routing(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #6
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #6, !srcloc !14
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 0, i32 -1, ptr elementtype(i32) %7) #6, !srcloc !15
  %9 = extractvalue { i32, i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %50, label %11

11:                                               ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !16
  br label %50

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %16 = and i32 %15, -1025
  %17 = load ptr, ptr %13, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %16) #6, !srcloc !9
  %18 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.rvin_info, ptr %19, i32 0, i32 6
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.rvin_group_route, ptr %21, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %44, label %30

25:                                               ; preds = %30
  %26 = getelementptr %struct.rvin_group_route, ptr %32, i32 1
  %27 = getelementptr %struct.rvin_group_route, ptr %32, i32 1, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %25, %12
  %31 = phi i32 [ %36, %25 ], [ 0, %12 ]
  %32 = phi ptr [ %26, %25 ], [ %21, %12 ]
  %33 = load i32, ptr %32, align 4
  %34 = icmp ult i32 %33, 2
  %35 = select i1 %34, i32 67108864, i32 33554432
  %36 = or i32 %35, %31
  %37 = icmp eq i32 %36, 100663296
  br i1 %37, label %38, label %25

38:                                               ; preds = %30, %25
  %39 = and i8 %1, 15
  %40 = zext i8 %39 to i32
  %41 = or i32 %36, %40
  %42 = load ptr, ptr %13, align 4
  %43 = getelementptr i8, ptr %42, i32 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %41) #6, !srcloc !9
  br label %44

44:                                               ; preds = %38, %12
  %45 = zext i8 %1 to i32
  %46 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 21
  store i32 %45, ptr %46, align 8
  %47 = load ptr, ptr %13, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %15) #6, !srcloc !9
  %48 = load ptr, ptr %0, align 8
  %49 = tail call i32 @__pm_runtime_idle(ptr noundef %48, i32 noundef 5) #6
  br label %50

50:                                               ; preds = %44, %11, %6
  %51 = phi i32 [ 0, %44 ], [ %4, %6 ], [ %4, %11 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rvin_set_alpha(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 15
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #6
  %5 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 28
  store i32 %1, ptr %5, align 8
  %6 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 19
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %36, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 23, i32 2
  %11 = load i32, ptr %10, align 8
  switch i32 %11, label %36 [
    i32 892424769, label %12
    i32 875713089, label %22
  ]

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 88
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %17 = and i32 %16, -5
  %18 = load i32, ptr %5, align 8
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 0, i32 4
  %21 = or i32 %20, %17
  br label %31

22:                                               ; preds = %9
  %23 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 88
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %27 = and i32 %26, 16777215
  %28 = load i32, ptr %5, align 8
  %29 = shl i32 %28, 24
  %30 = or i32 %29, %27
  br label %31

31:                                               ; preds = %22, %12
  %32 = phi i32 [ %30, %22 ], [ %21, %12 ]
  %33 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr i8, ptr %34, i32 88
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %32) #6, !srcloc !9
  br label %36

36:                                               ; preds = %31, %9, %2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_entity_remote_pad(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_pipeline_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__media_pipeline_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rvin_fill_hw_slot(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr %struct.rvin_dev, ptr %0, i32 0, i32 16, i32 %1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !17

6:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 903, i32 noundef 9, ptr noundef null) #6
  br label %89

7:                                                ; preds = %2
  %8 = icmp eq i32 %1, 0
  %9 = add i32 %1, -1
  %10 = select i1 %8, i32 2, i32 %9
  %11 = getelementptr %struct.rvin_dev, ptr %0, i32 0, i32 16, i32 %10, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %34

14:                                               ; preds = %7
  %15 = getelementptr %struct.rvin_dev, ptr %0, i32 0, i32 16, i32 %10
  %16 = load ptr, ptr %15, align 4
  store ptr %16, ptr %3, align 4
  %17 = getelementptr %struct.rvin_dev, ptr %0, i32 0, i32 16, i32 %1, i32 1
  store i32 2, ptr %17, align 4
  %18 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 23, i32 2
  %19 = load i32, ptr %18, align 8
  switch i32 %19, label %27 [
    i32 842094158, label %20
    i32 909203022, label %20
  ]

20:                                               ; preds = %14, %14
  %21 = getelementptr %struct.rvin_dev, ptr %0, i32 0, i32 16, i32 %10, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 23, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = lshr i32 %24, 2
  %26 = add i32 %25, %22
  br label %59

27:                                               ; preds = %14
  %28 = getelementptr %struct.rvin_dev, ptr %0, i32 0, i32 16, i32 %10, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 23, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = lshr i32 %31, 1
  %33 = add i32 %32, %29
  br label %59

34:                                               ; preds = %7
  %35 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 19
  %36 = load i32, ptr %35, align 8
  switch i32 %36, label %41 [
    i32 0, label %37
    i32 2, label %37
  ]

37:                                               ; preds = %34, %34
  %38 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 17
  %39 = load volatile ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, %38
  br i1 %40, label %41, label %45

41:                                               ; preds = %37, %34
  store ptr null, ptr %3, align 4
  %42 = getelementptr %struct.rvin_dev, ptr %0, i32 0, i32 16, i32 %1, i32 1
  store i32 0, ptr %42, align 4
  %43 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 14
  %44 = load i32, ptr %43, align 8
  br label %59

45:                                               ; preds = %37
  %46 = getelementptr i8, ptr %39, i32 -640
  %47 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = load ptr, ptr %39, align 4
  %50 = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  store ptr %48, ptr %50, align 4
  store volatile ptr %49, ptr %48, align 4
  store volatile ptr %39, ptr %39, align 4
  store ptr %39, ptr %47, align 4
  store ptr %46, ptr %3, align 4
  %51 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 23, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %52, -5
  %54 = icmp ult i32 %53, 2
  %55 = zext i1 %54 to i32
  %56 = getelementptr %struct.rvin_dev, ptr %0, i32 0, i32 16, i32 %1, i32 1
  store i32 %55, ptr %56, align 4
  %57 = tail call ptr @vb2_plane_cookie(ptr noundef %46, i32 noundef 0) #6
  %58 = load i32, ptr %57, align 4
  br label %59

59:                                               ; preds = %45, %41, %27, %20
  %60 = phi i32 [ %33, %27 ], [ %26, %20 ], [ %44, %41 ], [ %58, %45 ]
  %61 = getelementptr %struct.rvin_dev, ptr %0, i32 0, i32 16, i32 %1, i32 2
  store i32 %60, ptr %61, align 4
  %62 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 23, i32 2
  %63 = load i32, ptr %62, align 8
  %64 = tail call ptr @rvin_format_from_pixel(ptr noundef %0, i32 noundef %63) #6
  %65 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 25
  %66 = load i32, ptr %65, align 8
  %67 = getelementptr inbounds %struct.rvin_video_format, ptr %64, i32 0, i32 1
  %68 = load i8, ptr %67, align 4
  %69 = zext i8 %68 to i32
  %70 = mul i32 %66, %69
  %71 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 25, i32 1
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 23, i32 4
  %74 = load i32, ptr %73, align 8
  %75 = mul i32 %74, %72
  %76 = add i32 %70, %60
  %77 = add i32 %76, %75
  %78 = or i32 %75, %70
  %79 = or i32 %78, %77
  %80 = and i32 %79, 127
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %83, label %82, !prof !17

82:                                               ; preds = %59
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 883, i32 noundef 9, ptr noundef null) #6
  br label %89

83:                                               ; preds = %59
  %84 = shl i32 %1, 2
  %85 = add i32 %84, 48
  %86 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr i8, ptr %87, i32 %85
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 %77) #6, !srcloc !9
  br label %89

89:                                               ; preds = %83, %82, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @rvin_queue_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef readnone %4) #5 {
  %6 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %2, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %5
  %11 = load i32, ptr %3, align 4
  %12 = getelementptr inbounds %struct.rvin_dev, ptr %7, i32 0, i32 23, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = icmp ult i32 %11, %13
  %15 = select i1 %14, i32 -22, i32 0
  br label %19

16:                                               ; preds = %5
  store i32 1, ptr %2, align 4
  %17 = getelementptr inbounds %struct.rvin_dev, ptr %7, i32 0, i32 23, i32 5
  %18 = load i32, ptr %17, align 4
  store i32 %18, ptr %3, align 4
  br label %19

19:                                               ; preds = %16, %10
  %20 = phi i32 [ %15, %10 ], [ 0, %16 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rvin_buffer_prepare(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rvin_dev, ptr %4, i32 0, i32 23, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = icmp eq i32 %6, 0
  br i1 %11, label %21, label %16

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 0, i32 4
  %14 = load i32, ptr %13, align 8
  %15 = icmp ult i32 %14, %6
  br i1 %15, label %16, label %19

16:                                               ; preds = %12, %10
  %17 = phi i32 [ 0, %10 ], [ %14, %12 ]
  %18 = load ptr, ptr %4, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.7, i32 noundef %17, i32 noundef %6) #7
  br label %21

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 0, i32 3
  store i32 %6, ptr %20, align 4
  br label %21

21:                                               ; preds = %19, %16, %10
  %22 = phi i32 [ -22, %16 ], [ 0, %10 ], [ 0, %19 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rvin_start_streaming_vq(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.rvin_dev, ptr %4, i32 0, i32 23, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rvin_dev, ptr %4, i32 0, i32 14
  %9 = tail call ptr @dma_alloc_attrs(ptr noundef %5, i32 noundef %7, ptr noundef %8, i32 noundef 3264, i32 noundef 0) #6
  %10 = getelementptr inbounds %struct.rvin_dev, ptr %4, i32 0, i32 13
  store ptr %9, ptr %10, align 4
  %11 = icmp eq ptr %9, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %2
  %13 = tail call i32 @rvin_start_streaming(ptr noundef %4)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %37, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %4, align 8
  %17 = load i32, ptr %6, align 4
  %18 = load ptr, ptr %10, align 4
  %19 = load i32, ptr %8, align 8
  tail call void @dma_free_attrs(ptr noundef %16, i32 noundef %17, ptr noundef %18, i32 noundef %19, i32 noundef 0) #6
  br label %20

20:                                               ; preds = %15, %2
  %21 = phi i32 [ %13, %15 ], [ -12, %2 ]
  %22 = getelementptr inbounds %struct.rvin_dev, ptr %4, i32 0, i32 15
  %23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %22) #6
  %24 = getelementptr inbounds %struct.rvin_dev, ptr %4, i32 0, i32 17
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %24
  br i1 %26, label %36, label %27

27:                                               ; preds = %27, %20
  %28 = phi ptr [ %30, %27 ], [ %25, %20 ]
  %29 = getelementptr i8, ptr %28, i32 -640
  %30 = load ptr, ptr %28, align 8
  tail call void @vb2_buffer_done(ptr noundef %29, i32 noundef 3) #6
  %31 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = load ptr, ptr %28, align 4
  %34 = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  store ptr %32, ptr %34, align 4
  store volatile ptr %33, ptr %32, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %28, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %31, align 4
  %35 = icmp eq ptr %30, %24
  br i1 %35, label %36, label %27

36:                                               ; preds = %27, %20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %22, i32 noundef %23) #6
  br label %37

37:                                               ; preds = %36, %12
  %38 = phi i32 [ %21, %36 ], [ 0, %12 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rvin_stop_streaming_vq(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  tail call void @rvin_stop_streaming(ptr noundef %3)
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rvin_dev, ptr %3, i32 0, i32 23, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.rvin_dev, ptr %3, i32 0, i32 13
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.rvin_dev, ptr %3, i32 0, i32 14
  %10 = load i32, ptr %9, align 8
  tail call void @dma_free_attrs(ptr noundef %4, i32 noundef %6, ptr noundef %8, i32 noundef %10, i32 noundef 0) #6
  %11 = getelementptr inbounds %struct.rvin_dev, ptr %3, i32 0, i32 15
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #6
  %13 = getelementptr inbounds %struct.rvin_dev, ptr %3, i32 0, i32 17
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %25, label %16

16:                                               ; preds = %16, %1
  %17 = phi ptr [ %19, %16 ], [ %14, %1 ]
  %18 = getelementptr i8, ptr %17, i32 -640
  %19 = load ptr, ptr %17, align 8
  tail call void @vb2_buffer_done(ptr noundef %18, i32 noundef 6) #6
  %20 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %17, align 4
  %23 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  store ptr %21, ptr %23, align 4
  store volatile ptr %22, ptr %21, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %17, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %20, align 4
  %24 = icmp eq ptr %19, %13
  br i1 %24, label %25, label %16

25:                                               ; preds = %16, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rvin_buffer_queue(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rvin_dev, ptr %4, i32 0, i32 15
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #6
  %7 = getelementptr inbounds %struct.rvin_buffer, ptr %0, i32 0, i32 1
  %8 = getelementptr inbounds %struct.rvin_dev, ptr %4, i32 0, i32 17
  %9 = getelementptr inbounds %struct.rvin_dev, ptr %4, i32 0, i32 17, i32 1
  %10 = load ptr, ptr %9, align 4
  store ptr %7, ptr %9, align 4
  store ptr %8, ptr %7, align 4
  %11 = getelementptr inbounds %struct.rvin_buffer, ptr %0, i32 0, i32 1, i32 1
  store ptr %10, ptr %11, align 4
  store volatile ptr %7, ptr %10, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{i64 2150639964}
!9 = !{i64 3098871}
!10 = !{i8 0, i8 2}
!11 = !{i64 3099289}
!12 = !{i64 2150638742}
!13 = !{i64 2147932606}
!14 = !{i64 430916, i64 2147920887, i64 2147920913, i64 2147920960, i64 2147920982, i64 2147921010, i64 2147921030}
!15 = !{i64 417485, i64 417510, i64 417532, i64 417548, i64 417560, i64 417580, i64 417604, i64 417620, i64 417632}
!16 = !{i64 2147932732}
!17 = !{!"branch_weights", i32 2000, i32 1}
