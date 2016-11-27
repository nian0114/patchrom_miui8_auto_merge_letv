.class public Lcom/android/server/power/xtend/ModulePropertiesInfo;
.super Ljava/lang/Object;
.source "ModulePropertiesInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/xtend/ModulePropertiesInfo$State;,
        Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;
    }
.end annotation


# instance fields
.field private mMode:Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;

.field private mState:Lcom/android/server/power/xtend/ModulePropertiesInfo$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;->MANUAL_MODE:Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;

    iput-object v0, p0, Lcom/android/server/power/xtend/ModulePropertiesInfo;->mMode:Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;

    sget-object v0, Lcom/android/server/power/xtend/ModulePropertiesInfo$State;->NO_SAVE:Lcom/android/server/power/xtend/ModulePropertiesInfo$State;

    iput-object v0, p0, Lcom/android/server/power/xtend/ModulePropertiesInfo;->mState:Lcom/android/server/power/xtend/ModulePropertiesInfo$State;

    return-void
.end method


# virtual methods
.method public getMode()Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/power/xtend/ModulePropertiesInfo;->mMode:Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;

    return-object v0
.end method

.method public getModeValue()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/power/xtend/ModulePropertiesInfo;->mMode:Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;

    invoke-virtual {v0}, Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;->getValue()I

    move-result v0

    return v0
.end method

.method public getState()Lcom/android/server/power/xtend/ModulePropertiesInfo$State;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/power/xtend/ModulePropertiesInfo;->mState:Lcom/android/server/power/xtend/ModulePropertiesInfo$State;

    return-object v0
.end method

.method public getStateValue()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/power/xtend/ModulePropertiesInfo;->mState:Lcom/android/server/power/xtend/ModulePropertiesInfo$State;

    invoke-virtual {v0}, Lcom/android/server/power/xtend/ModulePropertiesInfo$State;->getValue()I

    move-result v0

    return v0
.end method

.method public setMode(Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;)V
    .locals 0
    .param p1, "mode"    # Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;

    .prologue
    iput-object p1, p0, Lcom/android/server/power/xtend/ModulePropertiesInfo;->mMode:Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;

    return-void
.end method

.method public setState(Lcom/android/server/power/xtend/ModulePropertiesInfo$State;)V
    .locals 0
    .param p1, "state"    # Lcom/android/server/power/xtend/ModulePropertiesInfo$State;

    .prologue
    iput-object p1, p0, Lcom/android/server/power/xtend/ModulePropertiesInfo;->mState:Lcom/android/server/power/xtend/ModulePropertiesInfo$State;

    return-void
.end method
