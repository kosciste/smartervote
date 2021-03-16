package ch.zhaw.smartervote.core;

import ch.zhaw.smartervote.contract.TestInterface;

public class TestInterfaceImpl implements TestInterface {

    @Override
    public String doSomething() {
        return "fancy magic stuff";
    }

}
