.class public Lcom/letv/leui/widget/LeDateTimeDialog;
.super Landroid/app/Dialog;
.source "LeDateTimeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/letv/leui/widget/picker/NewDateTimeWheel$OnDateChangedListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LeDateTimeDialog$OnDateSetListener;
    }
.end annotation


# instance fields
.field private hourStr:Ljava/lang/String;

.field private mLayout:Landroid/widget/RelativeLayout;

.field private mSwitch:Lcom/letv/leui/widget/LeSwitch;

.field private mWheel:Lcom/letv/leui/widget/picker/NewDateTimeWheel;

.field private minStr:Ljava/lang/String;

.field private onDateSetListener:Lcom/letv/leui/widget/LeDateTimeDialog$OnDateSetListener;

.field private subtitle:Landroid/widget/TextView;

.field private timeTv:Landroid/widget/TextView;

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

.method public constructor <init>(Landroid/content/Context;Ljava/util/Calendar;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "calendar"    # Ljava/util/Calendar;

    .prologue
    const v0, 0x103051c

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/LeDateTimeDialog;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/LeDateTimeDialog;->init(Landroid/content/Context;Ljava/util/Calendar;)V

    return-void
.end method

.method private init(Landroid/content/Context;Ljava/util/Calendar;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "calendar"    # Ljava/util/Calendar;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeDateTimeDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x10900a5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeDateTimeDialog;->view:Landroid/view/View;

    iget-object v0, p0, Lcom/letv/leui/widget/LeDateTimeDialog;->view:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeDateTimeDialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104033f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeDateTimeDialog;->hourStr:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040341

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeDateTimeDialog;->minStr:Ljava/lang/String;

    iget-object v0, p0, Lcom/letv/leui/widget/LeDateTimeDialog;->view:Landroid/view/View;

    const v1, 0x102042e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeDateTimeDialog;->view:Landroid/view/View;

    const v1, 0x102042f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeDateTimeDialog;->view:Landroid/view/View;

    const v1, 0x102042b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/letv/leui/widget/LeDateTimeDialog;->mLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/letv/leui/widget/LeDateTimeDialog;->view:Landroid/view/View;

    const v1, 0x102042a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/letv/leui/widget/LeDateTimeDialog;->subtitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/letv/leui/widget/LeDateTimeDialog;->view:Landroid/view/View;

    const v1, 0x102042c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/LeSwitch;

    iput-object v0, p0, Lcom/letv/leui/widget/LeDateTimeDialog;->mSwitch:Lcom/letv/leui/widget/LeSwitch;

    iget-object v0, p0, Lcom/letv/leui/widget/LeDateTimeDialog;->mSwitch:Lcom/letv/leui/widget/LeSwitch;

    invoke-virtual {v0, p0}, Lcom/letv/leui/widget/LeSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeDateTimeDialog;->view:Landroid/view/View;

    const v1, 0x102042d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;

    iput-object v0, p0, Lcom/letv/leui/widget/LeDateTimeDialog;->mWheel:Lcom/letv/leui/widget/picker/NewDateTimeWheel;

    iget-object v0, p0, Lcom/letv/leui/widget/LeDateTimeDialog;->mWheel:Lcom/letv/leui/widget/picker/NewDateTimeWheel;

    invoke-virtual {v0, p0}, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->setOnDateChangedListener(Lcom/letv/leui/widget/picker/NewDateTimeWheel$OnDateChangedListener;)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeDateTimeDialog;->mWheel:Lcom/letv/leui/widget/picker/NewDateTimeWheel;

    invoke-virtual {v0, p2}, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->setCalendar(Ljava/util/Calendar;)V

    return-void
.end method

.method private setOnDateSetListener(Lcom/letv/leui/widget/LeDateTimeDialog$OnDateSetListener;)V
    .locals 0
    .param p1, "dateSetListener"    # Lcom/letv/leui/widget/LeDateTimeDialog$OnDateSetListener;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeDateTimeDialog;->onDateSetListener:Lcom/letv/leui/widget/LeDateTimeDialog$OnDateSetListener;

    return-void
.end method

.method private setSelectLayoutShow(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .prologue
    iget-object v1, p0, Lcom/letv/leui/widget/LeDateTimeDialog;->mLayout:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public destory()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/widget/LeDateTimeDialog;->view:Landroid/view/View;

    iput-object v0, p0, Lcom/letv/leui/widget/LeDateTimeDialog;->timeTv:Landroid/widget/TextView;

    return-void
.end method

.method public getDateTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeDateTimeDialog;->timeTv:Landroid/widget/TextView;

    return-object v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeDateTimeDialog;->mWheel:Lcom/letv/leui/widget/picker/NewDateTimeWheel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->setLunar(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeDateTimeDialog;->mWheel:Lcom/letv/leui/widget/picker/NewDateTimeWheel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->setLunar(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeDateTimeDialog;->onDateSetListener:Lcom/letv/leui/widget/LeDateTimeDialog$OnDateSetListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeDateTimeDialog;->onDateSetListener:Lcom/letv/leui/widget/LeDateTimeDialog$OnDateSetListener;

    iget-object v1, p0, Lcom/letv/leui/widget/LeDateTimeDialog;->mSwitch:Lcom/letv/leui/widget/LeSwitch;

    invoke-virtual {v1}, Lcom/letv/leui/widget/LeSwitch;->isChecked()Z

    move-result v1

    iget-object v2, p0, Lcom/letv/leui/widget/LeDateTimeDialog;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/letv/leui/widget/LeDateTimeDialog$OnDateSetListener;->onDateSet(ZLjava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeDateTimeDialog;->dismiss()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeDateTimeDialog;->dismiss()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102042e
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDateChangedListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "amp"    # Ljava/lang/String;
    .param p3, "hour"    # Ljava/lang/String;
    .param p4, "mins"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeDateTimeDialog;->subtitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/widget/LeDateTimeDialog;->hourStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/widget/LeDateTimeDialog;->minStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
