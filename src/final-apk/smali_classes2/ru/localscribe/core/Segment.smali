.class public final Lru/localscribe/core/Segment;
.super Ljava/lang/Object;
.source "Contract.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/localscribe/core/Segment$$serializer;,
        Lru/localscribe/core/Segment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008E\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 {2\u00020\u0001:\u0002z{B\u00a5\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\u000e\u0008\u0002\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012\u0012\u000e\u0008\u0002\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0012\u0012\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\u000e\u0008\u0002\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0012\u0012\u000e\u0008\u0002\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0012\u0012\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f\u0012\u000e\u0008\u0002\u0010 \u001a\u0008\u0012\u0004\u0012\u00020!0\u0012\u0012\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010#\u0012\u0008\u0008\u0002\u0010$\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010%\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010&\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\'\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008(\u0010)B\u00ad\u0002\u0008\u0010\u0012\u0006\u0010*\u001a\u00020+\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\u000e\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0012\u0012\u000e\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u0012\u0012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\u000e\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u0012\u0012\u000e\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u0012\u0012\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001f\u0012\u000e\u0010 \u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010\u0012\u0012\u0008\u0010\"\u001a\u0004\u0018\u00010#\u0012\u0008\u0010$\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010%\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010&\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0010\'\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010,\u001a\u0004\u0018\u00010-\u00a2\u0006\u0004\u0008(\u0010.J\t\u0010S\u001a\u00020\u0003H\u00c6\u0003J\t\u0010T\u001a\u00020\u0003H\u00c6\u0003J\t\u0010U\u001a\u00020\u0006H\u00c6\u0003J\t\u0010V\u001a\u00020\u0006H\u00c6\u0003J\u000b\u0010W\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010X\u001a\u00020\u0003H\u00c6\u0003J\t\u0010Y\u001a\u00020\u0003H\u00c6\u0003J\u0010\u0010Z\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003\u00a2\u0006\u0002\u00109J\t\u0010[\u001a\u00020\u000eH\u00c6\u0003J\u0010\u0010\\\u001a\u0004\u0018\u00010\u0010H\u00c6\u0003\u00a2\u0006\u0002\u0010>J\u000f\u0010]\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012H\u00c6\u0003J\u000f\u0010^\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0012H\u00c6\u0003J\u000b\u0010_\u001a\u0004\u0018\u00010\u0017H\u00c6\u0003J\u000f\u0010`\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0012H\u00c6\u0003J\u000f\u0010a\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0012H\u00c6\u0003J\t\u0010b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010d\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010e\u001a\u0004\u0018\u00010\u001fH\u00c6\u0003J\u000f\u0010f\u001a\u0008\u0012\u0004\u0012\u00020!0\u0012H\u00c6\u0003J\u000b\u0010g\u001a\u0004\u0018\u00010#H\u00c6\u0003J\t\u0010h\u001a\u00020\u0003H\u00c6\u0003J\t\u0010i\u001a\u00020\u0003H\u00c6\u0003J\u0010\u0010j\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003\u00a2\u0006\u0002\u00109J\u000b\u0010k\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u00b6\u0002\u0010l\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\t\u001a\u00020\u00032\u0008\u0008\u0002\u0010\n\u001a\u00020\u00032\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u000e\u0008\u0002\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00122\u000e\u0008\u0002\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00122\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u000e\u0008\u0002\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u00122\u000e\u0008\u0002\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u00122\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u00032\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u000e\u0008\u0002\u0010 \u001a\u0008\u0012\u0004\u0012\u00020!0\u00122\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010#2\u0008\u0008\u0002\u0010$\u001a\u00020\u00032\u0008\u0008\u0002\u0010%\u001a\u00020\u00032\n\u0008\u0002\u0010&\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\'\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001\u00a2\u0006\u0002\u0010mJ\u0013\u0010n\u001a\u00020\u000e2\u0008\u0010o\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010p\u001a\u00020+H\u00d6\u0001J\t\u0010q\u001a\u00020\u0003H\u00d6\u0001J%\u0010r\u001a\u00020s2\u0006\u0010t\u001a\u00020\u00002\u0006\u0010u\u001a\u00020v2\u0006\u0010w\u001a\u00020xH\u0001\u00a2\u0006\u0002\u0008yR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u00100R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u00100R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u00103R\u0011\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00084\u00103R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00085\u00100R\u0011\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00086\u00100R\u0011\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00087\u00100R\u0015\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\n\n\u0002\u0010:\u001a\u0004\u00088\u00109R\u0011\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008;\u0010<R\u0015\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\n\n\u0002\u0010?\u001a\u0004\u0008=\u0010>R\u0017\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008@\u0010AR\u0017\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008B\u0010AR\u0013\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008C\u0010DR\u0017\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008E\u0010AR\u0017\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008F\u0010AR\u0011\u0010\u001b\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008G\u00100R\u0011\u0010\u001c\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008H\u00100R\u0011\u0010\u001d\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008I\u00100R\u0013\u0010\u001e\u001a\u0004\u0018\u00010\u001f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008J\u0010KR\u0017\u0010 \u001a\u0008\u0012\u0004\u0012\u00020!0\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008L\u0010AR\u0013\u0010\"\u001a\u0004\u0018\u00010#\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008M\u0010NR\u0011\u0010$\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008O\u00100R\u0011\u0010%\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008P\u00100R\u0015\u0010&\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\n\n\u0002\u0010:\u001a\u0004\u0008Q\u00109R\u0013\u0010\'\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008R\u00100\u00a8\u0006|"
    }
    d2 = {
        "Lru/localscribe/core/Segment;",
        "",
        "id",
        "",
        "recordingId",
        "startMs",
        "",
        "endMs",
        "speakerId",
        "text",
        "status",
        "speakerSimilarity",
        "",
        "speakerProvisional",
        "",
        "confidence",
        "",
        "tokens",
        "",
        "Lru/localscribe/core/TokenStamp;",
        "words",
        "Lru/localscribe/core/WordStamp;",
        "acoustics",
        "Lru/localscribe/core/Acoustics;",
        "tags",
        "Lru/localscribe/core/Tag;",
        "embedding",
        "embeddingSource",
        "overlap",
        "timingKind",
        "emotion",
        "Lru/localscribe/core/EmotionAssessment;",
        "overlapIntervals",
        "Lru/localscribe/core/OverlapSpan;",
        "separation",
        "Lru/localscribe/core/SeparationInfo;",
        "separatedAudioPath",
        "analysisSource",
        "clusteringSilhouette",
        "originalAsrText",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;ZLjava/lang/Double;Ljava/util/List;Ljava/util/List;Lru/localscribe/core/Acoustics;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lru/localscribe/core/EmotionAssessment;Ljava/util/List;Lru/localscribe/core/SeparationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;)V",
        "seen0",
        "",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;ZLjava/lang/Double;Ljava/util/List;Ljava/util/List;Lru/localscribe/core/Acoustics;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lru/localscribe/core/EmotionAssessment;Ljava/util/List;Lru/localscribe/core/SeparationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "getId",
        "()Ljava/lang/String;",
        "getRecordingId",
        "getStartMs",
        "()J",
        "getEndMs",
        "getSpeakerId",
        "getText",
        "getStatus",
        "getSpeakerSimilarity",
        "()Ljava/lang/Float;",
        "Ljava/lang/Float;",
        "getSpeakerProvisional",
        "()Z",
        "getConfidence",
        "()Ljava/lang/Double;",
        "Ljava/lang/Double;",
        "getTokens",
        "()Ljava/util/List;",
        "getWords",
        "getAcoustics",
        "()Lru/localscribe/core/Acoustics;",
        "getTags",
        "getEmbedding",
        "getEmbeddingSource",
        "getOverlap",
        "getTimingKind",
        "getEmotion",
        "()Lru/localscribe/core/EmotionAssessment;",
        "getOverlapIntervals",
        "getSeparation",
        "()Lru/localscribe/core/SeparationInfo;",
        "getSeparatedAudioPath",
        "getAnalysisSource",
        "getClusteringSilhouette",
        "getOriginalAsrText",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
        "component18",
        "component19",
        "component20",
        "component21",
        "component22",
        "component23",
        "component24",
        "component25",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;ZLjava/lang/Double;Ljava/util/List;Ljava/util/List;Lru/localscribe/core/Acoustics;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lru/localscribe/core/EmotionAssessment;Ljava/util/List;Lru/localscribe/core/SeparationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;)Lru/localscribe/core/Segment;",
        "equals",
        "other",
        "hashCode",
        "toString",
        "write$Self",
        "",
        "self",
        "output",
        "Lkotlinx/serialization/encoding/CompositeEncoder;",
        "serialDesc",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "write$Self$core",
        "$serializer",
        "Companion",
        "core"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field private static final $childSerializers:[Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/Lazy<",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final Companion:Lru/localscribe/core/Segment$Companion;


# instance fields
.field private final acoustics:Lru/localscribe/core/Acoustics;

.field private final analysisSource:Ljava/lang/String;

.field private final clusteringSilhouette:Ljava/lang/Float;

.field private final confidence:Ljava/lang/Double;

.field private final embedding:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final embeddingSource:Ljava/lang/String;

.field private final emotion:Lru/localscribe/core/EmotionAssessment;

.field private final endMs:J

.field private final id:Ljava/lang/String;

.field private final originalAsrText:Ljava/lang/String;

.field private final overlap:Ljava/lang/String;

.field private final overlapIntervals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/localscribe/core/OverlapSpan;",
            ">;"
        }
    .end annotation
