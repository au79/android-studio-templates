package ${packageName};

import android.support.v4.app.Fragment;

public class BaseFragment<PRESENTER_TYPE extends BasePresenter> extends Fragment implements BaseView<PRESENTER_TYPE> {

  protected PRESENTER_TYPE presenter;

  @Override
  public void setPresenter(PRESENTER_TYPE presenter) {
    this.presenter = presenter;
  }
}
                    
