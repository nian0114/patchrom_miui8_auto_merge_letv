.class Lcom/android/server/audio/AudioService$MediaPlayerInfo;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaPlayerInfo"
.end annotation


# instance fields
.field private mIsfocussed:Z

.field private mPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;Z)V
    .locals 0
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "isfocussed"    # Z

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/server/audio/AudioService$MediaPlayerInfo;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput-object p2, p0, Lcom/android/server/audio/AudioService$MediaPlayerInfo;->mPackageName:Ljava/lang/String;

    .line 230
    iput-boolean p3, p0, Lcom/android/server/audio/AudioService$MediaPlayerInfo;->mIsfocussed:Z

    .line 231
    return-void
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MediaPlayerInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public isFocussed()Z
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$MediaPlayerInfo;->mIsfocussed:Z

    return v0
.end method

.method public setFocus(Z)V
    .locals 0
    .param p1, "focus"    # Z

    .prologue
    .line 236
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$MediaPlayerInfo;->mIsfocussed:Z

    .line 237
    return-void
.end method