.end field

.field private final recordingId:Ljava/lang/String;

.field private final separatedAudioPath:Ljava/lang/String;

.field private final separation:Lru/localscribe/core/SeparationInfo;

.field private final speakerId:Ljava/lang/String;

.field private final speakerProvisional:Z

.field private final speakerSimilarity:Ljava/lang/Float;

.field private final startMs:J

.field private final status:Ljava/lang/String;

.field private final tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/localscribe/core/Tag;",
            ">;"
        }
    .end annotation
.end field

.field private final text:Ljava/lang/String;

.field private final timingKind:Ljava/lang/String;

.field private final tokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/localscribe/core/TokenStamp;",
            ">;"
        }
    .end annotation
.end field

.field private final words:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/localscribe/core/WordStamp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$48KTbdwxuAGkAi7BXpyWpVZRLJA()Lkotlinx/serialization/KSerializer;
    .locals 1

    invoke-static {}, Lru/localscribe/core/Segment;->_childSerializers$_anonymous_()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$OGNOiG-nbhN8Q3V7L6gW9JNc4Ak()Lkotlinx/serialization/KSerializer;
    .locals 1

    invoke-static {}, Lru/localscribe/core/Segment;->_childSerializers$_anonymous_$2()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$RKGMeP0tX05cPWV_0uQLIo9zuDU()Lkotlinx/serialization/KSerializer;
    .locals 1

    invoke-static {}, Lru/localscribe/core/Segment;->_childSerializers$_anonymous_$3()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$c1V7NgucXKyP7B58eNQ91i_FLWE()Lkotlinx/serialization/KSerializer;
    .locals 1

    invoke-static {}, Lru/localscribe/core/Segment;->_childSerializers$_anonymous_$0()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$uQpQLV-XAJxSBogTWVBf3rPdnBU()Lkotlinx/serialization/KSerializer;
    .locals 1

    invoke-static {}, Lru/localscribe/core/Segment;->_childSerializers$_anonymous_$1()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lru/localscribe/core/Segment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/localscribe/core/Segment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lru/localscribe/core/Segment;->Companion:Lru/localscribe/core/Segment$Companion;

    const/16 v0, 0x19

    new-array v0, v0, [Lkotlin/Lazy;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v2, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v3, Lru/localscribe/core/Segment$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lru/localscribe/core/Segment$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v0, v3

    sget-object v2, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v3, Lru/localscribe/core/Segment$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lru/localscribe/core/Segment$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    const/16 v3, 0xb

    aput-object v2, v0, v3

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v2, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v3, Lru/localscribe/core/Segment$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lru/localscribe/core/Segment$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    const/16 v3, 0xd

    aput-object v2, v0, v3

    sget-object v2, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v3, Lru/localscribe/core/Segment$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Lru/localscribe/core/Segment$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    const/16 v3, 0xe

    aput-object v2, v0, v3

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v2, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v3, Lru/localscribe/core/Segment$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Lru/localscribe/core/Segment$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    const/16 v3, 0x13

    aput-object v2, v0, v3

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sput-object v0, Lru/localscribe/core/Segment;->$childSerializers:[Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;ZLjava/lang/Double;Ljava/util/List;Ljava/util/List;Lru/localscribe/core/Acoustics;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lru/localscribe/core/EmotionAssessment;Ljava/util/List;Lru/localscribe/core/SeparationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    and-int/lit8 v2, v1, 0x2f

    const/16 v3, 0x2f

    if-eq v3, v2, :cond_0

    sget-object v2, Lru/localscribe/core/Segment$$serializer;->INSTANCE:Lru/localscribe/core/Segment$$serializer;

    invoke-virtual {v2}, Lru/localscribe/core/Segment$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v2, p2

    iput-object v2, v0, Lru/localscribe/core/Segment;->id:Ljava/lang/String;

    move-object/from16 v3, p3

    iput-object v3, v0, Lru/localscribe/core/Segment;->recordingId:Ljava/lang/String;

    move-wide/from16 v4, p4

    iput-wide v4, v0, Lru/localscribe/core/Segment;->startMs:J

    move-wide/from16 v6, p6

    iput-wide v6, v0, Lru/localscribe/core/Segment;->endMs:J

    and-int/lit8 v8, v1, 0x10

    const/4 v9, 0x0

    if-nez v8, :cond_1

    nop

    iput-object v9, v0, Lru/localscribe/core/Segment;->speakerId:Ljava/lang/String;

    move-object/from16 v8, p8

    goto :goto_0

    :cond_1
    move-object/from16 v8, p8

    iput-object v8, v0, Lru/localscribe/core/Segment;->speakerId:Ljava/lang/String;

    :goto_0
    move-object/from16 v10, p9

    iput-object v10, v0, Lru/localscribe/core/Segment;->text:Ljava/lang/String;

    and-int/lit8 v11, v1, 0x40

    if-nez v11, :cond_2

    nop

    const-string v11, "final"

    iput-object v11, v0, Lru/localscribe/core/Segment;->status:Ljava/lang/String;

    move-object/from16 v11, p10

    goto :goto_1

    :cond_2
    move-object/from16 v11, p10

    iput-object v11, v0, Lru/localscribe/core/Segment;->status:Ljava/lang/String;

    :goto_1
    and-int/lit16 v12, v1, 0x80

    if-nez v12, :cond_3

    nop

    iput-object v9, v0, Lru/localscribe/core/Segment;->speakerSimilarity:Ljava/lang/Float;

    move-object/from16 v12, p11

    goto :goto_2

    :cond_3
    move-object/from16 v12, p11

    iput-object v12, v0, Lru/localscribe/core/Segment;->speakerSimilarity:Ljava/lang/Float;

    :goto_2
    and-int/lit16 v13, v1, 0x100

    const/4 v14, 0x1

    if-nez v13, :cond_4

    nop

    iput-boolean v14, v0, Lru/localscribe/core/Segment;->speakerProvisional:Z

    move/from16 v13, p12

    goto :goto_3

    :cond_4
    move/from16 v13, p12

    iput-boolean v13, v0, Lru/localscribe/core/Segment;->speakerProvisional:Z

    :goto_3
    and-int/lit16 v15, v1, 0x200

    if-nez v15, :cond_5

    nop

    iput-object v9, v0, Lru/localscribe/core/Segment;->confidence:Ljava/lang/Double;

    move-object/from16 v15, p13

    goto :goto_4

    :cond_5
    move-object/from16 v15, p13

    iput-object v15, v0, Lru/localscribe/core/Segment;->confidence:Ljava/lang/Double;

    :goto_4
    and-int/lit16 v14, v1, 0x400

    if-nez v14, :cond_6

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v14

    iput-object v14, v0, Lru/localscribe/core/Segment;->tokens:Ljava/util/List;

    move-object/from16 v14, p14

    goto :goto_5

    :cond_6
    move-object/from16 v14, p14

    iput-object v14, v0, Lru/localscribe/core/Segment;->tokens:Ljava/util/List;

    :goto_5
    and-int/lit16 v9, v1, 0x800

    if-nez v9, :cond_7

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v9

    iput-object v9, v0, Lru/localscribe/core/Segment;->words:Ljava/util/List;

    move-object/from16 v9, p15

    goto :goto_6

    :cond_7
    move-object/from16 v9, p15

    iput-object v9, v0, Lru/localscribe/core/Segment;->words:Ljava/util/List;

    :goto_6
    and-int/lit16 v2, v1, 0x1000

    if-nez v2, :cond_8

    nop

    const/4 v2, 0x0

    iput-object v2, v0, Lru/localscribe/core/Segment;->acoustics:Lru/localscribe/core/Acoustics;

    move-object/from16 v2, p16

    goto :goto_7

    :cond_8
    move-object/from16 v2, p16

    iput-object v2, v0, Lru/localscribe/core/Segment;->acoustics:Lru/localscribe/core/Acoustics;

    :goto_7
    and-int/lit16 v2, v1, 0x2000

    if-nez v2, :cond_9

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lru/localscribe/core/Segment;->tags:Ljava/util/List;

    move-object/from16 v2, p17

    goto :goto_8

    :cond_9
    move-object/from16 v2, p17

    iput-object v2, v0, Lru/localscribe/core/Segment;->tags:Ljava/util/List;

    :goto_8
    and-int/lit16 v2, v1, 0x4000

    if-nez v2, :cond_a

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lru/localscribe/core/Segment;->embedding:Ljava/util/List;

    move-object/from16 v2, p18

    goto :goto_9

    :cond_a
    move-object/from16 v2, p18

    iput-object v2, v0, Lru/localscribe/core/Segment;->embedding:Ljava/util/List;

    :goto_9
    const v18, 0x8000

    and-int v18, v1, v18

    if-nez v18, :cond_b

    nop

    const-string v1, "legacy_cluster"

    iput-object v1, v0, Lru/localscribe/core/Segment;->embeddingSource:Ljava/lang/String;

    move-object/from16 v1, p19

    goto :goto_a

    :cond_b
    move-object/from16 v1, p19

    iput-object v1, v0, Lru/localscribe/core/Segment;->embeddingSource:Ljava/lang/String;

    :goto_a
    const/high16 v18, 0x10000

    and-int v18, p1, v18

    if-nez v18, :cond_c

    nop

    const-string v1, "unavailable"

    iput-object v1, v0, Lru/localscribe/core/Segment;->overlap:Ljava/lang/String;

    move-object/from16 v1, p20

    goto :goto_b

    :cond_c
    move-object/from16 v1, p20

    iput-object v1, v0, Lru/localscribe/core/Segment;->overlap:Ljava/lang/String;

    :goto_b
    const/high16 v18, 0x20000

    and-int v18, p1, v18

    if-nez v18, :cond_d

    nop

    const-string v1, "vad_and_embedding_window_estimate"

    iput-object v1, v0, Lru/localscribe/core/Segment;->timingKind:Ljava/lang/String;

    move-object/from16 v1, p21

    goto :goto_c

    :cond_d
    move-object/from16 v1, p21

    iput-object v1, v0, Lru/localscribe/core/Segment;->timingKind:Ljava/lang/String;

    :goto_c
    const/high16 v18, 0x40000

    and-int v18, p1, v18

    if-nez v18, :cond_e

    nop

    const/4 v1, 0x0

    iput-object v1, v0, Lru/localscribe/core/Segment;->emotion:Lru/localscribe/core/EmotionAssessment;

    move-object/from16 v1, p22

    goto :goto_d

    :cond_e
    move-object/from16 v1, p22

    iput-object v1, v0, Lru/localscribe/core/Segment;->emotion:Lru/localscribe/core/EmotionAssessment;

    :goto_d
    const/high16 v18, 0x80000

    and-int v18, p1, v18

    if-nez v18, :cond_f

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lru/localscribe/core/Segment;->overlapIntervals:Ljava/util/List;

    move-object/from16 v1, p23

    goto :goto_e

    :cond_f
    move-object/from16 v1, p23

    iput-object v1, v0, Lru/localscribe/core/Segment;->overlapIntervals:Ljava/util/List;

    :goto_e
    const/high16 v18, 0x100000

    and-int v18, p1, v18

    if-nez v18, :cond_10

    nop

    const/4 v1, 0x0

    iput-object v1, v0, Lru/localscribe/core/Segment;->separation:Lru/localscribe/core/SeparationInfo;

    move-object/from16 v1, p24

    goto :goto_f

    :cond_10
    move-object/from16 v1, p24

    iput-object v1, v0, Lru/localscribe/core/Segment;->separation:Lru/localscribe/core/SeparationInfo;

    :goto_f
    const/high16 v18, 0x200000

    and-int v18, p1, v18

    if-nez v18, :cond_11

    nop

    const-string v1, ""

    iput-object v1, v0, Lru/localscribe/core/Segment;->separatedAudioPath:Ljava/lang/String;

    move-object/from16 v1, p25

    goto :goto_10

    :cond_11
    move-object/from16 v1, p25

    iput-object v1, v0, Lru/localscribe/core/Segment;->separatedAudioPath:Ljava/lang/String;

    :goto_10
    const/high16 v18, 0x400000

    and-int v18, p1, v18

    if-nez v18, :cond_12

    nop

    const-string v1, "original"

    iput-object v1, v0, Lru/localscribe/core/Segment;->analysisSource:Ljava/lang/String;

    move-object/from16 v1, p26

    goto :goto_11

    :cond_12
    move-object/from16 v1, p26

    iput-object v1, v0, Lru/localscribe/core/Segment;->analysisSource:Ljava/lang/String;

    :goto_11
    const/high16 v18, 0x800000

    and-int v18, p1, v18

    if-nez v18, :cond_13

    nop

    const/4 v1, 0x0

    iput-object v1, v0, Lru/localscribe/core/Segment;->clusteringSilhouette:Ljava/lang/Float;

    move-object/from16 v1, p27

    goto :goto_12

    :cond_13
    const/4 v1, 0x0

    move-object/from16 v1, p27

    iput-object v1, v0, Lru/localscribe/core/Segment;->clusteringSilhouette:Ljava/lang/Float;

    :goto_12
    const/high16 v18, 0x1000000

    and-int v18, p1, v18

    if-nez v18, :cond_14

    nop

    const/4 v1, 0x0

    iput-object v1, v0, Lru/localscribe/core/Segment;->originalAsrText:Ljava/lang/String;

    move-object/from16 v1, p28

    goto :goto_13

    :cond_14
    move-object/from16 v1, p28

    iput-object v1, v0, Lru/localscribe/core/Segment;->originalAsrText:Ljava/lang/String;

    :goto_13
    iget-wide v1, v0, Lru/localscribe/core/Segment;->startMs:J

    const-wide/16 v17, 0x0

    cmp-long v1, v1, v17

    if-ltz v1, :cond_15

    iget-wide v1, v0, Lru/localscribe/core/Segment;->endMs:J

    move-wide/from16 v17, v1

    iget-wide v1, v0, Lru/localscribe/core/Segment;->startMs:J

    cmp-long v1, v17, v1

    if-ltz v1, :cond_15

    const/16 v16, 0x1

    goto :goto_14

    :cond_15
    const/4 v1, 0x0

    move/from16 v16, v1

    :goto_14
    if-eqz v16, :cond_16

    return-void

    :cond_16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed requirement."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;ZLjava/lang/Double;Ljava/util/List;Ljava/util/List;Lru/localscribe/core/Acoustics;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lru/localscribe/core/EmotionAssessment;Ljava/util/List;Lru/localscribe/core/SeparationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            "Z",
            "Ljava/lang/Double;",
            "Ljava/util/List<",
            "Lru/localscribe/core/TokenStamp;",
            ">;",
            "Ljava/util/List<",
            "Lru/localscribe/core/WordStamp;",
            ">;",
            "Lru/localscribe/core/Acoustics;",
            "Ljava/util/List<",
            "Lru/localscribe/core/Tag;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lru/localscribe/core/EmotionAssessment;",
            "Ljava/util/List<",
            "Lru/localscribe/core/OverlapSpan;",
            ">;",
            "Lru/localscribe/core/SeparationInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    move-object/from16 v5, p13

    move-object/from16 v6, p14

    move-object/from16 v7, p16

    move-object/from16 v8, p17

    move-object/from16 v9, p18

    move-object/from16 v10, p19

    move-object/from16 v11, p20

    move-object/from16 v12, p22

    move-object/from16 v13, p24

    move-object/from16 v14, p25

    const-string v15, "id"

    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "recordingId"

    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "text"

    invoke-static {v3, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "status"

    invoke-static {v4, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "tokens"

    invoke-static {v5, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "words"

    invoke-static {v6, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "tags"

    invoke-static {v7, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "embedding"

    invoke-static {v8, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "embeddingSource"

    invoke-static {v9, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "overlap"

    invoke-static {v10, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "timingKind"

    invoke-static {v11, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "overlapIntervals"

    invoke-static {v12, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "separatedAudioPath"

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "analysisSource"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lru/localscribe/core/Segment;->id:Ljava/lang/String;

    iput-object v2, v0, Lru/localscribe/core/Segment;->recordingId:Ljava/lang/String;

    move-wide/from16 v1, p3

    iput-wide v1, v0, Lru/localscribe/core/Segment;->startMs:J

    move-wide/from16 v1, p5

    iput-wide v1, v0, Lru/localscribe/core/Segment;->endMs:J

    move-object/from16 v15, p7

    iput-object v15, v0, Lru/localscribe/core/Segment;->speakerId:Ljava/lang/String;

    iput-object v3, v0, Lru/localscribe/core/Segment;->text:Ljava/lang/String;

    iput-object v4, v0, Lru/localscribe/core/Segment;->status:Ljava/lang/String;

    move-object/from16 v1, p10

    iput-object v1, v0, Lru/localscribe/core/Segment;->speakerSimilarity:Ljava/lang/Float;

    move/from16 v2, p11

    iput-boolean v2, v0, Lru/localscribe/core/Segment;->speakerProvisional:Z

    move-object/from16 v1, p12

    iput-object v1, v0, Lru/localscribe/core/Segment;->confidence:Ljava/lang/Double;

    iput-object v5, v0, Lru/localscribe/core/Segment;->tokens:Ljava/util/List;

    iput-object v6, v0, Lru/localscribe/core/Segment;->words:Ljava/util/List;

    move-object/from16 v1, p15

    iput-object v1, v0, Lru/localscribe/core/Segment;->acoustics:Lru/localscribe/core/Acoustics;

    iput-object v7, v0, Lru/localscribe/core/Segment;->tags:Ljava/util/List;

    iput-object v8, v0, Lru/localscribe/core/Segment;->embedding:Ljava/util/List;

    iput-object v9, v0, Lru/localscribe/core/Segment;->embeddingSource:Ljava/lang/String;

    iput-object v10, v0, Lru/localscribe/core/Segment;->overlap:Ljava/lang/String;

    iput-object v11, v0, Lru/localscribe/core/Segment;->timingKind:Ljava/lang/String;

    move-object/from16 v1, p21

    iput-object v1, v0, Lru/localscribe/core/Segment;->emotion:Lru/localscribe/core/EmotionAssessment;

    iput-object v12, v0, Lru/localscribe/core/Segment;->overlapIntervals:Ljava/util/List;

    move-object/from16 v1, p23

    iput-object v1, v0, Lru/localscribe/core/Segment;->separation:Lru/localscribe/core/SeparationInfo;

    iput-object v13, v0, Lru/localscribe/core/Segment;->separatedAudioPath:Ljava/lang/String;

    iput-object v14, v0, Lru/localscribe/core/Segment;->analysisSource:Ljava/lang/String;

    move-object/from16 v1, p26

    iput-object v1, v0, Lru/localscribe/core/Segment;->clusteringSilhouette:Ljava/lang/Float;

    move-object/from16 v1, p27

    iput-object v1, v0, Lru/localscribe/core/Segment;->originalAsrText:Ljava/lang/String;

    nop

    iget-wide v1, v0, Lru/localscribe/core/Segment;->startMs:J

    const-wide/16 v16, 0x0

    cmp-long v1, v1, v16

    if-ltz v1, :cond_0

    iget-wide v1, v0, Lru/localscribe/core/Segment;->endMs:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lru/localscribe/core/Segment;->startMs:J

    cmp-long v1, v16, v1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    nop

    return-void

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed requirement."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;ZLjava/lang/Double;Ljava/util/List;Ljava/util/List;Lru/localscribe/core/Acoustics;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lru/localscribe/core/EmotionAssessment;Ljava/util/List;Lru/localscribe/core/SeparationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 31

    move/from16 v0, p28

    and-int/lit8 v1, v0, 0x10

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v10, v2

    goto :goto_0

    :cond_0
    move-object/from16 v10, p7

    :goto_0
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_1

    const-string v1, "final"

    move-object v12, v1

    goto :goto_1

    :cond_1
    move-object/from16 v12, p9

    :goto_1
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_2

    move-object v13, v2

    goto :goto_2

    :cond_2
    move-object/from16 v13, p10

    :goto_2
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    move v14, v1

    goto :goto_3

    :cond_3
    move/from16 v14, p11

    :goto_3
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_4

    move-object v15, v2

    goto :goto_4

    :cond_4
    move-object/from16 v15, p12

    :goto_4
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_5

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object/from16 v16, v1

    goto :goto_5

    :cond_5
    move-object/from16 v16, p13

    :goto_5
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_6

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object/from16 v17, v1

    goto :goto_6

    :cond_6
    move-object/from16 v17, p14

    :goto_6
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_7

    move-object/from16 v18, v2

    goto :goto_7

    :cond_7
    move-object/from16 v18, p15

    :goto_7
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_8

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object/from16 v19, v1

    goto :goto_8

    :cond_8
    move-object/from16 v19, p16

    :goto_8
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_9

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object/from16 v20, v1

    goto :goto_9

    :cond_9
    move-object/from16 v20, p17

    :goto_9
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_a

    const-string v1, "legacy_cluster"

    move-object/from16 v21, v1

    goto :goto_a

    :cond_a
    move-object/from16 v21, p18

    :goto_a
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_b

    const-string v1, "unavailable"

    move-object/from16 v22, v1

    goto :goto_b

    :cond_b
    move-object/from16 v22, p19

    :goto_b
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_c

    const-string v1, "vad_and_embedding_window_estimate"

    move-object/from16 v23, v1

    goto :goto_c

    :cond_c
    move-object/from16 v23, p20

    :goto_c
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_d

    move-object/from16 v24, v2

    goto :goto_d

    :cond_d
    move-object/from16 v24, p21

    :goto_d
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_e

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object/from16 v25, v1

    goto :goto_e

    :cond_e
    move-object/from16 v25, p22

    :goto_e
    const/high16 v1, 0x100000

    and-int/2addr v1, v0

    if-eqz v1, :cond_f

    move-object/from16 v26, v2

    goto :goto_f

    :cond_f
    move-object/from16 v26, p23

    :goto_f
    const/high16 v1, 0x200000

    and-int/2addr v1, v0

    if-eqz v1, :cond_10

    const-string v1, ""

    move-object/from16 v27, v1

    goto :goto_10

    :cond_10
    move-object/from16 v27, p24

    :goto_10
    const/high16 v1, 0x400000

    and-int/2addr v1, v0

    if-eqz v1, :cond_11

    const-string v1, "original"

    move-object/from16 v28, v1

    goto :goto_11

    :cond_11
    move-object/from16 v28, p25

    :goto_11
    const/high16 v1, 0x800000

    and-int/2addr v1, v0

    if-eqz v1, :cond_12

    move-object/from16 v29, v2

    goto :goto_12

    :cond_12
    move-object/from16 v29, p26

    :goto_12
    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_13

    move-object/from16 v30, v2

    goto :goto_13

    :cond_13
    move-object/from16 v30, p27

    :goto_13
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-object/from16 v11, p8

    invoke-direct/range {v3 .. v30}, Lru/localscribe/core/Segment;-><init>(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;ZLjava/lang/Double;Ljava/util/List;Ljava/util/List;Lru/localscribe/core/Acoustics;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lru/localscribe/core/EmotionAssessment;Ljava/util/List;Lru/localscribe/core/SeparationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;)V

    return-void
.end method

.method private static final synthetic _childSerializers$_anonymous_()Lkotlinx/serialization/KSerializer;
    .locals 2

    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v1, Lru/localscribe/core/TokenStamp$$serializer;->INSTANCE:Lru/localscribe/core/TokenStamp$$serializer;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    check-cast v0, Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method private static final synthetic _childSerializers$_anonymous_$0()Lkotlinx/serialization/KSerializer;
    .locals 2

    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v1, Lru/localscribe/core/WordStamp$$serializer;->INSTANCE:Lru/localscribe/core/WordStamp$$serializer;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    check-cast v0, Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method private static final synthetic _childSerializers$_anonymous_$1()Lkotlinx/serialization/KSerializer;
    .locals 2

    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v1, Lru/localscribe/core/Tag$$serializer;->INSTANCE:Lru/localscribe/core/Tag$$serializer;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    check-cast v0, Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method private static final synthetic _childSerializers$_anonymous_$2()Lkotlinx/serialization/KSerializer;
    .locals 2

    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v1, Lkotlinx/serialization/internal/FloatSerializer;->INSTANCE:Lkotlinx/serialization/internal/FloatSerializer;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    check-cast v0, Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method private static final synthetic _childSerializers$_anonymous_$3()Lkotlinx/serialization/KSerializer;
    .locals 2

    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v1, Lru/localscribe/core/OverlapSpan$$serializer;->INSTANCE:Lru/localscribe/core/OverlapSpan$$serializer;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    check-cast v0, Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lru/localscribe/core/Segment;->$childSerializers:[Lkotlin/Lazy;

    return-object v0
.end method

.method public static synthetic copy$default(Lru/localscribe/core/Segment;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;ZLjava/lang/Double;Ljava/util/List;Ljava/util/List;Lru/localscribe/core/Acoustics;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lru/localscribe/core/EmotionAssessment;Ljava/util/List;Lru/localscribe/core/SeparationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;ILjava/lang/Object;)Lru/localscribe/core/Segment;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p28

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lru/localscribe/core/Segment;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lru/localscribe/core/Segment;->recordingId:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-wide v4, v0, Lru/localscribe/core/Segment;->startMs:J

    goto :goto_2

    :cond_2
    move-wide/from16 v4, p3

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget-wide v6, v0, Lru/localscribe/core/Segment;->endMs:J

    goto :goto_3

    :cond_3
    move-wide/from16 v6, p5

    :goto_3
    and-int/lit8 v8, v1, 0x10

    if-eqz v8, :cond_4

    iget-object v8, v0, Lru/localscribe/core/Segment;->speakerId:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v8, p7

    :goto_4
    and-int/lit8 v9, v1, 0x20

    if-eqz v9, :cond_5

    iget-object v9, v0, Lru/localscribe/core/Segment;->text:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v9, p8

    :goto_5
    and-int/lit8 v10, v1, 0x40

    if-eqz v10, :cond_6

    iget-object v10, v0, Lru/localscribe/core/Segment;->status:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v10, p9

    :goto_6
    and-int/lit16 v11, v1, 0x80

    if-eqz v11, :cond_7

    iget-object v11, v0, Lru/localscribe/core/Segment;->speakerSimilarity:Ljava/lang/Float;

    goto :goto_7

    :cond_7
    move-object/from16 v11, p10

    :goto_7
    and-int/lit16 v12, v1, 0x100

    if-eqz v12, :cond_8

    iget-boolean v12, v0, Lru/localscribe/core/Segment;->speakerProvisional:Z

    goto :goto_8

    :cond_8
    move/from16 v12, p11

    :goto_8
    and-int/lit16 v13, v1, 0x200

    if-eqz v13, :cond_9

    iget-object v13, v0, Lru/localscribe/core/Segment;->confidence:Ljava/lang/Double;

    goto :goto_9

    :cond_9
    move-object/from16 v13, p12

    :goto_9
    and-int/lit16 v14, v1, 0x400

    if-eqz v14, :cond_a

    iget-object v14, v0, Lru/localscribe/core/Segment;->tokens:Ljava/util/List;

    goto :goto_a

    :cond_a
    move-object/from16 v14, p13

    :goto_a
    and-int/lit16 v15, v1, 0x800

    if-eqz v15, :cond_b

    iget-object v15, v0, Lru/localscribe/core/Segment;->words:Ljava/util/List;

    goto :goto_b

    :cond_b
    move-object/from16 v15, p14

    :goto_b
    move-object/from16 p1, v2

    and-int/lit16 v2, v1, 0x1000

    if-eqz v2, :cond_c

    iget-object v2, v0, Lru/localscribe/core/Segment;->acoustics:Lru/localscribe/core/Acoustics;

    goto :goto_c

    :cond_c
    move-object/from16 v2, p15

    :goto_c
    move-object/from16 p2, v2

    and-int/lit16 v2, v1, 0x2000

    if-eqz v2, :cond_d

    iget-object v2, v0, Lru/localscribe/core/Segment;->tags:Ljava/util/List;

    goto :goto_d

    :cond_d
    move-object/from16 v2, p16

    :goto_d
    move-object/from16 p3, v2

    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_e

    iget-object v2, v0, Lru/localscribe/core/Segment;->embedding:Ljava/util/List;

    goto :goto_e

    :cond_e
    move-object/from16 v2, p17

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    if-eqz v16, :cond_f

    iget-object v1, v0, Lru/localscribe/core/Segment;->embeddingSource:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 v1, p18

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, p28, v16

    move-object/from16 p4, v1

    if-eqz v16, :cond_10

    iget-object v1, v0, Lru/localscribe/core/Segment;->overlap:Ljava/lang/String;

    goto :goto_10

    :cond_10
    move-object/from16 v1, p19

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, p28, v16

    move-object/from16 p5, v1

    if-eqz v16, :cond_11

    iget-object v1, v0, Lru/localscribe/core/Segment;->timingKind:Ljava/lang/String;

    goto :goto_11

    :cond_11
    move-object/from16 v1, p20

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, p28, v16

    move-object/from16 p6, v1

    if-eqz v16, :cond_12

    iget-object v1, v0, Lru/localscribe/core/Segment;->emotion:Lru/localscribe/core/EmotionAssessment;

    goto :goto_12

    :cond_12
    move-object/from16 v1, p21

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, p28, v16

    move-object/from16 p7, v1

    if-eqz v16, :cond_13

    iget-object v1, v0, Lru/localscribe/core/Segment;->overlapIntervals:Ljava/util/List;

    goto :goto_13

    :cond_13
    move-object/from16 v1, p22

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, p28, v16

    move-object/from16 p8, v1

    if-eqz v16, :cond_14

    iget-object v1, v0, Lru/localscribe/core/Segment;->separation:Lru/localscribe/core/SeparationInfo;

    goto :goto_14

    :cond_14
    move-object/from16 v1, p23

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, p28, v16

    move-object/from16 p9, v1

    if-eqz v16, :cond_15

    iget-object v1, v0, Lru/localscribe/core/Segment;->separatedAudioPath:Ljava/lang/String;

    goto :goto_15

    :cond_15
    move-object/from16 v1, p24

    :goto_15
    const/high16 v16, 0x400000

    and-int v16, p28, v16

    move-object/from16 p10, v1

    if-eqz v16, :cond_16

    iget-object v1, v0, Lru/localscribe/core/Segment;->analysisSource:Ljava/lang/String;

    goto :goto_16

    :cond_16
    move-object/from16 v1, p25

    :goto_16
    const/high16 v16, 0x800000

    and-int v16, p28, v16

    move-object/from16 p11, v1

    if-eqz v16, :cond_17

    iget-object v1, v0, Lru/localscribe/core/Segment;->clusteringSilhouette:Ljava/lang/Float;

    goto :goto_17

    :cond_17
    move-object/from16 v1, p26

    :goto_17
    const/high16 v16, 0x1000000

    and-int v16, p28, v16

    if-eqz v16, :cond_18

    move-object/from16 p12, v1

    iget-object v1, v0, Lru/localscribe/core/Segment;->originalAsrText:Ljava/lang/String;

    move-object/from16 p27, p12

    move-object/from16 p28, v1

    goto :goto_18

    :cond_18
    move-object/from16 p28, p27

    move-object/from16 p27, v1

    :goto_18
    move-object/from16 p16, p2

    move-object/from16 p17, p3

    move-object/from16 p19, p4

    move-object/from16 p20, p5

    move-object/from16 p21, p6

    move-object/from16 p22, p7

    move-object/from16 p23, p8

    move-object/from16 p24, p9

    move-object/from16 p25, p10

    move-object/from16 p26, p11

    move-object/from16 p18, v2

    move-object/from16 p3, v3

    move-wide/from16 p4, v4

    move-wide/from16 p6, v6

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    move-object/from16 p2, p1

    move-object/from16 p1, v0

    invoke-virtual/range {p1 .. p28}, Lru/localscribe/core/Segment;->copy(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;ZLjava/lang/Double;Ljava/util/List;Ljava/util/List;Lru/localscribe/core/Acoustics;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lru/localscribe/core/EmotionAssessment;Ljava/util/List;Lru/localscribe/core/SeparationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;)Lru/localscribe/core/Segment;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic write$Self$core(Lru/localscribe/core/Segment;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lru/localscribe/core/Segment;->$childSerializers:[Lkotlin/Lazy;

    iget-object v1, p0, Lru/localscribe/core/Segment;->id:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    iget-object v1, p0, Lru/localscribe/core/Segment;->recordingId:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {p1, p2, v3, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v1, 0x2

    iget-wide v4, p0, Lru/localscribe/core/Segment;->startMs:J

    invoke-interface {p1, p2, v1, v4, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    const/4 v1, 0x3

    iget-wide v4, p0, Lru/localscribe/core/Segment;->endMs:J

    invoke-interface {p1, p2, v1, v4, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    const/4 v1, 0x4

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    move v4, v3

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lru/localscribe/core/Segment;->speakerId:Ljava/lang/String;

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_1
    if-eqz v4, :cond_2

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v4, Lkotlinx/serialization/SerializationStrategy;

    iget-object v5, p0, Lru/localscribe/core/Segment;->speakerId:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v4, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_2
    const/4 v1, 0x5

    iget-object v4, p0, Lru/localscribe/core/Segment;->text:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v1, 0x6

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_2
    move v4, v3

    goto :goto_3

    :cond_3
    iget-object v4, p0, Lru/localscribe/core/Segment;->status:Ljava/lang/String;

    nop

    const-string v5, "final"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    move v4, v2

    :goto_3
    if-eqz v4, :cond_5

    iget-object v4, p0, Lru/localscribe/core/Segment;->status:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    :cond_5
    const/4 v1, 0x7

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_6

    :goto_4
    move v4, v3

    goto :goto_5

    :cond_6
    iget-object v4, p0, Lru/localscribe/core/Segment;->speakerSimilarity:Ljava/lang/Float;

    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    move v4, v2

    :goto_5
    if-eqz v4, :cond_8

    sget-object v4, Lkotlinx/serialization/internal/FloatSerializer;->INSTANCE:Lkotlinx/serialization/internal/FloatSerializer;

    check-cast v4, Lkotlinx/serialization/SerializationStrategy;

    iget-object v5, p0, Lru/localscribe/core/Segment;->speakerSimilarity:Ljava/lang/Float;

    invoke-interface {p1, p2, v1, v4, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_8
    const/16 v1, 0x8

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_9

    :goto_6
    move v4, v3

    goto :goto_7

    :cond_9
    iget-boolean v4, p0, Lru/localscribe/core/Segment;->speakerProvisional:Z

    nop

    if-eq v4, v3, :cond_a

    goto :goto_6

    :cond_a
    move v4, v2

    :goto_7
    if-eqz v4, :cond_b

    iget-boolean v4, p0, Lru/localscribe/core/Segment;->speakerProvisional:Z

    invoke-interface {p1, p2, v1, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_b
    const/16 v1, 0x9

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_c

    :goto_8
    move v4, v3

    goto :goto_9

    :cond_c
    iget-object v4, p0, Lru/localscribe/core/Segment;->confidence:Ljava/lang/Double;

    if-eqz v4, :cond_d

    goto :goto_8

    :cond_d
    move v4, v2

    :goto_9
    if-eqz v4, :cond_e

    sget-object v4, Lkotlinx/serialization/internal/DoubleSerializer;->INSTANCE:Lkotlinx/serialization/internal/DoubleSerializer;

    check-cast v4, Lkotlinx/serialization/SerializationStrategy;

    iget-object v5, p0, Lru/localscribe/core/Segment;->confidence:Ljava/lang/Double;

    invoke-interface {p1, p2, v1, v4, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_e
    const/16 v1, 0xa

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_f

    :goto_a
    move v4, v3

    goto :goto_b

    :cond_f
    iget-object v4, p0, Lru/localscribe/core/Segment;->tokens:Ljava/util/List;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    goto :goto_a

    :cond_10
    move v4, v2

    :goto_b
    if-eqz v4, :cond_11

    aget-object v4, v0, v1

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlinx/serialization/SerializationStrategy;

    iget-object v5, p0, Lru/localscribe/core/Segment;->tokens:Ljava/util/List;

    invoke-interface {p1, p2, v1, v4, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_11
    const/16 v1, 0xb

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_12

    :goto_c
    move v4, v3

    goto :goto_d

    :cond_12
    iget-object v4, p0, Lru/localscribe/core/Segment;->words:Ljava/util/List;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    goto :goto_c

    :cond_13
    move v4, v2

    :goto_d
    if-eqz v4, :cond_14

    aget-object v4, v0, v1

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlinx/serialization/SerializationStrategy;

    iget-object v5, p0, Lru/localscribe/core/Segment;->words:Ljava/util/List;

    invoke-interface {p1, p2, v1, v4, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_14
    const/16 v1, 0xc

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_15

    :goto_e
    move v4, v3

    goto :goto_f

    :cond_15
    iget-object v4, p0, Lru/localscribe/core/Segment;->acoustics:Lru/localscribe/core/Acoustics;

    if-eqz v4, :cond_16

    goto :goto_e

    :cond_16
    move v4, v2

    :goto_f
    if-eqz v4, :cond_17

    sget-object v4, Lru/localscribe/core/Acoustics$$serializer;->INSTANCE:Lru/localscribe/core/Acoustics$$serializer;

    check-cast v4, Lkotlinx/serialization/SerializationStrategy;

    iget-object v5, p0, Lru/localscribe/core/Segment;->acoustics:Lru/localscribe/core/Acoustics;

    invoke-interface {p1, p2, v1, v4, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_17
    const/16 v1, 0xd

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_18

    :goto_10
    move v4, v3

    goto :goto_11

    :cond_18
    iget-object v4, p0, Lru/localscribe/core/Segment;->tags:Ljava/util/List;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    goto :goto_10

    :cond_19
    move v4, v2

    :goto_11
    if-eqz v4, :cond_1a

    aget-object v4, v0, v1

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlinx/serialization/SerializationStrategy;

    iget-object v5, p0, Lru/localscribe/core/Segment;->tags:Ljava/util/List;

    invoke-interface {p1, p2, v1, v4, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1a
    const/16 v1, 0xe

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_1b

    :goto_12
    move v4, v3

    goto :goto_13

    :cond_1b
    iget-object v4, p0, Lru/localscribe/core/Segment;->embedding:Ljava/util/List;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    goto :goto_12

    :cond_1c
    move v4, v2

    :goto_13
    if-eqz v4, :cond_1d

    aget-object v4, v0, v1

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlinx/serialization/SerializationStrategy;

    iget-object v5, p0, Lru/localscribe/core/Segment;->embedding:Ljava/util/List;

    invoke-interface {p1, p2, v1, v4, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1d
    const/16 v1, 0xf

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_1e

    :goto_14
    move v4, v3

    goto :goto_15

    :cond_1e
    iget-object v4, p0, Lru/localscribe/core/Segment;->embeddingSource:Ljava/lang/String;

    nop

    const-string v5, "legacy_cluster"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    goto :goto_14

    :cond_1f
    move v4, v2

    :goto_15
    if-eqz v4, :cond_20

    iget-object v4, p0, Lru/localscribe/core/Segment;->embeddingSource:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    :cond_20
    const/16 v1, 0x10

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_21

    :goto_16
    move v4, v3

    goto :goto_17

    :cond_21
    iget-object v4, p0, Lru/localscribe/core/Segment;->overlap:Ljava/lang/String;

    nop

    const-string v5, "unavailable"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    goto :goto_16

    :cond_22
    move v4, v2

    :goto_17
    if-eqz v4, :cond_23

    iget-object v4, p0, Lru/localscribe/core/Segment;->overlap:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    :cond_23
    const/16 v1, 0x11

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_24

    :goto_18
    move v4, v3

    goto :goto_19

    :cond_24
    iget-object v4, p0, Lru/localscribe/core/Segment;->timingKind:Ljava/lang/String;

    nop

    const-string v5, "vad_and_embedding_window_estimate"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25

    goto :goto_18

    :cond_25
    move v4, v2

    :goto_19
    if-eqz v4, :cond_26

    iget-object v4, p0, Lru/localscribe/core/Segment;->timingKind:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    :cond_26
    const/16 v1, 0x12

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_27

    :goto_1a
    move v4, v3

    goto :goto_1b

    :cond_27
    iget-object v4, p0, Lru/localscribe/core/Segment;->emotion:Lru/localscribe/core/EmotionAssessment;

    if-eqz v4, :cond_28

    goto :goto_1a

    :cond_28
    move v4, v2

    :goto_1b
    if-eqz v4, :cond_29

    sget-object v4, Lru/localscribe/core/EmotionAssessment$$serializer;->INSTANCE:Lru/localscribe/core/EmotionAssessment$$serializer;

    check-cast v4, Lkotlinx/serialization/SerializationStrategy;

    iget-object v5, p0, Lru/localscribe/core/Segment;->emotion:Lru/localscribe/core/EmotionAssessment;

    invoke-interface {p1, p2, v1, v4, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_29
    const/16 v1, 0x13

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_2a

    :goto_1c
    move v4, v3

    goto :goto_1d

    :cond_2a
    iget-object v4, p0, Lru/localscribe/core/Segment;->overlapIntervals:Ljava/util/List;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2b

    goto :goto_1c

    :cond_2b
    move v4, v2

    :goto_1d
    if-eqz v4, :cond_2c

    aget-object v0, v0, v1

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v4, p0, Lru/localscribe/core/Segment;->overlapIntervals:Ljava/util/List;

    invoke-interface {p1, p2, v1, v0, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_2c
    const/16 v0, 0x14

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_2d

    :goto_1e
    move v1, v3

    goto :goto_1f

    :cond_2d
    iget-object v1, p0, Lru/localscribe/core/Segment;->separation:Lru/localscribe/core/SeparationInfo;

    if-eqz v1, :cond_2e

    goto :goto_1e

    :cond_2e
    move v1, v2

    :goto_1f
    if-eqz v1, :cond_2f

    sget-object v1, Lru/localscribe/core/SeparationInfo$$serializer;->INSTANCE:Lru/localscribe/core/SeparationInfo$$serializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v4, p0, Lru/localscribe/core/Segment;->separation:Lru/localscribe/core/SeparationInfo;

    invoke-interface {p1, p2, v0, v1, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_2f
    const/16 v0, 0x15

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_30

    :goto_20
    move v1, v3

    goto :goto_21

    :cond_30
    iget-object v1, p0, Lru/localscribe/core/Segment;->separatedAudioPath:Ljava/lang/String;

    nop

    const-string v4, ""

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    goto :goto_20

    :cond_31
    move v1, v2

    :goto_21
    if-eqz v1, :cond_32

    iget-object v1, p0, Lru/localscribe/core/Segment;->separatedAudioPath:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    :cond_32
    const/16 v0, 0x16

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_33

    :goto_22
    move v1, v3

    goto :goto_23

    :cond_33
    iget-object v1, p0, Lru/localscribe/core/Segment;->analysisSource:Ljava/lang/String;

    nop

    const-string v4, "original"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    goto :goto_22

    :cond_34
    move v1, v2

    :goto_23
    if-eqz v1, :cond_35

    iget-object v1, p0, Lru/localscribe/core/Segment;->analysisSource:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    :cond_35
    const/16 v0, 0x17

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_36

    :goto_24
    move v1, v3

    goto :goto_25

    :cond_36
    iget-object v1, p0, Lru/localscribe/core/Segment;->clusteringSilhouette:Ljava/lang/Float;

    if-eqz v1, :cond_37

    goto :goto_24

    :cond_37
    move v1, v2

    :goto_25
    if-eqz v1, :cond_38

    sget-object v1, Lkotlinx/serialization/internal/FloatSerializer;->INSTANCE:Lkotlinx/serialization/internal/FloatSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v4, p0, Lru/localscribe/core/Segment;->clusteringSilhouette:Ljava/lang/Float;

    invoke-interface {p1, p2, v0, v1, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_38
    const/16 v0, 0x18

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_39

    :goto_26
    move v2, v3

    goto :goto_27

    :cond_39
    iget-object v1, p0, Lru/localscribe/core/Segment;->originalAsrText:Ljava/lang/String;

    if-eqz v1, :cond_3a

    goto :goto_26

    :cond_3a
    :goto_27
    if-eqz v2, :cond_3b

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lru/localscribe/core/Segment;->originalAsrText:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3b
    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Segment;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Segment;->confidence:Ljava/lang/Double;

    return-object v0
.end method

.method public final component11()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/localscribe/core/TokenStamp;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lru/localscribe/core/Segment;->tokens:Ljava/util/List;

    return-object v0
.end method

.method public final component12()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/localscribe/core/WordStamp;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lru/localscribe/core/Segment;->words:Ljava/util/List;

    return-object v0
.end method

.method public final component13()Lru/localscribe/core/Acoustics;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Segment;->acoustics:Lru/localscribe/core/Acoustics;

    return-object v0
.end method

.method public final component14()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/localscribe/core/Tag;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lru/localscribe/core/Segment;->tags:Ljava/util/List;

    return-object v0
.end method

.method public final component15()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lru/localscribe/core/Segment;->embedding:Ljava/util/List;

    return-object v0
.end method

.method public final component16()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Segment;->embeddingSource:Ljava/lang/String;

    return-object v0
.end method

.method public final component17()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Segment;->overlap:Ljava/lang/String;

    return-object v0
.end method

.method public final component18()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Segment;->timingKind:Ljava/lang/String;

    return-object v0
.end method

.method public final component19()Lru/localscribe/core/EmotionAssessment;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Segment;->emotion:Lru/localscribe/core/EmotionAssessment;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Segment;->recordingId:Ljava/lang/String;

    return-object v0
.end method

.method public final component20()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/localscribe/core/OverlapSpan;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lru/localscribe/core/Segment;->overlapIntervals:Ljava/util/List;

    return-object v0
.end method

.method public final component21()Lru/localscribe/core/SeparationInfo;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Segment;->separation:Lru/localscribe/core/SeparationInfo;

    return-object v0
.end method

.method public final component22()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Segment;->separatedAudioPath:Ljava/lang/String;

    return-object v0
.end method

.method public final component23()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Segment;->analysisSource:Ljava/lang/String;

    return-object v0
.end method

.method public final component24()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Segment;->clusteringSilhouette:Ljava/lang/Float;

    return-object v0
.end method

.method public final component25()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Segment;->originalAsrText:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lru/localscribe/core/Segment;->startMs:J

    return-wide v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lru/localscribe/core/Segment;->endMs:J

    return-wide v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Segment;->speakerId:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Segment;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Segment;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Segment;->speakerSimilarity:Ljava/lang/Float;

    return-object v0
.end method

.method public final component9()Z
    .locals 1

    iget-boolean v0, p0, Lru/localscribe/core/Segment;->speakerProvisional:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;ZLjava/lang/Double;Ljava/util/List;Ljava/util/List;Lru/localscribe/core/Acoustics;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lru/localscribe/core/EmotionAssessment;Ljava/util/List;Lru/localscribe/core/SeparationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;)Lru/localscribe/core/Segment;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            "Z",
            "Ljava/lang/Double;",
            "Ljava/util/List<",
            "Lru/localscribe/core/TokenStamp;",
            ">;",
            "Ljava/util/List<",
            "Lru/localscribe/core/WordStamp;",
            ">;",
            "Lru/localscribe/core/Acoustics;",
            "Ljava/util/List<",
            "Lru/localscribe/core/Tag;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lru/localscribe/core/EmotionAssessment;",
            "Ljava/util/List<",
            "Lru/localscribe/core/OverlapSpan;",
            ">;",
            "Lru/localscribe/core/SeparationInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            "Ljava/lang/String;",
            ")",
            "Lru/localscribe/core/Segment;"
        }
    .end annotation

    const-string v0, "id"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recordingId"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokens"

    move-object/from16 v14, p13

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "words"

    move-object/from16 v15, p14

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tags"

    move-object/from16 v1, p16

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "embedding"

    move-object/from16 v4, p17

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "embeddingSource"

    move-object/from16 v5, p18

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "overlap"

    move-object/from16 v6, p19

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timingKind"

    move-object/from16 v7, p20

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "overlapIntervals"

    move-object/from16 v8, p22

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "separatedAudioPath"

    move-object/from16 v11, p24

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analysisSource"

    move-object/from16 v12, p25

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lru/localscribe/core/Segment;

    move-object/from16 v13, p12

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v22, p21

    move-object/from16 v24, p23

    move-object/from16 v27, p26

    move-object/from16 v28, p27

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v23, v8

    move-object/from16 v25, v11

    move-object/from16 v26, v12

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v1 .. v28}, Lru/localscribe/core/Segment;-><init>(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;ZLjava/lang/Double;Ljava/util/List;Ljava/util/List;Lru/localscribe/core/Acoustics;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lru/localscribe/core/EmotionAssessment;Ljava/util/List;Lru/localscribe/core/SeparationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lru/localscribe/core/Segment;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lru/localscribe/core/Segment;

    iget-object v3, p0, Lru/localscribe/core/Segment;->id:Ljava/lang/String;

    iget-object v4, v1, Lru/localscribe/core/Segment;->id:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lru/localscribe/core/Segment;->recordingId:Ljava/lang/String;

    iget-object v4, v1, Lru/localscribe/core/Segment;->recordingId:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lru/localscribe/core/Segment;->startMs:J

    iget-wide v5, v1, Lru/localscribe/core/Segment;->startMs:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lru/localscribe/core/Segment;->endMs:J

    iget-wide v5, v1, Lru/localscribe/core/Segment;->endMs:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    return v2

    :cond_5
    iget-object v3, p0, Lru/localscribe/core/Segment;->speakerId:Ljava/lang/String;

    iget-object v4, v1, Lru/localscribe/core/Segment;->speakerId:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return v2

    :cond_6
    iget-object v3, p0, Lru/localscribe/core/Segment;->text:Ljava/lang/String;

    iget-object v4, v1, Lru/localscribe/core/Segment;->text:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    return v2

    :cond_7
    iget-object v3, p0, Lru/localscribe/core/Segment;->status:Ljava/lang/String;

    iget-object v4, v1, Lru/localscribe/core/Segment;->status:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    return v2

    :cond_8
    iget-object v3, p0, Lru/localscribe/core/Segment;->speakerSimilarity:Ljava/lang/Float;

    iget-object v4, v1, Lru/localscribe/core/Segment;->speakerSimilarity:Ljava/lang/Float;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    return v2

    :cond_9
    iget-boolean v3, p0, Lru/localscribe/core/Segment;->speakerProvisional:Z

    iget-boolean v4, v1, Lru/localscribe/core/Segment;->speakerProvisional:Z

    if-eq v3, v4, :cond_a

    return v2

    :cond_a
    iget-object v3, p0, Lru/localscribe/core/Segment;->confidence:Ljava/lang/Double;

    iget-object v4, v1, Lru/localscribe/core/Segment;->confidence:Ljava/lang/Double;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    return v2

    :cond_b
    iget-object v3, p0, Lru/localscribe/core/Segment;->tokens:Ljava/util/List;

    iget-object v4, v1, Lru/localscribe/core/Segment;->tokens:Ljava/util/List;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    return v2

    :cond_c
    iget-object v3, p0, Lru/localscribe/core/Segment;->words:Ljava/util/List;

    iget-object v4, v1, Lru/localscribe/core/Segment;->words:Ljava/util/List;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    return v2

    :cond_d
    iget-object v3, p0, Lru/localscribe/core/Segment;->acoustics:Lru/localscribe/core/Acoustics;

    iget-object v4, v1, Lru/localscribe/core/Segment;->acoustics:Lru/localscribe/core/Acoustics;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    return v2

    :cond_e
    iget-object v3, p0, Lru/localscribe/core/Segment;->tags:Ljava/util/List;

    iget-object v4, v1, Lru/localscribe/core/Segment;->tags:Ljava/util/List;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    return v2

    :cond_f
    iget-object v3, p0, Lru/localscribe/core/Segment;->embedding:Ljava/util/List;

    iget-object v4, v1, Lru/localscribe/core/Segment;->embedding:Ljava/util/List;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    return v2

    :cond_10
    iget-object v3, p0, Lru/localscribe/core/Segment;->embeddingSource:Ljava/lang/String;

    iget-object v4, v1, Lru/localscribe/core/Segment;->embeddingSource:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    return v2

    :cond_11
    iget-object v3, p0, Lru/localscribe/core/Segment;->overlap:Ljava/lang/String;

    iget-object v4, v1, Lru/localscribe/core/Segment;->overlap:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    return v2

    :cond_12
    iget-object v3, p0, Lru/localscribe/core/Segment;->timingKind:Ljava/lang/String;

    iget-object v4, v1, Lru/localscribe/core/Segment;->timingKind:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    return v2

    :cond_13
    iget-object v3, p0, Lru/localscribe/core/Segment;->emotion:Lru/localscribe/core/EmotionAssessment;

    iget-object v4, v1, Lru/localscribe/core/Segment;->emotion:Lru/localscribe/core/EmotionAssessment;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    return v2

    :cond_14
    iget-object v3, p0, Lru/localscribe/core/Segment;->overlapIntervals:Ljava/util/List;

    iget-object v4, v1, Lru/localscribe/core/Segment;->overlapIntervals:Ljava/util/List;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    return v2

    :cond_15
    iget-object v3, p0, Lru/localscribe/core/Segment;->separation:Lru/localscribe/core/SeparationInfo;

    iget-object v4, v1, Lru/localscribe/core/Segment;->separation:Lru/localscribe/core/SeparationInfo;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    return v2

    :cond_16
    iget-object v3, p0, Lru/localscribe/core/Segment;->separatedAudioPath:Ljava/lang/String;

    iget-object v4, v1, Lru/localscribe/core/Segment;->separatedAudioPath:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    return v2

    :cond_17
    iget-object v3, p0, Lru/localscribe/core/Segment;->analysisSource:Ljava/lang/String;

    iget-object v4, v1, Lru/localscribe/core/Segment;->analysisSource:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    return v2

    :cond_18
    iget-object v3, p0, Lru/localscribe/core/Segment;->clusteringSilhouette:Ljava/lang/Float;

    iget-object v4, v1, Lru/localscribe/core/Segment;->clusteringSilhouette:Ljava/lang/Float;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    return v2

    :cond_19
    iget-object v3, p0, Lru/localscribe/core/Segment;->originalAsrText:Ljava/lang/String;

    iget-object v1, v1, Lru/localscribe/core/Segment;->originalAsrText:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v2

    :cond_1a
    return v0
.end method

.method public final getAcoustics()Lru/localscribe/core/Acoustics;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Segment;->acoustics:Lru/localscribe/core/Acoustics;

    return-object v0
.end method

.method public final getAnalysisSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Segment;->analysisSource:Ljava/lang/String;

    return-object v0
.end method

.method public final getClusteringSilhouette()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Segment;->clusteringSilhouette:Ljava/lang/Float;

    return-object v0
.end method

.method public final getConfidence()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Segment;->confidence:Ljava/lang/Double;

    return-object v0
.end method

.method public final getEmbedding()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lru/localscribe/core/Segment;->embedding:Ljava/util/List;

    return-object v0
.end method

.method public final getEmbeddingSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Segment;->embeddingSource:Ljava/lang/String;

    return-object v0
.end method

.method public final getEmotion()Lru/localscribe/core/EmotionAssessment;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Segment;->emotion:Lru/localscribe/core/EmotionAssessment;

    return-object v0
.end method

.method public final getEndMs()J
    .locals 2

    iget-wide v0, p0, Lru/localscribe/core/Segment;->endMs:J

    return-wide v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Segment;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getOriginalAsrText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Segment;->originalAsrText:Ljava/lang/String;

    return-object v0
.end method

.method public final getOverlap()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Segment;->overlap:Ljava/lang/String;

    return-object v0
.end method

.method public final getOverlapIntervals()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/localscribe/core/OverlapSpan;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lru/localscribe/core/Segment;->overlapIntervals:Ljava/util/List;

    return-object v0
.end method

.method public final getRecordingId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Segment;->recordingId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSeparatedAudioPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Segment;->separatedAudioPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getSeparation()Lru/localscribe/core/SeparationInfo;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Segment;->separation:Lru/localscribe/core/SeparationInfo;

    return-object v0
.end method

.method public final getSpeakerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Segment;->speakerId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSpeakerProvisional()Z
    .locals 1

    iget-boolean v0, p0, Lru/localscribe/core/Segment;->speakerProvisional:Z

    return v0
.end method

.method public final getSpeakerSimilarity()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Segment;->speakerSimilarity:Ljava/lang/Float;

    return-object v0
.end method

.method public final getStartMs()J
    .locals 2

    iget-wide v0, p0, Lru/localscribe/core/Segment;->startMs:J

    return-wide v0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Segment;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/localscribe/core/Tag;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lru/localscribe/core/Segment;->tags:Ljava/util/List;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Segment;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final getTimingKind()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/localscribe/core/Segment;->timingKind:Ljava/lang/String;

    return-object v0
.end method

.method public final getTokens()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/localscribe/core/TokenStamp;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lru/localscribe/core/Segment;->tokens:Ljava/util/List;

    return-object v0
.end method

.method public final getWords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/localscribe/core/WordStamp;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lru/localscribe/core/Segment;->words:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lru/localscribe/core/Segment;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lru/localscribe/core/Segment;->recordingId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lru/localscribe/core/Segment;->startMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lru/localscribe/core/Segment;->endMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lru/localscribe/core/Segment;->speakerId:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lru/localscribe/core/Segment;->speakerId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lru/localscribe/core/Segment;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lru/localscribe/core/Segment;->status:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lru/localscribe/core/Segment;->speakerSimilarity:Ljava/lang/Float;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lru/localscribe/core/Segment;->speakerSimilarity:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lru/localscribe/core/Segment;->speakerProvisional:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lru/localscribe/core/Segment;->confidence:Ljava/lang/Double;

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lru/localscribe/core/Segment;->confidence:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lru/localscribe/core/Segment;->tokens:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lru/localscribe/core/Segment;->words:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lru/localscribe/core/Segment;->acoustics:Lru/localscribe/core/Acoustics;

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lru/localscribe/core/Segment;->acoustics:Lru/localscribe/core/Acoustics;

    invoke-virtual {v2}, Lru/localscribe/core/Acoustics;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lru/localscribe/core/Segment;->tags:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lru/localscribe/core/Segment;->embedding:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lru/localscribe/core/Segment;->embeddingSource:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lru/localscribe/core/Segment;->overlap:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lru/localscribe/core/Segment;->timingKind:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lru/localscribe/core/Segment;->emotion:Lru/localscribe/core/EmotionAssessment;

    if-nez v2, :cond_4

    move v2, v3

    goto :goto_4

    :cond_4
    iget-object v2, p0, Lru/localscribe/core/Segment;->emotion:Lru/localscribe/core/EmotionAssessment;

    invoke-virtual {v2}, Lru/localscribe/core/EmotionAssessment;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lru/localscribe/core/Segment;->overlapIntervals:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lru/localscribe/core/Segment;->separation:Lru/localscribe/core/SeparationInfo;

    if-nez v2, :cond_5

    move v2, v3

    goto :goto_5

    :cond_5
    iget-object v2, p0, Lru/localscribe/core/Segment;->separation:Lru/localscribe/core/SeparationInfo;

    invoke-virtual {v2}, Lru/localscribe/core/SeparationInfo;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lru/localscribe/core/Segment;->separatedAudioPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lru/localscribe/core/Segment;->analysisSource:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lru/localscribe/core/Segment;->clusteringSilhouette:Ljava/lang/Float;

    if-nez v2, :cond_6

    move v2, v3

    goto :goto_6

    :cond_6
    iget-object v2, p0, Lru/localscribe/core/Segment;->clusteringSilhouette:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lru/localscribe/core/Segment;->originalAsrText:Ljava/lang/String;

    if-nez v2, :cond_7

    goto :goto_7

    :cond_7
    iget-object v2, p0, Lru/localscribe/core/Segment;->originalAsrText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_7
    add-int/2addr v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 29

    move-object/from16 v0, p0

    iget-object v1, v0, Lru/localscribe/core/Segment;->id:Ljava/lang/String;

    iget-object v2, v0, Lru/localscribe/core/Segment;->recordingId:Ljava/lang/String;

    iget-wide v3, v0, Lru/localscribe/core/Segment;->startMs:J

    iget-wide v5, v0, Lru/localscribe/core/Segment;->endMs:J

    iget-object v7, v0, Lru/localscribe/core/Segment;->speakerId:Ljava/lang/String;

    iget-object v8, v0, Lru/localscribe/core/Segment;->text:Ljava/lang/String;

    iget-object v9, v0, Lru/localscribe/core/Segment;->status:Ljava/lang/String;

    iget-object v10, v0, Lru/localscribe/core/Segment;->speakerSimilarity:Ljava/lang/Float;

    iget-boolean v11, v0, Lru/localscribe/core/Segment;->speakerProvisional:Z

    iget-object v12, v0, Lru/localscribe/core/Segment;->confidence:Ljava/lang/Double;

    iget-object v13, v0, Lru/localscribe/core/Segment;->tokens:Ljava/util/List;

    iget-object v14, v0, Lru/localscribe/core/Segment;->words:Ljava/util/List;

    iget-object v15, v0, Lru/localscribe/core/Segment;->acoustics:Lru/localscribe/core/Acoustics;

    move-object/from16 v16, v15

    iget-object v15, v0, Lru/localscribe/core/Segment;->tags:Ljava/util/List;

    move-object/from16 v17, v15

    iget-object v15, v0, Lru/localscribe/core/Segment;->embedding:Ljava/util/List;

    move-object/from16 v18, v15

    iget-object v15, v0, Lru/localscribe/core/Segment;->embeddingSource:Ljava/lang/String;

    move-object/from16 v19, v15

    iget-object v15, v0, Lru/localscribe/core/Segment;->overlap:Ljava/lang/String;

    move-object/from16 v20, v15

    iget-object v15, v0, Lru/localscribe/core/Segment;->timingKind:Ljava/lang/String;

    move-object/from16 v21, v15

    iget-object v15, v0, Lru/localscribe/core/Segment;->emotion:Lru/localscribe/core/EmotionAssessment;

    move-object/from16 v22, v15

    iget-object v15, v0, Lru/localscribe/core/Segment;->overlapIntervals:Ljava/util/List;

    move-object/from16 v23, v15

    iget-object v15, v0, Lru/localscribe/core/Segment;->separation:Lru/localscribe/core/SeparationInfo;

    move-object/from16 v24, v15

    iget-object v15, v0, Lru/localscribe/core/Segment;->separatedAudioPath:Ljava/lang/String;

    move-object/from16 v25, v15

    iget-object v15, v0, Lru/localscribe/core/Segment;->analysisSource:Ljava/lang/String;

    move-object/from16 v26, v15

    iget-object v15, v0, Lru/localscribe/core/Segment;->clusteringSilhouette:Ljava/lang/Float;

    move-object/from16 v27, v15

    iget-object v15, v0, Lru/localscribe/core/Segment;->originalAsrText:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v28, v15

    const-string v15, "Segment(id="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", recordingId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", speakerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", speakerSimilarity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", speakerProvisional="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", confidence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tokens="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", words="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", acoustics="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", embedding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", embeddingSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", overlap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timingKind="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", emotion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", overlapIntervals="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", separation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", separatedAudioPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", analysisSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", clusteringSilhouette="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", originalAsrText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
