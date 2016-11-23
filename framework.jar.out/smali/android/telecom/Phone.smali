.class public final Landroid/telecom/Phone;
.super Ljava/lang/Object;
.source "Phone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Phone$Listener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mCallAudioState:Landroid/telecom/CallAudioState;

.field private final mCallByTelecomCallId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private final mCalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private mCanAddCall:Z

.field private final mInCallAdapter:Landroid/telecom/InCallAdapter;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Phone$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mUnmodifiableCalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/telecom/InCallAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/telecom/InCallAdapter;

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/Phone;->mCallByTelecomCallId:Ljava/util/Map;

    .line 128
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Phone;->mCalls:Ljava/util/List;

    .line 131
    iget-object v0, p0, Landroid/telecom/Phone;->mCalls:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Phone;->mUnmodifiableCalls:Ljava/util/List;

    .line 137
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Phone;->mListeners:Ljava/util/List;

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telecom/Phone;->mCanAddCall:Z

    .line 142
    iput-object p1, p0, Landroid/telecom/Phone;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    .line 143
    return-void
.end method

.method private checkCallTree(Landroid/telecom/ParcelableCall;)V
    .locals 7
    .param p1, "parcelableCall"    # Landroid/telecom/ParcelableCall;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 388
    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getParentCallId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/telecom/Phone;->mCallByTelecomCallId:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getParentCallId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 390
    const-string v1, "ParcelableCall %s has nonexistent parent %s"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getParentCallId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 393
    :cond_0
    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getChildCallIds()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 394
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getChildCallIds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 395
    iget-object v1, p0, Landroid/telecom/Phone;->mCallByTelecomCallId:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getChildCallIds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 396
    const-string v1, "ParcelableCall %s has nonexistent child %s"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getChildCallIds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 394
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 401
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private fireBringToForeground(Z)V
    .locals 3
    .param p1, "showDialpad"    # Z

    .prologue
    .line 369
    iget-object v2, p0, Landroid/telecom/Phone;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Phone$Listener;

    .line 370
    .local v1, "listener":Landroid/telecom/Phone$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Phone$Listener;->onBringToForeground(Landroid/telecom/Phone;Z)V

    goto :goto_0

    .line 372
    .end local v1    # "listener":Landroid/telecom/Phone$Listener;
    :cond_0
    return-void
.end method

.method private fireCallAdded(Landroid/telecom/Call;)V
    .locals 3
    .param p1, "call"    # Landroid/telecom/Call;

    .prologue
    .line 350
    iget-object v2, p0, Landroid/telecom/Phone;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Phone$Listener;

    .line 351
    .local v1, "listener":Landroid/telecom/Phone$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Phone$Listener;->onCallAdded(Landroid/telecom/Phone;Landroid/telecom/Call;)V

    goto :goto_0

    .line 353
    .end local v1    # "listener":Landroid/telecom/Phone$Listener;
    :cond_0
    return-void
.end method

.method private fireCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .locals 3
    .param p1, "audioState"    # Landroid/telecom/CallAudioState;

    .prologue
    .line 362
    iget-object v2, p0, Landroid/telecom/Phone;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Phone$Listener;

    .line 363
    .local v1, "listener":Landroid/telecom/Phone$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Phone$Listener;->onCallAudioStateChanged(Landroid/telecom/Phone;Landroid/telecom/CallAudioState;)V

    .line 364
    new-instance v2, Landroid/telecom/AudioState;

    invoke-direct {v2, p1}, Landroid/telecom/AudioState;-><init>(Landroid/telecom/CallAudioState;)V

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Phone$Listener;->onAudioStateChanged(Landroid/telecom/Phone;Landroid/telecom/AudioState;)V

    goto :goto_0

    .line 366
    .end local v1    # "listener":Landroid/telecom/Phone$Listener;
    :cond_0
    return-void
.end method

.method private fireCallRemoved(Landroid/telecom/Call;)V
    .locals 3
    .param p1, "call"    # Landroid/telecom/Call;

    .prologue
    .line 356
    iget-object v2, p0, Landroid/telecom/Phone;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Phone$Listener;

    .line 357
    .local v1, "listener":Landroid/telecom/Phone$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Phone$Listener;->onCallRemoved(Landroid/telecom/Phone;Landroid/telecom/Call;)V

    goto :goto_0

    .line 359
    .end local v1    # "listener":Landroid/telecom/Phone$Listener;
    :cond_0
    return-void
.end method

