package ch.zhaw.smartervote.webapp;

import ch.zhaw.smartervote.contract.SubjectWeight;

public final class Converter {

    public static SubjectWeight convertWeigth(int weight){
        return SubjectWeight.values()[weight];
    }

    public static Integer convertSubjectWeigth(SubjectWeight subjectWeight){
        return subjectWeight.ordinal(); }

}
