.class public final Lcom/android/internal/telephony/uicc/AdnRecordCache;
.super Landroid/os/Handler;
.source "AdnRecordCache.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# static fields
.field static final EVENT_LOAD_ALL_ADN_LIKE_DONE:I = 0x1

.field static final EVENT_UPDATE_ADN_DONE:I = 0x2

.field static final LOG_TAG:Ljava/lang/String; = "AdnRecordCache"

.field public static MAX_PHB_NAME_LENGTH:I = 0x0

.field public static MAX_PHB_NUMBER_ANR_COUNT:I = 0x0

.field public static MAX_PHB_NUMBER_ANR_LENGTH:I = 0x0

.field public static MAX_PHB_NUMBER_LENGTH:I = 0x0

.field private static final UPDATE_ADN_ANR_FULL:I = -0x9

.field private static final UPDATE_ADN_EF_NOT_KNOWN:I = -0x1

.field private static final UPDATE_ADN_EMAIL_FULL:I = -0x8

.field private static final UPDATE_ADN_NAME_TOO_LONG:I = -0x5

.field private static final UPDATE_ADN_NO_ADN_LIST:I = -0x2

.field private static final UPDATE_ADN_NO_ADN_RECORD:I = -0x3

.field private static final UPDATE_ADN_PENDING:I = -0x4

.field private static final UPDATE_ADN_PHONE_ANR_TOO_LONG:I = -0x7

.field private static final UPDATE_ADN_PHONE_NUMBER_TOO_LONG:I = -0x6

.field private static final UPDATE_ADN_SUCCESS:I = 0x0

.field private static final USIM_EFANR_TAG:I = 0xc4

.field private static final USIM_EFEMAIL_TAG:I = 0xca


# instance fields
.field extRecList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[I>;"
        }
    .end annotation
.end field

.field private isPbrNotInLocal:Z

.field mAdnLikeFiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field mAdnLikeWaiters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAdncountofIcc:I

.field private mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field mGlobalAdnLikeFiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field mLocalAdnLikeFiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUseLocalPb:Z

.field mUserWriteResponse:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mUsimGlobalPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

.field private mUsimLocalPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

.field private mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    const/16 v0, 0x3c

    sput v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->MAX_PHB_NAME_LENGTH:I

    .line 92
    const/16 v0, 0x28

    sput v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->MAX_PHB_NUMBER_LENGTH:I

    .line 93
    const/16 v0, 0x14

    sput v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->MAX_PHB_NUMBER_ANR_LENGTH:I

    .line 94
    const/4 v0, 0x3

    sput v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->MAX_PHB_NUMBER_ANR_COUNT:I

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V
    .locals 2
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 48
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->isPbrNotInLocal:Z

    .line 50
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdncountofIcc:I

    .line 53
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mGlobalAdnLikeFiles:Landroid/util/SparseArray;

    .line 55
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLocalAdnLikeFiles:Landroid/util/SparseArray;

    .line 57
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mGlobalAdnLikeFiles:Landroid/util/SparseArray;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    .line 60
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    .line 64
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    .line 67
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->extRecList:Landroid/util/SparseArray;

    .line 69
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUseLocalPb:Z

    .line 99
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 100
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v1, p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/AdnRecordCache;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimGlobalPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    .line 101
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v1, p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/AdnRecordCache;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimLocalPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    .line 102
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimGlobalPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    .line 103
    return-void
.end method

.method private clearUserWriters()V
    .locals 4

    .prologue
    .line 133
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 134
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 135
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    const-string v3, "AdnCace reset"

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 138
    return-void
.end method

.method private clearWaiters()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 123
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 124
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 125
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 126
    .local v3, "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    new-instance v0, Landroid/os/AsyncResult;

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "AdnCache reset"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v6, v6, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 127
    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 130
    return-void
.end method