.method private fireCanAddCallChanged(Z)V
    .locals 3
    .param p1, "canAddCall"    # Z

    .prologue
    .line 375
    iget-object v2, p0, Landroid/telecom/Phone;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Phone$Listener;

    .line 376
    .local v1, "listener":Landroid/telecom/Phone$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Phone$Listener;->onCanAddCallChanged(Landroid/telecom/Phone;Z)V

    goto :goto_0

    .line 378
    .end local v1    # "listener":Landroid/telecom/Phone$Listener;
    :cond_0
    return-void
.end method


# virtual methods
.method public final addListener(Landroid/telecom/Phone$Listener;)V
    .locals 1
    .param p1, "listener"    # Landroid/telecom/Phone$Listener;

    .prologue
    .line 240
    iget-object v0, p0, Landroid/telecom/Phone;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    return-void
.end method

.method public final canAddCall()Z
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Landroid/telecom/Phone;->mCanAddCall:Z

    return v0
.end method

.method final destroy()V
    .locals 5

    .prologue
    .line 223
    iget-object v3, p0, Landroid/telecom/Phone;->mCalls:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Call;

    .line 224
    .local v0, "call":Landroid/telecom/Call;
    invoke-virtual {v0}, Landroid/telecom/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    .line 225
    .local v2, "videoCall":Landroid/telecom/InCallService$VideoCall;
    if-eqz v2, :cond_1

    .line 226
    invoke-virtual {v2}, Landroid/telecom/InCallService$VideoCall;->destroy()V

    .line 228
    :cond_1
    invoke-virtual {v0}, Landroid/telecom/Call;->getState()I

    move-result v3

    const/4 v4, 0x7

    if-eq v3, v4, :cond_0

    .line 229
    invoke-virtual {v0}, Landroid/telecom/Call;->internalSetDisconnected()V

    goto :goto_0

    .line 232
    .end local v0    # "call":Landroid/telecom/Call;
    .end local v2    # "videoCall":Landroid/telecom/InCallService$VideoCall;
    :cond_2
    return-void
.end method

.method public final getAudioState()Landroid/telecom/AudioState;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 337
    new-instance v0, Landroid/telecom/AudioState;

    iget-object v1, p0, Landroid/telecom/Phone;->mCallAudioState:Landroid/telecom/CallAudioState;

    invoke-direct {v0, v1}, Landroid/telecom/AudioState;-><init>(Landroid/telecom/CallAudioState;)V

    return-object v0
.end method

.method public final getCallAudioState()Landroid/telecom/CallAudioState;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Landroid/telecom/Phone;->mCallAudioState:Landroid/telecom/CallAudioState;

    return-object v0
.end method

.method public final getCalls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Landroid/telecom/Phone;->mUnmodifiableCalls:Ljava/util/List;

    return-object v0
.end method

.method final internalAddCall(Landroid/telecom/ParcelableCall;)V
    .locals 6
    .param p1, "parcelableCall"    # Landroid/telecom/ParcelableCall;

    .prologue
    .line 146
    new-instance v0, Landroid/telecom/Call;

    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telecom/Phone;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getState()I

    move-result v4

    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->isActive()Z

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/telecom/Call;-><init>(Landroid/telecom/Phone;Ljava/lang/String;Landroid/telecom/InCallAdapter;IZ)V

    .line 148
    .local v0, "call":Landroid/telecom/Call;
    iget-object v1, p0, Landroid/telecom/Phone;->mCallByTelecomCallId:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v1, p0, Landroid/telecom/Phone;->mCalls:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-direct {p0, p1}, Landroid/telecom/Phone;->checkCallTree(Landroid/telecom/ParcelableCall;)V

    .line 151
    iget-object v1, p0, Landroid/telecom/Phone;->mCallByTelecomCallId:Ljava/util/Map;

    invoke-virtual {v0, p1, v1}, Landroid/telecom/Call;->internalUpdate(Landroid/telecom/ParcelableCall;Ljava/util/Map;)V

    .line 152
    invoke-direct {p0, v0}, Landroid/telecom/Phone;->fireCallAdded(Landroid/telecom/Call;)V

    .line 153
    return-void
.end method

.method final internalBringToForeground(Z)V
    .locals 0
    .param p1, "showDialpad"    # Z

    .prologue
    .line 203
    invoke-direct {p0, p1}, Landroid/telecom/Phone;->fireBringToForeground(Z)V

    .line 204
    return-void
.end method

