package ch.zhaw.smartervote.webapp.pages;

import ch.zhaw.smartervote.contract.transferobject.SubjectTO;

import java.util.List;

public class SubjectCustomizingTO {
    private List<SubjectTO> subjectTOS;

    public void addSubject(SubjectTO subjectTO){
        this.subjectTOS.add(subjectTO);
    }

    public List<SubjectTO> getSubjectTOS() {
        return subjectTOS;
    }

    public void setSubjectTOS(List<SubjectTO> subjectTOS) {
        this.subjectTOS = subjectTOS;
    }

}