.method private findFreeExtRec(I)I
    .locals 5
    .param p1, "extensionEf"    # I

    .prologue
    .line 193
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->extRecList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 194
    .local v0, "extRec":[I
    if-eqz v0, :cond_1

    .line 195
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 196
    aget v2, v0, v1

    if-nez v2, :cond_0

    .line 197
    const-string v2, "AdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Free record found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    add-int/lit8 v2, v1, 0x1

    .line 204
    .end local v1    # "i":I
    :goto_1
    return v2

    .line 195
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 203
    .end local v1    # "i":I
    :cond_1
    const-string v2, "AdnRecordCache"

    const-string v3, "No Free record found: "

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V
    .locals 5
    .param p2, "ar"    # Landroid/os/AsyncResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;",
            "Landroid/os/AsyncResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 603
    .local p1, "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    if-nez p1, :cond_1

    .line 613
    :cond_0
    return-void

    .line 607
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "s":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 608
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 610
    .local v2, "waiter":Landroid/os/Message;
    iget-object v3, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v4, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 611
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 607
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "errString"    # Ljava/lang/String;

    .prologue
    .line 175
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    .line 180
    return-void
.end method

.method private sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "errString"    # Ljava/lang/String;
    .param p3, "ril_errno"    # I

    .prologue
    .line 182
    invoke-static {p3}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 184
    .local v0, "e":Lcom/android/internal/telephony/CommandException;
    if-eqz p1, :cond_0

    .line 185
    const-string v1, "AdnRecordCache"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 187
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 189
    :cond_0
    return-void
.end method

.method private updateAdnBySearchOnEf(ZILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;Landroid/os/Message;)I
    .locals 28
    .param p1, "useLocalPb"    # Z
    .param p2, "efid"    # I
    .param p3, "oldAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p4, "newAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p5, "pin2"    # Ljava/lang/String;
    .param p6, "response"    # Landroid/os/Message;

    .prologue
    .line 349
    const-string v3, "AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAdnBySearch efid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "pin2:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", oldAdn ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], new Adn["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const/4 v8, -0x1

    .line 354
    .local v8, "index":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->extensionEfForEf(I)I

    move-result v7

    .line 356
    .local v7, "extensionEF":I
    if-gez v7, :cond_0

    const/4 v3, -0x1

    .line 498
    .end local v7    # "extensionEF":I
    :goto_0
    return v3

    .line 359
    .restart local v7    # "extensionEF":I
    :cond_0
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sget v4, Lcom/android/internal/telephony/uicc/AdnRecordCache;->MAX_PHB_NAME_LENGTH:I

    if-le v3, v4, :cond_1

    .line 360
    const/4 v3, -0x5

    goto :goto_0

    .line 363
    :cond_1
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v23

    .line 364
    .local v23, "num_length":I
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    const/16 v4, 0x2b

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 365
    add-int/lit8 v23, v23, -0x1

    .line 368
    :cond_2
    sget v3, Lcom/android/internal/telephony/uicc/AdnRecordCache;->MAX_PHB_NUMBER_LENGTH:I

    move/from16 v0, v23

    if-le v0, v3, :cond_3

    .line 369
    const/4 v3, -0x6

    goto :goto_0

    .line 372
    :cond_3
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 373
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_1
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumbers()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    move/from16 v0, v18

    if-ge v0, v3, :cond_6

    .line 374
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    aget-object v12, v3, v18

    .line 375
    .local v12, "anr":Ljava/lang/String;
    if-eqz v12, :cond_5

    .line 376
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v23

    .line 377
    const/16 v3, 0x2b

    invoke-virtual {v12, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 378
    add-int/lit8 v23, v23, -0x1

    .line 380
    :cond_4
    sget v3, Lcom/android/internal/telephony/uicc/AdnRecordCache;->MAX_PHB_NUMBER_ANR_LENGTH:I

    move/from16 v0, v23

    if-le v0, v3, :cond_5

    .line 381
    const/4 v3, -0x7

    goto :goto_0

    .line 373
    :cond_5
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 389
    .end local v12    # "anr":Ljava/lang/String;
    .end local v18    # "i":I
    :cond_6
    const/16 v24, 0x0

    .line 391
    .local v24, "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    const/16 v3, 0x4f30

    move/from16 v0, p2

    if-ne v0, v3, :cond_7

    .line 392
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->useLocalPb(Z)V

    .line 393
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    move-result-object v24

    .line 405
    :goto_2
    if-nez v24, :cond_8

    .line 406
    const/4 v3, -0x2

    goto :goto_0

    .line 395
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v24

    goto :goto_2

    .line 397
    :catch_0
    move-exception v15

    .line 402
    .local v15, "e":Ljava/lang/NullPointerException;
    const/16 v24, 0x0

    goto :goto_2

    .line 409
    .end local v15    # "e":Ljava/lang/NullPointerException;
    :cond_8
    const/4 v14, 0x1

    .line 410
    .local v14, "count":I
    const/16 v27, -0x2

    .line 411
    .local v27, "prePbrIndex":I
    const/4 v13, 0x0

    .line 412
    .local v13, "anrNum":I
    const/16 v16, 0x0

    .line 413
    .local v16, "emailNum":I
    const/16 v20, 0x0

    .line 414
    .local v20, "isEmailFull":Z
    const/16 v19, 0x0

    .line 415
    .local v19, "isAnrFull":Z
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :goto_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 416
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 417
    .local v22, "nextAdnRecord":Lcom/android/internal/telephony/uicc/AdnRecord;
    const/16 v20, 0x0

    .line 418
    const/16 v19, 0x0

    .line 419
    const/16 v3, 0x4f30

    move/from16 v0, p2

    if-ne v0, v3, :cond_b

    .line 423
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    add-int/lit8 v4, v14, -0x1

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPbrIndexBy(I)I

    move-result v25

    .line 424
    .local v25, "pbrIndex":I
    move/from16 v0, v25

    move/from16 v1, v27

    if-eq v0, v1, :cond_9

    .line 426
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEmptyAnrNumPbrIndex(I)I

    move-result v13

    .line 427
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEmptyEmailNum_Pbrindex(I)I

    move-result v16

    .line 428
    move/from16 v27, v25

    .line 429
    const-string v3, "AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAdnBySearch, pbrIndex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " anrNum:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " emailNum:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_9
    if-nez v13, :cond_a

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumbers()[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_a

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumbers()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 435
    const/16 v19, 0x1

    .line 437
    :cond_a
    if-nez v16, :cond_b

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_b

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 440
    const/16 v20, 0x1

    .line 444
    .end local v25    # "pbrIndex":I
    :cond_b
    if-nez v19, :cond_d

    if-nez v20, :cond_d

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 445
    move v8, v14

    .line 451
    .end local v22    # "nextAdnRecord":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_c
    const/4 v3, -0x1

    if-ne v8, v3, :cond_11

    .line 452
    const/4 v3, 0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_e

    .line 453
    const/4 v3, -0x8

    goto/16 :goto_0

    .line 448
    .restart local v22    # "nextAdnRecord":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_d
    add-int/lit8 v14, v14, 0x1

    .line 449
    goto/16 :goto_3

    .line 454
    .end local v22    # "nextAdnRecord":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_e
    const/4 v3, 0x1

    move/from16 v0, v19

    if-ne v3, v0, :cond_f

    .line 455
    const/16 v3, -0x9

    goto/16 :goto_0

    .line 456
    :cond_f
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_10

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_10

    .line 457
    const/4 v3, -0x3

    goto/16 :goto_0

    .line 459
    :cond_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adn record don\'t exist for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    move v3, v8

    .line 461
    goto/16 :goto_0

    .line 465
    :cond_11
    const-string v3, "AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update oldADN:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", newAdn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/uicc/AdnRecord;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",index :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const/16 v3, 0x4f30

    move/from16 v0, p2

    if-ne v0, v3, :cond_12

    .line 469
    add-int/lit8 v3, v8, -0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 470
    .local v17, "foundAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    move-object/from16 v0, p4

    iput v3, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 471
    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    move-object/from16 v0, p4

    iput v3, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 472
    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    move-object/from16 v0, p4

    iput v3, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 474
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumbers()[Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAdditionalNumbers([Ljava/lang/String;)V

    .line 475
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 476
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEmailFilesCountEachAdn()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAnrFilesCountEachAdn()I

    move-result v4

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->updateAnrEmailArray(Lcom/android/internal/telephony/uicc/AdnRecord;II)V

    .line 481
    .end local v17    # "foundAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/os/Message;

    .line 483
    .local v26, "pendingResponse":Landroid/os/Message;
    if-eqz v26, :cond_13

    .line 484
    const/4 v3, -0x4

    goto/16 :goto_0

    .line 487
    :cond_13
    const/16 v3, 0x4f30

    move/from16 v0, p2

    if-ne v0, v3, :cond_14

    .line 488
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPBPath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v3, p0

    move/from16 v4, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v3 .. v10}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->updateEmailAndAnr(ILjava/lang/String;Lcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;ILjava/lang/String;Landroid/os/Message;)V

    .end local v7    # "extensionEF":I
    :goto_4
    move v3, v8

    .line 498
    goto/16 :goto_0

    .line 491
    .restart local v7    # "extensionEF":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    move/from16 v0, p2

    move-object/from16 v1, p6

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 492
    new-instance v4, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v4, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->findFreeExtRec(I)I

    move-result v10

    const/4 v3, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    invoke-virtual {v0, v3, v1, v8, v2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    move-object/from16 v5, p4

    move/from16 v6, p2

    move-object/from16 v9, p5

    invoke-virtual/range {v4 .. v11}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;ILandroid/os/Message;)V

    goto :goto_4
.end method

.method private updateAnrEmailFile(Ljava/lang/String;Ljava/lang/String;III)Z
    .locals 4
    .param p1, "oldRecord"    # Ljava/lang/String;
    .param p2, "newRecord"    # Ljava/lang/String;
    .param p3, "index"    # I
    .param p4, "tag"    # I
    .param p5, "efidIndex"    # I

    .prologue
    .line 715
    const/4 v1, 0x1

    .line 717
    .local v1, "success":Z
    sparse-switch p4, :sswitch_data_0

    .line 727
    const/4 v1, 0x0

    .line 734
    :goto_0
    return v1

    .line 719
    :sswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v2, p3, p1, p2, p5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateEmailFile(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .line 721
    goto :goto_0

    .line 723
    :sswitch_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v2, p3, p1, p2, p5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateAnrFile(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 725
    goto :goto_0

    .line 729
    :catch_0
    move-exception v0

    .line 730
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    .line 731
    const-string v2, "AdnRecordCache"

    const-string v3, "update usim record failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 717
    :sswitch_data_0
    .sparse-switch
        0xc4 -> :sswitch_1
        0xca -> :sswitch_0
    .end sparse-switch
.end method

.method private updateEmailAndAnr(ILjava/lang/String;Lcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;ILjava/lang/String;Landroid/os/Message;)V
    .locals 10
    .param p1, "efid"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "oldAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p4, "newAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p5, "index"    # I
    .param p6, "pin2"    # Ljava/lang/String;
    .param p7, "response"    # Landroid/os/Message;

    .prologue
    .line 682
    iget v1, p4, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->extensionEfForEf(I)I

    move-result v4

    .line 683
    .local v4, "extensionEF":I
    const/4 v9, 0x0

    .line 684
    .local v9, "success":Z
    const/16 v1, 0xca

    invoke-direct {p0, p3, p4, p5, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->updateUsimRecord(Lcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;II)Z

    move-result v9

    .line 686
    if-eqz v9, :cond_0

    .line 687
    const/16 v1, 0xc4

    invoke-direct {p0, p3, p4, p5, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->updateUsimRecord(Lcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;II)Z

    move-result v9

    .line 696
    if-eqz v9, :cond_2

    .line 697
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v0, p7

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 698
    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    iget v3, p4, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    iget v6, p4, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1, p5, p4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    move-object v2, p4

    move-object v5, p2

    move-object/from16 v7, p6

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IILjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 711
    :goto_0
    return-void

    .line 689
    :cond_0
    const/16 v1, -0xd

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getErrCause()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 690
    const-string v1, "email too long"

    const/16 v2, 0x3ee

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    goto :goto_0

    .line 692
    :cond_1
    const-string v1, "update email failed"

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 702
    :cond_2
    const/4 v1, -0x6

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getErrCause()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 703
    const-string v1, "anr too long"

    const/16 v2, 0x3f2

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    goto :goto_0

    .line 704
    :cond_3
    const/16 v1, -0xf

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getErrCause()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 705
    const-string v1, "invalid parameter"

    const/16 v2, 0x25

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    goto :goto_0

    .line 707
    :cond_4
    const-string v1, "update anr failed"

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateUsimRecord(Lcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;II)Z
    .locals 12
    .param p1, "oldAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p2, "newAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p3, "index"    # I
    .param p4, "tag"    # I

    .prologue
    .line 738
    const/4 v10, 0x0

    .line 739
    .local v10, "oldRecords":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 740
    .local v8, "newRecords":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 741
    .local v9, "oldRecord":Ljava/lang/String;
    const/4 v7, 0x0

    .line 742
    .local v7, "newRecord":Ljava/lang/String;
    const/4 v11, 0x1

    .line 744
    .local v11, "success":Z
    sparse-switch p4, :sswitch_data_0

    .line 754
    const/4 v0, 0x0

    move-object v2, v7

    .end local v7    # "newRecord":Ljava/lang/String;
    .local v2, "newRecord":Ljava/lang/String;
    move-object v1, v9

    .line 794
    .end local v9    # "oldRecord":Ljava/lang/String;
    .local v1, "oldRecord":Ljava/lang/String;
    :goto_0
    return v0

    .line 746
    .end local v1    # "oldRecord":Ljava/lang/String;
    .end local v2    # "newRecord":Ljava/lang/String;
    .restart local v7    # "newRecord":Ljava/lang/String;
    .restart local v9    # "oldRecord":Ljava/lang/String;
    :sswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v10

    .line 747
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v8

    .line 757
    :goto_1
    if-nez v10, :cond_0

    if-nez v8, :cond_0

    .line 759
    const-string v0, "AdnRecordCache"

    const-string v3, "Both old and new EMAIL/ANR are null"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    const/4 v0, 0x1

    move-object v2, v7

    .end local v7    # "newRecord":Ljava/lang/String;
    .restart local v2    # "newRecord":Ljava/lang/String;
    move-object v1, v9

    .end local v9    # "oldRecord":Ljava/lang/String;
    .restart local v1    # "oldRecord":Ljava/lang/String;
    goto :goto_0

    .line 750
    .end local v1    # "oldRecord":Ljava/lang/String;
    .end local v2    # "newRecord":Ljava/lang/String;
    .restart local v7    # "newRecord":Ljava/lang/String;
    .restart local v9    # "oldRecord":Ljava/lang/String;
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumbers()[Ljava/lang/String;

    move-result-object v10

    .line 751
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumbers()[Ljava/lang/String;

    move-result-object v8

    .line 752
    goto :goto_1

    .line 764
    :cond_0
    if-nez v10, :cond_4

    if-eqz v8, :cond_4

    .line 765
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    array-length v0, v8

    if-ge v5, v0, :cond_2

    .line 766
    aget-object v0, v8, v5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 767
    const/4 v1, 0x0

    aget-object v2, v8, v5

    move-object v0, p0

    move v3, p3

    move/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->updateAnrEmailFile(Ljava/lang/String;Ljava/lang/String;III)Z

    move-result v0

    and-int/2addr v11, v0

    .line 765
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    move-object v2, v7

    .end local v7    # "newRecord":Ljava/lang/String;
    .restart local v2    # "newRecord":Ljava/lang/String;
    move-object v1, v9

    .end local v9    # "oldRecord":Ljava/lang/String;
    .restart local v1    # "oldRecord":Ljava/lang/String;
    :cond_3
    :goto_3
    move v0, v11

    .line 794
    goto :goto_0

    .line 771
    .end local v1    # "oldRecord":Ljava/lang/String;
    .end local v2    # "newRecord":Ljava/lang/String;
    .end local v5    # "i":I
    .restart local v7    # "newRecord":Ljava/lang/String;
    .restart local v9    # "oldRecord":Ljava/lang/String;
    :cond_4
    if-eqz v10, :cond_7

    if-nez v8, :cond_7

    .line 772
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_4
    array-length v0, v10

    if-ge v5, v0, :cond_6

    .line 773
    aget-object v0, v10, v5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 774
    aget-object v1, v10, v5

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p3

    move/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->updateAnrEmailFile(Ljava/lang/String;Ljava/lang/String;III)Z

    move-result v0

    and-int/2addr v11, v0

    .line 772
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    move-object v2, v7

    .end local v7    # "newRecord":Ljava/lang/String;
    .restart local v2    # "newRecord":Ljava/lang/String;
    move-object v1, v9

    .end local v9    # "oldRecord":Ljava/lang/String;
    .restart local v1    # "oldRecord":Ljava/lang/String;
    goto :goto_3

    .line 779
    .end local v1    # "oldRecord":Ljava/lang/String;
    .end local v2    # "newRecord":Ljava/lang/String;
    .end local v5    # "i":I
    .restart local v7    # "newRecord":Ljava/lang/String;
    .restart local v9    # "oldRecord":Ljava/lang/String;
    :cond_7
    array-length v0, v10

    array-length v3, v8

    if-le v0, v3, :cond_a

    array-length v6, v10

    .line 781
    .local v6, "maxLen":I
    :goto_5
    const/4 v5, 0x0

    .restart local v5    # "i":I
    move-object v2, v7

    .end local v7    # "newRecord":Ljava/lang/String;
    .restart local v2    # "newRecord":Ljava/lang/String;
    move-object v1, v9

    .end local v9    # "oldRecord":Ljava/lang/String;
    .restart local v1    # "oldRecord":Ljava/lang/String;
    :goto_6
    if-ge v5, v6, :cond_3

    .line 782
    array-length v0, v10

    if-lt v5, v0, :cond_b

    const/4 v1, 0x0

    .line 783
    :goto_7
    array-length v0, v8

    if-lt v5, v0, :cond_c

    const/4 v2, 0x0

    .line 785
    :goto_8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    if-eqz v1, :cond_d

    if-eqz v2, :cond_d

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 781
    :cond_9
    :goto_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 779
    .end local v1    # "oldRecord":Ljava/lang/String;
    .end local v2    # "newRecord":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v6    # "maxLen":I
    .restart local v7    # "newRecord":Ljava/lang/String;
    .restart local v9    # "oldRecord":Ljava/lang/String;
    :cond_a
    array-length v6, v8

    goto :goto_5

    .line 782
    .end local v7    # "newRecord":Ljava/lang/String;
    .end local v9    # "oldRecord":Ljava/lang/String;
    .restart local v1    # "oldRecord":Ljava/lang/String;
    .restart local v2    # "newRecord":Ljava/lang/String;
    .restart local v5    # "i":I
    .restart local v6    # "maxLen":I
    :cond_b
    aget-object v1, v10, v5

    goto :goto_7

    .line 783
    :cond_c
    aget-object v2, v8, v5

    goto :goto_8

    :cond_d
    move-object v0, p0

    move v3, p3

    move/from16 v4, p4

    .line 789
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->updateAnrEmailFile(Ljava/lang/String;Ljava/lang/String;III)Z

    move-result v0

    and-int/2addr v11, v0

    goto :goto_9

    .line 744
    :sswitch_data_0
    .sparse-switch
        0xc4 -> :sswitch_1
        0xca -> :sswitch_0
    .end sparse-switch
.end method

.method private useLocalPb(Z)V
    .locals 3
    .param p1, "useLocalPb"    # Z

    .prologue
    .line 502
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUseLocalPb:Z

    if-ne v0, p1, :cond_0

    .line 512
    :goto_0
    return-void

    .line 506
    :cond_0
    const-string v1, "AdnRecordCache"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1

    const-string v0, "Local"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Phonebook"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUseLocalPb:Z

    .line 508
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->useLocalPb(Z)V

    .line 509
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLocalAdnLikeFiles:Landroid/util/SparseArray;

    :goto_2
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    .line 510
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimLocalPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    :goto_3
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    goto :goto_0

    .line 506
    :cond_1
    const-string v0, "Global"

    goto :goto_1

    .line 509
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mGlobalAdnLikeFiles:Landroid/util/SparseArray;

    goto :goto_2

    .line 510
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimGlobalPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    goto :goto_3
.end method


# virtual methods
.method public extensionEfForEf(I)I
    .locals 1
    .param p1, "efid"    # I

    .prologue
    const/16 v0, 0x6f4a

    .line 163
    sparse-switch p1, :sswitch_data_0

    .line 170
    const/4 v0, -0x1

    :goto_0
    :sswitch_0
    return v0

    .line 164
    :sswitch_1
    const/16 v0, 0x6fc8

    goto :goto_0

    .line 166
    :sswitch_2
    const/16 v0, 0x6f4c

    goto :goto_0

    .line 167
    :sswitch_3
    const/16 v0, 0x6f4b

    goto :goto_0

    .line 169
    :sswitch_4
    const/4 v0, 0x0

    goto :goto_0

    .line 163
    :sswitch_data_0
    .sparse-switch
        0x4f30 -> :sswitch_4
        0x6f3a -> :sswitch_0
        0x6f3b -> :sswitch_3
        0x6f40 -> :sswitch_0
        0x6f49 -> :sswitch_2
        0x6fc7 -> :sswitch_1
    .end sparse-switch
.end method

.method public getAdnCount()I
    .locals 1

    .prologue
    .line 930
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdncountofIcc:I

    return v0
.end method

.method public getAnrCount()I
    .locals 2

    .prologue
    .line 903
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimGlobalPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAnrCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimLocalPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAnrCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getAnrCountEachRecord()I
    .locals 2

    .prologue
    .line 908
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimGlobalPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAnrFilesCountEachAdn()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimLocalPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAnrFilesCountEachAdn()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getEmailCount()I
    .locals 2

    .prologue
    .line 916
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimGlobalPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEmailCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimLocalPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEmailCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getEmailCountEachRecord()I
    .locals 2

    .prologue
    .line 912
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimGlobalPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEmailFilesCountEachAdn()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimLocalPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEmailFilesCountEachAdn()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getRecordsIfLoaded(I)Ljava/util/ArrayList;
    .locals 2
    .param p1, "efid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .local v0, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLocalAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLocalAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mGlobalAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 151
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mGlobalAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 153
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    .end local v0    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_2
    return-object v0
.end method

.method public getSpareAnrCount()I
    .locals 2

    .prologue
    .line 920
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimGlobalPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getSpareAnrCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimLocalPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getSpareAnrCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getSpareEmailCount()I
    .locals 2

    .prologue
    .line 925
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimGlobalPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getSpareEmailCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimLocalPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getSpareEmailCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getUsimAdnCount()I
    .locals 2

    .prologue
    .line 938
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimGlobalPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUsimAdnCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimLocalPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUsimAdnCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v9, 0x6f3a

    .line 624
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 677
    :cond_0
    :goto_0
    return-void

    .line 627
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 628
    .local v1, "ar":Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 629
    .local v2, "efid":I
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 632
    .local v3, "extensionEf":I
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 633
    .local v6, "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 635
    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_1

    .line 636
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    iget-object v7, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v8, v2, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 637
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->extRecList:Landroid/util/SparseArray;

    iget-object v7, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v7, [I

    check-cast v7, [I

    invoke-virtual {v8, v3, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 639
    :cond_1
    invoke-direct {p0, v6, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    .line 640
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 641
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->setAdnCount(I)V

    goto :goto_0

    .line 645
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "efid":I
    .end local v3    # "extensionEf":I
    .end local v6    # "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 646
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 647
    .restart local v2    # "efid":I
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 648
    .local v4, "index":I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->extensionEfForEf(I)I

    move-result v3

    .line 649
    .restart local v3    # "extensionEf":I
    iget-object v7, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v0, v7

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 651
    .local v0, "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_4

    .line 652
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 653
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    add-int/lit8 v8, v4, -0x1

    invoke-virtual {v7, v8, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 655
    :cond_2
    const/16 v7, 0x4f30

    if-ne v2, v7, :cond_3

    .line 656
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    move-result-object v7

    add-int/lit8 v8, v4, -0x1

    invoke-virtual {v7, v8, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 658
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->hasExtendedRecord()Z

    move-result v7

    if-eqz v7, :cond_4

    iget v7, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    if-lez v7, :cond_4

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->extRecList:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 661
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->extRecList:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    iget v8, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    add-int/lit8 v8, v8, -0x1

    const/4 v9, 0x1

    aput v9, v7, v8

    .line 665
    :cond_4
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Message;

    .line 666
    .local v5, "response":Landroid/os/Message;
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 670
    if-eqz v5, :cond_0

    .line 671
    const/4 v7, 0x0

    iget-object v8, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v5, v7, v8}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 672
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 624
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isPbrPresent()Z
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimGlobalPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isPbrFilePresent()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimLocalPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isPbrFilePresent()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestLoadAllAdnLike(IILjava/lang/String;Landroid/os/Message;)V
    .locals 7
    .param p1, "efid"    # I
    .param p2, "extensionEf"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 528
    const/16 v3, 0x4f30

    if-ne p1, v3, :cond_6

    .line 529
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 531
    .local v0, "combinedResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->useLocalPb(Z)V

    .line 532
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    move-result-object v1

    .line 533
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 534
    :cond_0
    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->isPbrNotInLocal:Z

    if-nez v3, :cond_1

    .line 535
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->useLocalPb(Z)V

    .line 536
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    move-result-object v1

    .line 537
    if-eqz v1, :cond_4

    .line 538
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 547
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    move-object v1, v0

    .line 553
    .end local v0    # "combinedResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_2
    :goto_1
    if-eqz v1, :cond_7

    .line 554
    if-eqz p4, :cond_3

    .line 555
    invoke-static {p4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iput-object v1, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 556
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    .line 596
    :cond_3
    :goto_2
    return-void

    .line 540
    .restart local v0    # "combinedResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 541
    iput-boolean v5, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->isPbrNotInLocal:Z

    .line 543
    :cond_5
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->useLocalPb(Z)V

    goto :goto_0

    .line 549
    .end local v0    # "combinedResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    .end local v1    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v1

    .restart local v1    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    goto :goto_1

    .line 564
    :cond_7
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 566
    .local v2, "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    if-eqz v2, :cond_8

    .line 570
    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 576
    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 577
    .restart local v2    # "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 582
    if-gez p2, :cond_9

    .line 585
    if-eqz p4, :cond_3

    .line 586
    invoke-static {p4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF is not known ADN-like EF:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 588
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .line 594
    :cond_9
    new-instance v3, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    invoke-virtual {p0, v5, p1, p2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, p1, p2, p3, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadAllFromEF(IILjava/lang/String;Landroid/os/Message;)V

    goto :goto_2
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mGlobalAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 112
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLocalAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 113
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimGlobalPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->reset()V

    .line 114
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimLocalPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->reset()V

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->isPbrNotInLocal:Z

    .line 117
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->clearWaiters()V

    .line 118
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->clearUserWriters()V

    .line 120
    return-void
.end method

.method public setAdnCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 934
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdncountofIcc:I

    .line 935
    return-void
.end method

.method public declared-synchronized updateAdnByIndex(ILcom/android/internal/telephony/uicc/AdnRecord;ILjava/lang/String;Landroid/os/Message;)V
    .locals 10
    .param p1, "efid"    # I
    .param p2, "adn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p3, "recordIndex"    # I
    .param p4, "pin2"    # Ljava/lang/String;
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 220
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->extensionEfForEf(I)I

    move-result v3

    .line 221
    .local v3, "extensionEF":I
    if-gez v3, :cond_0

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EF is not known ADN-like EF:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p5, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    :goto_0
    monitor-exit p0

    return-void

    .line 227
    :cond_0
    :try_start_1
    iget-object v0, p2, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lcom/android/internal/telephony/uicc/AdnRecordCache;->MAX_PHB_NAME_LENGTH:I

    if-le v0, v1, :cond_1

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "the input length of mAlphaTag is too long: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-direct {p0, p5, v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 220
    .end local v3    # "extensionEF":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 236
    .restart local v3    # "extensionEF":I
    :cond_1
    :try_start_2
    iget-object v0, p2, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    .line 237
    .local v8, "num_length":I
    iget-object v0, p2, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 238
    add-int/lit8 v8, v8, -0x1

    .line 241
    :cond_2
    sget v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->MAX_PHB_NUMBER_LENGTH:I

    if-le v8, v0, :cond_3

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "the input length of phoneNumber is too long: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-direct {p0, p5, v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    goto :goto_0

    .line 251
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Message;

    .line 252
    .local v9, "pendingResponse":Landroid/os/Message;
    if-eqz v9, :cond_4

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Have pending update for EF:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3ef

    invoke-direct {p0, p5, v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    goto :goto_0

    .line 257
    :cond_4
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->useLocalPb(Z)V

    .line 258
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 260
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->findFreeExtRec(I)I

    move-result v6

    const/4 v1, 0x2

    invoke-virtual {p0, v1, p1, p3, p2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    move-object v1, p2

    move v2, p1

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;ILandroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized updateAdnBySearch(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;Landroid/os/Message;)I
    .locals 9
    .param p1, "efid"    # I
    .param p2, "oldAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p3, "newAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p4, "pin2"    # Ljava/lang/String;
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 283
    monitor-enter p0

    const/4 v7, 0x0

    .line 284
    .local v7, "glocalPbrRst":I
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    :try_start_0
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->updateAdnBySearchOnEf(ZILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;Landroid/os/Message;)I

    move-result v8

    .line 286
    .local v8, "result":I
    if-gez v8, :cond_0

    const/16 v0, 0x4f30

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->isPbrNotInLocal:Z

    if-nez v0, :cond_0

    .line 288
    move v7, v8

    .line 289
    const/4 v1, 0x1

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->updateAdnBySearchOnEf(ZILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;Landroid/os/Message;)I

    move-result v8

    .line 290
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimGlobalPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isPbrFilePresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimLocalPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isPbrFilePresent()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 291
    move v8, v7

    .line 295
    :cond_0
    packed-switch v8, :pswitch_data_0

    .line 343
    :goto_0
    monitor-exit p0

    return v8

    .line 297
    :pswitch_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EF is not known ADN-like EF:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p5, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 283
    .end local v8    # "result":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 300
    .restart local v8    # "result":I
    :pswitch_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adn list not exist for EF:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3f3

    invoke-direct {p0, p5, v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    goto :goto_0

    .line 303
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adn record don\'t exist for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3eb

    invoke-direct {p0, p5, v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    goto :goto_0

    .line 309
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Have pending update for EF:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3ef

    invoke-direct {p0, p5, v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    goto :goto_0

    .line 313
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "the input length of mAlphaTag is too long: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p3, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-direct {p0, p5, v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 319
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "the input length of phoneNumber is too long: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p3, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-direct {p0, p5, v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 325
    :pswitch_6
    const-string v0, "the input length of additional number is too long"

    const/16 v1, 0x3f2

    invoke-direct {p0, p5, v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 331
    :pswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drop the email for the limitation of the SIM card "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3ed

    invoke-direct {p0, p5, v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 337
    :pswitch_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drop the additional number for the write fail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumbers()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3f4

    invoke-direct {p0, p5, v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 295
    nop

    :pswitch_data_0
    .packed-switch -0x9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized updateUsimAdnByIndex(ILcom/android/internal/telephony/uicc/AdnRecord;ILjava/lang/String;Landroid/os/Message;)V
    .locals 18
    .param p1, "efid"    # I
    .param p2, "newAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p3, "recordIndex"    # I
    .param p4, "pin2"    # Ljava/lang/String;
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 801
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->extensionEfForEf(I)I

    move-result v7

    .line 802
    .local v7, "extensionEF":I
    if-gez v7, :cond_0

    .line 803
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF is not known ADN-like EF:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 900
    .end local v7    # "extensionEF":I
    :goto_0
    monitor-exit p0

    return-void

    .line 806
    .restart local v7    # "extensionEF":I
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->useLocalPb(Z)V

    .line 809
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sget v4, Lcom/android/internal/telephony/uicc/AdnRecordCache;->MAX_PHB_NAME_LENGTH:I

    if-le v3, v4, :cond_1

    .line 811
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "the input length of mAlphaTag is too long: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3ea

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 801
    .end local v7    # "extensionEF":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 818
    .restart local v7    # "extensionEF":I
    :cond_1
    :try_start_2
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v15

    .line 819
    .local v15, "num_length":I
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    const/16 v4, 0x2b

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 820
    add-int/lit8 v15, v15, -0x1

    .line 823
    :cond_2
    sget v3, Lcom/android/internal/telephony/uicc/AdnRecordCache;->MAX_PHB_NUMBER_LENGTH:I

    if-le v15, v3, :cond_3

    .line 825
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "the input length of phoneNumber is too long: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3e9

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    goto :goto_0

    .line 833
    :cond_3
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 834
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumbers()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v14, v3, :cond_6

    .line 835
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    aget-object v11, v3, v14

    .line 836
    .local v11, "anr":Ljava/lang/String;
    if-eqz v11, :cond_5

    .line 837
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    .line 838
    const/16 v3, 0x2b

    invoke-virtual {v11, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 839
    add-int/lit8 v15, v15, -0x1

    .line 842
    :cond_4
    sget v3, Lcom/android/internal/telephony/uicc/AdnRecordCache;->MAX_PHB_NUMBER_ANR_LENGTH:I

    if-le v15, v3, :cond_5

    .line 843
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "the input length of additional number is too long: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3f2

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 834
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 856
    .end local v11    # "anr":Ljava/lang/String;
    .end local v14    # "i":I
    :cond_6
    const/16 v16, 0x0

    .line 858
    .local v16, "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    const/16 v3, 0x4f30

    move/from16 v0, p1

    if-ne v0, v3, :cond_7

    .line 859
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v16

    .line 871
    :goto_2
    if-nez v16, :cond_8

    .line 872
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adn list not exist for EF:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 861
    :cond_7
    :try_start_5
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v16

    goto :goto_2

    .line 863
    :catch_0
    move-exception v12

    .line 868
    .local v12, "e":Ljava/lang/NullPointerException;
    const/16 v16, 0x0

    goto :goto_2

    .line 876
    .end local v12    # "e":Ljava/lang/NullPointerException;
    :cond_8
    move/from16 v8, p3

    .line 878
    .local v8, "index":I
    const/16 v3, 0x4f30

    move/from16 v0, p1

    if-ne v0, v3, :cond_9

    .line 879
    add-int/lit8 v3, v8, -0x1

    :try_start_6
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 880
    .local v13, "foundAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget v3, v13, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    move-object/from16 v0, p2

    iput v3, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 881
    iget v3, v13, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    move-object/from16 v0, p2

    iput v3, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 882
    iget v3, v13, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    move-object/from16 v0, p2

    iput v3, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 885
    .end local v13    # "foundAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/Message;

    .line 887
    .local v17, "pendingResponse":Landroid/os/Message;
    if-eqz v17, :cond_a

    .line 888
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Have pending update for EF:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 892
    :cond_a
    const/16 v3, 0x4f30

    move/from16 v0, p1

    if-ne v0, v3, :cond_b

    .line 893
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPBPath()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v3, v8, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v7, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v3 .. v10}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->updateEmailAndAnr(ILjava/lang/String;Lcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;ILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 896
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    move/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 897
    new-instance v4, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v4, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/4 v3, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v3, v1, v8, v2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    move-object/from16 v5, p2

    move/from16 v6, p1

    move-object/from16 v9, p4

    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0
.end method
