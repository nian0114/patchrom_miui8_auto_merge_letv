.class public Lcom/letv/leui/widget/LeNewTimePickerDialog;
.super Landroid/app/Dialog;
.source "LeNewTimePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/letv/leui/widget/picker/NewTimeWheel$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LeNewTimePickerDialog$OnTimeSetListener;
    }
.end annotation


# instance fields
.field private am:Ljava/lang/String;

.field private apm:Ljava/lang/String;

.field private hourOfDay:Ljava/lang/String;

.field private hours:Ljava/lang/String;

.field private line:Landroid/view/View;

.field private mTimeSetListener:Lcom/letv/leui/widget/LeNewTimePickerDialog$OnTimeSetListener;

.field private mTimeWheel:Lcom/letv/leui/widget/picker/NewTimeWheel;

.field private mins:Ljava/lang/String;

.field private minute:Ljava/lang/String;

.field private pm:Ljava/lang/String;

.field private timeStr:Ljava/lang/String;

.field private timeTv:Landroid/widget/TextView;

.field private titleTv:Landroid/widget/TextView;

.field private view:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/letv/leui/widget/LeNewTimePickerDialog$OnTimeSetListener;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/letv/leui/widget/LeNewTimePickerDialog$OnTimeSetListener;
    .param p3, "hourOfDay"    # I
    .param p4, "minute"    # I

    .prologue
    const/16 v2, 0xc

    const v0, 0x103051c

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/LeNewTimePickerDialog;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeNewTimePickerDialog;->init(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/letv/leui/widget/LeNewTimePickerDialog;->mTimeSetListener:Lcom/letv/leui/widget/LeNewTimePickerDialog$OnTimeSetListener;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/letv/leui/widget/LeNewTimePickerDialog;->updateTime(Ljava/lang/Integer;Ljava/lang/Integer;)V

    if-lt p3, v2, :cond_1

    if-ne p3, v2, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeNewTimePickerDialog;->timeTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/letv/leui/widget/LeNewTimePickerDialog;->pm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/widget/LeNewTimePickerDialog;->hours:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/widget/LeNewTimePickerDialog;->mins:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeNewTimePickerDialog;->timeTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/letv/leui/widget/LeNewTimePickerDialog;->pm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p3, -0xc

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/widget/LeNewTimePickerDialog;->hours:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/widget/LeNewTimePickerDialog;->mins:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/LeNewTimePickerDialog;->timeTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/letv/leui/widget/LeNewTimePickerDialog;->am:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/widget/LeNewTimePickerDialog;->hours:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/widget/LeNewTimePickerDialog;->mins:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeNewTimePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x10900b8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeNewTimePickerDialog;->view:Landroid/view/View;

    iget-object v0, p0, Lcom/letv/leui/widget/LeNewTimePickerDialog;->view:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeNewTimePickerDialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeNewTimePickerDialog;->view:Landroid/view/View;

    const v1, 0x1020466

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeNewTimePickerDialog;->view:Landroid/view/View;

    const v1, 0x1020467

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040750

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeNewTimePickerDialog;->am:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040751

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeNewTimePickerDialog;->pm:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104033f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeNewTimePickerDialog;->hours:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040341

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeNewTimePickerDialog;->mins:Ljava/lang/String;

    const v0, 0x1020465

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeNewTimePickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/picker/NewTimeWheel;

    iput-object v0, p0, Lcom/letv/leui/widget/LeNewTimePickerDialog;->mTimeWheel:Lcom/letv/leui/widget/picker/NewTimeWheel;

    iget-object v0, p0, Lcom/letv/leui/widget/LeNewTimePickerDialog;->mTimeWheel:Lcom/letv/leui/widget/picker/NewTimeWheel;

    invoke-virtual {v0, p0}, Lcom/letv/leui/widget/picker/NewTimeWheel;->addOnTimeChangedListener(Lcom/letv/leui/widget/picker/NewTimeWheel$OnTimeChangedListener;)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeNewTimePickerDialog;->mTimeWheel:Lcom/letv/leui/widget/picker/NewTimeWheel;

    const v1, -0xdc6a12

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/NewTimeWheel;->setCenterItemTextColor(I)V

    const v0, 0x1020464

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeNewTimePickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/letv/leui/widget/LeNewTimePickerDialog;->timeTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040714

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeNewTimePickerDialog;->timeStr:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public destory()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/widget/LeNewTimePickerDialog;->view:Landroid/view/View;

    iput-object v0, p0, Lcom/letv/leui/widget/LeNewTimePickerDialog;->mTimeWheel:Lcom/letv/leui/widget/picker/NewTimeWheel;

    iput-object v0, p0, Lcom/letv/leui/widget/LeNewTimePickerDialog;->mTimeSetListener:Lcom/letv/leui/widget/LeNewTimePickerDialog$OnTimeSetListener;

    iput-object v0, p0, Lcom/letv/leui/widget/LeNewTimePickerDialog;->timeTv:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/letv/leui/widget/LeNewTimePickerDialog;->titleTv:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/letv/leui/widget/LeNewTimePickerDialog;->timeStr:Ljava/lang/String;

    return-void
.end method

.method public getTimeWheel()Lcom/letv/leui/widget/picker/NewTimeWheel;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeNewTimePickerDialog;->mTimeWheel:Lcom/letv/leui/widget/picker/NewTimeWheel;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeNewTimePickerDialog;->mTimeSetListener:Lcom/letv/leui/widget/LeNewTimePickerDialog$OnTimeSetListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeNewTimePickerDialog;->mTimeSetListener:Lcom/letv/leui/widget/LeNewTimePickerDialog$OnTimeSetListener;

    iget-object v1, p0, Lcom/letv/leui/widget/LeNewTimePickerDialog;->apm:Ljava/lang/String;

    iget-object v2, p0, Lcom/letv/leui/widget/LeNewTimePickerDialog;->hourOfDay:Ljava/lang/String;

    iget-object v3, p0, Lcom/letv/leui/widget/LeNewTimePickerDialog;->minute:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/letv/leui/widget/LeNewTimePickerDialog$OnTimeSetListener;->onTimeSet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeNewTimePickerDialog;->dismiss()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeNewTimePickerDialog;->dismiss()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1020466
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTimeChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "apm"    # Ljava/lang/String;
    .param p2, "hour"    # Ljava/lang/String;
    .param p3, "minute"    # Ljava/lang/String;

    .prologue
    iput-object p2, p0, Lcom/letv/leui/widget/LeNewTimePickerDialog;->hourOfDay:Ljava/lang/String;

    iput-object p3, p0, Lcom/letv/leui/widget/LeNewTimePickerDialog;->minute:Ljava/lang/String;

    iput-object p1, p0, Lcom/letv/leui/widget/LeNewTimePickerDialog;->apm:Ljava/lang/String;

    iget-object v0, p0, Lcom/letv/leui/widget/LeNewTimePickerDialog;->timeTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/widget/LeNewTimePickerDialog;->hourOfDay:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/widget/LeNewTimePickerDialog;->hours:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/widget/LeNewTimePickerDialog;->mins:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCenterItemTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeNewTimePickerDialog;->mTimeWheel:Lcom/letv/leui/widget/picker/NewTimeWheel;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/NewTimeWheel;->setCenterItemTextColor(I)V

    return-void
.end method

.method public setOnDateSetListener(Lcom/letv/leui/widget/LeNewTimePickerDialog$OnTimeSetListener;)V
    .locals 0
    .param p1, "dateSetListener"    # Lcom/letv/leui/widget/LeNewTimePickerDialog$OnTimeSetListener;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeNewTimePickerDialog;->mTimeSetListener:Lcom/letv/leui/widget/LeNewTimePickerDialog$OnTimeSetListener;

    return-void
.end method

.method public updateTime(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "hourOfDay"    # Ljava/lang/Integer;
    .param p2, "minuteOfHour"    # Ljava/lang/Integer;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeNewTimePickerDialog;->mTimeWheel:Lcom/letv/leui/widget/picker/NewTimeWheel;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/NewTimeWheel;->setCurrentHour(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeNewTimePickerDialog;->mTimeWheel:Lcom/letv/leui/widget/picker/NewTimeWheel;

    invoke-virtual {v0, p2}, Lcom/letv/leui/widget/picker/NewTimeWheel;->setCurrentMin(Ljava/lang/Integer;)V

    return-void
.end method
