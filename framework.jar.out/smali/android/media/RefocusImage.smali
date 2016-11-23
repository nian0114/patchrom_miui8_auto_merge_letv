.class public Landroid/media/RefocusImage;
.super Ljava/lang/Object;
.source "RefocusImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/RefocusImage$Section;
    }
.end annotation


# static fields
.field public static final APP1:I = 0xffe1

.field public static final APP15:I = 0xffef

.field private static final APP15_LENGTHTAG_BYTE_COUNT:I = 0x4

.field public static final DHT:I = 0xffc4

.field public static final DQT:I = 0xffdb

.field public static final SOI:I = 0xffd8

.field public static final SOS:I = 0xffda

.field private static final TAG:Ljava/lang/String; = "RefocusImage"

.field private static final TYPE_BUFFER_COUNT:I = 0x7

.field public static final TYPE_DEPTH_DATA:Ljava/lang/String; = "DEPDATA"

.field public static final TYPE_ORIGIN_DATA:Ljava/lang/String; = "ORIDATA"

.field private static mRefocusImageInstance:Landroid/media/RefocusImage;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method private static checkIfMainXmpInApp1(Ljava/io/RandomAccessFile;Landroid/media/RefocusImage$Section;)Landroid/media/RefocusImage$Section;
    .locals 10
    .param p0, "raf"    # Ljava/io/RandomAccessFile;
    .param p1, "section"    # Landroid/media/RefocusImage$Section;

    .prologue
    const-wide/16 v8, 0x2

    const/4 v4, 0x0

    .line 172
    if-nez p1, :cond_1

    .line 173
    const-string v5, "RefocusImage"

    const-string v6, "<checkIfMainXmpInApp1> section is null!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v4

    .line 198
    .end local p1    # "section":Landroid/media/RefocusImage$Section;
    :cond_0
    :goto_0
    return-object p1

    .line 176
    .restart local p1    # "section":Landroid/media/RefocusImage$Section;
    :cond_1
    const/4 v0, 0x0

    .line 177
    .local v0, "buffer":[B
    const/4 v2, 0x0

    .line 179
    .local v2, "str":Ljava/lang/String;
    :try_start_0
    iget v5, p1, Landroid/media/RefocusImage$Section;->mMarker:I

    const v6, 0xffef

    if-ne v5, v6, :cond_0

    .line 180
    iget-wide v6, p1, Landroid/media/RefocusImage$Section;->mOffset:J

    add-long/2addr v6, v8

    add-long/2addr v6, v8

    const-wide/16 v8, 0x4

    add-long/2addr v6, v8

    invoke-virtual {p0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 181
    const/4 v5, 0x7

    new-array v0, v5, [B

    .line 182
    const/4 v5, 0x0

    array-length v6, v0

    invoke-virtual {p0, v0, v5, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 183
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 185
    .end local v2    # "str":Ljava/lang/String;
    .local v3, "str":Ljava/lang/String;
    :try_start_1
    const-string v5, "ORIDATA"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 186
    const/4 v5, 0x1

    iput-boolean v5, p1, Landroid/media/RefocusImage$Section;->mIsOriginData:Z

    .line 188
    :cond_2
    const-string v5, "DEPDATA"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 189
    const/4 v5, 0x1

    iput-boolean v5, p1, Landroid/media/RefocusImage$Section;->mIsDepthData:Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_3
    move-object v2, v3

    .end local v3    # "str":Ljava/lang/String;
    .restart local v2    # "str":Ljava/lang/String;
    goto :goto_0

    .line 193
    :catch_0
    move-exception v1

    .line 194
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    :goto_1
    const-string v5, "RefocusImage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<checkIfMainXmpInApp1> UnsupportedEncodingException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v4

    .line 195
    goto :goto_0

    .line 196
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 197
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    const-string v5, "RefocusImage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<checkIfMainXmpInApp1> IOException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v4

    .line 198
    goto :goto_0

    .line 196
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "str":Ljava/lang/String;
    .restart local v3    # "str":Ljava/lang/String;
    :catch_2
    move-exception v1

    move-object v2, v3

    .end local v3    # "str":Ljava/lang/String;
    .restart local v2    # "str":Ljava/lang/String;
    goto :goto_2

    .line 193
    .end local v2    # "str":Ljava/lang/String;
    .restart local v3    # "str":Ljava/lang/String;
    :catch_3
    move-exception v1

    move-object v2, v3

    .end local v3    # "str":Ljava/lang/String;
    .restart local v2    # "str":Ljava/lang/String;
    goto :goto_1
.end method

.method public static declared-synchronized getInstance()Landroid/media/RefocusImage;
    .locals 2

    .prologue
    .line 27
    const-class v1, Landroid/media/RefocusImage;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/media/RefocusImage;->mRefocusImageInstance:Landroid/media/RefocusImage;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Landroid/media/RefocusImage;

    invoke-direct {v0}, Landroid/media/RefocusImage;-><init>()V

    sput-object v0, Landroid/media/RefocusImage;->mRefocusImageInstance:Landroid/media/RefocusImage;

    .line 30
    :cond_0
    sget-object v0, Landroid/media/RefocusImage;->mRefocusImageInstance:Landroid/media/RefocusImage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static isStereo(Landroid/media/RefocusImage$Section;Ljava/io/RandomAccessFile;)Z
    .locals 8
    .param p0, "section"    # Landroid/media/RefocusImage$Section;
    .param p1, "rafIn"    # Ljava/io/RandomAccessFile;

    .prologue
    const-wide/16 v6, 0x2

    const/4 v3, 0x0

    .line 100
    :try_start_0
    iget-boolean v4, p0, Landroid/media/RefocusImage$Section;->mIsOriginData:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Landroid/media/RefocusImage$Section;->mIsDepthData:Z

    if-eqz v4, :cond_1

    .line 101
    :cond_0
    iget-wide v4, p0, Landroid/media/RefocusImage$Section;->mOffset:J

    add-long/2addr v4, v6

    add-long/2addr v4, v6

    const-wide/16 v6, 0x4

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 103
    const/4 v4, 0x7

    new-array v1, v4, [B

    .line 104
    .local v1, "xmpBuffer":[B
    const/4 v4, 0x0

    array-length v5, v1

    invoke-virtual {p1, v1, v4, v5}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 105
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 107
    .local v2, "xmpContent":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 108
    const-string v4, "RefocusImage"

    const-string v5, "<isStereo> xmpContent is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .end local v1    # "xmpBuffer":[B
    .end local v2    # "xmpContent":Ljava/lang/String;
    :cond_1
    :goto_0
    return v3

    .line 111
    .restart local v1    # "xmpBuffer":[B
    .restart local v2    # "xmpContent":Ljava/lang/String;
    :cond_2
    const-string v4, "ORIDATA"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "DEPDATA"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    .line 112
    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    .line 116
    .end local v1    # "xmpBuffer":[B
    .end local v2    # "xmpContent":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "RefocusImage"

    const-string v5, "<isStereo> IOException:"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static isStereoPhoto(Ljava/lang/String;)Z
    .locals 14
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 48
    if-nez p0, :cond_0

    .line 49
    const-string v10, "RefocusImage"

    const-string v11, "<isStereoPhoto> filePath is null!!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :goto_0
    return v7

    .line 53
    :cond_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    .local v6, "srcFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    .line 55
    const-string v10, "RefocusImage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<isStereoPhoto> "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " not exists!!!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 59
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 60
    .local v8, "start":J
    invoke-static {p0}, Landroid/media/RefocusImage;->parseApp1Info(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 61
    .local v5, "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/RefocusImage$Section;>;"
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-gez v10, :cond_3

    .line 62
    :cond_2
    const-string v10, "RefocusImage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<isStereoPhoto> "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", no app1 sections"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 66
    :cond_3
    const/4 v2, 0x0

    .line 68
    .local v2, "rafIn":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string/jumbo v10, "r"

    invoke-direct {v3, p0, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .end local v2    # "rafIn":Ljava/io/RandomAccessFile;
    .local v3, "rafIn":Ljava/io/RandomAccessFile;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    :try_start_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v1, v10, :cond_6

    .line 70
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/RefocusImage$Section;

    .line 71
    .local v4, "section":Landroid/media/RefocusImage$Section;
    invoke-static {v4, v3}, Landroid/media/RefocusImage;->isStereo(Landroid/media/RefocusImage$Section;Ljava/io/RandomAccessFile;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 72
    const-string v10, "RefocusImage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<isStereoPhoto> "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is stereo photo"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 73
    const/4 v7, 0x1

    .line 86
    if-eqz v3, :cond_4

    .line 87
    :try_start_2
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 88
    const/4 v2, 0x0

    .line 93
    .end local v3    # "rafIn":Ljava/io/RandomAccessFile;
    .restart local v2    # "rafIn":Ljava/io/RandomAccessFile;
    :goto_2
    const-string v10, "RefocusImage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<isStereoPhoto> <performance> costs(ms): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 90
    .end local v2    # "rafIn":Ljava/io/RandomAccessFile;
    .restart local v3    # "rafIn":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/io/IOException;
    const-string v10, "RefocusImage"

    const-string v11, "<isStereoPhoto> IOException:"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    move-object v2, v3

    .end local v3    # "rafIn":Ljava/io/RandomAccessFile;
    .restart local v2    # "rafIn":Ljava/io/RandomAccessFile;
    goto :goto_2

    .line 69
    .end local v2    # "rafIn":Ljava/io/RandomAccessFile;
    .restart local v3    # "rafIn":Ljava/io/RandomAccessFile;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 76
    .end local v4    # "section":Landroid/media/RefocusImage$Section;
    :cond_6
    :try_start_3
    const-string v10, "RefocusImage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<isStereoPhoto> "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is not stereo photo"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 86
    if-eqz v3, :cond_7

    .line 87
    :try_start_4
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 88
    const/4 v2, 0x0

    .line 93
    .end local v3    # "rafIn":Ljava/io/RandomAccessFile;
    .restart local v2    # "rafIn":Ljava/io/RandomAccessFile;
    :goto_3
    const-string v10, "RefocusImage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<isStereoPhoto> <performance> costs(ms): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 90
    .end local v2    # "rafIn":Ljava/io/RandomAccessFile;
    .restart local v3    # "rafIn":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v0

    .line 91
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v10, "RefocusImage"

    const-string v11, "<isStereoPhoto> IOException:"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/io/IOException;
    :cond_7
    move-object v2, v3

    .end local v3    # "rafIn":Ljava/io/RandomAccessFile;
    .restart local v2    # "rafIn":Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 78
    .end local v1    # "i":I
    :catch_2
    move-exception v0

    .line 79
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_5
    const-string v10, "RefocusImage"

    const-string v11, "<isStereoPhoto> FileNotFoundException:"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 86
    if-eqz v2, :cond_8

    .line 87
    :try_start_6
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 88
    const/4 v2, 0x0

    .line 93
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_8
    :goto_5
    const-string v10, "RefocusImage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<isStereoPhoto> <performance> costs(ms): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 90
    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v0

    .line 91
    .local v0, "e":Ljava/io/IOException;
    const-string v10, "RefocusImage"

    const-string v11, "<isStereoPhoto> IOException:"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 81
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :goto_6
    :try_start_7
    const-string v10, "RefocusImage"

    const-string v11, "<isStereoPhoto> IllegalArgumentException:"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 86
    if-eqz v2, :cond_9

    .line 87
    :try_start_8
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 88
    const/4 v2, 0x0

    .line 93
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_9
    :goto_7
    const-string v10, "RefocusImage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<isStereoPhoto> <performance> costs(ms): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 90
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_5
    move-exception v0

    .line 91
    .local v0, "e":Ljava/io/IOException;
    const-string v10, "RefocusImage"

    const-string v11, "<isStereoPhoto> IOException:"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 85
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 86
    :goto_8
    if-eqz v2, :cond_a

    .line 87
    :try_start_9
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 88
    const/4 v2, 0x0

    .line 93
    :cond_a
    :goto_9
    const-string v10, "RefocusImage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<isStereoPhoto> <performance> costs(ms): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v7

    .line 90
    :catch_6
    move-exception v0

    .line 91
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v10, "RefocusImage"

    const-string v11, "<isStereoPhoto> IOException:"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 85
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "rafIn":Ljava/io/RandomAccessFile;
    .restart local v1    # "i":I
    .restart local v3    # "rafIn":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "rafIn":Ljava/io/RandomAccessFile;
    .restart local v2    # "rafIn":Ljava/io/RandomAccessFile;
    goto :goto_8

    .line 81
    .end local v2    # "rafIn":Ljava/io/RandomAccessFile;
    .restart local v3    # "rafIn":Ljava/io/RandomAccessFile;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3    # "rafIn":Ljava/io/RandomAccessFile;
    .restart local v2    # "rafIn":Ljava/io/RandomAccessFile;
    goto :goto_6

    .line 78
    .end local v2    # "rafIn":Ljava/io/RandomAccessFile;
    .restart local v3    # "rafIn":Ljava/io/RandomAccessFile;
    :catch_8
    move-exception v0

    move-object v2, v3

    .end local v3    # "rafIn":Ljava/io/RandomAccessFile;
    .restart local v2    # "rafIn":Ljava/io/RandomAccessFile;
    goto/16 :goto_4
.end method

.method private static parseApp1Info(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 20
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/RefocusImage$Section;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    const/4 v13, 0x0

    .line 125
    .local v13, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v14, Ljava/io/RandomAccessFile;

    const-string/jumbo v7, "r"

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    .end local v13    # "raf":Ljava/io/RandomAccessFile;
    .local v14, "raf":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    move-result v16

    .line 127
    .local v16, "value":I
    const v7, 0xffd8

    move/from16 v0, v16

    if-eq v0, v7, :cond_2

    .line 128
    const-string v7, "RefocusImage"

    const-string v8, "<parseApp1Info> error, find no SOI"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 160
    if-eqz v14, :cond_1

    .line 161
    :try_start_2
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 162
    const/4 v13, 0x0

    .line 166
    .end local v14    # "raf":Ljava/io/RandomAccessFile;
    .end local v16    # "value":I
    .restart local v13    # "raf":Ljava/io/RandomAccessFile;
    :cond_0
    :goto_0
    return-object v15

    .line 164
    .end local v13    # "raf":Ljava/io/RandomAccessFile;
    .restart local v14    # "raf":Ljava/io/RandomAccessFile;
    .restart local v16    # "value":I
    :catch_0
    move-exception v12

    .line 165
    .local v12, "e":Ljava/io/IOException;
    const-string v7, "RefocusImage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<parseApp1Info> IOException, path "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v12    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    move-object v13, v14

    .end local v14    # "raf":Ljava/io/RandomAccessFile;
    .restart local v13    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 131
    .end local v13    # "raf":Ljava/io/RandomAccessFile;
    .restart local v14    # "raf":Ljava/io/RandomAccessFile;
    :cond_2
    const/4 v3, -0x1

    .line 132
    .local v3, "marker":I
    const-wide/16 v4, -0x1

    .line 133
    .local v4, "offset":J
    const/4 v6, -0x1

    .line 134
    .local v6, "length":I
    :try_start_3
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v15, "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/RefocusImage$Section;>;"
    :goto_2
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    move-result v16

    const/4 v7, -0x1

    move/from16 v0, v16

    if-eq v0, v7, :cond_4

    const v7, 0xffda

    move/from16 v0, v16

    if-eq v0, v7, :cond_4

    .line 137
    move/from16 v3, v16

    .line 138
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v8

    const-wide/16 v18, 0x2

    sub-long v4, v8, v18

    .line 139
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    move-result v6

    .line 140
    const v7, 0xffef

    move/from16 v0, v16

    if-ne v0, v7, :cond_6

    .line 141
    new-instance v2, Landroid/media/RefocusImage$Section;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Landroid/media/RefocusImage$Section;-><init>(IJIZZZ)V

    .line 143
    .local v2, "section":Landroid/media/RefocusImage$Section;
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v10

    .line 144
    .local v10, "currentPos":J
    invoke-static {v14, v2}, Landroid/media/RefocusImage;->checkIfMainXmpInApp1(Ljava/io/RandomAccessFile;Landroid/media/RefocusImage$Section;)Landroid/media/RefocusImage$Section;

    move-result-object v2

    .line 145
    if-eqz v2, :cond_5

    iget-boolean v7, v2, Landroid/media/RefocusImage$Section;->mIsOriginData:Z

    if-nez v7, :cond_3

    iget-boolean v7, v2, Landroid/media/RefocusImage$Section;->mIsDepthData:Z

    if-eqz v7, :cond_5

    .line 146
    :cond_3
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 160
    .end local v2    # "section":Landroid/media/RefocusImage$Section;
    .end local v10    # "currentPos":J
    :cond_4
    if-eqz v14, :cond_1

    .line 161
    :try_start_4
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 162
    const/4 v13, 0x0

    .end local v14    # "raf":Ljava/io/RandomAccessFile;
    .restart local v13    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 149
    .end local v13    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "section":Landroid/media/RefocusImage$Section;
    .restart local v10    # "currentPos":J
    .restart local v14    # "raf":Ljava/io/RandomAccessFile;
    :cond_5
    :try_start_5
    invoke-virtual {v14, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 151
    .end local v2    # "section":Landroid/media/RefocusImage$Section;
    .end local v10    # "currentPos":J
    :cond_6
    add-int/lit8 v7, v6, -0x2

    invoke-virtual {v14, v7}, Ljava/io/RandomAccessFile;->skipBytes(I)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 155
    .end local v3    # "marker":I
    .end local v4    # "offset":J
    .end local v6    # "length":I
    .end local v15    # "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/RefocusImage$Section;>;"
    .end local v16    # "value":I
    :catch_1
    move-exception v12

    move-object v13, v14

    .line 156
    .end local v14    # "raf":Ljava/io/RandomAccessFile;
    .restart local v12    # "e":Ljava/io/IOException;
    .restart local v13    # "raf":Ljava/io/RandomAccessFile;
    :goto_3
    :try_start_6
    const-string v7, "RefocusImage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<parseApp1Info> IOException, path "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 157
    const/4 v15, 0x0

    .line 160
    if-eqz v13, :cond_0

    .line 161
    :try_start_7
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 162
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 164
    .end local v12    # "e":Ljava/io/IOException;
    .end local v13    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "marker":I
    .restart local v4    # "offset":J
    .restart local v6    # "length":I
    .restart local v14    # "raf":Ljava/io/RandomAccessFile;
    .restart local v15    # "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/RefocusImage$Section;>;"
    .restart local v16    # "value":I
    :catch_2
    move-exception v12

    .line 165
    .restart local v12    # "e":Ljava/io/IOException;
    const-string v7, "RefocusImage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<parseApp1Info> IOException, path "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 164
    .end local v3    # "marker":I
    .end local v4    # "offset":J
    .end local v6    # "length":I
    .end local v14    # "raf":Ljava/io/RandomAccessFile;
    .end local v15    # "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/RefocusImage$Section;>;"
    .end local v16    # "value":I
    .restart local v13    # "raf":Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v12

    .line 165
    const-string v7, "RefocusImage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<parseApp1Info> IOException, path "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 159
    .end local v12    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 160
    :goto_4
    if-eqz v13, :cond_7

    .line 161
    :try_start_8
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 162
    const/4 v13, 0x0

    .line 166
    :cond_7
    :goto_5
    throw v7

    .line 164
    :catch_4
    move-exception v12

    .line 165
    .restart local v12    # "e":Ljava/io/IOException;
    const-string v8, "RefocusImage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "<parseApp1Info> IOException, path "

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 159
    .end local v12    # "e":Ljava/io/IOException;
    .end local v13    # "raf":Ljava/io/RandomAccessFile;
    .restart local v14    # "raf":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v7

    move-object v13, v14

    .end local v14    # "raf":Ljava/io/RandomAccessFile;
    .restart local v13    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_4

    .line 155
    :catch_5
    move-exception v12

    goto/16 :goto_3
.end method