.method final internalCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .locals 1
    .param p1, "callAudioState"    # Landroid/telecom/CallAudioState;

    .prologue
    .line 182
    iget-object v0, p0, Landroid/telecom/Phone;->mCallAudioState:Landroid/telecom/CallAudioState;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    iput-object p1, p0, Landroid/telecom/Phone;->mCallAudioState:Landroid/telecom/CallAudioState;

    .line 184
    invoke-direct {p0, p1}, Landroid/telecom/Phone;->fireCallAudioStateChanged(Landroid/telecom/CallAudioState;)V

    .line 186
    :cond_0
    return-void
.end method

.method final internalCallRedialChanged(I)V
    .locals 3
    .param p1, "time"    # I

    .prologue
    .line 382
    iget-object v2, p0, Landroid/telecom/Phone;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Phone$Listener;

    .line 383
    .local v1, "listener":Landroid/telecom/Phone$Listener;
    invoke-virtual {v1, p1}, Landroid/telecom/Phone$Listener;->onUpdateRedialTime(I)V

    goto :goto_0

    .line 385
    .end local v1    # "listener":Landroid/telecom/Phone$Listener;
    :cond_0
    return-void
.end method

.method final internalGetCallByTelecomId(Ljava/lang/String;)Landroid/telecom/Call;
    .locals 1
    .param p1, "telecomId"    # Ljava/lang/String;

    .prologue
    .line 199
    iget-object v0, p0, Landroid/telecom/Phone;->mCallByTelecomCallId:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Call;

    return-object v0
.end method

.method final internalOnSsnForwarded()V
    .locals 3

    .prologue
    .line 193
    iget-object v2, p0, Landroid/telecom/Phone;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Phone$Listener;

    .line 194
    .local v1, "listener":Landroid/telecom/Phone$Listener;
    invoke-virtual {v1}, Landroid/telecom/Phone$Listener;->onCallForwardSsnChanged()V

    goto :goto_0

    .line 196
    .end local v1    # "listener":Landroid/telecom/Phone$Listener;
    :cond_0
    return-void
.end method

.method final internalOnStorageFull()V
    .locals 3

    .prologue
    .line 429
    iget-object v2, p0, Landroid/telecom/Phone;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Phone$Listener;

    .line 430
    .local v1, "listener":Landroid/telecom/Phone$Listener;
    invoke-virtual {v1}, Landroid/telecom/Phone$Listener;->onStorageFull()V

    goto :goto_0

    .line 432
    .end local v1    # "listener":Landroid/telecom/Phone$Listener;
    :cond_0
    return-void
.end method

.method final internalRemoveCall(Landroid/telecom/Call;)V
    .locals 3
    .param p1, "call"    # Landroid/telecom/Call;

    .prologue
    .line 156
    iget-object v1, p0, Landroid/telecom/Phone;->mCallByTelecomCallId:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/telecom/Call;->internalGetCallId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v1, p0, Landroid/telecom/Phone;->mCalls:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 159
    invoke-virtual {p1}, Landroid/telecom/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    .line 160
    .local v0, "videoCall":Landroid/telecom/InCallService$VideoCall;
    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0}, Landroid/telecom/InCallService$VideoCall;->destroy()V

    .line 163
    :cond_0
    invoke-direct {p0, p1}, Landroid/telecom/Phone;->fireCallRemoved(Landroid/telecom/Call;)V

    .line 164
    return-void
.end method

.method final internalSetCanAddCall(Z)V
    .locals 1
    .param p1, "canAddCall"    # Z

    .prologue
    .line 207
    iget-boolean v0, p0, Landroid/telecom/Phone;->mCanAddCall:Z

    if-eq v0, p1, :cond_0

    .line 208
    iput-boolean p1, p0, Landroid/telecom/Phone;->mCanAddCall:Z

    .line 209
    invoke-direct {p0, p1}, Landroid/telecom/Phone;->fireCanAddCallChanged(Z)V

    .line 211
    :cond_0
    return-void
.end method

.method final internalSetPostDialWait(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "telecomId"    # Ljava/lang/String;
    .param p2, "remaining"    # Ljava/lang/String;

    .prologue
    .line 175
    iget-object v1, p0, Landroid/telecom/Phone;->mCallByTelecomCallId:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Call;

    .line 176
    .local v0, "call":Landroid/telecom/Call;
    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0, p2}, Landroid/telecom/Call;->internalSetPostDialWait(Ljava/lang/String;)V

    .line 179
    :cond_0
    return-void
.end method

