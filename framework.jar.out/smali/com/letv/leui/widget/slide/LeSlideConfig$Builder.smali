.class public Lcom/letv/leui/widget/slide/LeSlideConfig$Builder;
.super Ljava/lang/Object;
.source "LeSlideConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/slide/LeSlideConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private config:Lcom/letv/leui/widget/slide/LeSlideConfig;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/letv/leui/widget/slide/LeSlideConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/slide/LeSlideConfig;-><init>(Lcom/letv/leui/widget/slide/LeSlideConfig$1;)V

    iput-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideConfig$Builder;->config:Lcom/letv/leui/widget/slide/LeSlideConfig;

    return-void
.end method


# virtual methods
.method public build()Lcom/letv/leui/widget/slide/LeSlideConfig;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideConfig$Builder;->config:Lcom/letv/leui/widget/slide/LeSlideConfig;

    return-object v0
.end method

.method public distanceThreshold(F)Lcom/letv/leui/widget/slide/LeSlideConfig$Builder;
    .locals 1
    .param p1, "threshold"    # F

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideConfig$Builder;->config:Lcom/letv/leui/widget/slide/LeSlideConfig;

    # setter for: Lcom/letv/leui/widget/slide/LeSlideConfig;->distanceThreshold:F
    invoke-static {v0, p1}, Lcom/letv/leui/widget/slide/LeSlideConfig;->access$602(Lcom/letv/leui/widget/slide/LeSlideConfig;F)F

    return-object p0
.end method

.method public edge(Z)Lcom/letv/leui/widget/slide/LeSlideConfig$Builder;
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideConfig$Builder;->config:Lcom/letv/leui/widget/slide/LeSlideConfig;

    # setter for: Lcom/letv/leui/widget/slide/LeSlideConfig;->edgeOnly:Z
    invoke-static {v0, p1}, Lcom/letv/leui/widget/slide/LeSlideConfig;->access$702(Lcom/letv/leui/widget/slide/LeSlideConfig;Z)Z

    return-object p0
.end method

.method public edgeSize(F)Lcom/letv/leui/widget/slide/LeSlideConfig$Builder;
    .locals 1
    .param p1, "edgeSize"    # F

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideConfig$Builder;->config:Lcom/letv/leui/widget/slide/LeSlideConfig;

    # setter for: Lcom/letv/leui/widget/slide/LeSlideConfig;->edgeSize:F
    invoke-static {v0, p1}, Lcom/letv/leui/widget/slide/LeSlideConfig;->access$802(Lcom/letv/leui/widget/slide/LeSlideConfig;F)F

    return-object p0
.end method

.method public listener(Lcom/letv/leui/widget/slide/LeSlideListener;)Lcom/letv/leui/widget/slide/LeSlideConfig$Builder;
    .locals 1
    .param p1, "listener"    # Lcom/letv/leui/widget/slide/LeSlideListener;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideConfig$Builder;->config:Lcom/letv/leui/widget/slide/LeSlideConfig;

    # setter for: Lcom/letv/leui/widget/slide/LeSlideConfig;->listener:Lcom/letv/leui/widget/slide/LeSlideListener;
    invoke-static {v0, p1}, Lcom/letv/leui/widget/slide/LeSlideConfig;->access$1102(Lcom/letv/leui/widget/slide/LeSlideConfig;Lcom/letv/leui/widget/slide/LeSlideListener;)Lcom/letv/leui/widget/slide/LeSlideListener;

    return-object p0
.end method

.method public parallaxOffset(I)Lcom/letv/leui/widget/slide/LeSlideConfig$Builder;
    .locals 1
    .param p1, "offset"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideConfig$Builder;->config:Lcom/letv/leui/widget/slide/LeSlideConfig;

    # setter for: Lcom/letv/leui/widget/slide/LeSlideConfig;->parallaxOffset:I
    invoke-static {v0, p1}, Lcom/letv/leui/widget/slide/LeSlideConfig;->access$902(Lcom/letv/leui/widget/slide/LeSlideConfig;I)I

    return-object p0
.end method

.method public primaryColor(I)Lcom/letv/leui/widget/slide/LeSlideConfig$Builder;
    .locals 1
    .param p1, "color"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideConfig$Builder;->config:Lcom/letv/leui/widget/slide/LeSlideConfig;

    # setter for: Lcom/letv/leui/widget/slide/LeSlideConfig;->colorPrimary:I
    invoke-static {v0, p1}, Lcom/letv/leui/widget/slide/LeSlideConfig;->access$102(Lcom/letv/leui/widget/slide/LeSlideConfig;I)I

    return-object p0
.end method

.method public secondaryColor(I)Lcom/letv/leui/widget/slide/LeSlideConfig$Builder;
    .locals 1
    .param p1, "color"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideConfig$Builder;->config:Lcom/letv/leui/widget/slide/LeSlideConfig;

    # setter for: Lcom/letv/leui/widget/slide/LeSlideConfig;->colorSecondary:I
    invoke-static {v0, p1}, Lcom/letv/leui/widget/slide/LeSlideConfig;->access$202(Lcom/letv/leui/widget/slide/LeSlideConfig;I)I

    return-object p0
.end method

.method public sensitivity(F)Lcom/letv/leui/widget/slide/LeSlideConfig$Builder;
    .locals 1
    .param p1, "sensitivity"    # F

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideConfig$Builder;->config:Lcom/letv/leui/widget/slide/LeSlideConfig;

    # setter for: Lcom/letv/leui/widget/slide/LeSlideConfig;->sensitivity:F
    invoke-static {v0, p1}, Lcom/letv/leui/widget/slide/LeSlideConfig;->access$402(Lcom/letv/leui/widget/slide/LeSlideConfig;F)F

    return-object p0
.end method

.method public slideDuration(I)Lcom/letv/leui/widget/slide/LeSlideConfig$Builder;
    .locals 1
    .param p1, "duration"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideConfig$Builder;->config:Lcom/letv/leui/widget/slide/LeSlideConfig;

    # setter for: Lcom/letv/leui/widget/slide/LeSlideConfig;->slideDuration:I
    invoke-static {v0, p1}, Lcom/letv/leui/widget/slide/LeSlideConfig;->access$1002(Lcom/letv/leui/widget/slide/LeSlideConfig;I)I

    return-object p0
.end method

.method public touchSize(F)Lcom/letv/leui/widget/slide/LeSlideConfig$Builder;
    .locals 1
    .param p1, "size"    # F

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideConfig$Builder;->config:Lcom/letv/leui/widget/slide/LeSlideConfig;

    # setter for: Lcom/letv/leui/widget/slide/LeSlideConfig;->touchSize:F
    invoke-static {v0, p1}, Lcom/letv/leui/widget/slide/LeSlideConfig;->access$302(Lcom/letv/leui/widget/slide/LeSlideConfig;F)F

    return-object p0
.end method

.method public velocityThreshold(F)Lcom/letv/leui/widget/slide/LeSlideConfig$Builder;
    .locals 1
    .param p1, "threshold"    # F

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideConfig$Builder;->config:Lcom/letv/leui/widget/slide/LeSlideConfig;

    # setter for: Lcom/letv/leui/widget/slide/LeSlideConfig;->velocityThreshold:F
    invoke-static {v0, p1}, Lcom/letv/leui/widget/slide/LeSlideConfig;->access$502(Lcom/letv/leui/widget/slide/LeSlideConfig;F)F

    return-object p0
.end method