.method final internalUpdateCall(Landroid/telecom/ParcelableCall;)V
    .locals 3
    .param p1, "parcelableCall"    # Landroid/telecom/ParcelableCall;

    .prologue
    .line 167
    iget-object v1, p0, Landroid/telecom/Phone;->mCallByTelecomCallId:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Call;

    .line 168
    .local v0, "call":Landroid/telecom/Call;
    if-eqz v0, :cond_0

    .line 169
    invoke-direct {p0, p1}, Landroid/telecom/Phone;->checkCallTree(Landroid/telecom/ParcelableCall;)V

    .line 170
    iget-object v1, p0, Landroid/telecom/Phone;->mCallByTelecomCallId:Ljava/util/Map;

    invoke-virtual {v0, p1, v1}, Landroid/telecom/Call;->internalUpdate(Landroid/telecom/ParcelableCall;Ljava/util/Map;)V

    .line 172
    :cond_0
    return-void
.end method

.method final internalUpdateRecordState(II)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "customValue"    # I

    .prologue
    .line 422
    iget-object v2, p0, Landroid/telecom/Phone;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Phone$Listener;

    .line 423
    .local v1, "listener":Landroid/telecom/Phone$Listener;
    invoke-virtual {v1, p1, p2}, Landroid/telecom/Phone$Listener;->onUpdateRecordState(II)V

    goto :goto_0

    .line 425
    .end local v1    # "listener":Landroid/telecom/Phone$Listener;
    :cond_0
    return-void
.end method

.method public final onHideIncomingChanged(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 435
    iget-object v0, p0, Landroid/telecom/Phone;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    invoke-virtual {v0, p1}, Landroid/telecom/InCallAdapter;->onHideIncomingChanged(Z)V

    .line 436
    return-void
.end method

.method final onMergeFailed(Landroid/telecom/ParcelableCall;)V
    .locals 3
    .param p1, "parcelableCall"    # Landroid/telecom/ParcelableCall;

    .prologue
    .line 214
    iget-object v1, p0, Landroid/telecom/Phone;->mCallByTelecomCallId:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Call;

    .line 215
    .local v0, "call":Landroid/telecom/Call;
    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {v0}, Landroid/telecom/Call;->onMergeFailed()V

    .line 218
    :cond_0
    return-void
.end method

.method public final removeListener(Landroid/telecom/Phone$Listener;)V
    .locals 1
    .param p1, "listener"    # Landroid/telecom/Phone$Listener;

    .prologue
    .line 249
    if-eqz p1, :cond_0

    .line 250
    iget-object v0, p0, Landroid/telecom/Phone;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 252
    :cond_0
    return-void
.end method

.method public final setAudioRoute(I)V
    .locals 1
    .param p1, "route"    # I

    .prologue
    .line 289
    iget-object v0, p0, Landroid/telecom/Phone;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    invoke-virtual {v0, p1}, Landroid/telecom/InCallAdapter;->setAudioRoute(I)V

    .line 290
    return-void
.end method

.method public final setMuted(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 279
    iget-object v0, p0, Landroid/telecom/Phone;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    invoke-virtual {v0, p1}, Landroid/telecom/InCallAdapter;->mute(Z)V

    .line 280
    return-void
.end method

.method public final setProximitySensorOff(Z)V
    .locals 1
    .param p1, "screenOnImmediately"    # Z

    .prologue
    .line 316
    iget-object v0, p0, Landroid/telecom/Phone;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    invoke-virtual {v0, p1}, Landroid/telecom/InCallAdapter;->turnProximitySensorOff(Z)V

    .line 317
    return-void
.end method

.method public final setProximitySensorOn()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Landroid/telecom/Phone;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    invoke-virtual {v0}, Landroid/telecom/InCallAdapter;->turnProximitySensorOn()V

    .line 302
    return-void
.end method

.method public final startVoiceRecording()V
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Landroid/telecom/Phone;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    invoke-virtual {v0}, Landroid/telecom/InCallAdapter;->startVoiceRecording()V

    .line 409
    return-void
.end method

.method public final stopVoiceRecording()V
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Landroid/telecom/Phone;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    invoke-virtual {v0}, Landroid/telecom/InCallAdapter;->stopVoiceRecording()V

    .line 418
    return-void
.end method

.method public switchToOtherActiveSub(Ljava/lang/String;)V
    .locals 1
    .param p1, "subId"    # Ljava/lang/String;

    .prologue
    .line 326
    iget-object v0, p0, Landroid/telecom/Phone;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    invoke-virtual {v0, p1}, Landroid/telecom/InCallAdapter;->switchToOtherActiveSub(Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method public final triggerRinger()V
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Landroid/telecom/Phone;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    invoke-virtual {v0}, Landroid/telecom/InCallAdapter;->triggerRinger()V

    .line 444
    return-void
.end method
